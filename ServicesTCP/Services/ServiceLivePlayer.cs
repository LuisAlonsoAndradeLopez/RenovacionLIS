using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.Single)]
    public class ServiceLivePlayer : ILivePlayer
    {
        public void Join(string playerName)
        {
            throw new NotImplementedException();
        }

        public void Leave(string playerName)
        {
            throw new NotImplementedException();
        }
    }
}
