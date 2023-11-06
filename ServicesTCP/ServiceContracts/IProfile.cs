using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using DatabaseManager;
using domain;
using DomainStatuses;

namespace ServicesTCP.ServiceContracts
{
    [ServiceContract]
    public interface IProfile
    {
        [OperationContract]
        int AddProfile(Profiles profiles);

        [OperationContract]
        void ChangeLoginStatus(ProfileLoginStatuses profileLoginStatus, int profileID);

        [OperationContract]
        List<Profile> GetFriends(int profileID);

        [OperationContract]
        byte[] GetImage(string fileName);

        [OperationContract]
        Profile GetProfileByPlayerID(int playerID);

        [OperationContract]
        Profile GetProfileByPlayerNickname(string nickname);

        [OperationContract]
        bool UploadImage(string fileName, byte[] imageData);
    }
}
