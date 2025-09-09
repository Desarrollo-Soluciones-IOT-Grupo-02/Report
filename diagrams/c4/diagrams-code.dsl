workspace "IoT Beach Metal Collector System" "C4 – Landscape, Context y Containers (MVP)" {

  model {
    // Personas (con IDs)
    user_beach = person "Beach Visitor" {
      description "Turista/visitante que deposita metal, acumula puntos y canjea."
    }
    admin_muni = person "Municipal Admin" {
      description "Administra recompensas, emite/activa RFID, aprueba canjes y consulta reportes."
    }
    maint_crew = person "Maintenance Crew" {
      description "Opera y mantiene el recolector (modo servicio, estado del dispositivo)."
    }

    // Sistema externo confirmado (Auth)
    sys_firebase = softwareSystem "Firebase Auth (IdP)" {
      description "Autenticación de usuarios (OIDC/JWT)."
      tags "External"
    }

    // Sistema en foco (L1 caja negra; L2 lo abrimos en contenedores)
    system_ibmcs = softwareSystem "IoT Beach Metal Collector System (IBMCS)" {
      description "Plataforma IoT del recolector de metales para playas (eventos, puntos/canje, administración y reportes)."
      tags "OurSystem"

      // CONTENEDORES (L2)
      c_landing = container "Landing Site" {
        description "Sitio informativo y de registro básico."
        technology "HTML/CSS/JS (estático)"
        tags "Frontend"
      }

      c_mobile = container "Mobile App" {
        description "App del ciudadano: ver puntos, canje, historial."
        technology "Flutter/Dart"
        tags "Frontend"
      }

      c_web_admin = container "Web Admin" {
        description "Panel municipal: recompensas, RFID, aprobaciones y reportes."
        technology "Angular/TypeScript"
        tags "Frontend"
      }

      c_backend = container "Backend API" {
        description "API REST (usuarios/RFID, puntos/canje, dispositivos, reportes)."
        technology "Node.js (NestJS)"
        tags "Backend"
      }

      c_db = container "Operational DB" {
        description "Persistencia transaccional (usuarios, RFID, ledger de puntos, canjes)."
        technology "PostgreSQL"
        tags "Database"
      }

      c_storage = container "Object Storage" {
        description "Almacenamiento de evidencias y archivos."
        technology "Firebase Storage"
        tags "Storage"
      }

      c_firmware = container "Firmware Edge" {
        description "Código en el dispositivo: sensor metal, RFID, compuerta; envía eventos."
        technology "ESP32 (C++/MicroPython)"
        tags "Edge"
      }
    }

    // RELACIONES (L1 y L2)
    // Personas -> Sistema (para Context)
    user_beach -> system_ibmcs "Deposita metal y consulta/canjea puntos"
    admin_muni -> system_ibmcs "Administra recompensas, emite RFID, reportes"
    maint_crew -> system_ibmcs "Opera/da mantenimiento al recolector"

    // Sistema -> Externo (para Context)
    system_ibmcs -> sys_firebase "Autenticación"

    // Personas -> Contenedores (para Containers)
    user_beach -> c_mobile "Usa"
    admin_muni -> c_web_admin "Usa"
    maint_crew -> c_web_admin "Usa (modo servicio)"

    // Landing -> Mobile (CTA descarga)
    c_landing -> c_mobile "CTA descarga APK"

    // Frontends -> Auth externo
    c_mobile    -> sys_firebase "Login/Token OIDC"
    c_web_admin -> sys_firebase "Login/Token OIDC"

    // Backend -> Auth externo (validación de tokens)
    c_backend -> sys_firebase "Valida tokens (JWKS/Introspección)"

    // Frontends -> Backend
    c_mobile    -> c_backend "REST API (puntos, canje, historial)"
    c_web_admin -> c_backend "REST API (gestión, reportes)"

    // Dispositivo -> Backend (sin broker, HTTP)
    c_firmware  -> c_backend "POST eventos del dispositivo"

    // Backend -> Datos
    c_backend -> c_db      "CRUD"
    c_backend -> c_storage "Sube/lee archivos"

    // --- DEPLOYMENT (L3) ---
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
        technology "Railway (PaaS, HTTPS)"
        instances 1
        containerInstance c_backend
      }

      railway_db = deploymentNode "Railway - Database" {
        technology "PostgreSQL (managed)"
        instances 1
        containerInstance c_db
      }

      firebase_storage_node = deploymentNode "Firebase Storage" {
        technology "Firebase Storage (SaaS)"
        instances 1
        containerInstance c_storage
      }

      gh_pages = deploymentNode "Static Hosting (GitHub Pages)" {
        technology "GitHub Pages"
        instances 1
        containerInstance c_landing
      }

      firebase_hosting = deploymentNode "Firebase Hosting" {
        technology "Firebase Hosting (SPA)"
        instances 1
        containerInstance c_web_admin
      }

      mobiles = deploymentNode "Mobile Devices" {
        technology "Android (APK sideload)"
        instances 1
        containerInstance c_mobile
      }

      // Firebase Auth como deploymentNode + infra interno (ID para animación)
        firebase_saas = deploymentNode "Firebase (SaaS)" {
        technology "SaaS"
        // Instancia del sistema externo (no un container)
        softwareSystemInstance sys_firebase
        }
      
    }
    
  }

  views {
    // --- L0: Landscape panorámico ---
    systemLandscape "landscape" {
      include *
      autoLayout lr
      title "System Landscape (MVP)"
      description "Vista general: IBMCS, actores confirmados y autenticación externa."
    }

    // --- L1: Contextos ---
    // Contexto general
    systemContext system_ibmcs "context" {
      include user_beach
      include admin_muni
      include maint_crew
      include system_ibmcs
      include sys_firebase

      autoLayout tb
      title "System Context – IBMCS (MVP)"
      description "IBMCS como caja negra; actores principales y autenticación con Firebase."

      animation {
        system_ibmcs
        user_beach
        admin_muni
        maint_crew
        sys_firebase
      }
    }

    // Contexto — Usuarios + Auth
    systemContext system_ibmcs "context-usuarios" {
      include user_beach
      include admin_muni
      include system_ibmcs
      include sys_firebase

      autoLayout tb
      title "System Context – Usuarios + Auth"
      description "Interacción de ciudadano y administrador con IBMCS, autenticados vía Firebase."

      animation {
        system_ibmcs
        user_beach
        admin_muni
        sys_firebase
      }
    }

    // Contexto — Operaciones (mantenimiento)
    systemContext system_ibmcs "context-operaciones" {
      include maint_crew
      include admin_muni
      include system_ibmcs
      include sys_firebase

      autoLayout tb
      title "System Context – Operaciones"
      description "Operación y mantenimiento del recolector por parte del personal de campo; acceso autenticado."

      animation {
        system_ibmcs
        maint_crew
        admin_muni
        sys_firebase
      }
    }

    // Contexto — Canjes (recompensas)
    systemContext system_ibmcs "context-canjes" {
      include user_beach
      include admin_muni
      include system_ibmcs
      include sys_firebase

      autoLayout tb
      title "System Context – Canjes"
      description "Acumulación/consulta de puntos por el ciudadano y gestión/aprobación de canjes por la municipalidad."

      animation {
        system_ibmcs
        user_beach
        admin_muni
        sys_firebase
      }
    }

    // --- L2: Containers ---
    // Contenedores (general)
    container system_ibmcs "containers" {
      autoLayout lr
      title "Container Diagram – IBMCS (MVP)"
      description "Descomposición interna de IBMCS: Backend (Node.js + Datos), Front (Angular), Mobile, Landing y Firmware."

      include user_beach
      include admin_muni
      include maint_crew

      // Front y apps
      include c_landing
      include c_mobile
      include c_web_admin

      // Backend y datos
      include c_backend
      include c_db
      include c_storage

      // Edge
      include c_firmware

      // Externo
      include sys_firebase

      animation {
        c_landing
        c_mobile
        c_web_admin
        c_backend
        c_db
        c_storage
        c_firmware
        sys_firebase
      }
    }

    // Contenedores — foco BACKEND
    container system_ibmcs "containers-backend" {
      autoLayout tb
      title "Container Diagram – Backend Core"
      description "Vista filtrada del backend (Node.js + DB + Storage) y sus relaciones con Front y Auth."

      include c_backend
      include c_db
      include c_storage
      include c_web_admin
      include c_mobile
      include sys_firebase
    }

    // Containers — foco en usuarios
    container system_ibmcs "containers-usuarios" {
      autoLayout tb
      title "Container Diagram – Usuarios"
      description "Flujos de puntos/canje y autenticación entre Landing/Mobile/Web, Backend y datos."

      include user_beach
      include admin_muni
      include c_landing
      include c_mobile
      include c_web_admin
      include c_backend
      include c_db
      include sys_firebase
    }

    // Containers — foco en operaciones
    container system_ibmcs "containers-operaciones" {
      autoLayout tb
      title "Container Diagram – Operaciones"
      description "Gestión municipal y operación de campo sobre Backend y base de datos."

      include maint_crew
      include admin_muni
      include c_web_admin
      include c_backend
      include c_db
    }

    // --- L3: Deployment ---
    // Deployment general
    deployment system_ibmcs "Production" "deploy" {
      include *
      autoLayout lr
      title "Deployment Diagram – Production (MVP)"
      description "ESP32 en playa → Backend/DB en Railway; Storage y Web Admin en Firebase; Landing en GitHub Pages; Auth en Firebase."
      animation {
        c_firmware
        c_backend
        c_db
        c_storage
        c_landing
        c_web_admin
        c_mobile

        
      }
    }

    // Deployment — slice Railway
    deployment system_ibmcs "Production" "deploy-railway" {
      autoLayout tb
      title "Deployment – Railway"
      description "Servicios desplegados en Railway (Backend y DB)."
      include c_backend
      include c_db
    }

    // Deployment — slice Firebase
    deployment system_ibmcs "Production" "deploy-firebase" {
      autoLayout tb
      title "Deployment – Firebase"
      description "Servicios en Firebase (Web Admin, Storage, Auth)."
      include c_web_admin
      include c_storage

    }

    // Deployment — slice GitHub Pages
    deployment system_ibmcs "Production" "deploy-ghpages" {
      autoLayout tb
      title "Deployment – GitHub Pages"
      description "Landing estático."
      include c_landing
    }

    // Deployment — slice Devices
    deployment system_ibmcs "Production" "deploy-devices" {
      autoLayout tb
      title "Deployment – Devices"
      description "Dispositivo ESP32 y móviles Android (APK)."
      include c_firmware
      include c_mobile
    }

    // --- Estilos ---
    styles {
      element OurSystem {
        background "#1168bd"
        color "#ffffff"
        stroke "#0b3a6e"
        strokeWidth 2
      }

      element External {
        background "#e0e0e0"
        color "#000000"
        border Dashed
        stroke "#7a7a7a"
        strokeWidth 2
      }

      element Person {
        shape Person
        background "#08427b"
        color "#ffffff"
        stroke "#062f61"
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
    }
  }
}
