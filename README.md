<hr>

<h1 align="center"> Informe de Trabajo Final </h1>

<h3 align="center"> Universidad Peruana de Ciencias Aplicadas </h3>

<h3 align="center"> Ingeniería de Software </h3>

<h3 align="center">Ciclo 2025 - 2</h3>

<div align="center">
  <img width=250 src="https://upload.wikimedia.org/wikipedia/commons/f/fc/UPC_logo_transparente.png"/>
</div>

<h1 align="center"> TB1 Report </h1>

<h3 align="center"> Docente: Vera Olivera, David Carlos </h3>

<h3 align="center"> 1ASI0572 - Desarrollo de Soluciones IoT </h3>

<h4 align="center"> NRC: 3355 </h4>

<h3> Startup: ------ </h3>

<h3> Product: ------ </h3>

<h3> Team Members: </h3>

<div align="center">

| Member                              |    Code    |
| :---------------------------------- | :--------: |
| Roca Huapaya, Orlando Arturo        | U201919742 |
| Del Carmen Zorrilla, Ray Alessandro | U202124061 |
| Pardo Zapata, Gustavo Adolfo        | u202120347 |
| ##                                  |     ##     |
| ##                                  |     ##     |
| ##                                  |     ##     |

</div>

<h3 align="center">Agosto, 2025</h3>

<br><br>

# Registro de Versiones del Informe

<br><br>

# Project Report Collaboration Insights

<br><br>

# Contenido

## Tabla de Contenidos

### [Registro de versiones del informe](#registro-de-versiones-del-informe)

### [Project Report Collaboration Insights](#project-report-collaboration-insights)

### [Contenido](#contenido)

### [Student Outcome](#student-outcome-1)

### [Capítulo I: Introducción](#capítulo-i-introducción-1)

- [1.1. Startup Profile](#11-startup-profile)
  - [1.1.1. Descripción de la Startup](#111-descripción-de-la-startup)
  - [1.1.2. Perfiles de integrantes del equipo](#112-perfiles-de-integrantes-del-equipo)
- [1.2. Solution Profile](#12-solution-profile)
  - [1.2.1 Antecedentes y problemática](#121-antecedentes-y-problemática)
  - [1.2.2 Lean UX Process](#122-lean-ux-process)
    - [1.2.2.1. Lean UX Problem Statements](#1221-lean-ux-problem-statements)
    - [1.2.2.2. Lean UX Assumptions](#1222-lean-ux-assumptions)
    - [1.2.2.3. Lean UX Hypothesis Statements](#1223-lean-ux-hyphotesis-statements)
    - [1.2.2.4. Lean UX Canvas](#1224-lean-ux-canvas)
- [1.3. Segmentos objetivo](#13-segmentos-objetivo)

### [Capítulo II: Requirements Elicitation & Analysis](#capítulo-ii-requirements-elicitation--analysis-1)

- [2.1. Competidores](#21-competidores)
  - [2.1.1. Análisis competitivo](#211-análisis-competitivo)
  - [2.1.2. Estrategias y tácticas frente a competidores](#212-estrategias-y-tácticas-frente-a-competidores)
- [2.2. Entrevistas](#22-entrevistas)
  - [2.2.1. Diseño de entrevistas](#221-diseño-de-entrevistas)
  - [2.2.2. Registro de entrevistas](#222-registro-de-entrevistas)
  - [2.2.3. Análisis de entrevistas](#223-análisis-de-entrevistas)
- [2.3. Needfinding](#23-needfinding)
  - [2.3.1. User Personas](#231-user-personas)
  - [2.3.2. User Task Matrix](#232-user-task-matrix)
  - [2.3.3. User Journey Mapping](#233-user-journey-mapping)
  - [2.3.4. Empathy Mapping](#234-empathy-mapping)
  - [2.3.5. As-is Scenario Mapping](#235-as-is-scenario-mapping)
- [2.4. Ubiquitous Language](#24-ubiquitous-language)

### [Capítulo III: Requirements Specification](#capítulo-iii-requirements-specification-1)

- [3.1. To-Be Scenario Mapping](#31-to-be-scenario-mapping)
- [3.2. User Stories](#32-user-stories)
- [3.3. Impact mapping](#33-impact-mapping)
- [3.4. Product Backlog](#34-product-backlog)

### [Capítulo IV: Solutions Software Design](#capítulo-iv-solution-software-design)

- [4.1. Strategic-Level Domain-Driven Design](#41-strategic-level-domain-driven-design)
  - [4.1.1. EventStorming](#411-eventstorming)
    - [4.1.1.1. Candidate Context Discovery](#4111-candidate-context-discovery)
    - [4.1.1.2. Domain Message Flows Modeling](#4112-domain-message-flows-modeling)
    - [4.1.1.3. Bounded COntext Canvases](#4113-bounded-context-canvases)
  - [4.1.2. Context Mapping](#412-context-mapping)
  - [4.1.3. Software Architecture](#413-software-architecture)
    - [4.1.3.1. Software Architecture System Landscape Diagram](#4131-software-architecture-system-landscape-diagram)
    - [4.1.3.2. Software Architecture Context Level Diagrams](#4132-software-architecture-context-level-diagrams)
    - [4.1.3.3. Software Architecture Container Level Diagrams](#4133-software-architecture-container-level-diagrams)
    - [4.1.3.4. Software Architecture Deployment Diagrams](#4134-software-architecture-deployment-diagrams)
- [4.2. Tactical-Level Domain-Driven Design](#42-tactical-level-domain-driven-design)
  - [4.2.X. Bounded Context: <Bounded Context name>](#42x-bounded-context)
    - [4.2.X.1. Domain Layer](#42x1-domain-layer)
    - [4.2.X.2. Interface Layer](#42x2-interface-context)
    - [4.2.X.3. Application Layer](#42x3-application-context)
    - [4.2.X.4. Infrastructure Layer](#42x4-infrastructure-context)
    - [4.2.X.5. Bounded Context Software Architecture Component Level Diagrams](#42x5-bounded-context-software-architecture-component-level-diagrams)
    - [4.2.X.6. Bounded Context Software Architecture Code Level Diagrams](#42x6-bounded-context-software-architecture-code-level-diagrams)
      - [4.2.X.6.1. Bounded Context Domain Layer Class Diagrams](#42x61-bounded-context-domain-layer-class-diagrams)
      - [4.2.X.6.2. Bounded Context Database Design Diagram](#42x62-bounded-context-database-design-diagram)

### [Capítulo V: Solution UI/UX Design](#capítulo-v-solutions-uiux-design)

- [5.1. Style Guidelines](#51-style-guidelines)
  - [5.1.1. General Style Guidelines](#511-general-style-guidelines)
  - [5.1.2. Web, Mobile and IoT Style Guidelines](#512-web-mobile-and-iot-style-guidelines)
- [5.2. Information Architecture](#52-information-architecture)
  - [5.2.1. Organization Systems](#521-organization-systems)
  - [5.2.2. Labeling Systems](#522-labeling-systems)
  - [5.2.3. SEO Tags and Meta Tags](#523-seo-tags-and-meta-tags)
  - [5.2.4. Searching Systems](#524-searching-systems)
  - [5.2.5. Navigation Systems](#525-navigation-systems)
- [5.3. Landing Page UI Design](#53-landing-page-ui-design)
  - [5.3.1. Landing Page Wireframe](#531-landing-page-wireframe)
  - [5.3.2. Landing Page Mock-up](#532-landing-page-mock-up)
- [5.4. Applications UX/UI Design](#54-web-applications-uxui-design)
  - [5.4.1. Applications Wireframes](#541-web-applications-wireframes)
  - [5.4.2. Applications Wireflow Diagrams](#542-web-applications-wireflow-diagrams)
  - [5.4.3. Applications Mock-ups](#543-web-applications-mock-ups)
  - [5.4.4. Applications User Flow Diagrams](#544-web-applications-user-flow-diagrams)
- [5.5. Aplications Prototyping](#55-applications-prototyping)

### [Capítulo VI: Product Implementation, Validation \& Deployment](#capítulo-vi-product-implementation-validation--deployment)

- [6.1. Software Configuration Management](#61-software-configuration-management)
  - [6.1.1. Software Development Environment Configuration](#611-software-development-environment-configuration)
  - [6.1.2. Source Code Management](#612-source-code-management)
  - [6.1.3. Source Code Style Guide \& Conventions](#613-source-code-style-guide--conventions)
  - [6.1.4. Software Deployment Configuration](#614-software-deployment-configuration)
- [6.2. Landing Page, Services \& Applications Implementation](#62-landing-page-services--applications-implementation)
  - [6.2.X. Sprint X](#62x-sprint-n)
    - [6.2.X.1. Sprint Planning 1](#62x1-sprint-planning-n)
    - [6.2.X.2. Sprint Backlog 1](#62x2-sprint-backlog-n)
    - [6.2.X.3. Development Evidence for Sprint Review](#62x3-development-evidence-for-sprint-review)
    - [6.2.X.4. Testing Suite Evidence for Sprint Review](#62x4-testing-suite-evidence-for-sprint-review)
    - [6.2.X.5. Execution Evidence for Sprint Review](#62x5-execution-evidence-for-sprint-review)
    - [6.2.X.6. Services Documentation Evidence for Sprint Review](#62x6-services-documentation-evidence-for-sprint-review)
    - [6.2.X.7. Software Deployment Evidence for Sprint Review](#62x7-software-deployment-evidence-for-sprint-review)
    - [6.2.X.8. Team Collaboration Insights during Sprint](#62x8-team-collaboration-insights-during-sprint)
- [6.3. Validation Interviews](#63-validation-interviews)
  - [6.3.1. Diseño de Entrevistas](#631-diseño-de-entrevistas)
  - [6.3.2. Registro de Entrevistas](#632-registro-de-entrevistas)
  - [6.3.3. Evaluaciones según heurísticas](#633-evaluaciones-según-heurísticas)
- [6.4. Video About-the-Product](#64-video-about-the-product)

### [Conclusiones](#conclusiones-1)

- [Conclusiones y recomendaciones](#conclusiones-y-recomendaciones)
- [Video About-the-Team](#video-about-the-team)

### [Bibliografía](#bibliografía-1)

### [Anexos](#anexos-1)

<br><br>

# Student Outcome

<b>ABET – EAC - Student Outcome 5:</b> La capacidad de funcionar efectivamente en un equipo cuyos miembros juntos proporcionan liderazgo, crean un entorno de colaboración e inclusivo, establecen objetivos, planifican tareas y cumplen objetivos.

<br><br>

# Capítulo I: Introducción

## 1.1. StartUp Profile

### 1.1.1. Descripción de la StartUp

ReciclaMar surge como una solución ante la creciente preocupación por la contaminación en playas urbanas del Perú. La presencia de residuos metálicos como latas y chapas deteriora la experiencia turística, eleva los costos de limpieza y pone en riesgo la seguridad de los visitantes. Al mismo tiempo, la falta de incentivos claros, la ausencia de trazabilidad y el uso de contenedores no inteligentes dificultan una gestión eficiente por parte de las municipalidades y limitan la participación ciudadana en el reciclaje.

ReciclaMar propone RIMP (Recolector Inteligente de Metales para Playas), un sistema IoT que valida automáticamente que el residuo sea metálico mediante un sensor, identifica al usuario con RFID y habilita la apertura de una compuerta para el depósito.desarrollamos una plataforma web y móvil que permite a las personas reciclar y acumular puntos por municipalidad para canjear en comercios aliados.

### 1.1.2. Perfiles de integrantes del equipo

| Foto                                                     | Apellidos y Nombres               |          Código | Carrera                | Conocimientos y contribución principal                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| -------------------------------------------------------- | --------------------------------- | --------------: | ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ![Orlando Roca](./foto_integrantes/orlando_roca.JPG)     | **Roca Huapaya, Orlando Arturo**  |      u201919742 | Ingeniería de Software | Mi contribución al equipo es la experiencia que tengo desarrollando interfaces en React o Vue y servicios de APIs REST en Spring Boot o Laravel. Me enfoco en que el producto sea usable, estable y fácil de desplegar. Además, priorizaré el uso de buenas prácticas en el ciclo de desarrollo del software.                                                                                                                                                                                |
| ![Gustavo Pardo](./foto_integrantes/PerfilGustavo.jpg)   | **Pardo Zapata, Gustavo Adolfo**  |      u202120347 | Ingeniería de Software | Soy proactivo, colaborativo, organizado,responsable y con habilidades de resolución de problemas.Tengo una excelente capacidad para comunicarme de manera efectiva y clara con los demás miembros de mi equipo y deseo colaborar en todo lo posible con mis demás compañeros en este trabajo. Cuento con conocimiento en JavaScript, Java, Python, C# y SQL.                                                                                                                                 |
| ![Johan Quiñones](./foto_integrantes/JohanQuinones.jpeg) | **Quiñones Tintaya, Johan Jorge** |      u202218183 | Ingeniería de Software | He adquirido una base sólida en algoritmos y programación orientada a objetos, lo que me permite enfrentar desafíos de desarrollo con eficacia. Además, me destaco por mi capacidad para trabajar en equipo, manteniendo una comunicación clara y efectiva que facilita la colaboración. Estoy comprometido con mi crecimiento profesional y busco constantemente mejorar mis habilidades para contribuir de manera significativa en proyectos y equipos, ofreciendo soluciones innovadoras. |
| _(colocar foto)_                                         | **Integrante 4**                  | [por completar] | [carrera]              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| _(colocar foto)_                                         | **Integrante 5**                  | [por completar] | [carrera]              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| _(colocar foto)_                                         | **Integrante 6**                  | [por completar] | [carrera]              |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |

## 1.2. Solution Profile

### 1.2.1. Antecedentes y problemática

En las playas de Lima persiste la acumulación de residuos metálicos como latas, tapas y chapas que deteriora la experiencia turística, eleva costos de limpieza y genera riesgos para la salud. Según DIGESA reportó en el verano 2024 que de 131 playas vigiladas, 89 eran “no saludables” principalmente por limpieza y presencia de residuos sólidos, lo que evidencia la magnitud del problema. La solución propuesta, para el reciclaje de metales debe verificar automáticamente que el residuo sea metálico y abrir una compuerta segura para evitar fraudes, también identificar al usuario vía RFID para asignar puntos por municipalidad y habilitar canjes en comercios aliados. El objetivo es incrementar la tasa de reciclaje de metal en temporada alta, recuperar mayor volumen por playa y reducir tiempos y costos de recolección. El alcance y restricciones del piloto se delimitan a 1 o 3 playas de Lima, enfocarnos exclusivamente en el reciclaje de metales en la versión inicial, recompensas gestionadas por cada municipalidad o comercio.

#### 5W + 2H

##### What (¿qué?)

Acumulación de residuos metálicos en arena como latas, tapas y chapas, esto afecta salubridad y operación municipal en las playas.

##### When (¿cuándo?)

Todo el año, con picos en temporada de verano y fines de semana.

##### Where (¿dónde?)

Playas de Lima, áreas de alto tránsito donde se han medido y caracterizado residuos, incluyendo metálicos peligrosos.

##### Who (¿quiénes?)

Bañistas y municipalidades.

##### Why (¿por qué?)

Infraestructura de residuos insuficiente e ineficientes, falta de incentivos que vincule el acto de reciclar con beneficios y datos útiles para gestión.

##### How (¿cómo sucede?)

Los visitantes consumen bebidas y dejan latas o chapas en la arena. El estudio de Villacorta-Córdova et al. (2021), publicado en la Revista Científica UNJFSC, evidenció en cuatro playas de la Costa Verde la presencia de 55 objetos metálicos, principalmente latas oxidadas y punzantes en zonas de bañistas, lo que confirma el riesgo para la salud y la convivencia de metales en las playas.

##### How much (¿cuánto?)

- 89 playas “no saludables” al inicio de verano 2024, principalmente por residuos sólidos en arena.

- En las playas de la Costa Verde se encontraron 55 ítems metálicos, 42% fueron latas de bebidas.

### 1.2.2. Lean UX Process

#### 1.2.2.1. Lean UX Problem Statements

Ante esta situación nuestra Startup se plantea las siguientes Problem Statements:

**PS1:**

- **Objetivos actuales del producto:** Mantener las playas seguras para el disfrute turístico y recreativo.
- **Problema:** Los bañistas enfrentan constantemente playas con residuos metálicos como latas, tapas y chapas, lo que genera riesgos de cortes, incomodidad y reduce la calidad de la experiencia turística. Actualmente, no existe un sistema que valide los materiales ni incentive a los usuarios a reciclar.
- **Pregunta solicitud de mejora:** ¿Cómo podemos diseñar un recolector inteligente que valide automáticamente el residuo metálico, identifique al usuario y entregue recompensas inmediatas, incentivando así la participación activa de los bañistas en la limpieza de las playas?

**PS2:**

- **Objetivos actuales del producto:** Garantizar la salubridad de las playas, optimizar la recolección de residuos y reducir costos de limpieza.
- **Problema:** Las municipalidades gastan recursos elevados en limpieza manual de playas sin contar con datos en tiempo real ni mecanismos de trazabilidad. Esto dificulta la toma de decisiones y el control de rutas de recolección.
- **Pregunta solicitud de mejora:** ¿Cómo podemos proveer a las municipalidades de un sistema IoT que registre en tiempo real los residuos recolectados, emita alertas de llenado y entregue KPIs útiles para planificar rutas y evaluar el impacto ambiental y económico?

#### 1.2.2.2. Lean UX Assumptions

**Business Outcomes**

- Aumentar la tasa de reciclaje de metales en playas urbanas de Lima y el volumen recuperado por playa.
- Reducir tiempo y costo de limpieza municipal mediante telemetría y alertas de llenado.
- Conseguir acuerdos con comercios locales para sostener el sistema de canjes y mejorar la adopción.
- Lograr pilotos con 1 o 3 playas por municipio.
- Generar datos confiables como kg y usos, para reportes y toma de decisiones.

**User Assumptions (sobre los usuarios)**

- Bañistas reciclarán si el proceso es rápido, seguro y reciben beneficios inmediatos.
- Aceptarán usar tarjeta RFID si el registro toma menos de 1 minuto y no solicita datos sensibles.
- Municipalidades adoptarán la solución si muestra ahorros operativos y KPIs claros.

**User Outcomes (lo que experimentan/ganan)**

- Los bañistas depositan sus latas en segundos, reciben puntos y visualizan sus resultados desde la app.
- Las municipalidades evidencian mejoras de salubridad con métricas.
- Los operadores reducen tiempos de recolección.

**Feature Assumptions (sobre funcionalidades)**

- Sensor inductivo valida metal con baja tasa de falsos positivos y abre compuerta.
- RFID identifica al usuario y permite la recolección de puntos y canjes en comercios aliados.
- Dashboard municipal con métricas, KPIs y alertas de llenado.
- App web y móvil para registro, puntaje y catálogo de canjes.
- Arquitectura Edge con opción de energía solar para continuidad operativa.

#### 1.2.2.3. Lean UX Hyphotesis Statements

- Creemos que aumentaremos la tasa de reciclaje de metales y el volumen recuperado por playa (business outcome) si los bañistas (user) pueden depositar sus latas en segundos y reciben puntos inmediatos (benefit) con sensor inductivo, compuerta y RFID de registro en menos de 1 minuto (feature).

  Sabremos que hemos tenido éxito

  Cuando al menos el 40% de usuarios registrados realicen mas de 2 depósitos por semana en temporada alta.

- Creemos que incrementaremos la adopción de la app y los canjes (business outcome)  
  si los bañistas (user) visualizan sus puntos y un catálogo de canjes locales claro (benefit)  
  con la app web o móvil y validación de canje en comercios aliados (feature).

  Sabremos que hemos tenido éxito.

  Cuando la tasa de canje mensual sea mayor o igual al 30% de usuarios activos y se registren mas de 50 canjes por mes.

- Creemos que mejoraremos la satisfacción y la confianza en el sistema (business outcome) si los bañistas (user) perciben que su reciclaje es trazable y antifraude (benefit) con RFID personal, historial en la app y validación de metal antes de abrir la compuerta (feature).

  Sabremos que hemos tenido éxito

  Cuando 8 de cada 10 usuarios se declaren seguros o muy seguros, y los eventos inválidos no excedan el 5%

- Creemos que reduciremos tiempo y costo de limpieza (business outcome)  
  si las municipalidades (user) reciben alertas de llenado para planificar rutas (benefit)  
  con dashboard municipal (feature).

  Sabremos que hemos tenido éxito.

  Cuando el tiempo promedio por ruta baje más del 20% y el costo operativo por tonelada baje más del 15% durante 8 semanas de piloto.

- Creemos que fortaleceremos la planificación y la transparencia (business outcome)  
  si las municipalidades (user) confían en KPIs trazables (benefit)  
  con latencia de datos menor de 5 minutos (feature).

  Sabremos que hemos tenido éxito

  Cuando el dashboard sea consultado semanalmente y se realice más de 1 ajuste de ruta por semana basado en los KPIs.

- Creemos que atraeremos comercios locales (business outcome)  
  si las municipalidades (user) observan ahorros operativos y evidencia de canjes (benefit)  
  con acuerdos de canjes activos (feature).

  Sabremos que hemos tenido éxito

  cuando logremos mas de 10 comercios aliados y mas de 50 canjes por mes en el piloto.

#### 1.2.2.4. Lean UX Canvas

## 1.3. Segmentos objetivo

# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores

### 2.1.1. Análisis competitivo

### 2.1.2. Estrategias y tácticas frente a competidores

## 2.2. Entrevistas

### 2.2.1. Diseño de entrevistas

### 2.2.2. Registro de entrevistas

### 2.2.3. Análisis de entrevistas

## 2.3. Needfinding

### 2.3.1. User Personas

### 2.3.2. User Task Matrix

### 2.3.3. User Journey Mapping

### 2.3.4. Empathy Mapping

### 2.3.5. As-Is Scenario Mapping

## 2.4. Ubiquitous Language

# Capítulo III: Requirements Specification

## 3.1. To-Be Scenario Mapping

## 3.2. User Stories

En esta sección, se presenta las User Stories diseñadas que cumplen con las necesidades de los usuarios finales.

<table align=center">
  <thead align="center">
    <tr>
      <th>Epic/User Story ID</th>
      <th>Título</th>
      <th>Descripción</th>
      <th>Criterios de Aceptación</th>
      <th>Relación (EPIC ID)</th>
    </tr>
  </thead>
  <tbody align="center">
    <!-- EP-01 -->
    <tr style="background-color:#F3F8FF; border-left:6px solid #2563EB;">
      <td><strong>EP-01</strong></td>
      <td><strong>Difusión y captación (Landing Page)</strong></td>
      <td align="justify">
        <strong>Como</strong> visitante, <strong>quiero</strong> acceder a un sitio web público con información clara de Metalix,
        <strong>para</strong> conocer beneficios, municipalidades y opciones de contacto.
      </td>
      <td align="justify">
        <strong>Escenario 1: Visualización general de la landing</strong><br>
        <strong>Dado</strong> que un visitante accede al sitio,<br>
        <strong>Cuando</strong> ingresa a la URL principal,<br>
        <strong>Entonces</strong> visualiza una landing con secciones de características/beneficios, municipalidades participantes, preguntas frecuentes y formulario de contacto.
      </td>
      <td>–</td>
    </tr>
    <!-- HU-01 -->
    <tr>
      <td><strong>HU-01</strong></td>
      <td>Ver municipalidades participantes</td>
      <td align="justify">
        <strong>Como</strong> visitante, <strong>quiero</strong> ver las municipalidades adheridas al programa, 
        <strong>para</strong> saber si mi distrito participa y dónde.
      </td>
      <td align="justify">
        <strong>Escenario 1: Listado disponible</strong><br>
        <strong>Dado</strong> que el usuario está en la sección “Municipalidades”,<br>
        <strong>Cuando</strong> consulta el contenido,<br>
        <strong>Entonces</strong> se muestran las municipalidades con nombre y distrito.
        <br><br>
        <strong>Escenario 2: Sin registros</strong><br>
        <strong>Dado</strong> que no hay municipalidades registradas,<br>
        <strong>Cuando</strong> el usuario consulta,<br>
        <strong>Entonces</strong> aparece el mensaje “Próximamente”.
      </td>
      <td>EP-01</td>
    </tr>
    <!-- HU-02 -->
    <tr>
      <td><strong>HU-02</strong></td>
      <td>Ver recompensas destacadas</td>
      <td align="justify">
        <strong>Como</strong> visitante, <strong>quiero</strong> visualizar recompensas de ejemplo, 
        <strong>para</strong> entender el valor del programa y motivarme a participar.
      </td>
      <td align="justify">
        <strong>Escenario 1: Visualización de recompensas</strong><br>
        <strong>Dado</strong> que el usuario accede a la sección “Beneficios”,<br>
        <strong>Cuando</strong> consulta el contenido,<br>
        <strong>Entonces</strong> se muestran recompensas con nombre y puntos requeridos.
        <br><br>
        <strong>Escenario 2: Sin recompensas</strong><br>
        <strong>Dado</strong> que no existen recompensas registradas,<br>
        <strong>Cuando</strong> el usuario consulta,<br>
        <strong>Entonces</strong> aparece “Aún no hay recompensas disponibles”.
      </td>
      <td>EP-01</td>
    </tr>
    <!-- HU-03 -->
    <tr>
      <td><strong>HU-03</strong></td>
      <td>Conocer proceso para obtener tarjeta RFID</td>
      <td align="justify">
        <strong>Como</strong> visitante, <strong>quiero</strong> conocer los pasos para obtener mi tarjeta de reciclaje, 
        <strong>para</strong> empezar a usar el sistema y acumular puntos.
      </td>
      <td align="justify">
        <strong>Escenario 1: Visualización del proceso</strong><br>
        <strong>Dado</strong> que el usuario accede a la sección “Obtén tu tarjeta”,<br>
        <strong>Cuando</strong> revisa el contenido,<br>
        <strong>Entonces</strong> visualiza los pasos del proceso y las municipalidades asociadas.
      </td>
      <td>EP-01</td>
    </tr>
    <!-- HU-04 -->
    <tr>
      <td><strong>HU-04</strong></td>
      <td>Consultar FAQ y enviar contacto general</td>
      <td align="justify">
        <strong>Como</strong> visitante, <strong>quiero</strong> resolver dudas frecuentes y enviar consultas generales, 
        <strong>para</strong> recibir información y soporte oportuno.
      </td>
      <td align="justify">
        <strong>Escenario 1: Consulta de FAQ</strong><br>
        <strong>Dado</strong> que el usuario accede a la sección “FAQ”,<br>
        <strong>Cuando</strong> la consulta,<br>
        <strong>Entonces</strong> se muestran preguntas y respuestas vigentes.<br><br>
        <strong>Escenario 2: Envío de contacto exitoso</strong><br>
        <strong>Dado</strong> que el usuario completa el formulario con datos válidos,<br>
        <strong>Cuando</strong> hace clic en “Enviar”,<br>
        <strong>Entonces</strong> se muestra una confirmación visual del envío.<br><br>
        <strong>Escenario 3: Error por datos incompletos</strong><br>
        <strong>Dado</strong> que el usuario no completa los campos obligatorios,<br>
        <strong>Cuando</strong> intenta enviar el formulario,<br>
        <strong>Entonces</strong> se muestra un mensaje indicando los campos faltantes.
      </td>
      <td>EP-01</td>
    </tr>
    <!-- HU-05 -->
    <tr>
      <td><strong>HU-05</strong></td>
      <td>Registrar interés municipal</td>
      <td align="justify">
        <strong>Como</strong> representante de municipalidad, <strong>quiero</strong> registrar una solicitud de adhesión, 
        <strong>para</strong> que la empresa evalúe mi incorporación y me contacte.
      </td>
      <td align="justify">
        <strong>Escenario 1: Registro exitoso</strong><br>
        <strong>Dado</strong> que el representante completa el formulario con datos válidos,<br>
        <strong>Cuando</strong> envía la solicitud,<br>
        <strong>Entonces</strong> el sistema registra la solicitud y muestra confirmación.<br><br>
        <strong>Escenario 2: Error de validación</strong><br>
        <strong>Dado</strong> que el representante deja campos obligatorios vacíos o inválidos,<br>
        <strong>Cuando</strong> intenta enviar la solicitud,<br>
        <strong>Entonces</strong> el sistema muestra mensajes de error de validación.
      </td>
      <td>EP-01</td>
    </tr>
    <!-- EP-02 -->
    <tr style="background-color:#F3F8FF; border-left:6px solid #2563EB;">
      <td><strong>EP-02</strong></td>
      <td><strong>Acceso seguro a la plataforma</strong></td>
      <td align="justify">
        <strong>Como</strong> usuario, <strong>quiero</strong> registrarme, iniciar sesión, recuperar contraseña y cerrar sesión de forma segura,
        <strong>para</strong> acceder a funcionalidades personalizadas y proteger mi información.
      </td>
      <td align="justify">
        <strong>Escenario 1: Autenticación exitosa</strong><br>
        <strong>Dado</strong> que soy un usuario en la aplicación,<br>
        <strong>Cuando</strong> ejecuto la acción de inicio de sesión o registro de manera correcta,<br>
        <strong>Entonces</strong> mis datos se guardan o validan satisfactoriamente<br>
        <strong>Y</strong> se muestra un mensaje de éxito.
        <br><br>
        <strong>Escenario 2: Autenticación fallida</strong><br>
        <strong>Dado</strong> que soy un usuario en la aplicación,<br>
        <strong>Cuando</strong> ejecuto la acción de inicio de sesión o de registro con datos incorrectos,<br>
        <strong>Entonces</strong> se muestra un mensaje de error detallado<br>
        <strong>Y</strong> no se completa la transacción.
      </td>
      <td>–</td>
    </tr>
    <!-- HU-06 -->
    <tr>
      <td><strong>HU-06</strong></td>
      <td>Registro de cuenta</td>
      <td align="justify">
        <strong>Como</strong> visitante, <strong>quiero</strong> crear una cuenta como bañista o municipalidad,
        <strong>para</strong> acceder a la aplicación según mi rol.
      </td>
      <td align="justify">
        <strong>Escenario 1: Registro exitoso</strong><br>
        <strong>Dado</strong> que ingreso datos válidos,<br>
        <strong>Cuando</strong> ejecuto la acción de registro,<br>
        <strong>Entonces</strong> se crea la cuenta y se muestra confirmación.
        <br><br>
        <strong>Escenario 2: Correo duplicado</strong><br>
        <strong>Dado</strong> que el correo ya está registrado,<br>
        <strong>Cuando</strong> intento registrarme,<br>
        <strong>Entonces</strong> aparece el mensaje “correo ya registrado”.
        <br><br>
        <strong>Escenario 3: Contraseña débil</strong><br>
        <strong>Dado</strong> que ingreso una contraseña que no cumple los requisitos de seguridad,<br>
        <strong>Cuando</strong> intento registrarme,<br>
        <strong>Entonces</strong> se muestra un mensaje con los requisitos mínimos.
      </td>
      <td>EP-02</td>
    </tr>
    <!-- HU-07 -->
    <tr>
      <td><strong>HU-07</strong></td>
      <td>Inicio de sesión</td>
      <td align="justify">
        <strong>Como</strong> usuario, <strong>quiero</strong> iniciar sesión con mis credenciales,
        <strong>para</strong> acceder a mi panel según mi rol.
      </td>
      <td align="justify">
        <strong>Escenario 1: Inicio de sesión exitoso</strong><br>
        <strong>Dado</strong> que ingreso credenciales válidas,<br>
        <strong>Cuando</strong> ejecuto la acción de inicio de sesión,<br>
        <strong>Entonces</strong> accedo a mi panel según mi rol.
        <br><br>
        <strong>Escenario 2: Credenciales inválidas</strong><br>
        <strong>Dado</strong> que ingreso credenciales inválidas,<br>
        <strong>Cuando</strong> intento iniciar sesión,<br>
        <strong>Entonces</strong> se muestra un mensaje de error y permanece la vista de login.
      </td>
      <td>EP-02</td>
    </tr>
    <!-- HU-08 -->
    <tr>
      <td><strong>HU-08</strong></td>
      <td>Recuperar contraseña</td>
      <td align="justify">
        <strong>Como</strong> usuario, <strong>quiero</strong> recuperar mi contraseña por correo,
        <strong>para</strong> restablecer el acceso a mi cuenta.
      </td>
      <td align="justify">
        <strong>Escenario 1: Solicitud válida</strong><br>
        <strong>Dado</strong> que ingreso un correo válido y registrado,<br>
        <strong>Cuando</strong> solicito la recuperación,<br>
        <strong>Entonces</strong> recibo un enlace temporal para restablecer la contraseña.
        <br><br>
        <strong>Escenario 2: Correo no registrado</strong><br>
        <strong>Dado</strong> que ingreso un correo no registrado,<br>
        <strong>Cuando</strong> solicito la recuperación,<br>
        <strong>Entonces</strong> se muestra un mensaje de error indicando que el correo no existe.
      </td>
      <td>EP-02</td>
    </tr>
    <!-- HU-09 -->
    <tr>
      <td><strong>HU-09</strong></td>
      <td>Cerrar sesión</td>
      <td align="justify">
        <strong>Como</strong> usuario, <strong>quiero</strong> cerrar sesión,
        <strong>para</strong> proteger mi cuenta en dispositivos compartidos.
      </td>
      <td align="justify">
        <strong>Escenario 1: Cierre de sesión exitoso</strong><br>
        <strong>Dado</strong> que tengo una sesión activa,<br>
        <strong>Cuando</strong> ejecuto la acción de cerrar sesión,<br>
        <strong>Entonces</strong> el sistema invalida el token de sesión y me redirige al login.
      </td>
      <td>EP-02</td>
    </tr>
    <!-- TS-01 -->
    <tr>
      <td><strong>TS-01</strong></td>
      <td>API de autenticación con JWT</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> exponer endpoints de registro, login y logout seguros,
        <strong>para</strong> garantizar autenticación protegida basada en <em>JWT</em>.
      </td>
      <td align="justify">
        <strong>Escenario 1: Emisión de token</strong><br>
        <strong>Dado</strong> credenciales válidas,<br>
        <strong>Cuando</strong> el backend autentica al usuario,<br>
        <strong>Entonces</strong> retorna un <em>JWT</em> con expiración definida.
        <br><br>
        <strong>Escenario 2: Acceso a ruta protegida sin token</strong><br>
        <strong>Dado</strong> una petición sin token o con token inválido,<br>
        <strong>Cuando</strong> intenta acceder a una ruta protegida,<br>
        <strong>Entonces</strong> responde con <code>401 Unauthorized</code>.
        <br><br>
        <strong>Escenario 3: Almacenamiento seguro de contraseña</strong><br>
        <strong>Dado</strong> una contraseña enviada en registro o cambio,<br>
        <strong>Cuando</strong> se persiste en la base de datos,<br>
        <strong>Entonces</strong> queda almacenada con <em>hash</em> seguro (p. ej., <em>bcrypt</em>).
      </td>
      <td>EP-02</td>
    </tr>
    <!-- EP-03 -->
    <tr style="background-color:#F3F8FF; border-left:6px solid #2563EB;">
      <td><strong>EP-03</strong></td>
      <td><strong>Gestión de perfil de usuario</strong></td>
      <td align="justify">
        <strong>Como</strong> usuario, <strong>quiero</strong> editar datos básicos de mi perfil,
        <strong>para</strong> mantener la información actualizada.
      </td>
      <td align="justify">
        <strong>Escenario 1: Acceso a la vista de perfil</strong><br>
        <strong>Dado</strong> que tengo una sesión activa,<br>
        <strong>Cuando</strong> accedo a la sección “Mi perfil”,<br>
        <strong>Entonces</strong> visualizo mis datos personales y de contacto disponibles para edición.
        <br><br>
        <strong>Escenario 2: Persistencia de cambios</strong><br>
        <strong>Dado</strong> que edito uno o más campos válidos,<br>
        <strong>Cuando</strong> guardo los cambios,<br>
        <strong>Entonces</strong> el sistema persiste la información y muestra una confirmación de éxito.
      </td>
      <td>–</td>
    </tr>
    <!-- HU-10 -->
    <tr>
      <td><strong>HU-10</strong></td>
      <td>Editar perfil</td>
      <td align="justify">
        <strong>Como</strong> usuario, <strong>quiero</strong> actualizar datos personales y de contacto,
        <strong>para</strong> mantener mi información vigente en la plataforma.
      </td>
      <td align="justify">
        <strong>Escenario 1: Edición exitosa</strong><br>
        <strong>Dado</strong> que ingreso datos válidos en los campos editables,<br>
        <strong>Cuando</strong> guardo los cambios,<br>
        <strong>Entonces</strong> se actualiza la información y se muestra una confirmación.
        <br><br>
        <strong>Escenario 2: Error de validación por campos obligatorios</strong><br>
        <strong>Dado</strong> que dejo campos obligatorios vacíos o con formato inválido,<br>
        <strong>Cuando</strong> intento guardar los cambios,<br>
        <strong>Entonces</strong> se muestran mensajes de error indicando los campos a corregir.
      </td>
      <td>EP-03</td>
    </tr>
    <!-- EP-04 -->
    <tr style="background-color:#F3F8FF; border-left:6px solid #2563EB;">
      <td><strong>EP-04</strong></td>
      <td><strong>Incentivos y recompensas para bañistas</strong></td>
      <td align="justify">
        <strong>Como</strong> bañista, <strong>quiero</strong> asociar mi tarjeta RFID, consultar puntos, canjear recompensas y revisar mi historial,
        <strong>para</strong> participar activamente y obtener beneficios por reciclar.
      </td>
      <td align="justify">
        <strong>Escenario 1: Acceso al panel de incentivos</strong><br>
        <strong>Dado</strong> que tengo sesión activa,<br>
        <strong>Cuando</strong> ingreso a “Incentivos”,<br>
        <strong>Entonces</strong> visualizo accesos a registrar tarjeta, consultar puntos, canjear recompensas y ver historial.
        <br><br>
        <strong>Escenario 2: Trazabilidad de puntos</strong><br>
        <strong>Dado</strong> que he realizado eventos de reciclaje,<br>
        <strong>Cuando</strong> consulto mi historial y saldo,<br>
        <strong>Entonces</strong> el sistema muestra movimientos con fecha, municipalidad y puntos acreditados, y refleja el total actualizado.
      </td>
      <td>–</td>
    </tr>
    <!-- HU-11 -->
    <tr>
      <td><strong>HU-11</strong></td>
      <td>Registrar tarjeta RFID</td>
      <td align="justify">
        <strong>Como</strong> bañista, <strong>quiero</strong> asociar mi tarjeta RFID a mi cuenta,
        <strong>para</strong> acumular puntos automáticamente al reciclar.
      </td>
      <td align="justify">
        <strong>Escenario 1: Asociación exitosa</strong><br>
        <strong>Dado</strong> que la RFID no está asociada,<br>
        <strong>Cuando</strong> ejecuto el registro de tarjeta,<br>
        <strong>Entonces</strong> la tarjeta queda vinculada a mi cuenta y se muestra confirmación.
        <br><br>
        <strong>Escenario 2: Tarjeta ya asociada</strong><br>
        <strong>Dado</strong> que la RFID ya está vinculada a otra cuenta,<br>
        <strong>Cuando</strong> intento registrarla,<br>
        <strong>Entonces</strong> se rechaza la acción y se informa el motivo.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- HU-12 -->
    <tr>
      <td><strong>HU-12</strong></td>
      <td>Consultar puntos por municipalidad</td>
      <td align="justify">
        <strong>Como</strong> bañista, <strong>quiero</strong> consultar mis puntos acumulados por municipalidad,
        <strong>para</strong> conocer mi avance en cada jurisdicción.
      </td>
      <td align="justify">
        <strong>Escenario 1: Visualización de tabla</strong><br>
        <strong>Dado</strong> que accedo a “Mis puntos”,<br>
        <strong>Cuando</strong> consulto,<br>
        <strong>Entonces</strong> visualizo una tabla con municipalidad y puntos acumulados.
        <br><br>
        <strong>Escenario 2: Sin registros</strong><br>
        <strong>Dado</strong> que no tengo movimientos,<br>
        <strong>Cuando</strong> consulto,<br>
        <strong>Entonces</strong> aparece el mensaje “Sin registros”.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- HU-13 -->
    <tr>
      <td><strong>HU-13</strong></td>
      <td>Ver saldo total</td>
      <td align="justify">
        <strong>Como</strong> bañista, <strong>quiero</strong> consultar mi saldo total de puntos,
        <strong>para</strong> saber cuánto puedo canjear.
      </td>
      <td align="justify">
        <strong>Escenario 1: Cálculo de saldo</strong><br>
        <strong>Dado</strong> que accedo a “Mi saldo”,<br>
        <strong>Cuando</strong> consulto,<br>
        <strong>Entonces</strong> visualizo el total actualizado que corresponde a mis puntos disponibles.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- HU-14 -->
    <tr>
      <td><strong>HU-14</strong></td>
      <td>Canjear recompensas</td>
      <td align="justify">
        <strong>Como</strong> bañista, <strong>quiero</strong> canjear mis puntos por recompensas,
        <strong>para</strong> obtener beneficios del programa.
      </td>
      <td align="justify">
        <strong>Escenario 1: Canje exitoso</strong><br>
        <strong>Dado</strong> que tengo puntos suficientes,<br>
        <strong>Cuando</strong> realizo el canje,<br>
        <strong>Entonces</strong> se descuenta el puntaje, se genera comprobante y se registra la operación.
        <br><br>
        <strong>Escenario 2: Puntos insuficientes</strong><br>
        <strong>Dado</strong> que mi saldo es menor al requerido,<br>
        <strong>Cuando</strong> intento canjear,<br>
        <strong>Entonces</strong> aparece el mensaje “puntos insuficientes” y no se procesa el canje.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- HU-15 -->
    <tr>
      <td><strong>HU-15</strong></td>
      <td>Historial de reciclaje</td>
      <td align="justify">
        <strong>Como</strong> bañista, <strong>quiero</strong> consultar mi historial de reciclaje,
        <strong>para</strong> revisar mis acciones y puntos obtenidos en el tiempo.
      </td>
      <td align="justify">
        <strong>Escenario 1: Listado de actividades</strong><br>
        <strong>Dado</strong> que accedo a “Historial”,<br>
        <strong>Cuando</strong> consulto,<br>
        <strong>Entonces</strong> visualizo fecha, playa/municipalidad y puntos acreditados por evento.
        <br><br>
        <strong>Escenario 2: Sin historial</strong><br>
        <strong>Dado</strong> que aún no tengo actividades registradas,<br>
        <strong>Cuando</strong> consulto,<br>
        <strong>Entonces</strong> aparece “Sin historial”.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- HU-16 -->
    <tr>
      <td><strong>HU-16</strong></td>
      <td>Ranking de bañistas</td>
      <td align="justify">
        <strong>Como</strong> bañista, <strong>quiero</strong> consultar el ranking en mi municipalidad,
        <strong>para</strong> compararme con otros usuarios y motivarme a mejorar.
      </td>
      <td align="justify">
        <strong>Escenario 1: Visualización de ranking</strong><br>
        <strong>Dado</strong> que selecciono una municipalidad,<br>
        <strong>Cuando</strong> consulto el ranking,<br>
        <strong>Entonces</strong> visualizo el top de usuarios con sus puntos acumulados.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- TS-02 -->
    <tr>
      <td><strong>TS-02</strong></td>
      <td>API de RFID y puntos</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> validar RFID y sumar puntos por evento,
        <strong>para</strong> mantener el historial de reciclaje consistente.
      </td>
      <td align="justify">
        <strong>Escenario 1: Acreditación de puntos</strong><br>
        <strong>Dado</strong> una RFID válida y un evento de reciclaje,<br>
        <strong>Cuando</strong> el backend procesa el evento,<br>
        <strong>Entonces</strong> acredita puntos y persiste el registro con timestamp.
        <br><br>
        <strong>Escenario 2: Rechazo por RFID inválida</strong><br>
        <strong>Dado</strong> una RFID inválida o no registrada,<br>
        <strong>Cuando</strong> se intenta procesar el evento,<br>
        <strong>Entonces</strong> se rechaza y se registra el intento fallido.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- TS-03 -->
    <tr>
      <td><strong>TS-03</strong></td>
      <td>API de canje con ID único</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> generar y validar IDs únicos para los canjes,
        <strong>para</strong> evitar duplicados y fraudes.
      </td>
      <td align="justify">
        <strong>Escenario 1: Generación y consumo de ID</strong><br>
        <strong>Dado</strong> un canje válido,<br>
        <strong>Cuando</strong> lo apruebo,<br>
        <strong>Entonces</strong> se genera un ID único y se marca el estado como “canjeado”.
        <br><br>
        <strong>Escenario 2: ID inválido o expirado</strong><br>
        <strong>Dado</strong> un ID ya usado o vencido,<br>
        <strong>Cuando</strong> intento validarlo,<br>
        <strong>Entonces</strong> el sistema retorna “no válido” y no procesa el canje.
      </td>
      <td>EP-04</td>
    </tr>
    <!-- EP-05 -->
    <tr style="background-color:#F3F8FF; border-left:6px solid #2563EB;">
      <td><strong>EP-05</strong></td>
      <td><strong>Gestión municipal del reciclaje</strong></td>
      <td align="justify">
        <strong>Como</strong> municipalidad, <strong>quiero</strong> gestionar recolectores, recompensas, usuarios y reportes,
        <strong>para</strong> optimizar las operaciones de reciclaje y la entrega de incentivos.
      </td>
      <td align="justify">
        <strong>Escenario 1: Acceso al panel municipal</strong><br>
        <strong>Dado</strong> que tengo sesión con rol municipal,<br>
        <strong>Cuando</strong> ingreso a la consola de administración,<br>
        <strong>Entonces</strong> visualizo accesos a recolectores, recompensas, usuarios y reportes.
        <br><br>
        <strong>Escenario 2: Indicadores operativos</strong><br>
        <strong>Dado</strong> que existen datos de operación,<br>
        <strong>Cuando</strong> ingreso al panel principal,<br>
        <strong>Entonces</strong> veo indicadores de ocupación promedio, alertas de llenado y actividad reciente.
      </td>
      <td>–</td>
    </tr>
    <!-- HU-17 -->
    <tr>
      <td><strong>HU-17</strong></td>
      <td>Panel de recolectores</td>
      <td align="justify">
        <strong>Como</strong> municipalidad, <strong>quiero</strong> consultar ubicación, peso/ocupación y estado de cada recolector,
        <strong>para</strong> planificar el retiro oportuno.
      </td>
      <td align="justify">
        <strong>Escenario 1: Visualización de estado</strong><br>
        <strong>Dado</strong> que accedo al panel de recolectores,<br>
        <strong>Cuando</strong> consulto la lista o mapa,<br>
        <strong>Entonces</strong> visualizo ubicación, porcentaje de ocupación (%) y estado operativo de cada recolector.
        <br><br>
        <strong>Escenario 2: Alerta por umbral</strong><br>
        <strong>Dado</strong> que un recolector supera el umbral configurado,<br>
        <strong>Cuando</strong> consulto el panel,<br>
        <strong>Entonces</strong> el estado aparece como “lleno/por recolectar”.
      </td>
      <td>EP-05</td>
    </tr>
    <!-- HU-18 -->
    <tr>
      <td><strong>HU-18</strong></td>
      <td>Administración de recompensas</td>
      <td align="justify">
        <strong>Como</strong> municipalidad, <strong>quiero</strong> añadir, editar o eliminar recompensas,
        <strong>para</strong> ofrecer beneficios actualizados a los bañistas.
      </td>
      <td align="justify">
        <strong>Escenario 1: Alta exitosa</strong><br>
        <strong>Dado</strong> que ingreso datos válidos de una recompensa,<br>
        <strong>Cuando</strong> guardo,<br>
        <strong>Entonces</strong> la recompensa queda disponible para canje.
        <br><br>
        <strong>Escenario 2: Eliminación confirmada</strong><br>
        <strong>Dado</strong> que confirmo la eliminación de una recompensa,<br>
        <strong>Cuando</strong> ejecuto la acción,<br>
        <strong>Entonces</strong> la recompensa se elimina del catálogo.
        <br><br>
        <strong>Escenario 3: Duplicidad</strong><br>
        <strong>Dado</strong> que intento crear un duplicado (mismo nombre + municipalidad),<br>
        <strong>Cuando</strong> guardo,<br>
        <strong>Entonces</strong> se rechaza por duplicidad y se informa el motivo.
      </td>
      <td>EP-05</td>
    </tr>
    <!-- HU-19 -->
    <tr>
      <td><strong>HU-19</strong></td>
      <td>Ranking de bañistas (vista municipal)</td>
      <td align="justify">
        <strong>Como</strong> municipalidad, <strong>quiero</strong> consultar el ranking de bañistas por puntos,
        <strong>para</strong> incentivar la participación y reconocer a los más activos.
      </td>
      <td align="justify">
        <strong>Escenario 1: Ranking por período</strong><br>
        <strong>Dado</strong> que selecciono un rango de fechas,<br>
        <strong>Cuando</strong> consulto el ranking,<br>
        <strong>Entonces</strong> visualizo el top de usuarios con sus puntos acumulados.
        <br><br>
        <strong>Escenario 2: Sin datos</strong><br>
        <strong>Dado</strong> que no existen registros en el período,<br>
        <strong>Cuando</strong> consulto,<br>
        <strong>Entonces</strong> aparece “Sin datos disponibles”.
      </td>
      <td>EP-05</td>
    </tr>
    <!-- HU-20 -->
    <tr>
      <td><strong>HU-20</strong></td>
      <td>Reporte de residuos</td>
      <td align="justify">
        <strong>Como</strong> municipalidad, <strong>quiero</strong> consultar peso y cantidad de residuos recolectados,
        <strong>para</strong> medir el desempeño y planificar la operación.
      </td>
      <td align="justify">
        <strong>Escenario 1: Reporte agregado</strong><br>
        <strong>Dado</strong> que selecciono un rango de fechas,<br>
        <strong>Cuando</strong> consulto el reporte,<br>
        <strong>Entonces</strong> visualizo peso total y frecuencia de llenado por recolector/municipalidad.
        <br><br>
        <strong>Escenario 2: Sin registros</strong><br>
        <strong>Dado</strong> que no existen datos en el rango,<br>
        <strong>Cuando</strong> consulto,<br>
        <strong>Entonces</strong> aparece “No hay registros”.
      </td>
      <td>EP-05</td>
    </tr>
    <!-- HU-21 -->
    <tr>
      <td><strong>HU-21</strong></td>
      <td>Gestión de usuarios municipales</td>
      <td align="justify">
        <strong>Como</strong> municipalidad, <strong>quiero</strong> listar y suspender usuarios en mi jurisdicción,
        <strong>para</strong> mantener el control de acceso y evitar usos indebidos.
      </td>
      <td align="justify">
        <strong>Escenario 1: Suspensión de usuario</strong><br>
        <strong>Dado</strong> que busco un usuario válido,<br>
        <strong>Cuando</strong> lo selecciono y confirmo la suspensión,<br>
        <strong>Entonces</strong> el estado cambia a “suspendido”.
        <br><br>
        <strong>Escenario 2: Intento de canje por suspendido</strong><br>
        <strong>Dado</strong> que un usuario suspendido intenta canjear,<br>
        <strong>Cuando</strong> ejecuta la acción de canje,<br>
        <strong>Entonces</strong> aparece el mensaje “usuario suspendido” y no se procesa el canje.
      </td>
      <td>EP-05</td>
    </tr>
    <!-- TS-04 -->
    <tr>
      <td><strong>TS-04</strong></td>
      <td>Telemetría de recolectores (Edge/IoT)</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> procesar en el edge datos de peso y ocupación,
        <strong>para</strong> optimizar reportes y reducir la latencia.
      </td>
      <td align="justify">
        <strong>Escenario 1: Actualización de ocupación</strong><br>
        <strong>Dado</strong> un <em>payload</em> válido desde el recolector,<br>
        <strong>Cuando</strong> se recibe en el edge,<br>
        <strong>Entonces</strong> se actualiza la ocupación y la hora de la última lectura.
        <br><br>
        <strong>Escenario 2: Alerta por umbral</strong><br>
        <strong>Dado</strong> que el valor reportado supera el umbral,<br>
        <strong>Cuando</strong> el proceso lo valida,<br>
        <strong>Entonces</strong> se emite la alerta “por recolectar” para su atención.
      </td>
      <td>EP-05</td>
    </tr>
    <!-- EP-06 -->
    <tr style="background-color:#F3F8FF; border-left:6px solid #2563EB;">
      <td><strong>EP-06</strong></td>
      <td><strong>Infraestructura técnica y soporte IoT</strong></td>
      <td align="justify">
        <strong>Como</strong> responsable técnico, <strong>quiero</strong> contar con infraestructura y APIs,
        <strong>para</strong> habilitar la operación del sistema Metalix end-to-end.
      </td>
      <td align="justify">
        <strong>Escenario 1: Componentes habilitados</strong><br>
        <strong>Dado</strong> que la plataforma debe operar en producción,<br>
        <strong>Cuando</strong> verifico el estado de los servicios,<br>
        <strong>Entonces</strong> encuentro desplegados la Web App, el backend/API, el broker MQTT y la base de datos con conectividad entre sí.
        <br><br>
        <strong>Escenario 2: Observabilidad básica</strong><br>
        <strong>Dado</strong> que los componentes están en producción,<br>
        <strong>Cuando</strong> ocurre un fallo o degradación,<br>
        <strong>Entonces</strong> se registran logs y métricas y se genera una alerta para atención.
      </td>
      <td>–</td>
    </tr>
    <!-- TS-05 -->
    <tr>
      <td><strong>TS-05</strong></td>
      <td>Despliegue en Azure Web App</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> desplegar la aplicación en Azure Web App,
        <strong>para</strong> garantizar disponibilidad sin manejar contenedores.
      </td>
      <td align="justify">
        <strong>Escenario 1: Aplicación accesible</strong><br>
        <strong>Dado</strong> que realizo un despliegue,<br>
        <strong>Cuando</strong> la aplicación inicia,<br>
        <strong>Entonces</strong> queda accesible en la URL configurada.
        <br><br>
        <strong>Escenario 2: Recuperación ante fallo</strong><br>
        <strong>Dado</strong> un fallo de instancia,<br>
        <strong>Cuando</strong> ocurre,<br>
        <strong>Entonces</strong> el servicio se reinicia automáticamente y vuelve a estar disponible.
      </td>
      <td>EP-06</td>
    </tr>
    <!-- TS-06 -->
    <tr>
      <td><strong>TS-06</strong></td>
      <td>Seguridad y cifrado TLS/HTTPS</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> habilitar HTTPS con TLS,
        <strong>para</strong> proteger la comunicación entre cliente, backend y broker.
      </td>
      <td align="justify">
        <strong>Escenario 1: Redirección forzada a HTTPS</strong><br>
        <strong>Dado</strong> que un usuario accede vía HTTP,<br>
        <strong>Cuando</strong> solicita la aplicación,<br>
        <strong>Entonces</strong> se redirige automáticamente a HTTPS.
        <br><br>
        <strong>Escenario 2: Tráfico cifrado</strong><br>
        <strong>Dado</strong> que se transmiten tokens o credenciales,<br>
        <strong>Cuando</strong> viajan por la red,<br>
        <strong>Entonces</strong> siempre están cifrados mediante TLS.
        <br><br>
        <strong>Escenario 3: Gestión de certificados</strong><br>
        <strong>Dado</strong> certificados válidos,<br>
        <strong>Cuando</strong> se aproximan a su expiración,<br>
        <strong>Entonces</strong> el sistema emite una alerta previa de renovación.
      </td>
      <td>EP-06</td>
    </tr>
    <!-- TS-07 -->
    <tr>
      <td><strong>TS-07</strong></td>
      <td>Configuración de ESP32 (Wi-Fi y MQTT)</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> configurar el ESP32 para conectarse a Wi-Fi y al broker MQTT,
        <strong>para</strong> publicar telemetría y recibir comandos.
      </td>
      <td align="justify">
        <strong>Escenario 1: Conexión establecida</strong><br>
        <strong>Dado</strong> SSID/clave y URL del broker válidos,<br>
        <strong>Cuando</strong> el ESP32 arranca,<br>
        <strong>Entonces</strong> se conecta a Wi-Fi y establece sesión MQTT con <em>keep-alive</em>.
        <br><br>
        <strong>Escenario 2: Reintentos con <em>backoff</em></strong><br>
        <strong>Dado</strong> pérdida de conexión,<br>
        <strong>Cuando</strong> ocurre,<br>
        <strong>Entonces</strong> el ESP32 reintenta con <em>exponential backoff</em> y registra el evento.
        <br><br>
        <strong>Escenario 3: Latido de salud</strong><br>
        <strong>Dado</strong> una conexión establecida,<br>
        <strong>Cuando</strong> transcurren 60s,<br>
        <strong>Entonces</strong> publica un <em>heartbeat</em> al tópico de salud.
      </td>
      <td>EP-06</td>
    </tr>
    <!-- TS-08 -->
    <tr>
      <td><strong>TS-08</strong></td>
      <td>Configuración del broker de mensajería</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> configurar HiveMQ como broker MQTT,
        <strong>para</strong> permitir comunicación segura entre dispositivos IoT y backend.
      </td>
      <td align="justify">
        <strong>Escenario 1: Control de acceso</strong><br>
        <strong>Dado</strong> el broker en operación,<br>
        <strong>Cuando</strong> defino autenticación (usuario/clave o certificados),<br>
        <strong>Entonces</strong> solo clientes autorizados pueden publicar/suscribirse.
        <br><br>
        <strong>Escenario 2: TLS habilitado</strong><br>
        <strong>Dado</strong> TLS activo en el broker,<br>
        <strong>Cuando</strong> un cliente intenta una conexión insegura,<br>
        <strong>Entonces</strong> la conexión se rechaza.
        <br><br>
        <strong>Escenario 3: Convención de tópicos</strong><br>
        <strong>Dado</strong> la estructura de tópicos definida,<br>
        <strong>Cuando</strong> publico o suscribo,<br>
        <strong>Entonces</strong> se respetan los prefijos.  (p. ej., <code>devices/{id}/telemetry</code> y <code>devices/{id}/commands</code>).
      </td>
      <td>EP-06</td>
    </tr>
    <!-- TS-09 -->
    <tr>
      <td><strong>TS-09</strong></td>
      <td>Sensores y actuadores en ESP32</td>
      <td align="justify">
        <strong>Como</strong> developer, <strong>quiero</strong> configurar sensores y actuadores
        (inductivo metal, celda de carga/peso, ultrasónico, servo de compuerta),
        <strong>para</strong> operar el tacho de forma confiable.
      </td>
      <td align="justify">
        <strong>Escenario 1: Detección y accionamiento</strong><br>
        <strong>Dado</strong> sensores calibrados,<br>
        <strong>Cuando</strong> detecto metal válido,<br>
        <strong>Entonces</strong> habilito la compuerta (servo) y registro evento con <em>timestamp</em> y peso aproximado.
        <br><br>
        <strong>Escenario 2: Filtrado de ruido</strong><br>
        <strong>Dado</strong> lecturas ruidosas,<br>
        <strong>Cuando</strong> aplico filtrado/<em>debounce</em>,<br>
        <strong>Entonces</strong> evito falsos positivos.
        <br><br>
        <strong>Escenario 3: Umbral de llenado</strong><br>
        <strong>Dado</strong> nivel de llenado alto,<br>
        <strong>Cuando</strong> el ultrasónico supera el umbral,<br>
        <strong>Entonces</strong> marco estado “lleno” y publico alerta MQTT.
      </td>
      <td>EP-06</td>
    </tr>
  </tbody>
</table>

## 3.3. Impact mapping

## 3.4. Product Backlog

# Capítulo IV: Solution Software Design

## 4.1. Strategic-Level Domain-Driven Design

### 4.1.1. EventStorming

#### 4.1.1.1. Candidate Context Discovery

#### 4.1.1.2. Domain Message Flows Modeling

#### 4.1.1.3. Bounded Context Canvases

### 4.1.2 Context mapping

### 4.1.3. Software Architecture

#### 4.1.3.1. Software Architecture System Landscape Diagram

#### 4.1.3.2. Software Architecture Context Level Diagrams

#### 4.1.3.3. Software Architecture Container Level Diagrams

#### 4.1.3.4. Software Architecture Deployment Diagrams

## 4.2. Tactical-Level Domain-Driven Design

### 4.2.X. Bounded Context

#### 4.2.X.1. Domain Layer

#### 4.2.X.2. Interface Context

#### 4.2.X.3. Application Context

#### 4.2.X.4. Infrastructure Context

#### 4.2.X.5. Bounded Context Software Architecture Component Level Diagrams

#### 4.2.X.6. Bounded Context Software Architecture Code Level Diagrams

#### 4.2.X.6.1. Bounded Context Domain Layer Class Diagrams

#### 4.2.X.6.2. Bounded Context Database Design Diagram

# Capítulo V: Solutions UI/UX Design

## 5.1. Style Guidelines

### 5.1.1. General Style Guidelines

### 5.1.2. Web, Mobile and IoT Style Guidelines

## 5.2. Information Architecture

### 5.2.1. Organization Systems

### 5.2.2. Labeling Systems

### 5.2.3. SEO Tags and Meta Tags

### 5.2.4. Searching Systems

### 5.2.5. Navigation Systems

## 5.3. Landing Page UI Design

### 5.3.1. Landing Page Wireframe

### 5.3.2. Landing Page Mock-up

## 5.4. Application UX/UI Design

### 5.4.1. Applications Wireframes

### 5.4.2. Applications Wireflow Diagrams

### 5.4.3. Applications Mock-ups

### 5.4.4. Applications User Flow Diagrams

## 5.5. Applications Prototyping

# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

### 6.1.1. Software Development Environment Configuration

### 6.1.2. Source Code Management

### 6.1.3. Source Code Style Guide & Conventions

### 6.1.4. Software Deployment Configuration

## 6.2. Landing Page, Services & Applications Implementation

### 6.2.X. Sprint n

#### 6.2.X.1. Sprint Planning n

#### 6.2.X.2. Sprint Backlog n

#### 6.2.X.3. Development Evidence for Sprint Review

#### 6.2.X.4. Testing Suite Evidence for Sprint Review

#### 6.2.X.5. Execution Evidence for Sprint Review

#### 6.2.X.6. Services Documentation Evidence for Sprint Review

#### 6.2.X.7. Software Deployment Evidence for Sprint Review

#### 6.2.X.8. Team Collaboration Insights during Sprint

## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

### 6.3.2. Registro de Entrevistas

### 6.3.3. Evaluaciones según heurísticas

## 6.4. Video About-the-Product

# Conclusiones

## Conclusiones y recomendaciones

## Video About-the-Team

# Bibliografía

Dirección General de Salud Ambiental (DIGESA). (2024, enero). _Más de 80 playas de Lima y Callao no son saludables para bañistas en verano, advierte la Digesa_. RPP Noticias. <https://rpp.pe/peru/actualidad/verano-2024-hay-42-playas-saludables-y-89-no-saludables-en-el-peru-segun-digesa-noticia-1525501>

Villacorta-Córdova, E. A., Gaspar-Torribio, M., & Espinoza-Montero, P. J. (2021). Evaluación de la contaminación por residuos sólidos en cuatro playas de la Costa Verde, Lima, Perú. _Revista Científica UNJFSC_, 29(1), 321–338. <https://revistas.cientifica.edu.pe/index.php/southsustainability/article/download/1382/1097/6410>

# Anexos

Lean UX Canvas - <https://miro.com/app/board/uXjVJKqj5v4=/>
