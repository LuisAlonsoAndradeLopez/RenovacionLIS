﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Services.Services
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ServiceProfile" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione ServiceProfile.svc o ServiceProfile.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class ServiceProfile : IServiceProfile
    {
        public void DoWork()
        {
        }
    }
}