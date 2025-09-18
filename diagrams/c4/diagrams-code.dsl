workspace "ReciclaMar – RIMP Platform" "C4 – Landscape, Context y Containers (MVP)" {

  model {
    // Personas (Segmentos)
    // Segmento 1: Bañistas (Turista y Local)
    beach_tourist = person "Beach Tourist" {
      description "Turista que deposita metal y canjea puntos en temporadas/visitas."
      tags "Segmento1"
    }
    beach_local = person "Local Beach Resident" {
      description "Poblador local que usa el sistema con mayor frecuencia y continuidad."
      tags "Segmento1"
    }

    // Segmento 2: Municipalidades costeras
    admin_muni = person "Municipal Admin" {
      description "Administra recompensas, emite/activa RFID, aprueba canjes y consulta reportes."
      tags "Segmento2"
    }

    // Segmento 3: Operación/Mantenimiento
    maint_crew = person "Maintenance Crew" {
      description "Opera y mantiene el recolector (modo servicio, estado del dispositivo)."
      tags "Segmento3"
    }

    // Sistema en foco
    system_rimp = softwareSystem "RIMP Platform (ReciclaMar)" {
      description "Plataforma IoT ‘RIMP’ de ReciclaMar para recolectar metales en playas: eventos, puntos/canje, administración y reportes."
      tags "OurSystem"

      // Contenedores
      c_landing = container "ReciclaMar Landing" {
        description "Sitio informativo de ReciclaMar y registro básico."
        technology "HTML/CSS/JS (estático)"
        tags "Frontend"
      }

      c_mobile = container "RIMP App (Mobile)" {
        description "App del ciudadano (RIMP): ver puntos, canje, historial."
        technology "Flutter/Dart"
        tags "Frontend"
      }

      c_web_admin = container "ReciclaMar Admin (Web)" {
        description "Panel municipal: recompensas, RFID, aprobaciones y reportes."
        technology "React/TypeScript (SPA)"
        tags "Frontend"
      }

      // === Backend con Bounded Contexts (DDD) ===
      c_backend = container "RIMP Backend API" {
        description "API REST (usuarios/RFID, puntos/canje, dispositivos, reportes)."
        technology "Java 21 + Spring Boot 3"
        tags "Backend"

        // Componentes (Bounded Contexts)
        cmp_iam = component "IAM" {
          description "Autenticación/Autorización, gestión de credenciales y roles (login/password propio en MVP)."
          technology "Spring Boot (Security, JWT)"
          tags "BC_IAM"
        }

        cmp_waste = component "WasteCollection Context" {
          description "Ingesta de eventos del dispositivo (depósito metal), validación de material y registro de transacciones."
          technology "Spring Boot (REST)"
          tags "BC_WASTE"
        }

        cmp_userid = component "UserIdentification Context" {
          description "Identificación del usuario (RFID/ID interno), vinculación con cuentas y normalización de identidad."
          technology "Spring Boot"
          tags "BC_USERID"
        }

        cmp_reward = component "RewardManagement Context" {
          description "Cálculo/acumulación de puntos, reglas de canje, historial y ledger."
          technology "Spring Boot"
          tags "BC_REWARD"
        }

        cmp_muni = component "MunicipalityManagement Context" {
          description "Catálogo de municipalidades, convenios, recompensas locales, aprobaciones y parametrización."
          technology "Spring Boot"
          tags "BC_MUNI"
        }

        cmp_monitor = component "Monitoring & Reporting Context" {
          description "KPIs operativos, paneles, reportes y auditoría básica."
          technology "Spring Boot"
          tags "BC_MONITOR"
        }
      }

      c_db = container "Operational DB" {
        description "Persistencia transaccional (usuarios, RFID, ledger de puntos, canjes)."
        technology "PostgreSQL"
        tags "Database"
      }

      c_storage = container "Object Storage" {
        description "Almacenamiento de evidencias y archivos."
        technology "Cloud Storage"
        tags "Storage"
      }

      c_firmware = container "Firmware Edge" {
        description "Código en el dispositivo: sensor metal, RFID, compuerta; envía eventos."
        technology "ESP32 (C++/MicroPython)"
        tags "Edge"
      }
    }

    // Relaciones por segmento (L1)
    beach_tourist -> system_rimp "Deposita metal y consulta/canjea puntos"
    beach_local   -> system_rimp "Deposita metal y consulta/canjea puntos"
    admin_muni    -> system_rimp "Administra recompensas, emite RFID, reportes"
    maint_crew    -> system_rimp "Opera/da mantenimiento al recolector"

    // Personas -> Contenedores (L2)
    beach_tourist -> c_mobile "Usa"
    beach_local   -> c_mobile "Usa"
    admin_muni    -> c_web_admin "Usa"
    maint_crew    -> c_web_admin "Usa (modo servicio)"

    // Landing -> Mobile (CTA)
    c_landing -> c_mobile "CTA descarga APK"

    // Frontends -> Backend (L2)
    c_mobile    -> c_backend "REST API (puntos, canje, historial)"
    c_web_admin -> c_backend "REST API (gestión, reportes)"

    // Dispositivo -> Backend (L2)
    c_firmware  -> c_backend "POST eventos del dispositivo"

    // Backend -> Datos (L2)
    c_backend -> c_db      "CRUD"
    c_backend -> c_storage "Sube/lee archivos"

    // === Relaciones hacia componentes (L3 – Component) ===
    c_mobile    -> cmp_iam     "Login/registro, perfil"
    c_mobile    -> cmp_reward  "Consultar puntos/canje"
    c_mobile    -> cmp_userid  "Vincular RFID/identidad"

    c_web_admin -> cmp_muni    "Gestión de recompensas y aprobaciones"
    c_web_admin -> cmp_monitor "Reportes/KPIs operativos"

    c_firmware  -> cmp_waste   "POST evento depósito metal"

    // Acceso a datos por bounded context (MVP: una sola DB)
    cmp_iam     -> c_db "CRUD"
    cmp_waste   -> c_db "CRUD"
    cmp_userid  -> c_db "CRUD"
    cmp_reward  -> c_db "CRUD"
    cmp_muni    -> c_db "CRUD"
    cmp_monitor -> c_db "Lecturas intensivas; materializa vistas si es necesario"

    // Deployment
    deploymentEnvironment "Production" {
      outdoor = deploymentNode "Outdoor Enclosure - Beach" {
        technology "Hardware"
        instances 1
        deploymentNode "ESP32 Board" {
          technology "ESP32 (Wi-Fi/4G)"
          instances 1
          containerInstance c_firmware
        }
      }

      railway_app = deploymentNode "Railway - App Platform" {
        technology "Railway (PaaS, HTTPS; Java Runtime)"
        instances 1
        containerInstance c_backend
      }

      railway_db = deploymentNode "Railway - Database" {
        technology "PostgreSQL (managed)"
        instances 1
        containerInstance c_db
      }

      cloud_storage_node = deploymentNode "Cloud Storage" {
        technology "SaaS"
        instances 1
        containerInstance c_storage
      }

      gh_pages = deploymentNode "Static Hosting (GitHub Pages)" {
        technology "GitHub Pages"
        instances 1
        containerInstance c_landing
      }

      hosting_web = deploymentNode "Hosting Web Admin" {
        technology "Hosting (SPA)"
        instances 1
        containerInstance c_web_admin
      }

      mobiles = deploymentNode "Mobile Devices" {
        technology "Android (APK sideload)"
        instances 1
        containerInstance c_mobile
      }
    }
  }

  views {
    // Landscape
    systemLandscape "landscape" {
      include *
      autoLayout lr
      title "System Landscape – RIMP (MVP)"
      description "Segmentos: Bañistas (Turista/Local), Municipalidades, Operación; RIMP como sistema central de ReciclaMar."
      animation {
        system_rimp
        beach_tourist
        beach_local
        admin_muni
        maint_crew
      }
    }

    // Contexto (con segmentos)
    systemContext system_rimp "context" {
      include beach_tourist
      include beach_local
      include admin_muni
      include maint_crew
      include system_rimp

      autoLayout tb
      title "System Context – RIMP (MVP)"
      description "RIMP como caja negra con segmentos objetivo."
      animation {
        system_rimp
        beach_tourist
        beach_local
        admin_muni
        maint_crew
      }
    }

    // Containers (foco en usuarios por segmento)
    container system_rimp "containers-usuarios" {
      autoLayout tb
      title "Container Diagram – RIMP por Segmentos de Usuario"
      description "Flujos entre RIMP App/Web, Backend y datos diferenciando segmentos."
      include beach_tourist
      include beach_local
      include admin_muni
      include maint_crew
      include c_landing
      include c_mobile
      include c_web_admin
      include c_backend
      include c_db
      include c_storage
      include c_firmware
      animation {
        beach_tourist
        beach_local
        admin_muni
        maint_crew
      }
    }

    // Componentes del Backend (Bounded Contexts)
    component c_backend "components-backend" {
      autoLayout tb
      title "Component Diagram – RIMP Backend (Bounded Contexts)"
      description "Monolito modular en Spring Boot con bounded contexts: IAM, WasteCollection, UserIdentification, RewardManagement, MunicipalityManagement, Monitoring & Reporting."
      include cmp_iam
      include cmp_waste
      include cmp_userid
      include cmp_reward
      include cmp_muni
      include cmp_monitor
      // Para ver flujos clave con clientes y edge
      include c_mobile
      include c_web_admin
      include c_firmware
      include c_db
      animation {
        cmp_iam
        cmp_userid
        cmp_waste
        cmp_reward
        cmp_muni
        cmp_monitor
      }
    }

    // Deployment general
    deployment system_rimp "Production" "deploy" {
      include *
      autoLayout lr
      title "Deployment Diagram – RIMP (Production MVP)"
      description "ESP32 en playa → Backend/DB en Railway; Storage en la nube; Landing ReciclaMar en GitHub Pages; Admin en hosting SPA."
    }

    // Estilos (por segmento, roles y bounded contexts)
    styles {
      element OurSystem {
        background "#1168bd"
        color "#ffffff"
        stroke "#0b3a6e"
        strokeWidth 2
      }

      element Segmento1 {
        background "#2aa775"
        color "#ffffff"
        stroke "#1e7e59"
        strokeWidth 2
      }

      element Segmento2 {
        background "#c97c2f"
        color "#ffffff"
        stroke "#955e24"
        strokeWidth 2
      }

      element Segmento3 {
        background "#6b5b95"
        color "#ffffff"
        stroke "#514a72"
        strokeWidth 2
      }

      element Frontend {
        background "#438dd5"
        color "#ffffff"
        stroke "#2c6da6"
        strokeWidth 2
      }

      element Backend {
        background "#2f95c7"
        color "#ffffff"
        stroke "#1e6b8f"
        strokeWidth 2
      }

      element Database {
        shape Cylinder
        background "#6b5b95"
        color "#ffffff"
        stroke "#514a72"
        strokeWidth 2
      }

      element Storage {
        background "#6b5b95"
        color "#ffffff"
        stroke "#514a72"
        strokeWidth 2
      }

      element Edge {
        background "#0b8457"
        color "#ffffff"
        stroke "#086643"
        strokeWidth 2
      }

      // Estilos para bounded contexts (sin ';' y con comillas)
      element "BC_IAM" {
        background "#1F77B4"
        color "#ffffff"
        stroke "#174f7a"
        strokeWidth 2
      }
      element "BC_WASTE" {
        background "#2CA02C"
        color "#ffffff"
        stroke "#1d6f1d"
        strokeWidth 2
      }
      element "BC_USERID" {
        background "#17BECF"
        color "#ffffff"
        stroke "#118996"
        strokeWidth 2
      }
      element "BC_REWARD" {
        background "#FF7F0E"
        color "#ffffff"
        stroke "#b35a0a"
        strokeWidth 2
      }
      element "BC_MUNI" {
        background "#9467BD"
        color "#ffffff"
        stroke "#6a4a87"
        strokeWidth 2
      }
      element "BC_MONITOR" {
        background "#8C564B"
        color "#ffffff"
        stroke "#633e35"
        strokeWidth 2
      }
    }
  }
}
