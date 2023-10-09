using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using Services.ServiceContracts;

namespace Services.Services
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "ServiceCrucigram" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione ServiceCrucigram.svc o ServiceCrucigram.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class ServiceCrucigram : ICrucigram
    {
        string[] ICrucigram.GetStrings()
        {
            throw new NotImplementedException();
        }
    }
}
