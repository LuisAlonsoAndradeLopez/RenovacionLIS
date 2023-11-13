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
    [ServiceContract(CallbackContract = typeof(IProfileCallback))]
    public interface IProfile
    {
        [OperationContract]
        long AddProfile(Profiles profiles);

        [OperationContract]
        void ChangeLoginStatus(ProfileLoginStatuses profileLoginStatus, long profileID);

        [OperationContract]
        List<Profile> GetFriends(long profileID);

        [OperationContract]
        byte[] GetImage(string fileName);

        [OperationContract]
        Profile GetProfileByPlayerID(long playerID);

        [OperationContract]
        Profile GetProfileByPlayerNickname(string nickname);

        [OperationContract]
        bool TheProfileIsLogged(long profileID);

        [OperationContract]
        bool UploadImage(string fileName, byte[] imageData);
    }

    [ServiceContract]
    public interface IProfileCallback
    {
        [OperationContract(IsOneWay = true)]
        void UpdateFriendsLists();
    }
}
