﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServicesTCP.ServiceContracts;

namespace ServicesTCP.Services
{
    public class ServiceProfile : IProfile
    {
        public void DoWork()
        {
        }

        public string[] GetStrings()
        {
            throw new NotImplementedException();
        }
    }
}