TODO:
* Problemas de i18n con los botones
* Verificar si aun funciona el correo electrónico para modificar contraseña.
* Ver si se pueden pasar las referencias de la misma manera que con el entity framework. (creo que no se puede). 
* Los archivos de logs cuando se genera una excepción, deben de guardarse en la carpeta raíz del proyecto en donde se esté generando.
* Si es posible, reparar el bug del login que me dijo Armando.
* Agregar en el readme también el procedimiento para cambiar el dataset de la base de datos, la dirección ip de los servicios y su configuración con el cliente.


# Renovación LIS
Proyecto Final de la Experiencia Educativa de Tecnologías para Construir Software


# Pasos para poder ejecutar Renovación LIS (localhost)
## Pasos para ejecutar el servidor de Renovación LIS
1. Crear una base de datos con el nombre "Renovación LIS" en SQL Server.
2. Abrir la solución "Renovación LIS" en Visual Studio (Modo Administrador)
3. Abrir el archivo "RenovaciónLISDatabase.edmx" ubicado en la carpeta "DatabaseManager" del proyecto "Server".
4. Dar click derecho en el modelo, y seleccionar la opción "Generar base de datos desde modelo...".
5. Cuando el "Asistente para generar bases de datos" termine de generar el DDL, dar click en "Finalizar".
6. Abrir el archivo sql generado por el "Asistente para generar bases de datos", y ejecutarlo con Visual Studio haciendo referencia a la base de datos creada en el punto 1.
7. Ejecutar el archivo ServerHoster.cs.
8. ¡Listo!, el servidor está siendo ejecutado.

## Pasos para ejecutar el cliente de Renovación LIS (el servidor tiene que estar en ejecución)


# Solución de problemas
"System.ServiceModel.CommunicationException: TransportManager could not listen at the provided URI with the NetTcpPortSharing service because it could not start the service because it is disabled."
1. Presionar Windows + R
2. Escribir services.msc y presionar Enter
3. En la ventana "Servicios", ubicar "Servicio de uso compartido de puertos Net.Tcp"
4. Click derecho y seleccionar "Propiedades"
5. Cambiar el tipo de inicio a "Automatico.
6. Click en "Iniciar".
7. Click en "Aceptar".