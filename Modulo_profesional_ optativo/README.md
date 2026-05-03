# Índice

☁️ 1. [Elección de proveedor Cloud](#-1-elección-de-proveedor-cloud)

🏗️ 2. [Arquitectura cloud propuesta](#-2-arquitectura-cloud-propuesta)

🛠️ 3. [Servicios Cloud utilizados](#-3-servicios-cloud-utilizados)

💰 4. [Estimación de costes](#-4-estimación-de-costes)

---

### ☁️ 1. Elección de proveedor Cloud
**He elegido DigitalOcean por su rapidez y sencillez, seleccionando el “One-click install de MariaDB/LAMP".**

---

### 🏗️ 2. Arquitectura cloud propuesta

#### **Funcionamiento**
*   Se accedería a través de una **IP pública** y el proveedor nos da un usuario y contraseña maestra al crear la instancia.
*   En cuanto a su seguridad, nos incluye capas que debemos activar, como **certificados SSL y backups**.
*   Se crea una **cuenta para cada usuario** con los permisos que le correspondan.
*   Hay dos formas de dar acceso:
    *   **IPs fijas:** Desde un equipo de la empresa.
    *   **VPN o Acceso Abierto:** Trabajo desde casa.
*   Este sistema permite que **varios usuarios puedan escribir y leer al mismo tiempo**, ya que el propio sistema gestiona las colas de peticiones automáticamente para que no haya choques de datos.

#### **Diagrama**
*   El usuario entra con su navegador a una dirección IP.
*   El **Firewall**, si está autorizado, lo deja entrar.
*   **phpMyAdmin** es la página web donde todos ponen su usuario y contraseña.
*   **MariaDB** es donde se guardan físicamente los datos.

---

### 🛠️ 3. Servicios Cloud utilizados
*   **Droplets:** Es el servicio principal. Es un servidor virtual donde se instalará todo: SO, MariaDB y phpMyAdmin.
*   **Cloud Firewalls:** Es un servicio que actúa como filtro de seguridad.
*   **Backups:** Para realizar las copias de seguridad del servidor de manera automática.

---

### 💰 4. Estimación de costes
**La opción más recomendada es:**


| Concepto | Coste |
| :--- | :---: |
| **Droplet Basic (1GB RAM / 1 CPU / 25GB SSD)** | 6,00 $ |
| **Cloud Firewall** | Gratis |
| **Backups (20% del valor del Droplet)** | 1,20 $ |
| **TOTAL aproximado** | **7,20 $ / mes** |

**DigitalOcean incluye entre 500GB y 1 TB de transferencia de datos gratuita. Si se decide dejar de utilizar el proyecto a mitad de mes, solo se paga por las horas que estuvo encendido. Al precio final hay que añadir el IVA.**
