**Indice**

[1. 🔍 Análisis de necesidades del sistema](#1-🔍-análisis-de-necesidades-del-sistema)

[2. 📋 Plan de implantación del sistema operativo](#2-📋-plan-de-implantación-del-sistema-operativo)

[3. 🛠️ Instalación del sistema operativo](#3-🛠️-instalación-del-sistema-operativo)

[4. ⚙️ Configuración del sistema](#4-⚙️-configuración-del-sistema)

[5. 👥 Gestión de usuarios y permisos](#5-👥-gestión-de-usuarios-y-permisos)

[6. 🌐 Servicios Básicos](#6-🌐-servicios-básicos)


# 1. 🔍 Análisis de necesidades del sistema

	·Sistema operativo para servidores

Windows server 2025 ya que el establecimiento dispone de un equipo con su licencia que esta usando en la actualidad como controlador de dominio de Windows.

Ubuntu Server: Ya que como ventajas tiene Sin costes de licencias, mayor estabilidad y menor consumo de recursos.

	·Sistema operativo para equipos de usuario

Yo optaría por instalar licencias de Windows 11, ya que la mayoría de usuarios interactúa mejor con este sistema operativo.

Utilizaría licencias OEM son mas baratas y en su versión Pro


## 2. 📋 Plan de implantación del sistema operativo

**Utilizaría la visualización usando el sistema V2P para configurar los equipos y luego llevarlo a las maquinas físicas.**

**Una vez conforme con la instalación utilizaría la clonación de disco, con clonecilla por ejemplo.**


### 3. 🛠️ Instalación del sistema operativo

**Instalamos en el virtual box la maquina virtual en este caso un Windows 10**

![Captura](INSTALACION_WINDOWS/input_file_0.png)

![Captura](INSTALACION_WINDOWS/input_file_1.png)


**Instalamos el SO**

![Captura](INSTALACION_WINDOWS/input_file_2.png)

**Aceptamos Términos**

![Captura](INSTALACION_WINDOWS/input_file_3.png)

**Elegimos el tipo de instalación**

![Captura](INSTALACION_WINDOWS/input_file_4.png)


**Indicamos donde instalar**

![Captura](INSTALACION_WINDOWS/input_file_5.png)

**Seleccionamos el país**

![Captura](INSTALACION_WINDOWS/input_file_6.png)


**Teclado**

![Captura](INSTALACION_WINDOWS/input_file_7.png)

**Creamos usuario**

![Captura](INSTALACION_WINDOWS/input_file_8.png)


**Creamos contraseña**

![Captura](INSTALACION_WINDOWS/input_file_9.png)

**Rellenamos las 3 preguntas de seguridad**

![Captura](INSTALACION_WINDOWS/input_file_10.png)


**Ajustes de ubicación**

![Captura](INSTALACION_WINDOWS/input_file_11.png)


**Encontrar dispositivo**

![Captura](INSTALACION_WINDOWS/input_file_12.png)

**Envío de datos de diagnóstico**

![Captura](INSTALACION_WINDOWS/input_file_13.png)

**Mejora las entradas manuscritas y la escritura**

![Captura](INSTALACION_WINDOWS/input_file_14.png)

**Obtener experiencias personalizadas**

![Captura](INSTALACION_WINDOWS/input_file_15.png)

**Publicidad**

![Captura](INSTALACION_WINDOWS/input_file_16.png)


**Personalizar experiencias**

![Captura](INSTALACION_WINDOWS/input_file_17.png)

**Asistente Cortana**

![Captura](INSTALACION_WINDOWS/input_file_18.png)

**Y ya tenemos la instalación del SO. Terminado**

![Captura](INSTALACION_WINDOWS/input_file_19.png)


#### 4. ⚙️ Configuración del sistema

**· Nombre del equipo**

![Captura](INSTALACION_WINDOWS/input_file_20.png)

**· Configuración de red**

![Captura](INSTALACION_WINDOWS/input_file_22.png)


##### 5. 👥 Gestión de usuarios y permisos

Creamos el nuevo usuario en AD
![Captura](INSTALACION_WINDOWS/input_file_23.png)
Creamos una contraseña que el usuario deberá cambiar cuando inicie sesión
![Captura](INSTALACION_WINDOWS/input_file_24.png)

Usuario creado
![Captura](INSTALACION_WINDOWS/input_file_25.png)

Creación de Grupo
![Captura](INSTALACION_WINDOWS/input_file_26.png)

Asignación de permisos en la carpeta compartida
![Captura](INSTALACION_WINDOWS/input_file_27.png)

Añadimos al usuario al grupo
![Captura](INSTALACION_WINDOWS/input_file_28.png)

Al usuario le podríamos incluir en los grupos que quisiéramos en la pestaña de miembros de
![Captura](INSTALACION_WINDOWS/input_file_29.png)


###### 6. 🌐 Servicios Básicos

Acceso remoto
![Captura](INSTALACION_WINDOWS/input_file_30.png)
