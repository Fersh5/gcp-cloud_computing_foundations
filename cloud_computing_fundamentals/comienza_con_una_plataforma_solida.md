# 2. Comienza con una plataforma solida

En este módulo, explorarás cómo interactuar con Google Cloud y sus herramientas. Los temas cubiertos incluyen:

- **Google Cloud Console**: Aprenderás a usar la consola para gestionar servicios en Google Cloud.
- **Proyectos en Google Cloud**: Verás cómo los proyectos son la base para habilitar y usar los servicios.
- **Facturación**: Identificarás cómo funciona la facturación en Google Cloud.
- **Instalación y configuración del SDK de Cloud**: Configurarás el SDK para interactuar con Google Cloud desde la línea de comandos.
- **Cloud Shell**: Reconocerás los casos de uso para usar Cloud Shell y su editor de código.
- **APIs de Google Cloud**: Explorarás cómo funcionan las APIs y su integración en tus proyectos.
- **App para dispositivo móvil**: Administrarás los servicios de Google Cloud desde un dispositivo móvil.

El módulo también incluye dos laboratorios prácticos y un cuestionario al final.

## Consola de Google Cloud

Existen cuatro formas de interactuar con Google Cloud:

- **Consola de Cloud**
- **SDK de Cloud y Cloud Shell**
- **APIs**
- **App para dispositivos móviles**

En este módulo, nos enfocaremos en la **Consola de Google Cloud**, que es la interfaz gráfica de usuario (GUI) para gestionar servicios en Google Cloud.

**Funciones clave de la Consola de Google Cloud:**
- **Implementar y escalar servicios**: Ayuda a gestionar la infraestructura de manera sencilla.
- **Diagnóstico de problemas de producción**: Permite visualizar y gestionar el estado de los recursos.
- **Control administrativo completo**: Proporciona control sobre recursos y presupuesto.
- **Búsqueda de recursos**: Localiza fácilmente recursos dentro de Google Cloud.
- **SSH en el navegador**: Conéctate a las instancias de forma segura usando el protocolo SSH directamente desde el navegador.

Para acceder a la consola, visita [console.cloud.google.com](https://console.cloud.google.com).

## Comprende los Proyectos

Google Cloud organiza los recursos en una jerarquía con cuatro niveles:

1. **Recursos**
2. **Proyectos**
3. **Carpetas**
4. **Nodo de Organización**

**Niveles de la Jerarquía:**

- **Recursos (Nivel 1)**: Incluyen máquinas virtuales, buckets de Cloud Storage, tablas en BigQuery y otros elementos de Google Cloud.
  
- **Proyectos (Nivel 2)**: Los recursos se organizan en proyectos. Cada proyecto es un compartimento independiente y cada recurso pertenece a exactamente un proyecto. Los proyectos permiten administrar APIs, habilitar la facturación y agregar colaboradores.

  - Los proyectos tienen tres atributos de identificación:
    - **ID del proyecto**: Un identificador único global, asignado por Google, que no se puede modificar.
    - **Nombre del proyecto**: Creado por el usuario, no único y puede ser modificado en cualquier momento.
    - **Número del proyecto**: Un número único asignado por Google, utilizado internamente.

  - **Administración de proyectos**: Google Cloud ofrece la herramienta **Resource Manager** para administrar proyectos de forma programática. Con esta herramienta puedes:
    - Crear, actualizar y eliminar proyectos.
    - Recuperar proyectos eliminados.

- **Carpetas (Nivel 3)**: Se utilizan para agrupar proyectos de forma jerárquica, por ejemplo, por departamento. Las carpetas permiten delegar derechos administrativos a los equipos para que trabajen independientemente.

- **Nodo de Organización (Nivel 4)**: El nodo de organización es el recurso superior en la jerarquía. Agrupa todos los proyectos, carpetas y otros recursos de una cuenta.

Para gestionar los recursos en estos niveles, es necesario tener acceso a un nodo de organización.

## Facturación de Google Cloud

**Establecimiento de la Facturación**

- **Vinculación de cuenta de facturación**: La facturación se establece a nivel de proyecto. Para utilizar los servicios de Google Cloud, cada proyecto debe estar vinculado a una cuenta de facturación, donde configurarás los datos de pago.
  
- **Proyectos sin cuenta vinculada**: Los proyectos que no estén vinculados a una cuenta de facturación solo pueden usar los servicios gratuitos de Google Cloud.

- **Cuentas secundarias**: Se pueden usar cuentas secundarias para separar la facturación por proyecto. Algunos clientes de Google Cloud que revenden servicios utilizan cuentas secundarias para cada uno de sus clientes.

**Control de Costos**

- **Presupuestos y alertas**: 
  - Los presupuestos pueden definirse a nivel de cuenta de facturación o del proyecto. Pueden tener un límite fijo o estar vinculados a métricas, como un porcentaje del gasto mensual anterior.
  - Se pueden establecer alertas para notificar cuando los costos alcancen un límite del presupuesto (por ejemplo, al 90% del presupuesto).
  - Las alertas predeterminadas son al 50%, 90% y 100%, pero pueden personalizarse.

- **Informes**: Los informes visuales en la consola de Google Cloud permiten supervisar los gastos por proyecto o servicio.

**Cuotas**

- **Cuotas de frecuencia**: Controlan la cantidad de llamadas que un servicio puede hacer en un período de tiempo determinado. Por ejemplo, el servicio de GKE permite 1,000 llamadas a su API cada 100 segundos.
  
- **Cuotas de asignación**: Controlan la cantidad de recursos disponibles para los proyectos. Por ejemplo, el límite predeterminado es de 5 redes de nube privada virtual por proyecto. 

- **Restablecimiento de cuotas**: Las cuotas de frecuencia se restablecen después de un período, mientras que las cuotas de asignación son fijas, aunque algunas pueden modificarse solicitando un aumento al equipo de Asistencia de Google Cloud.

**Herramientas Adicionales**

- **Calculadora de precios**: Google Cloud ofrece una calculadora de precios para estimar los costos de la computación en la nube en [cloud.google.com/products/calculator](https://cloud.google.com/products/calculator).

## SDK de Google Cloud

**¿Qué es el SDK de Cloud?**

- El **SDK de Cloud** (Kit de Desarrollo de Software) es un conjunto de herramientas de línea de comandos que permite administrar recursos y aplicaciones alojados en Google Cloud desde una computadora local.

**Herramientas del SDK**

- **gcloud CLI**: La interfaz de línea de comandos principal para interactuar con los productos y servicios de Google Cloud.
- **gsutil**: Herramienta para acceder a Cloud Storage desde la línea de comandos.
- **bq**: Herramienta de línea de comandos para trabajar con BigQuery.

**Instalación del SDK**

1. **Descargar**: Ve a [cloud.google.com/sdk](https://cloud.google.com/sdk) y selecciona la versión correspondiente a tu sistema operativo.
2. **Instrucciones de instalación**: Sigue las instrucciones específicas para tu sistema operativo.
3. **Configuración**:
   - Después de la instalación, ejecuta el comando `gcloud init`.
   - Se te pedirá que ingreses información como tus credenciales de acceso, los proyectos y las zonas y regiones predeterminadas.

Con estas herramientas, podrás interactuar de manera eficiente con los recursos de Google Cloud desde la línea de comandos en tu máquina local.

## Cloud Shell

**¿Qué es Cloud Shell?**

- **Cloud Shell** proporciona acceso a los recursos de Google Cloud mediante una línea de comandos desde un navegador.
- Es una máquina virtual basada en Debian con un directorio persistente de 5 GB, facilitando la administración de recursos y proyectos de Google Cloud.
- Con Cloud Shell, las herramientas como el comando `gcloud` del SDK de Cloud y otras utilidades están siempre instaladas, actualizadas y autenticadas.

**Cómo acceder a Cloud Shell**

1. Ve a [console.cloud.google.com](https://console.cloud.google.com).
2. Haz clic en el ícono **Activar Cloud Shell** en la barra de herramientas.
3. Esto abrirá una terminal de Cloud Shell en la parte inferior de la ventana.

**Editor de código en Cloud Shell**

- En la ventana de la terminal, puedes iniciar el **editor de código de Cloud Shell**.
- El editor de código permite editar archivos en tiempo real dentro del navegador web, lo que es útil para trabajar con aplicaciones basadas en código o contenedores.
- No es necesario descargar ni cargar archivos, ya que todo el trabajo se realiza directamente en la nube.
- También puedes usar editores de texto desde el símbolo del sistema de Cloud Shell.

Cloud Shell es una herramienta poderosa para interactuar con recursos y proyectos de Google Cloud directamente desde un navegador, sin necesidad de configuraciones adicionales en tu máquina local.

## Primer Lab Práctico: A Tour of Google Cloud Hands-on Labs

En este lab, **"A Tour of Google Cloud Hands-on Labs"**, practicarás con la consola de Google Cloud.

**Objetivos del Lab**

- **Introducción a la plataforma de Qwiklabs**.
- Identificarás las **características clave** de un entorno de lab.
- Accederás a la **consola de Google Cloud** utilizando **credenciales específicas**.

Este lab te ayudará a familiarizarte con la consola de Google Cloud y a comenzar a interactuar con sus herramientas y servicios.
