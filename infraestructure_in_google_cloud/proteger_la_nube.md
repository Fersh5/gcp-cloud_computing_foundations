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

## Modelo de Seguridad compartida  

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

## Alternativas de Encriptación  

Google Cloud ofrece diversas opciones de encriptación, que varían en simplicidad y nivel de control:

---

### Tipos de Encriptación  

1. **Encriptación predeterminada de Google Cloud**  
   - **Sencilla** y automática.  
   - **Datos en tránsito**: protegidos mediante TLS (Seguridad de la Capa de Transporte).  
   - **Datos en reposo**: encriptados con claves AES de 256 bits.  

2. **Claves de Encriptación Administradas por el Cliente (CMEK)**  
   - **Control del cliente sobre las claves** que protegen los datos en Google Cloud.  
   - Utiliza **Cloud Key Management Service (Cloud KMS)** para la generación y administración de claves.  
   - Cloud KMS facilita:  
     - Encriptación, desencriptación, firma y verificación de datos.  
     - Rotación manual y automática de claves.  
   - **Admite** claves simétricas y asimétricas y varios algoritmos criptográficos.

3. **Claves de Encriptación Proporcionadas por el Cliente (CSEK)**  
   - Otorgan **máximo control**, pero requieren más gestión.  
   - Los usuarios generan y administran sus propias claves AES de 256 bits.  
   - Las claves deben ser proporcionadas en las llamadas a la API de Google Cloud.  
   - **Proceso de encriptación**:  
     - Google usa la clave proporcionada para encriptar los datos.  
     - La clave solo existe en memoria durante el proceso y luego se descarta.  
   - **Aplicación común**: Discos persistentes para máquinas virtuales.  
     - Cifran datos antes de salir de la máquina virtual.  
     - Al eliminar un disco, las claves se descartan, haciendo los datos irrecuperables.  

4. **Encriptación del lado del cliente**  
   - **Los usuarios cifran los datos localmente** antes de enviarlos a Google Cloud.  
   - Ni los datos sin cifrar ni las claves de descifrado salen del dispositivo local.

---

### Consideraciones Finales  
- Incluso sin CMEK o CSEK, Google Cloud siempre encripta los discos persistentes.  
- Al eliminar un disco, los datos son irrecuperables mediante métodos convencionales.  
- La elección de la opción de encriptación depende del equilibrio entre **simplicidad** y **control deseado** por el usuario.

## Autenticación y Autorización con IAM

### Introducción a IAM (Identity and Access Management)  
- IAM ayuda a **administradores** a aplicar políticas que definen **quién** puede hacer **qué** en **qué recurso**.  
- Es fundamental para restringir y controlar el acceso en organizaciones con múltiples carpetas, proyectos y recursos.

---

### Elementos Clave de IAM  

#### **¿Quién puede acceder?**  
- Identidades:  
  - **Cuentas de Google**  
  - **Grupos de Google**  
  - **Cuentas de servicio**  
  - **Dominios de Cloud Identity**  

#### **¿Qué pueden hacer?**  
- **Roles de IAM**:  
  - Un rol es una colección de permisos.  
  - **Ejemplo**: Gestionar máquinas virtuales requiere permisos para crear, borrar, iniciar, detener y modificar instancias.  

---

### Jerarquía de IAM  
- Los roles asignados a un usuario, grupo o cuenta de servicio en un elemento de la jerarquía se aplican a todos los recursos **por debajo de él**.

---

### **Cloud Identity**  
- Permite administrar centralmente grupos y usuarios mediante la **Consola del administrador de Google**.  
- Beneficios:  
  - Facilita la gestión de accesos cuando alguien abandona la organización.  
  - Compatible con sistemas existentes como **Active Directory** o **LDAP**.  
  - Disponible en ediciones:  
    - **Gratuita**  
    - **Premium** (incluye gestión de dispositivos móviles)  

---

### **Tipos de Roles en IAM**  

#### 1. **Roles Básicos**  
- Tienen permisos amplios y afectan a todos los recursos de un proyecto.  
  - **Visualizador**: Examina recursos, pero no puede modificarlos.  
  - **Editor**: Examina y modifica recursos.  
  - **Propietario**: Puede examinar, modificar recursos, administrar roles y configurar la facturación.  
  - **Administrador de facturación**: Gestiona facturación sin acceso a recursos.  

#### 2. **Roles Predefinidos**  
- Específicos para servicios de Google Cloud.  
  - **Ejemplo**: En **Compute Engine**, roles como `instanceAdmin` permiten gestionar recursos específicos.  

#### 3. **Roles Personalizados**  
- Se utilizan para aplicar el modelo de **privilegio mínimo**.  
  - Permiten otorgar únicamente los permisos necesarios para cada usuario.  
  - **Ejemplo**: Un rol `instanceOperator` puede iniciar y detener máquinas virtuales, pero no reconfigurarlas.  
  - **Consideraciones importantes**:  
    - Debes administrar los permisos del rol.  
    - Se aplican solo a nivel de proyecto u organización, **no a nivel de carpeta**.  

---

### **Cuentas de Servicio**  
- Utilizadas para autenticar máquinas virtuales (VMs) y otras aplicaciones en Google Cloud.  
  - Se identifican con una dirección de correo electrónico.  
  - Utilizan claves criptográficas en lugar de contraseñas.  
  - **Ejemplo**: Una VM con el rol de administrador puede crear, modificar y borrar otras VMs.  

#### **Gestión de Cuentas de Servicio**  
- Las cuentas de servicio son tanto **identidades** como **recursos** y pueden tener políticas de IAM.  
  - **Ejemplo**:  
    - Alicia puede tener el rol de **editor** en una cuenta de servicio.  
    - Roberto puede tener el rol de **visualizador**.  

---

### Conclusión  
IAM en Google Cloud permite una gestión granular y centralizada del acceso a recursos. Facilita implementar políticas de seguridad que se alinean con las necesidades específicas de la organización, desde permisos básicos hasta personalizados, garantizando la seguridad en la infraestructura.

## Introducción al lab: Users Autentication Identity-Aware Proxy (IAP) en Google Cloud

### **¿Qué es IAP?**  
- **Identity-Aware Proxy (IAP)** permite configurar la autenticación en aplicaciones HTTP sin necesidad de usar VPNs.  
- Facilita un **control centralizado de acceso** a nivel de aplicación mediante TLS.  
- Es ideal para proteger aplicaciones y recursos internos expuestos al exterior.

---

### **Beneficios y Funcionamiento de IAP**  
- **Centralización de la autorización**:  
  - Proporciona un modelo de control de acceso basado en aplicaciones, no en firewalls de red.  
  - Solo los **usuarios** y **grupos** con el rol adecuado de IAM pueden acceder a los recursos protegidos.  
- **Capa de protección**:  
  - Actúa como un **proxy** entre el exterior y los servicios internos.  
  - Las solicitudes externas son autenticadas y autorizadas mediante **TLS**.

---

### **Consideraciones Importantes**  
1. **Limitaciones de IAP**:  
   - No protege contra actividades dentro de la VM, como accesos por **SSH**.  
   - No protege la **comunicación interna** entre VMs en una red local.  

2. **Requisitos de autenticación**:  
   - Se deben establecer roles adecuados en IAM para los usuarios o grupos que accederán a los recursos protegidos.  

---

### **Laboratorio Práctico: "User Authentication: Identity-Aware Proxy"**  
#### Actividades del Lab:  
1. **Construcción de una aplicación**:  
   - Crearás una app web simple usando **App Engine** y **Python**.  
2. **Configuración de IAP**:  
   - Habilitarás e inhabilitarás IAP para controlar el acceso.  
3. **Transmisión de información de identidad**:  
   - Llevarás la información de autenticación del usuario desde IAP hasta la app.  
   - Protegerás la aplicación contra la falsificación de identidad mediante la verificación criptográfica de los datos de IAP.  

---

### **Conclusión**  
IAP es una herramienta poderosa para proteger aplicaciones HTTP en Google Cloud sin depender de VPNs. Proporciona autenticación centralizada, control detallado de acceso y seguridad adicional para las aplicaciones internas expuestas al exterior.

## **Prácticas Recomendadas de la Autorización con IAM**

### **1. Comprensión de la Jerarquía de Recursos**  
- **Proyectos:** Agrupa recursos que compartan el mismo **límite de confianza**.  
- **Políticas y Herencia:**  
  - Verifica la política en cada recurso.  
  - Entiende cómo se aplica la **herencia** de políticas a los subrecursos.  
- **Principio de Privilegio Mínimo:**  
  - Asigna roles con la mínima cantidad de permisos necesarios.  
  - Evita otorgar permisos innecesarios.

---

### **2. Auditoría de Políticas**  
- Usa **Registros de auditoría de Cloud** para revisar políticas.  
- Audita regularmente la **pertenencia a los grupos** utilizados en las políticas.

---

### **3. Uso de Grupos en Lugar de Personas**  
- **Ventajas de usar grupos:**  
  - Actualiza la pertenencia a un grupo en lugar de modificar políticas de IAM directamente.  
- **Recomendaciones:**  
  - Audita la **pertenencia a grupos** utilizados en políticas.  
  - Controla la **propiedad** del grupo de Google empleado en las políticas.  
- **Control detallado con múltiples grupos:**  
  - Ejemplo:  
    - Grupo de **administradores de red**.  
    - Miembros con necesidades diferentes:  
      - Algunos necesitan acceso **read_write** a un bucket de Cloud Storage.  
      - Otros solo requieren acceso **read_only**.  

---

### **4. Prácticas Recomendadas para Cuentas de Servicio**  
- **Asignación de roles:**  
  - Ten cuidado al otorgar el rol de **usuarios de cuentas de servicio**, ya que este rol proporciona acceso a todos los recursos de la cuenta.  
- **Nombres descriptivos:**  
  - Usa nombres visibles que **identifiquen claramente** el propósito de la cuenta.  
  - Aplica una **convención de nombres** consistente en toda la organización.  
- **Gestión de claves:**  
  - Establece políticas para la **rotación de claves**.  
  - Implementa métodos seguros para gestionar y renovar claves de acceso.

---

Estas prácticas aseguran un control eficiente y seguro del acceso a los recursos de Google Cloud mediante IAM.

## **Lab Práctico: Cloud IAM - Qwik Start**
### **Objetivo del Lab**
En este laboratorio, aprenderás a:

- Asignar un rol a un segundo usuario.
- Quitar roles asociados con IAM.

---

### **Actividades del Lab**
1. **Exploración de Roles de Editor:**  
   Comprenderás cómo funciona el rol de **Editor** en un proyecto de Google Cloud.

2. **Preparación de un Recurso para Prueba de Acceso:**  
   Configurarás un recurso específico para verificar los permisos de acceso.

3. **Eliminación de Acceso a Proyectos:**  
   Aprenderás a revocar permisos otorgados previamente a usuarios en un proyecto.

4. **Adición de Permisos de Almacenamiento:**  
   Asignarás permisos relacionados con el acceso a servicios de almacenamiento en Google Cloud.

5. **Verificación del Acceso:**  
   Comprobarás si los permisos asignados funcionan correctamente.

---

Este lab te proporcionará una experiencia práctica para gestionar roles y permisos en Google Cloud utilizando IAM.

## **Cuestionario**

### **1. ¿Qué rol de IAM tiene el alcance más amplio?**
- ❌ Personalizado  
- ❌ Predefinido  
- **✅ Básico**


### **2. Cuando un cliente mueve una aplicación a Google Cloud, ¿cuál de las siguientes opciones sigue siendo su responsabilidad?**
- ❌ Seguridad física  
- ❌ Encriptación de los discos  
- **✅ Seguridad de los datos**
- ❌ Integridad de la red  


### **3. ¿Con qué opción un cliente encripta sus datos antes de enviarlos a Google Cloud?**
- ❌ Encriptación de Google según la configuración predeterminada  
- **✅ Encriptación del cliente**
- ❌ Claves de encriptación proporcionadas por el cliente (CSEK)  
- ❌ Claves de encriptación administradas por el cliente (CMEK)  


### **4. ¿En qué nivel de la seguridad de la infraestructura de Google Cloud encontrará la detección de intrusiones?**
- ❌ El nivel de servicios de almacenamiento  
- ❌ El nivel de infraestructura de hardware  
- ❌ El nivel de comunicación en Internet  
- **✅ El nivel de seguridad operativa**

## **Resumen del Módulo 6: Google Cloud Computing Foundations**

---

### **1. Seguridad en Google Cloud**
- Se explicó el **modelo de seguridad compartida**.
  - Define las responsabilidades del cliente y de Google Cloud en la gestión de la seguridad.

---

### **2. Opciones de encriptación en Google Cloud**
- **Encriptación predeterminada de Google Cloud**.
- **Claves de encriptación administradas por el cliente (CMEK)**.
- **Claves de encriptación proporcionadas por el cliente (CSEK)**.
- **Encriptación local de datos**.

---

### **3. Autenticación y Autorización (IAM)**
- Se revisaron las **prácticas recomendadas** para configurar la autenticación y autorización usando **Identity and Access Management (IAM)**.
