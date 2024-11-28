# Resumen del Módulo 8: Google Cloud Computing Foundations - Keeping an Eye on Things

## Objetivos del Módulo  
En este módulo, aprenderás cómo Google Cloud facilita la automatización y administración eficiente de recursos en la nube.

### Tareas Principales  
1. **Infraestructura como Código (IaC)**:  
   - Introducción a IaC y su importancia.  

2. **Exploración de Terraform**:  
   - Uso de Terraform como una opción de IaC.  

3. **Supervisión y Registro en la Nube**:  
   - Importancia de la supervisión, registro, perfiles, seguimiento, e informes de errores.  

4. **Google Cloud Operations Suite**:  
   - Uso de herramientas integradas para supervisión, registro, informes de errores, seguimiento y perfiles.  

### Estructura del Módulo  
- **Introducción a IaC**: Conceptos básicos y beneficios.  
- **Terraform**: Funcionalidades y aplicaciones como herramienta IaC.  
- **Importancia de la Supervisión y Administración**: Gestión de servicios, aplicaciones e infraestructura en la nube.  
- **Google Cloud Operations Suite**: Herramientas clave para optimizar el rendimiento.  
- **Lab Práctico**: Uso de Cloud Monitoring.  
- **Cierre**: Cuestionario final y resumen de los temas estudiados.  

## Introducción a la Infraestructura como Código (IaC)

### Concepto de IaC  
Infraestructura como código (IaC) es una práctica que define la configuración de infraestructura mediante código, facilitando la automatización y replicación de entornos.

### Desafíos del Método Manual  
- Configurar manualmente una red, recursos de procesamiento, y almacenamiento requiere mucho esfuerzo.  
- Los cambios o la clonación del entorno exigen la actualización o creación manual de nuevos comandos.  

### Beneficios de IaC  
- **Plantillas de Configuración**:  
  - Definen la infraestructura necesaria en un archivo de plantilla legible para humanos y máquinas.  
  - Facilitan la creación automática de infraestructuras completas.  

- **Automatización y Consistencia**:  
  - Las plantillas permiten crear, actualizar o eliminar recursos automáticamente.  
  - Simplifican la recuperación ante desastres al recrear la infraestructura desde las plantillas.  

- **Colaboración y Control de Versiones**:  
  - Las plantillas, al ser código, se almacenan en repositorios y se pueden versionar.  
  - Fomentan la colaboración al compartir configuraciones entre equipos.  

## Terraform: Herramienta de Infraestructura como Código (IaC)

### Introducción a Terraform  
Terraform es una herramienta de código abierto que facilita la creación y administración de infraestructura en Google Cloud mediante el uso de plantillas.

### Funcionamiento de Terraform  
- **Plantillas con HCL:**  
  - Se crean archivos de plantilla usando el lenguaje de configuración HashiCorp (HCL).  
  - Las plantillas describen los componentes del entorno a aprovisionar.

- **Automatización del Proceso:**  
  - Terraform analiza la plantilla para determinar las acciones necesarias y crea el entorno descrito.  
  - Las actualizaciones del entorno se realizan editando la plantilla y aplicando los cambios con Terraform.

### Beneficios de Terraform  
- **Consistencia y Reproducibilidad:**  
  - Las implementaciones se pueden repetir con resultados coherentes.  
  - Es posible eliminar una implementación completa fácilmente con un comando o clic.

- **Amplia Cobertura de Recursos:**  
  - Terraform utiliza las APIs de Google Cloud para aprovisionar recursos como:  
    - Instancias  
    - Redes VPC  
    - Reglas de firewall  
    - Túneles VPN  
    - Cloud Routers  
    - Balanceadores de carga  

- **Control de Versiones:**  
  - Las plantillas se pueden almacenar y versionar en Cloud Source Repositories.

### Otras Herramientas de IaC  
Además de Terraform, Google Cloud es compatible con otras herramientas externas de infraestructura como código de código abierto.

## Supervisión y Administración de Servicios, Infraestructura y Aplicaciones en Google Cloud

### Importancia de la Supervisión  
La supervisión es esencial para garantizar la confiabilidad de los productos, optimizar la capacidad de planificación y mejorar la experiencia del cliente. Revela tendencias en el uso de aplicaciones y destaca áreas que requieren atención urgente.

### Definición de Supervisión  
Según el libro *Site Reliability Engineering* de Google:  
- **Supervisión:**  
  - Consiste en recopilar, procesar, agregar y mostrar datos cuantitativos en tiempo real sobre un sistema.  
  - Ejemplos de datos incluyen:  
    - Cantidad y tipos de consultas y errores.  
    - Tiempos de procesamiento.  
    - Duración del servidor.

### Funciones Clave de la Supervisión  
- Garantiza la continuidad de las operaciones del sistema.  
- Facilita el análisis de tendencias a lo largo del tiempo.  
- Permite la creación de paneles de control y alertas.  
- Compara sistemas y cambios.  
- Proporciona datos para respuestas mejoradas a incidentes.  

### Perspectiva del Cliente y Desarrollo de Productos  
- **Visión del cliente:** El usuario final solo ve el lado público de un producto.  
- **Prioridades del desarrollo:** Es común centrarse en la interfaz del producto, pero la confiabilidad requiere un entorno robusto y escalable.  

### Requisitos para un Producto Confiable  
1. **Capacidad suficiente:** Implementación en entornos preparados para manejar la carga prevista.  
2. **Pruebas automatizadas:** Garantizan estabilidad y detectan problemas antes del despliegue.  
3. **Canalización CI/CD:** Mejora el proceso de integración y entrega continua.  

### Análisis de Incidentes  
- **Análisis post-mortem y causa raíz:**  
  - Informan sobre la causa de un incidente y las acciones preventivas para evitar futuras ocurrencias.  
  - Pueden referirse a fallos en sistemas, software o incidentes de seguridad.  

### Transparencia y Confianza  
- La transparencia en la supervisión y resolución de incidentes es clave para construir y mantener la confianza del cliente.

## Google Cloud's Operations Suite

### Introducción a las Herramientas de Supervisión
Google Cloud's operations suite ofrece potentes herramientas para la supervisión, registro, depuración e informes de errores. Estas herramientas facilitan la administración de aplicaciones, infraestructura y servicios en la nube.

### Beneficios Principales:
- **Estadísticas detalladas:** Estado, rendimiento y disponibilidad de las aplicaciones.
- **Resolución rápida de problemas:** Identificación eficiente de incidencias críticas.
  
### Supervisión en DevOps  
La supervisión comienza con datos de indicadores, que incluyen:
- **Métricas:** Mediciones (por ejemplo, uso de CPU) que se alinean con el tiempo.
- **Paneles y alertas:** Configurables para monitorear el comportamiento del sistema en tiempo real.

#### Métricas Clave:
- **BigQuery:** Seguimiento de consultas, bytes analizados y patrones de uso.
- **Cloud Run:** Monitoreo de uso de memoria y CPU en aplicaciones en contenedores.
- **Compute Engine:** Métricas de memoria, CPU, tiempo de actividad y capacidad del disco.

### Herramientas de Registro
#### **Cloud Logging:**
- **Recopila registros** de proyectos, servicios, sistemas y agentes.
- Compatible con aplicaciones comunes como Cassandra, NGINX, Apache Web Server y Elasticsearch.
- **Exportación de registros:** A Cloud Storage, BigQuery o como mensajes de Pub/Sub.

#### **Tipos de Registros:**
1. **Auditoría:** Responde a preguntas clave: “¿Quién hizo qué, dónde y cuándo?”
2. **Agentes:** Recopilan datos de registro de instancias en Compute Engine o AWS.
3. **Red:** Incluyen telemetría de servicios de red, flujos de VPC y registros de reglas de firewall.
4. **Servicio:** Captura registros generados por el código implementado en Google Cloud.

#### **Retención de registros:**
- **Registros de acceso a datos:** 30 días (configurable hasta 3,650 días).
- **Registros de administrador:** 400 días.

### Cloud Trace  
- **Función:** Recopila datos de latencia de aplicaciones distribuidas.
- **Aplicaciones soportadas:** App Engine, Compute Engine y Google Kubernetes Engine (GKE).
- **Beneficio:** Proporciona informes detallados de rendimiento y detecta degradaciones de latencia.

### Cloud Profiler  
- **Uso:** Analiza el uso de CPU y memoria con bajo impacto en aplicaciones en producción.
- **Compatibilidad:** Funciona con aplicaciones en Google Cloud o locales, compatibles con Java, Go, Python y Node.js.
- **Gráfico tipo llama:** Muestra el consumo de recursos por función, ayudando a optimizar rutas de acceso costosas.

### Error Reporting  
- **Función:** Identifica, analiza y agrupa fallos en servicios en la nube.
- **Alertas:** Configurables para notificar nuevos errores.
- **Detalles:** Incluyen tiempo, número de casos, usuarios afectados y seguimiento de pila de excepciones.

---

**Resumen:**  
Google Cloud's operations suite proporciona un conjunto completo de herramientas para monitorear, registrar y optimizar aplicaciones en la nube, mejorando la confiabilidad y el rendimiento de los servicios.

## Lab Práctico: Cloud Monitoring - Qwik Start

### Objetivo:
Supervisar una instancia de máquina virtual (VM) en Compute Engine utilizando Cloud Monitoring.

### Pasos del Lab:

#### 1. **Crear una instancia de Compute Engine**
   - Configura una nueva instancia de VM en Google Cloud.

#### 2. **Instalar un servidor Apache2 HTTP**
   - Conecta a la instancia y configura un servidor Apache2 para manejar solicitudes HTTP.

#### 3. **Configurar verificaciones de tiempo de actividad (Uptime Checks)**
   - Define verificaciones para supervisar la disponibilidad del servidor Apache.
   - Estas verificaciones ayudarán a determinar si el servidor está operativo desde diferentes ubicaciones geográficas.

#### 4. **Establecer políticas de alertas**
   - Configura alertas que se activen cuando se detecten problemas, como la inactividad del servidor.
   - Las alertas pueden enviarse a través de correo electrónico, SMS o integración con otras herramientas.

#### 5. **Crear un panel y un gráfico en Cloud Monitoring**
   - Diseña un panel personalizado para visualizar métricas clave, como el uso de CPU, la memoria y el estado de la instancia.
   - Incluye gráficos que muestren los resultados de las verificaciones de tiempo de actividad.

#### 6. **Revisar registros y alertas activadas**
   - Accede a los registros de la instancia para analizar eventos y posibles errores.
   - Visualiza las alertas activadas y evalúa los resultados de las verificaciones de tiempo de actividad.

---

**Resumen:**  
Este lab proporciona una introducción práctica a Cloud Monitoring en Google Cloud. Aprenderás a configurar y supervisar una instancia de VM, implementar un servidor web básico, y crear verificaciones y alertas para garantizar la continuidad y el rendimiento del servicio.

## Cuestionario

### 1. ¿Dónde puede almacenar y controlar las versiones de sus plantillas de Terraform?
- ❌ Cloud Monitoring  
- ❌ Cloud Profiler  
- ❌ Cloud Trace  
- **✅ Cloud Source Repositories**

---

### 2. ¿Cuál de las siguientes opciones proporciona acceso a los registros creados por los desarrolladores que implementan código en Google Cloud?
- ❌ Registros de red  
- **✅ Registros del servicio**
- ❌ Registros de auditoría de Cloud  
- ❌ Registros de agentes  

---

### 3. ¿Cuál es el período de retención predeterminado de los registros de acceso a los datos en Cloud Logging?
- **✅ 30 días**
- ❌ 365 días  
- ❌ 400 días  
- ❌ 3,650 días  

---

### 4. ¿Qué herramienta transfiere métricas, eventos y metadatos para generar estadísticas en paneles, gráficos del Explorador de métricas y alertas automatizadas?
- ❌ Cloud Profiler  
- ❌ Cloud Source Repositories  
- **✅ Cloud Monitoring**
- ❌ Cloud Trace  

## Resumen del Módulo 8 del curso Google Cloud Computing Foundations

1. **Infraestructura como Código (IaC)**  
   Se introdujo el concepto de IaC y su importancia en la gestión automatizada de infraestructura.

2. **Terraform**  
   Se exploró esta herramienta de código abierto como una opción para implementar IaC.

3. **Supervisión y registro en la nube**  
   Se destacó la importancia de supervisar, registrar, hacer seguimientos, analizar perfiles y generar informes de errores en un entorno de nube.

4. **Google Cloud's Operations Suite**  
   Se aprendió a utilizar estas herramientas para realizar tareas de supervisión, registro, informes de errores, seguimiento y análisis de perfiles.
