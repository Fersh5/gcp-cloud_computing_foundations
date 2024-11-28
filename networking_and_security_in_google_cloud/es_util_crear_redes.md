# **Módulo 7: Google Cloud Computing Foundations - Redes**

## **Introducción**
Este módulo, titulado **"It helps to network"**, te introduce a las herramientas de redes en Google Cloud y los conceptos clave que necesitas conocer antes de configurar redes en la nube.

---

### **Temas del Módulo**
1. **Introducción a las Herramientas de Redes en la Nube:**
   - Conocerás las principales herramientas de redes disponibles en Google Cloud.

2. **Nubes Privadas Virtuales (VPCs):**
   - Exploración de **VPCs** y su funcionamiento.
   - Conceptos básicos sobre **direcciones IP internas y públicas**.
   - Arquitectura de red de Google Cloud.

3. **Reglas de Firewall y Rutas:**
   - Entenderás cómo configurar y utilizar **reglas de firewall**.
   - Aprenderás sobre las rutas de tráfico en la nube.

4. **Uso de Múltiples Redes VPC:**
   - Implementación y gestión de varias redes VPC.
   - **Labs Prácticos:**
     - **Lab 1:** Crear redes VPC e instancias de máquinas virtuales (VM).
     - **Lab 2:** Controlar el acceso en una VPC.

5. **Creación de Nubes Híbridas:**
   - Opciones para conectar tu infraestructura local con Google Cloud:
     - **VPNs**
     - **Interconexión**
     - **Intercambio de tráfico directo (Peering)**

6. **Balanceo de Cargas:**
   - Configuración de balanceadores de carga HTTP con **Google Cloud Armor**.
   - **Lab Práctico:** Implementar un balanceador de cargas HTTP.

7. **Evaluación y Resumen:**
   - Realizarás un **cuestionario corto** para evaluar lo aprendido.
   - Revisión de los conceptos clave cubiertos en el módulo.

## **Herramientas de Redes en la Nube**


### **Conceptos Básicos de Redes**
- Las computadoras se comunican entre sí a través de redes.
  - **Red de Área Local (LAN):** Conecta computadoras en una sola ubicación, como una oficina.
  - **Red de Área Extensa (WAN):** Conecta múltiples LAN en diferentes ubicaciones.
  - La mayoría de las redes están conectadas a **Internet**, lo que permite la comunicación global entre dispositivos como:
    - Computadoras personales
    - Servidores
    - Smartphones
    - Otros dispositivos de TI

---

### **Infraestructura de Google Cloud**
- Desde **2004**, Google ha liderado en la creación de infraestructuras de nube veloces, potentes y de alta calidad.
- La red privada de Google:
  - Conecta ubicaciones regionales a más de **100 puntos de presencia global** cercanos a los usuarios.
  - Utiliza **redes definidas por software** y **sistemas distribuidos avanzados** para ofrecer servicios en todo el mundo.
  - Optimiza la entrega de contenido, reduciendo la **latencia**.

---

### **Ejemplo de Arquitectura de Red**
#### **Proceso de Solicitud en una Aplicación Web:**
1. **Cliente Web (Usuario Final):**
   - Realiza una búsqueda en el sistema de nombres de dominio (**DNS**).
   - **Cloud DNS** responde con la dirección correspondiente.

2. **Redes de Distribución de Contenido (CDN):**
   - Las **CDN** almacenan en caché contenido cercano a los usuarios para mejorar el rendimiento.
   - Si una página está en la CDN, se entrega directamente desde allí.
   - Si la página no está disponible en la CDN:
     - La solicitud se dirige a **Cloud Load Balancing**.

3. **Cloud Load Balancing:**
   - Selecciona el servidor **frontend** adecuado para procesar la solicitud.
   - El servidor frontend puede requerir comunicación con un servidor **backend** que recibe datos actualizados de otros sitios.

---

### **Configuración de Redes en Google Cloud**
- Una **red** en Google Cloud es un recurso global aislado con configuración de red específica.
  - **Instancias:** Se implementan en **subredes regionales**.
  - Configuración global de políticas:
    - **Firewalls**
    - **Enrutamiento**
    - **Acceso VPN**
  - Las subredes están diseñadas para restringir la comunicación directa entre el **frontend** y el centro de datos físico o instalaciones de colocación.

---

Este enfoque garantiza un rendimiento eficiente y seguro para las aplicaciones desplegadas en Google Cloud. 🚀

## **Nube Privada Virtual (VPC)**

### **¿Qué es una VPC?**
- Una **Nube Privada Virtual (VPC)** es un entorno seguro, individual y privado alojado en una nube pública, como **Google Cloud**.
  - Permite ejecutar código, almacenar datos, y alojar sitios web, igual que en una nube privada tradicional.
  - Combina:
    - **Escalabilidad** y **conveniencia** de la nube pública.
    - **Aislamiento de datos** de la nube privada.

---

### **Características Principales**
- **Conexión de recursos:** Las VPC conectan los recursos de Google Cloud entre sí y a Internet.
- **Segmentación y control:**
  - **Segmentación de redes**.
  - Uso de **reglas de firewall** para restringir acceso a instancias.
  - Creación de **rutas estáticas** para reenviar tráfico a destinos específicos.

---

### **Aspectos Clave de la VPC de Google Cloud**
1. **Redes globales:**
   - Las redes de VPC son globales y pueden tener **subredes** en cualquier región de Google Cloud.
   - Las subredes pueden abarcar diferentes **zonas** dentro de una misma región.
   - Los recursos en distintas zonas pueden compartir una misma subred.

2. **Expansión de subredes:**
   - Puedes aumentar el tamaño de una subred expandiendo su rango de **direcciones IP** sin afectar las máquinas virtuales existentes.

---

### **Tipos de Redes de VPC**
#### 1. **Modo Automático**
- **Características:**
  - Se crean automáticamente subredes en cada región.
  - Nuevas subredes se agregan automáticamente cuando se habilitan regiones adicionales.
  - Utilizan un conjunto de rangos de **IP predefinidos**.
  - Incluyen **reglas de firewall predeterminadas**.
  - Más adecuadas para casos de uso aislados, como:
    - **Pruebas de concepto (PoC)**.
    - **Entornos de prueba**.

- **Expansión:** 
  - El rango de IP más amplio permitido es **/16**.
  - Rangos más amplios podrían entrar en conflicto con las subredes existentes.

#### 2. **Modo Personalizado**
- **Características:**
  - No se crean subredes automáticamente.
  - Tienes control total sobre:
    - La creación de subredes.
    - La selección de **regiones**.
    - La especificación de **rangos de IP** (que no pueden solaparse).
  - Más flexibles y adecuadas para **entornos de producción**.

- **Conversión:**
  - Puedes convertir una red de modo automático a modo personalizado.
  - **Conversión unidireccional:** No es posible cambiar de una red personalizada a modo automático.

---

### **Ejemplo Práctico**
- **Escenario:** VPC con una subred en la región **us-east1**.
  - Dos **VMs de Compute Engine** en diferentes zonas comparten la misma subred.
  - Esta configuración permite crear soluciones resilientes ante interrupciones sin complicar el diseño de la red.

---

#### **Conclusión**
Las VPC en Google Cloud ofrecen un equilibrio entre la flexibilidad de la nube pública y la seguridad de una nube privada. La elección entre modo automático o personalizado depende de los requisitos específicos del proyecto, con el modo personalizado siendo ideal para entornos de producción debido a su mayor control y flexibilidad. 🚀

## **Conceptos Básicos Direcciones IP Internas y Públicas**

### **Conceptos Básicos**
- Una **Nube Privada Virtual (VPC)** se compone de **subredes**.
  - Cada subred utiliza una dirección **CIDR** de IP privada.
  - **CIDR** significa **Enrutamiento Entre Dominios Sin Clases**.

---

### **Direcciones IP Internas**
- Utilizadas exclusivamente para comunicaciones **dentro de la VPC**.
- No pueden ser enrutadas a través de **Internet**.
- **Formato IPv4:** Cada dirección tiene **32 bits** (representados en 4 octetos de 8 bits cada uno).

#### **Rango CIDR:**
- Define la cantidad de direcciones IP disponibles.
  - Ejemplo:
    - Un rango **/16** proporciona **65,536** direcciones IP.
    - Por cada incremento de "1" en el número del rango, la cantidad de direcciones IP disponibles **se reduce a la mitad**.

---

### **Direcciones IP Públicas (Externas)**
- Pueden ser de dos tipos:
  1. **Efímeras:** Temporales, asignadas automáticamente.
  2. **Reservadas:** Permanentes, asociadas a recursos específicos.
  
- Se asignan de un grupo de direcciones IP disponibles en una **región**.

#### **Consideraciones:**
- Si asignas una dirección IP reservada pero no la asocias a una máquina virtual (**VM**), se generará un **costo** por la reserva.
- Las máquinas virtuales **no conocen** su dirección IP pública directamente.
  - Al consultar la configuración de red, solo se mostrará la **dirección IP interna**.

---

### **Asignación de Direcciones IP Internas:**
- Se asignan a través del servicio **DHCP** (**Protocolo de Configuración Dinámica de Host**).
  - La asignación se renueva cada **24 horas**.
  - El **nombre de host** de la VM se asocia con la dirección IP interna mediante un servicio **DNS**.

---

### **Comparación entre IPs Internas y Públicas**
| **Característica**         | **IP Interna (Privada)**         | **IP Pública (Externa)**         |
|----------------------------|----------------------------------|----------------------------------|
| **Uso**                    | Comunicación interna en la VPC   | Acceso desde/ hacia Internet     |
| **Visibilidad**            | Visible en la VM                 | No visible en la configuración de la VM  |
| **Asignación**             | Automática (DHCP)                | Efímera o reservada              |
| **Rutas de acceso**        | No enrutable en Internet         | Enrutable globalmente            |
| **Costos**                 | Incluida sin costo adicional     | Reservada: puede generar costos  |

---

#### **Conclusión**
Comprender las diferencias entre las direcciones **IP internas** y **públicas** en la nube es esencial para configurar redes seguras y eficientes en Google Cloud. 🚀

## **La Red de Google Cloud**

### **Estructura General de la Red**
- Google Cloud se organiza en **regiones**.
  - Representadas por **íconos azules** (las futuras en blanco).
  - Cada región es una ubicación geográfica donde se ejecutan recursos.
  - El número en cada región indica la cantidad de **zonas** dentro de ella.

---

### **Puntos de Presencia (PoP)**
- Representados por **puntos grises oscuros**.
  - Son lugares donde la red de Google se conecta con el resto de **Internet**.
  - Ayudan a reducir costos y mejorar la experiencia del usuario.

---

### **Red Global Privada de Google**
- Representada con **líneas azules**.
  - Conecta regiones con PoPs.
  - Incluye **cableado de fibra óptica** (cientos de miles de millas).
  - Tiene inversiones en **cables submarinos** (marcados con el año de instalación).

---

### **Servicios de Red Principales**
1. **Google Cloud VPC (Nube Privada Virtual)**
   - Infraestructura administrada por Google.
   - Permite conectar recursos dentro de una VPC y aislarlos por razones de:
     - **Seguridad**
     - **Cumplimiento**
     - **Desarrollo vs. producción**

2. **Cloud Load Balancing**
   - Balanceo de carga escalable y de alto rendimiento.
   - Garantiza **rendimiento coherente** para los usuarios.

3. **Cloud CDN (Content Delivery Network)**
   - Entrega contenido a usuarios finales con alta disponibilidad y rendimiento.
   - Almacena archivos cerca del usuario para:
     - **Reducir la latencia**
     - **Minimizar costos**

4. **Cloud Interconnect**
   - Conecta la infraestructura local del cliente a la red perimetral de Google.
   - Proveedores de servicios asociados ofrecen:
     - Conexiones de **nivel empresarial**
     - Mejor nivel de servicio que las conexiones estándar de Internet.

5. **Cloud DNS (Sistema de Nombres de Dominio)**
   - Traduce nombres de dominio en direcciones IP.
   - Infraestructura de Google soporta nombres de dominio para aplicaciones de **producción de gran volumen**.

---

#### **Resumen Clave:**
Google Cloud ofrece una infraestructura de red privada y global con herramientas avanzadas como VPC, balanceo de carga, CDN, conexiones empresariales y DNS. Todo esto proporciona una experiencia escalable, segura y eficiente para sus usuarios. 🌐🚀

## **Rutas y Reglas de Firewall en una VPC de Google Cloud**

### **Tablas de Enrutamiento en una VPC**
- **Tablas de enrutamiento:** Similares a las de redes físicas.
  - Son tablas de datos almacenadas en la memoria de un **router** o un host de redes.
  - Contienen rutas a destinos específicos y pueden incluir un valor de **métrica** o número de **saltos**:
    - Esto ayuda a elegir la **ruta más eficiente**.

#### **Características Clave:**
- En Google Cloud, las tablas de enrutamiento de una VPC son:
  - **Incorporadas:** No necesitas aprovisionar ni administrar routers manualmente.
  - Utilizadas para:
    - Reenviar tráfico entre instancias dentro de una misma red.
    - Conectar diferentes subredes o zonas sin requerir una **dirección IP externa**.

---

### **Firewall Distribuido en Google Cloud**
- Las VPCs incluyen un **firewall global distribuido** que:
  - **Restringe** el acceso a las instancias.
  - Controla el tráfico **entrante** y **saliente**.

#### **Definición de Reglas de Firewall:**
- Se pueden definir mediante **etiquetas de metadatos** en las instancias de **Compute Engine**.
- **Ejemplo práctico:**
  - **Etiqueta:** "WEB" asignada a servidores web.
  - **Regla:** Permite el tráfico en los puertos **80** (HTTP) o **443** (HTTPS) en todas las VMs con la etiqueta "WEB".
  - Aplica sin importar la **dirección IP** de la instancia.

---

#### **Resumen Clave:**
- Las rutas en una VPC facilitan el flujo interno del tráfico sin configuración de routers físicos.
- Los firewalls se administran con reglas personalizables, lo que proporciona una **seguridad robusta** y **flexible** en la red de Google Cloud. 🌐🔒

## **Redes de VPC Múltiples en Google Cloud**

### **Conectividad entre VPCs en Google Cloud**
- **VPCs** pertenecen a proyectos individuales de Google Cloud.
- **Problema:** ¿Cómo se comunican las VPCs cuando tu empresa tiene múltiples proyectos?

#### **Solución: Intercambio de Tráfico de VPC**
- **Definición:** Establece una relación entre dos VPCs para intercambiar tráfico.
  - Permite la conectividad privada conforme a **RFC 1918** entre dos redes VPC.
  - No importa si las VPCs están en el mismo proyecto u organización.

#### **Reglas de Firewall en el Intercambio de VPC:**
- Cada red de VPC mantiene su propio:
  - **Firewall global.**
  - **Tablas de enrutamiento.**
  - Permite un control **descentralizado**:
    - Cada VPC puede ser administrada de forma independiente.

---

### **Ventajas sobre Métodos Tradicionales:**
- **Históricamente:** Se usaban direcciones IP externas o VPNs para la comunicación entre VPCs.
  - Problemas comunes:
    - **Costos altos.**
    - **Problemas de seguridad.**
    - **Latencia de red.**
- **Intercambio de tráfico de VPC** elimina estos inconvenientes.

---

### **VPC Compartida: Alternativa con Control Centralizado**
- **Funcionalidad:** Aprovecha **Identity & Access Management (IAM)** para controlar accesos entre proyectos.
- **Beneficio:** Permite conectar recursos de varios proyectos a una **red VPC común**.

#### **Componentes Clave:**
1. **Proyecto Host:** 
   - Es el proyecto principal que contiene la red de VPC compartida.
2. **Proyectos de Servicio:** 
   - Se conectan a la VPC compartida.
3. **Comunicación Segura:** 
   - Los recursos en los proyectos de servicio pueden comunicarse de forma segura usando **IP internas**.

---

#### **Resumen Clave:**
- **Intercambio de tráfico de VPC:** Facilita la conexión privada entre múltiples redes VPC sin VPNs.
- **VPC compartida:** Ofrece un control centralizado y seguro mediante IAM, conectando recursos de varios proyectos a una red común. 🌐🔗

## **Lab Práctico: Redes Múltiples de VPC**

### **Objetivo del Lab:**
Aplicar conocimientos sobre redes de VPC múltiples mediante un ejercicio práctico.

---

### **Actividades del Lab "Multiple VPC Networks":**

1. **Creación de Redes VPC Personalizadas:**
   - Configurar redes de VPC en modo personalizado.
   - Establecer reglas de firewall para controlar el tráfico.

2. **Instancias de Máquinas Virtuales (VMs):**
   - Utilizar **Compute Engine** para crear instancias de máquinas virtuales.
   - Configurar múltiples interfaces de red en una VM.

3. **Pruebas de Conectividad:**
   - Explorar la conectividad entre instancias de máquinas virtuales situadas en diferentes redes de VPC.
   - Verificar la comunicación dentro de la red configurada.

---

#### **Habilidades Prácticas que Desarrollarás:**
- Creación y configuración de redes de VPC.
- Implementación de reglas de firewall.
- Despliegue y configuración de máquinas virtuales.
- Análisis y pruebas de conectividad en entornos de múltiples VPC.

## **Lab: Redes de VPC Como Controlar el Acceso**

### **Objetivo del Lab:**
Practicar el control de acceso a una VPC utilizando servidores web, reglas de firewall y roles de IAM.

---

### **Actividades del Lab "VPC Networks - Controlling Access":**

1. **Configuración de Servidores Web Nginx:**
   - Implementar y configurar servidores web Nginx.

2. **Control de Acceso HTTP Externo:**
   - Configurar reglas de firewall etiquetadas para gestionar el tráfico HTTP hacia los servidores web.

3. **Gestión de Cuentas de Servicio y Roles de IAM:**
   - Crear una cuenta de servicio.
   - Asignar roles de IAM específicos para controlar los permisos.

4. **Exploración de Roles de IAM:**
   - Analizar y comprender los permisos de los roles de:
     - **Administrador de red.**
     - **Administrador de seguridad.**

---

#### **Habilidades Prácticas que Desarrollarás:**
- Configuración de servidores web Nginx en la nube.
- Implementación de reglas de firewall con etiquetas.
- Creación y gestión de cuentas de servicio en Google Cloud.
- Asignación de roles de IAM y análisis de permisos específicos.

## **Compilación de Nubes Híbridas en Google Cloud**

### **Introducción a la Nube Híbrida:**
Muchos clientes desean conectar sus redes privadas virtuales (VPC) en Google Cloud con otras redes locales o en otras nubes. Google Cloud ofrece varias opciones para lograr esto de manera eficiente.

---

### **Opciones Disponibles:**

#### 1. **VPN con IPsec (Conexión de Túnel):**
   - **Descripción:** Conexión de red privada virtual a través de Internet usando el protocolo IPsec.
   - **Optimización:** Se puede usar **Cloud Router** para intercambiar información de ruta en la VPN mediante el **protocolo BGP (Border Gateway Protocol)**.
   - **Ventaja:** Las nuevas subredes en la VPC de Google se enrutan automáticamente a la red local.

#### 2. **Intercambio de Tráfico Directo:**
   - **Descripción:** Colocar un router en el mismo centro de datos público que un **Punto de Presencia (PoP)** de Google.
   - **Cobertura:** Más de 100 PoPs en todo el mundo.
   - **Proveedores de Servicios:** Los clientes fuera de un PoP pueden conectarse mediante socios del programa de intercambio de tráfico.
   - **Desventaja:** No está cubierto por un **Acuerdo de Nivel de Servicio (ANS)** de Google.

#### 3. **Interconexión Dedicada:**
   - **Descripción:** Proporciona una o más conexiones privadas directas a Google.
   - **Cobertura ANS:** Hasta un 99.99% de disponibilidad si cumple con las especificaciones de Google.
   - **Confiabilidad Adicional:** Se puede respaldar con una **VPN** para mayor fiabilidad.

#### 4. **Interconexión de Socio:**
   - **Descripción:** Conectividad entre una red local y una VPC a través de un **proveedor de servicios autorizado**.
   - **Uso Ideal:** Si el centro de datos está fuera del alcance de una instalación de interconexión dedicada o no se requiere una conexión de 10 Gbps.
   - **Configuración de Disponibilidad:** Puede configurarse para servicios esenciales que toleren cierto tiempo de inactividad.
   - **Responsabilidad:** Google no cubre problemas relacionados con el proveedor de servicios externo.

---

### **Comparación de Opciones Clave:**

| **Opción**                    | **Ventajas**                                                                                  | **Desventajas**                                                                            |
|-------------------------------|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|
| **VPN con IPsec**             | Fácil implementación, enrutamiento automático con Cloud Router.                              | Dependencia de Internet; puede tener problemas de seguridad y ancho de banda.             |
| **Intercambio de Tráfico Directo** | Conexión directa en un PoP, sin uso de Internet.                                              | No tiene cobertura de ANS; requiere colocación en un PoP de Google.                       |
| **Interconexión Dedicada**    | Alta disponibilidad (99.99% ANS), conexiones privadas directas.                              | Puede ser costosa; requiere cumplir especificaciones de Google.                           |
| **Interconexión de Socio**    | Flexible, útil para centros de datos remotos o necesidades menores.                          | Dependencia de proveedores externos; Google no cubre problemas fuera de su red.           |

---

### **Conclusión:**
La elección entre estas opciones depende de factores como la seguridad, el ancho de banda, la ubicación física de los centros de datos y la necesidad de disponibilidad. Cada opción ofrece un nivel diferente de control y confiabilidad en la conexión entre redes locales y Google Cloud.

## **Opciones del Balanceo de Cargas en Google Cloud**

### **¿Qué es un Balanceador de Cargas?**
- **Función Principal:** Distribuir el tráfico de usuarios entre varias instancias de una aplicación.
- **Beneficio:** Reduce el riesgo de problemas de rendimiento al distribuir la carga de manera uniforme.

---

### **Cloud Load Balancing:**
- **Servicio:** Completamente distribuido, definido por software, y administrado por Google.
- **Ventajas:**
  - No requiere gestionar ni escalar máquinas virtuales (VMs).
  - Maneja tráfico HTTP(S), SSL/TCP, y UDP.
  - Permite balanceo multirregional con conmutación automática por error si los backends fallan.
  - Reacciona rápidamente a cambios en el tráfico, estado del backend y condiciones de red.
  - No requiere preparación previa, incluso ante aumentos repentinos de demanda.

---

### **Tipos de Balanceadores de Cargas:**

#### **1. Balanceador de Cargas HTTP(S) Global:**
   - **Uso:** Para aplicaciones web con tráfico HTTP(S).
   - **Escenario:** Balanceo entre regiones.

#### **2. Balanceador de Cargas de Proxy SSL:**
   - **Uso:** Para tráfico SSL que no es HTTP.
   - **Escenario:** Balanceo de tráfico seguro en la capa SSL.

#### **3. Balanceador de Cargas de Proxy TCP:**
   - **Uso:** Para tráfico TCP que no usa la capa SSL.
   - **Nota:** Funciona solo con números de puertos específicos y con tráfico TCP.

#### **4. Balanceador de Cargas Externo Regional (UDP):**
   - **Uso:** Para tráfico UDP o tráfico en cualquier número de puerto.
   - **Escenario:** Balanceo de cargas dentro de una región de Google Cloud.

---

### **Tráfico Interno vs. Externo:**

#### **Tráfico Externo:**
   - **Todos los balanceadores anteriores:** Destinados al tráfico entrante desde Internet hacia Google Cloud.

#### **Tráfico Interno (Intra-Proyecto):**
   - **Balanceador de Cargas HTTP(S) Interno:**
     - **Uso:** Para balancear tráfico interno entre componentes de una aplicación (por ejemplo, entre la capa de presentación y la capa comercial).
     - **Dirección IP:** Utiliza direcciones IP internas de Google Cloud.
     - **Destino:** Balancea la carga entre las VMs de **Compute Engine**.

---

### **Resumen de Opciones Clave:**

| **Tipo de Balanceador**                | **Uso Principal**                                 | **Tipo de Tráfico**                | **Región**          |
|----------------------------------------|--------------------------------------------------|-----------------------------------|---------------------|
| **HTTP(S) Global**                     | Aplicaciones web entre regiones                   | HTTP(S)                           | Global              |
| **Proxy SSL**                          | Tráfico seguro no-HTTP                            | SSL/TCP                           | Global              |
| **Proxy TCP**                          | Tráfico TCP no seguro                             | TCP                               | Global              |
| **Externo Regional**                   | Tráfico UDP o cualquier puerto                    | UDP/TCP                           | Regional            |
| **HTTP(S) Interno**                    | Tráfico interno en aplicaciones                   | HTTP(S)                           | Interno (Intra-VPC) |

---

### **Conclusión:**
Google Cloud ofrece una gama completa de balanceadores de cargas para manejar diferentes tipos de tráfico y escenarios. La elección del balanceador adecuado depende de si el tráfico es interno o externo, y del tipo de protocolo involucrado.

## **Lab: Configuración de un Balanceador de Cargas HTTP con Google Cloud Armor**

## **Objetivo del Lab:**
- Configurar un balanceador de cargas HTTP.
- Implementar Google Cloud Armor para mitigar ataques de denegación de servicio distribuido (DDoS).

---

### **Conceptos Clave:**

#### **¿Qué es Google Cloud Armor?**
- **Función Principal:** Mitiga ataques de denegación de servicio distribuido (DDoS).
- **Uso:** Protege aplicaciones y servicios frente a tráfico malicioso.

---

### **Tareas del Lab:**

#### **1. Configuración del Balanceador de Cargas HTTP:**
   - **Backends Globales:** Configura los backends para manejar tráfico HTTP.
   - **IPv4 e IPv6:** Soporte para ambos protocolos.

#### **2. Creación de Reglas de Firewall:**
   - **Reglas HTTP:** Define reglas de firewall para tráfico HTTP.
   - **Verificación de Estado:** Configura reglas para verificar la salud de los backends.

#### **3. Configuración de Plantillas y Grupos de Instancias:**
   - **Plantillas de Instancias:** Configura dos plantillas de instancias.
   - **Grupos de Instancias Administrados:** Crea dos grupos de instancias administrados para distribuir la carga.

#### **4. Prueba de Esfuerzo:**
   - **Objetivo:** Evaluar la capacidad del balanceador de cargas bajo tráfico intenso.
   - **Resultado:** Identificar la dirección IP de la prueba de esfuerzo.

#### **5. Restricción de Acceso con Google Cloud Armor:**
   - **Lista de Bloqueo:** Agrega la dirección IP de la prueba de esfuerzo a una lista de bloqueo.
   - **Efecto:** Restringe el acceso al balanceador de cargas HTTP desde esa IP específica.

---

### **Pasos Resumidos del Lab:**

1. **Configura el balanceador de cargas HTTP.**
2. **Crea reglas de firewall y verifica el estado de los backends.**
3. **Establece plantillas de instancias y grupos administrados.**
4. **Realiza una prueba de esfuerzo para simular un ataque DDoS.**
5. **Usa Google Cloud Armor para bloquear la IP de la prueba de esfuerzo.**

---

### **Beneficio Principal:**
Este lab enseña a proteger servicios en Google Cloud usando balanceadores de cargas HTTP y Cloud Armor, ayudando a mantener la seguridad y el rendimiento de las aplicaciones frente a posibles ataques DDoS.

## Cuestionario

### 1. ¿Qué solución de conectividad proporciona una conexión directa a Google?  
- ❌ Intercambio de tráfico por proveedores  
- **✅ Interconexión dedicada**   
- ❌ Interconexión de socio  
- ❌ Intercambio de tráfico directo  

---

### 2. ¿Cuál de los siguientes términos indica dónde la red de Google se conecta al resto de Internet?  
- ❌ Dirección IP  
- **✅ Punto de presencia (PoP)**   
- ❌ Zona  
- ❌ Región  

---

### 3. ¿Qué se utiliza para reenviar tráfico de una instancia a otra en una misma red, entre subredes o incluso entre zonas de Google Cloud y no requiere una dirección IP externa?  
- ❌ Subred  
- ❌ Balanceador de cargas  
- **✅ Tabla de enrutamiento**   
- ❌ Firewall  

---

### 4. ¿Cuál de estas opciones elegiría si necesitara balanceo de cargas interregional para una aplicación web?  
- ❌ Balanceo de cargas del proxy de SSL  
- ❌ Balanceo de cargas del proxy de TCP  
- ❌ Balanceo de cargas HTTP(S) interno  
- **✅ Balanceo de cargas de HTTP(S)**   

---

### 5. Seleccione la afirmación que es verdadera.  
- ❌ Las VPC son regionales y las subredes son zonales.  
- **✅ Las VPC son globales y las subredes son regionales.**   
- ❌ Las VPC y las subredes son globales.  
- ❌ Las VPC son regionales. Las subredes no se usan en Google Cloud.  

# Resumen del Módulo 7: Google Cloud Computing Foundations Networking and Security

## Temas Principales  
- **Nubes Privadas Virtuales (VPCs)**:  
  - Definición: Una VPC es un modelo privado, individual y seguro alojado dentro de una nube pública como Google Cloud.  
  - Componentes: Se compone de subredes, configuradas con direcciones IP privadas (CIDR).  

- **Arquitectura de Red de Google**:  
  - Incluye regiones y puntos de presencia (PoP).  

- **Productos y Herramientas de Redes de Google Cloud**:  
  - Google Cloud VPC  
  - Cloud Load Balancing  
  - Cloud CDN  
  - Cloud Interconnect  
  - Cloud DNS  

- **Redes de VPC Avanzadas**:  
  - Uso de múltiples redes VPC con intercambio de tráfico de VPC y VPC compartida.  

- **Opciones para Nubes Híbridas**:  
  - Protocolo IPsec de VPN  
  - Intercambio de tráfico (directo y por proveedores)  
  - Interconexión dedicada  
  - Interconexión de socio  

- **Opciones de Balanceo de Cargas**:  
  - Cloud Load Balancing  
