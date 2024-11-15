# Medical.Office.SqlLocalDB 

![enter image description here](./Documentacion/Img/caduceo.png)

[TODO](./Documentacion/TODO.md)

[CHANGELOG](./Documentacion/CHANGELOG.md)

## Tabla de contenidos:
- [Descripción y contexto](#Descripción-y-contexto)
- [Descripción](#Descripción)
- [Contexto](#Contexto)



# Descripción y contexto


## Descripción

La base de datos **Medical.Office.SqlLocalDB** es un sistema desarrollado para gestionar de manera integral la administración de un consultorio médico. Este sistema está diseñado para manejar dos áreas clave:

1.  **Administración de Pacientes:** La base de datos soporta la administración de información médica y personal de los pacientes. Se incluyen funcionalidades para almacenar y gestionar datos como:
    
    -   Información básica del paciente (nombre, fecha de nacimiento, dirección, contacto).
    -   Historial médico y de consultas.
    -   Citas médicas, tratamientos y procedimientos realizados.
    -   Registro de diagnósticos, prescripciones, y seguimientos.
2.  **Punto de Venta (POS):** Además de la gestión médica, la base de datos incorpora módulos para llevar el control del punto de venta del consultorio. Esto permite administrar las transacciones económicas relacionadas con los servicios médicos, tales como:
    
    -   Facturación y cobro de consultas y procedimientos.
    -   Venta de productos relacionados (medicamentos, insumos médicos).
    -   Control de inventario de productos disponibles para la venta.
    -   Registro de pagos y gestión de clientes en el punto de venta.

### **Contexto**

El sistema está diseñado para ser una solución local que permita a pequeños y medianos consultorios médicos gestionar tanto la atención a pacientes como el aspecto comercial de sus operaciones. La base de datos **Medical.Office.SqlLocalDB** tiene como objetivo centralizar la información, facilitar la toma de decisiones clínicas y administrativas, y optimizar el flujo de trabajo en el consultorio.

El sistema se diseñó siguiendo principios de modularidad, lo que permite la futura integración con otros sistemas o la expansión de funcionalidades según las necesidades del consultorio.

### Lenguaje
[![SQLServer](https://img.shields.io/badge/Microsoft%20SQL%20Server-CC2927?style=for-the-badge&logo=microsoft%20sql%20server&logoColor=white)](https://www.microsoft.com/es-mx/sql-server/sql-server-downloads)

### Informacion del desarollador
 [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Raptor057)

 [![Linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/rogelio-arri/) 

### Donaciones o pago por soporte
 [![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/RogelioArriaga?country.x=MX&locale.x=es_XC) 



### Docker

### Crear la red
    docker network create medicalnetwork


### 1) Construir la Imagen
    docker build -t medical_office_db .

### 2) Ejecutar el Contenedor con el Nombre sql1
Ejecuta el siguiente comando para crear el contenedor de SQL Server y conectarlo a la red medicalnetwork:

    docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Cbmwjmkq23" -p 1433:1433 --name sql1 --hostname sql1 -v sql_data:/var/opt/mssql --network medicalnetwork -d mcr.microsoft.com/mssql/server:2022-latest

#### Explicación:
--network medicalnetwork: Esta opción conecta el contenedor sql1 a la red medicalnetwork que has mencionado en tu archivo docker-compose.yml. Esto permite que otros contenedores que estén en esa misma red puedan comunicarse con el contenedor sql1 por su nombre de host (sql1).

#### Resumen del comando:
-e "ACCEPT_EULA=Y": Acepta la licencia de SQL Server.
-e "MSSQL_SA_PASSWORD=Cbmwjmkq23": Define la contraseña del usuario sa (administrador).
-p 1433:1433: Mapea el puerto 1433 de tu máquina local al puerto 1433 del contenedor, lo que permite la conexión desde fuera del contenedor.
--name sql1: Da el nombre sql1 al contenedor para facilitar su referencia.
--hostname sql1: Asigna el nombre sql1 como nombre de host dentro del contenedor.
-v sql_data:/var/opt/mssql: Usa un volumen persistente para que los datos de la base de datos persistan entre reinicios del contenedor.
--network medicalnetwork: Conecta el contenedor sql1 a la red Docker medicalnetwork.
-d mcr.microsoft.com/mssql/server:2022-latest: Utiliza la imagen oficial de SQL Server 2022.


### 3) Conectarse desde SQL Managmens Studio

    Server: localhost,1433
    Usr: sa
    Psw: Cbmwjmkq23

### Verificación
Para verificar que el contenedor está corriendo y tiene el nombre correcto, usa:

    docker ps

### Obtener la dirección IP del contenedor
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' sql1
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' seq
    docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' MedicalOfficeApi

### Y asi quedaria el JsonConfig

    "ConnectionStrings": {
    "MedicalOfficeSqlLocalDB": "Server=172.22.0.4,1433;Database=Medical.Office.SqlLocalDB;User ID=sa;Password=Cbmwjmkq23;TrustServerCertificate=true;MultipleActiveResultSets=True;"
    },
    "CustomLogging": {
    "Project": "Medical.Office.Net8WebApi",
    "SeqUri": "http://172.22.0.5:5341/",
    "LogEventLevel": "Verbose"
    }