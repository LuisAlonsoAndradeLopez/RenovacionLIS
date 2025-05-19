# Renovación LIS
Proyecto Final de la Experiencia Educativa de Tecnologías para la Construcción de Software.
Renovación LIS es un videojuego de crucigramas con temática de la Licenciatura en Ingeniería de Software de la Facultad de Estadística e Informática de la  Universidad Veracruzana.
Las funcionalidades que Renovación LIS ofrece son las siguientes:
* Internacionalización en idiomas español e inglés.
* Registro de perfil.
* Modificación de perfil.
* Cambio de contraseña de perfil, con confirmación por correo electrónico.
* Administración de solicitudes de amistad entre perfiles.
* Modo de un jugador con ocho crucigramas jugables.
* Lobby multijugador con capacidad de hasta 4 jugadores.
* Administración de jugadores baneados (accedible desde el Lobby).
* Chat en vivo (accedible desde el Lobby).
* Cinco crucigramas jugables para el multijugador (accedible desde el Lobby, el jugador administrador es el que puede empezar las partidas).
* Visualización de puntuaciones de todos los perfiles.

## Tecnologías requeridas
* Visual Studio 2022.
* .Net Framework 4.7.2 o versiones posteriores.
* SQL Server 2022.

## Pasos para poder ejecutar Renovación LIS (localhost)
### Pasos para poder ejecutar el servidor de Renovación LIS.
1. Crear una base de datos con el nombre "Renovación LIS" en SQL Server.
2. Abrir la solución "Renovación LIS" en Visual Studio (Modo Administrador).
3. Abrir el archivo "RenovaciónLISDatabase.edmx" ubicado en la carpeta "DatabaseManager" del proyecto "Server".
4. Dar click derecho en el modelo, y seleccionar la opción "Generar base de datos desde modelo...".
5. Cuando el "Asistente para generar bases de datos" termine de generar el DDL, dar click en "Finalizar".
6. Abrir el archivo sql generado por el "Asistente para generar bases de datos", y ejecutarlo con Visual Studio haciendo referencia a la base de datos creada en el punto 1.
7. Ejecutar el archivo ServerHoster.cs.
8. ¡Listo!, el servidor está siendo ejecutado.

Si todo el procedimiento ha sido exitoso, las siguientes veces que se desee ejecutar el servidor solamente deberán ser aplicados los pasos 7 y 8.

Si se desea ejecutar el servidor en una dirección ip diferente al localhost, se deberán aplicar los siguientes pasos adicionales:
1. Abrir el archivo App.config en el proyecto "Server".
2. En cada uno de los trozos de código que contengan esta estructura:
```bash
<host>
  <baseAddresses>
    <add baseAddress="http://localhost:8010" />
    <add baseAddress="net.tcp://localhost:8020" />
  </baseAddresses>
</host>
```
cambiar la palabra "localhost" por la dirección ip deseada.

### Pasos para ejecutar el cliente de Renovación LIS (el servidor tiene que estar en ejecución).
1. Desplegar la pestaña "Connected Services" del proyecto "Client".
2. A cada uno de los servicios mostrados en dicha pestaña, dar click derecho y seleccionar la opción "Actualizar referencia de servicio".
3. Ejecutar el archivo "MainWindow.xaml" ubicado en la carpeta "Views".
4. ¡Listo!, el cliente está listo para poder ser usado adecuadamente.

Si todo el procedimiento ha sido exitoso, las siguientes veces que se desee ejecutar el cliente solamente deberán ser aplicados los pasos 3 y 4.

Si se desea ejecutar el cliente haciendo referencia a un servidor hosteado en una dirección ip diferente al localhost, se deberán aplicar los siguientes pasos adicionales:
1. Desplegar la pestaña "Connected Services" del proyecto "Client".
2. A cada uno de los servicios mostrados en dicha pestaña, dar click derecho y seleccionar la opción "Configurar referencia de servicio...".
3. En el campo de texto "Dirección", cambiar la palabra "localhost" por la dirección ip deseada.
4. Click en "Aceptar".
5. A cada uno de los servicios mostrados en la pestaña "Connected Services", dar click derecho y seleccionar la opción "Actualizar referencia de servicio".

## Solución de problemas
"System.ServiceModel.CommunicationException: TransportManager could not listen at the provided URI with the NetTcpPortSharing service because it could not start the service because it is disabled."
1. Presionar Windows + R.
2. Escribir services.msc y presionar Enter.
3. En la ventana "Servicios", ubicar "Servicio de uso compartido de puertos Net.Tcp".
4. Click derecho y seleccionar "Propiedades".
5. Cambiar el tipo de inicio a "Automatico.
6. Click en "Iniciar".
7. Click en "Aceptar".