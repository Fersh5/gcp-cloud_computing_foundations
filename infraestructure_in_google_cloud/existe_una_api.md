# There’s an API for that! - Google Cloud Computing Foundations

### **Objetivo del Módulo**
Este módulo se centra en **compilar aplicaciones con servicios administrados**, abordando los siguientes temas:

#### **Temas Principales**
1. **Propósito y beneficios de las APIs**
   - Exploración de la API REST, el estilo más popular para servicios.

2. **Cloud Endpoints**
   - Herramienta distribuida para la administración de APIs.
   - Incluye un **lab práctico** para implementar una API de muestra con Cloud Endpoints.

3. **Administración de APIs con Apigee**
   - Plataforma para desarrollar y administrar proxies de API.

4. **Google Cloud Pub/Sub**
   - Sistema de mensajería administrado diseñado para arquitecturas distribuidas orientadas a mensajes a gran escala.
   - Casos de uso comunes de servicios administrados.

#### **Actividades del Módulo**
- Dos **labs prácticos**:
  1. Implementación de una API de muestra con Cloud Endpoints.
  2. Exploración de Pub/Sub.
- **Cuestionario breve** para evaluar lo aprendido.
- **Resumen final** de los temas vistos.

## El Propósito de las APIs

### ¿Qué son las APIs?
- **API (Interfaz de Programación de Aplicaciones):** 
  - Una interfaz bien definida que oculta detalles innecesarios y facilita la comunicación entre diferentes recursos de software.
  - Permite cambios en la implementación subyacente siempre que la interfaz permanezca inalterada.

### Propósitos principales de las APIs
1. **Simplificar la comunicación entre recursos de software aislados.**
2. **Crear una estructura universal de comunicación**, abriendo oportunidades para integraciones robustas.
3. **Versionamiento de APIs:**
   - Permite agregar o retirar funciones sin afectar a los consumidores de versiones anteriores.
   - Ejemplo: Versiones 1 y 2 de una API pueden coexistir.

### REST: El estilo más popular para APIs
- **REST (Transferencia de Estado Representacional):**
  - Define un conjunto de restricciones y acuerdos para el diseño de servicios.
  - APIs que cumplen con estas restricciones se llaman **RESTful**.

#### Características de REST
- **Uso de HTTP:** 
  - Operaciones: `GET`, `PUT`, `POST`, `DELETE`.
- **Diseño escalable y duradero**, adaptado a la estructura de la Web.
- **Sin estado:** 
  - No guarda información del estado entre solicitudes, lo que optimiza el funcionamiento en la nube.
- **Seguridad:**
  - Autenticación mediante **OAuth**.
  - Uso de **tokens** para garantizar seguridad.

### Aspectos clave al implementar y administrar APIs
1. **Formato:** 
   - Estándares para describir la interfaz.
2. **Autenticación:**
   - Cómo autenticar servicios y usuarios para invocar la API.
3. **Escalabilidad:** 
   - Garantizar que la API soporte la demanda.
4. **Registro y supervisión:** 
   - Registrar invocaciones y proporcionar métricas de uso.

Las APIs proporcionan un canal de comunicación universal, asegurando la interoperabilidad entre aplicaciones y servicios, incluso cuando estos se actualizan o reescriben, siempre que se respete el estándar acordado.

## Cloud Endpoints

### ¿Qué es Cloud Endpoints?
- **Cloud Endpoints:** 
  - Sistema distribuido para desarrollar, implementar y administrar APIs en cualquier backend de Google Cloud.
  - Utiliza un **proxy de servicio extensible**, que se ejecuta en un contenedor de Docker, para gestionar APIs con baja latencia y alto rendimiento.

## Funcionalidades principales
1. **Soporte integral para APIs:**
   - Proporciona consola de API, hosting, registro, supervisión, y más.
   - Compatible con APIs que usan **OpenAPI** y **gRPC**.
2. **Autenticación robusta:**
   - Compatible con:
     - Autenticación entre servicios.
     - Google Auth, Firebase y Auth0.
3. **Escalabilidad y seguridad:**
   - Maneja altos volúmenes de tráfico.
   - Valida solicitudes y datos de registro mediante herramientas como **Service Management** y **Control del Servicio**.
4. **Monitoreo y métricas:**
   - **Logging** y **Trace:** 
     - Registros detallados.
     - Métricas de tráfico, latencia, tamaños de solicitudes y respuestas, y errores.

## Compatibilidad
- **Backends soportados:**
  - App Engine.
  - Google Kubernetes Engine (GKE).
  - Compute Engine.
- **Clientes soportados:**
  - Android, iOS, JavaScript.

## Beneficios de Cloud Endpoints
- Infraestructura necesaria para:
  - Implementar APIs sólidas y seguras.
  - Escalar de acuerdo con las necesidades del tráfico.
- Herramientas avanzadas para registro y seguimiento, que incluyen:
  - Volumen de tráfico.
  - Tamaños de solicitudes y respuestas.
  - Latencia y errores.

**Cloud Endpoints** es una solución potente y flexible para gestionar APIs, asegurando escalabilidad, seguridad y facilidad de implementación en múltiples plataformas.

## Laboratorio práctico: "Cloud Endpoints: Qwik Start"

### Descripción
En este laboratorio práctico, obtendrás experiencia práctica con **Cloud Endpoints**, implementando y gestionando una API de muestra utilizando un backend en App Engine.

### Actividades principales
1. **Configurar Cloud Endpoints:**
   - Implementar la configuración inicial de una API en Cloud Endpoints.
2. **Implementar el backend de la API:**
   - Desplegar la aplicación backend que soporta la API.
3. **Enviar solicitudes a la API:**
   - Realizar pruebas de funcionalidad enviando solicitudes a la API.
4. **Supervisar la actividad de la API:**
   - Rastrear el uso y comportamiento de la API mediante herramientas de seguimiento.
5. **Agregar cuotas a la API:**
   - Configurar límites en el uso de la API para controlar el acceso y la carga.

## Objetivo del laboratorio
Proporcionar experiencia práctica en:
- Configuración y despliegue de APIs con **Cloud Endpoints**.
- Monitoreo y gestión de una API para garantizar un uso eficiente y controlado.
