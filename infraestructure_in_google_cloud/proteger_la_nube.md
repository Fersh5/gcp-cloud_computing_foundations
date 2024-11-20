# Módulo 6: Google Cloud Computing Foundations  
## "You can’t secure the cloud, right?"  

En este módulo, se abordan las **prácticas recomendadas de seguridad en la nube** y los objetivos clave incluyen:  

### Objetivos del módulo:
1. **Administración de la seguridad en Google Cloud**:  
   - Descripción del modelo de seguridad compartida.  
2. **Opciones de encriptación en Google Cloud**.  
3. **Autenticación y autorización con Identity and Access Management (IAM)**.  
   - Configuración de **Identity-Aware Proxy (IAP)**.  
4. **Prácticas recomendadas para la autorización usando IAM**.  

### Temario del módulo:
1. Exploración del significado de la seguridad en la nube.  
2. Resumen del modelo de seguridad compartida.  
   - Comparación de responsabilidades de seguridad entre Google y el cliente.  
3. Opciones de encriptación en Google Cloud.  
4. Autenticación y autorización con IAM.  
5. Uso de **Identity-Aware Proxy (IAP)** para configurar la autenticación de usuarios.  
6. Identificación de prácticas recomendadas para usar IAM.  

### Actividades del módulo:
- **Lab práctico**: Configuración de autenticación de usuarios con IAP.  
- **Lab práctico**: Configuración de autorización usando IAM.  
- Cuestionario final.  

## Introducción a la Seguridad en la Nube  

Google, con sus **nueve servicios que superan los mil millones de usuarios**, prioriza la seguridad en toda su infraestructura. El diseño centrado en la seguridad abarca cinco niveles de protección que Google brinda para proteger los datos de sus clientes:  

---

### 1. **Infraestructura de Hardware**  
- **Diseño y origen del hardware**:  
  - Google diseña sus placas de servidor, herramientas de red y chips personalizados, incluidos chips de seguridad de hardware.  
- **Pila de inicio seguro**:  
  - Las máquinas de Google verifican la integridad de su software (BIOS, bootloader, kernel, etc.) mediante firmas criptográficas.  
- **Seguridad física**:  
  - Google construye centros de datos con capas de seguridad física y limita el acceso a un pequeño grupo de empleados.  
  - Los centros de datos de terceros cuentan con medidas de seguridad físicas adicionales gestionadas por Google.  

---

### 2. **Implementación del Servicio**  
- **Encriptación de la comunicación entre servicios**:  
  - El tráfico de llamada de procedimiento remoto (RPC) está encriptado automáticamente entre centros de datos.  
  - Se implementan aceleradores criptográficos para extender la encriptación dentro de los centros de datos.  
- **Identidad del usuario**:  
  - Más allá del usuario/contraseña, se aplican medidas adicionales basadas en factores de riesgo.  
  - Compatibilidad con factores secundarios como dispositivos U2F (Universal 2nd Factor).  

---

### 3. **Servicios de Almacenamiento**  
- **Encriptación en reposo**:  
  - Se encripta el almacenamiento físico mediante claves gestionadas centralmente.  
  - Compatibilidad con encriptación de hardware en discos duros y SSDs.  

---

### 4. **Comunicación con Internet**  
- **Google Front End (GFE)**:  
  - GFE administra conexiones TLS siguiendo buenas prácticas como confidencialidad directa perfecta.  
  - Protege contra ataques de denegación del servicio (DoS).  
- **Protección contra DoS**:  
  - Google puede absorber ataques DoS gracias a su escalamiento vertical.  
  - Implementa protecciones en múltiples niveles para minimizar el impacto de los ataques.  

---

### 5. **Seguridad Operacional**  
- **Detección de intrusiones**:  
  - Uso de reglas e IA para alertar sobre posibles incidentes.  
  - Ejercicios de Red Team para probar y mejorar la respuesta a incidentes.  
- **Reducción del riesgo de infiltración**:  
  - Supervisión estricta de las actividades de los administradores.  
- **Uso de U2F por los empleados**:  
  - Los empleados deben usar llaves de seguridad U2F para proteger sus cuentas contra phishing.  
- **Prácticas de desarrollo de software**:  
  - Revisión obligatoria de código nuevo y uso de bibliotecas que previenen errores de seguridad.  
  - Programa de recompensas por vulnerabilidades, incentivando la detección de errores.  

## Responsabilidades del Usuario sobre la Seguridad en la Nube  

En Google Cloud, las responsabilidades de seguridad son **compartidas entre el cliente y Google**. A continuación, se describen las diferencias clave entre ambos modelos:

---

### Seguridad en Infraestructura Local  
Cuando un cliente implementa una aplicación en su infraestructura local, es **responsable de toda la pila de seguridad**, incluyendo:  
- **Seguridad física**: protección del hardware y el lugar donde se encuentra.  
- **Encriptación de datos**: garantizar que los datos en el disco estén encriptados.  
- **Integridad de la red**: asegurar que las comunicaciones sean seguras.  
- **Protección del contenido**: proteger los datos y aplicaciones almacenados.  

---

### Seguridad en Google Cloud  
Cuando una aplicación se transfiere a Google Cloud, **Google asume la responsabilidad de los niveles inferiores** de la pila, como:  
- **Seguridad física**: control y protección de los centros de datos.  
- **Encriptación del disco**: garantizar que los datos estén protegidos.  
- **Integridad de la red**: supervisar las comunicaciones entre servicios.

Sin embargo, el cliente **sigue siendo responsable de los niveles superiores**, como:  
- **Seguridad de los datos**: proteger el acceso y el uso de los datos.  
- **Control de acceso**: definir quién o qué puede acceder a los datos.  

---

### Herramientas para Ayudar al Cliente  
Google Cloud proporciona herramientas para facilitar el cumplimiento de las responsabilidades del cliente:  
- **Identity and Access Management (IAM)**: controlar y configurar el acceso a los recursos.  
- **Jerarquía de recursos**: implementar y definir políticas organizativas.

Es esencial que estas herramientas se configuren adecuadamente para garantizar la seguridad de los datos del cliente.
