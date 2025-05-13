TODO:
* Puto EntityFramework y sus versiones y el .edmx.
* Configurar los servicios del servidor con el cliente.
* Verificar si aun funciona el correo electrónico para crear cuenta.
* Ver si se pueden pasar las referencias de la misma manera que con el entity framework. (creo que no se puede). 
* Las imagenes de perfil se deben guardar en la base de datos en base64.
* Los archivos de logs cuando se genera una excepción, deben de guardarse en la carpeta raíz del proyecto en donde se esté generando.
* Si es posible, reparar el bug del login que me dijo Armando.
* Color rojo cuando queden 5 segundos de tiempo.
* Agregar en el readme también el procedimiento para cambiar el dataset de la base de datos, la dirección ip de los servicios y su configuración con el cliente.


## Renovación LIS
Proyecto Final de la Experiencia Educativa de Tecnologías para Construir Software


# Pasos para ejecutar el servidor de Renovación LIS
1. Crear una base de datos con el siguiente nombre: "Renovación LIS".
2. Con Visual Studio o directamente en SQL Server Manager, ejecutar el archivo "DatabaseModel.edmx.sql" ubicado en la carpeta "DatabaseManager" dentro del proyecto "Server".
3. En Visual Studio (Abierto en modo administrador), ejecutar el archivo ServerHoster.cs.
4. ¡Listo!, el servidor está siendo ejecutado.

# Pasos para ejecutar el cliente de Renovación LIS (el servidor tiene que estar en ejecución)


# Solución de problemas
"System.ServiceModel.CommunicationException: TransportManager could not listen at the provided URI with the NetTcpPortSharing service because it could not start the service because it is disabled."
1. Presionar Windows + R
2. Escribir services.msc y presionar Enter
3. En la ventana "Servicios", ubicar "Servicio de uso compartido de puertos Net.Tcp"
4. Click derecho y seleccionar "Propiedades"
5. Cambiar el tipo de inicio a "Automatico.
6. Click en "Iniciar".
7. Click en "Aceptar".