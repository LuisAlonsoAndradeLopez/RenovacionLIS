�
mC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\AuxiliaryDataContracts\KeyValueDataContract.cs
	namespace		 	
ServicesTCP		
 
.		 
AuxiliaryContracts		 (
{

 
[ 
DataContract 
] 
public 

class  
KeyValueDataContract %
{ 
[ 	

DataMember	 
] 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
[ 
DataContract 
] 
public 

class g
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods l
{ 
[ 	

DataMember	 
] 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
IProfileCallback 
Value  %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
[ 
DataContract 
] 
public   

class   i
]KeyValueDataContractForProfilesAndTheirPointsForServiceMultiplayerCrosswordForCallbackMethods   n
{!! 
["" 	

DataMember""	 
]"" 
public## 
string## 
Key## 
{## 
get## 
;##  
set##! $
;##$ %
}##& '
[%% 	

DataMember%%	 
]%% 
public&& 
int&& 
Value&& 
{&& 
get&& 
;&& 
set&&  #
;&&# $
}&&% &
}'' 
}(( �
YC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *�
XC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IChat.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
] 
public 

	interface #
IChatNotCallbackMethods ,
{		 
[

 	
OperationContract

	 
]

 
List 
<  
KeyValueDataContract !
>! "0
$GetConnectedProfilesAndTheirMessages# G
(G H
)H I
;I J
} 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IChatCallback/ <
)< =
)= >
]> ?
public 

	interface  
IChatCallbackMethods )
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
JoinChat 
( 
string 
nickname %
)% &
;& '
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	LeaveChat 
( 
string 
nickname &
)& '
;' (
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
string 
senderNickname  .
,. /
string0 6
message7 >
)> ?
;? @
} 
[ 
ServiceContract 
] 
public 

	interface 
IChatCallback "
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

UpdateChat 
( 
) 
; 
}   
}!! �%
YC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\ILobby.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
] 
public 

	interface $
ILobbyNonCallbackMethods -
{		 
[

 	
OperationContract

	 
]

 
string 
GetAdmin 
( 
) 
; 
[ 	
OperationContract	 
] 
List 
< 
String 
> 
GetBannedProfiles &
(& '
)' (
;( )
[ 	
OperationContract	 
] 
List 
< 
String 
>  
GetConnectedProfiles )
() *
)* +
;+ ,
[ 	
OperationContract	 
] 
bool 
IsAdmin 
( 
string 
nickname $
)$ %
;% &
[ 	
OperationContract	 
] 
bool 
IsBanned 
( 
string 
nickname %
)% &
;& '
[ 	
OperationContract	 
] 
bool 
IsConnected 
( 
string 
nickname  (
)( )
;) *
[ 	
OperationContract	 
] 
void "
SetThePlayersAreInGame #
(# $
)$ %
;% &
[ 	
OperationContract	 
] 
void   %
SetThePlayersAreNotInGame   &
(  & '
)  ' (
;  ( )
["" 	
OperationContract""	 
]"" 
bool## 
ThePlayersAreInGame##  
(##  !
)##! "
;##" #
}$$ 
[&& 
ServiceContract&& 
(&& 
CallbackContract&& %
=&&& '
typeof&&( .
(&&. /
ILobbyCallback&&/ =
)&&= >
)&&> ?
]&&? @
public'' 

	interface'' !
ILobbyCallbackMethods'' *
{(( 
[)) 	
OperationContract))	 
()) 
IsOneWay)) #
=))$ %
true))& *
)))* +
]))+ ,
void** 
	BanPlayer** 
(** 
string** 
username** &
)**& '
;**' (
[,, 	
OperationContract,,	 
(,, 
IsOneWay,, #
=,,$ %
true,,& *
),,* +
],,+ ,
void-- 
Connect-- 
(-- 
string-- 
username-- $
)--$ %
;--% &
[// 	
OperationContract//	 
(// 
IsOneWay// #
=//$ %
true//& *
)//* +
]//+ ,
void00 

Disconnect00 
(00 
string00 
username00 '
)00' (
;00( )
[22 	
OperationContract22	 
(22 
IsOneWay22 #
=22$ %
true22& *
)22* +
]22+ ,
void33 
SetAdmin33 
(33 
string33 
username33 %
)33% &
;33& '
[55 	
OperationContract55	 
(55 
IsOneWay55 #
=55$ %
true55& *
)55* +
]55+ ,
void66 
UnbanPlayer66 
(66 
string66 
username66  (
)66( )
;66) *
}77 
[:: 
ServiceContract:: 
]:: 
public;; 

	interface;; 
ILobbyCallback;; #
{<< 
[== 	
OperationContract==	 
(== 
IsOneWay== #
===$ %
true==& *
)==* +
]==+ ,
void>> *
ExpelPlayerFromMultiplayerGame>> +
(>>+ ,
)>>, -
;>>- .
[@@ 	
OperationContract@@	 
(@@ 
IsOneWay@@ #
=@@$ %
true@@& *
)@@* +
]@@+ ,
voidAA %
UpdateBannedProfilesListsAA &
(AA& '
)AA' (
;AA( )
[CC 	
OperationContractCC	 
(CC 
IsOneWayCC #
=CC$ %
trueCC& *
)CC* +
]CC+ ,
voidDD (
UpdateConnectedProfilesListsDD )
(DD) *
)DD* +
;DD+ ,
[FF 	
OperationContractFF	 
(FF 
IsOneWayFF #
=FF$ %
trueFF& *
)FF* +
]FF+ ,
voidGG 8
,UpdateConnectedProfilesForInviteToLobbyListsGG 9
(GG9 :
)GG: ;
;GG; <
}HH 
}JJ �%
aC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IFriendRequest.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
] 
public		 

	interface		 ,
 IFriendRequestNonCallbackMethods		 5
{

 
[ 	
OperationContract	 
] 
List 
< 
FriendRequests 
> )
GetFriendsRequestsByProfileID :
(: ;
long; ?
ID@ B
)B C
;C D
[ 	
OperationContract	 
] 
List 
< 
FriendRequests 
> *
GetFriendsRequestsByProfile1ID ;
(; <
long< @
IDA C
)C D
;D E
[ 	
OperationContract	 
] 
FriendRequest  
GetFriendRequestByID *
(* +
long+ /
IDFriendRequest0 ?
)? @
;@ A
[ 	
OperationContract	 
] 
List 
< 
FriendRequest 
> @
4GetPendientsForAceptationFriendsRequestsByProfile1ID P
(P Q
longQ U

IDProfile1V `
)` a
;a b
[ 	
OperationContract	 
] 
List 
< 
FriendRequest 
> F
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID V
(V W
longW [
	IDProfile\ e
)e f
;f g
[ 	
OperationContract	 
] 
bool R
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile S
(S T
longT X 
transmitterProfileIDY m
,m n
longo s
receiverProfileID	t �
)
� �
;
� �
[ 	
OperationContract	 
] 
bool X
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile Y
(Y Z
longZ ^ 
transmitterProfileID_ s
,s t
longu y
senderProfileID	z �
)
� �
;
� �
[!! 	
OperationContract!!	 
]!! 
void"" 
AddFriendRequest"" 
("" 
FriendRequests"" ,
friendRequests""- ;
)""; <
;""< =
[$$ 	
OperationContract$$	 
]$$ 
void%% 
AcceptFriendRequest%%  
(%%  !
FriendRequests%%! /
friendRequests%%0 >
)%%> ?
;%%? @
['' 	
OperationContract''	 
]'' 
void(( 
CancelFriendRequest((  
(((  !
FriendRequests((! /
friendRequests((0 >
)((> ?
;((? @
[** 	
OperationContract**	 
]** 
void++ 
RejectFriendRequest++  
(++  !
FriendRequests++! /
friendRequests++0 >
)++> ?
;++? @
},, 
[00 
ServiceContract00 
(00 
CallbackContract00 %
=00& '
typeof00( .
(00. /"
IFriendRequestCallback00/ E
)00E F
)00F G
]00G H
public11 

	interface11 )
IFriendRequestCallbackMethods11 2
{22 
[33 	
OperationContract33	 
(33 
IsOneWay33 #
=33$ %
true33& *
)33* +
]33+ ,
void44 
Connect44 
(44 
string44 
username44 $
)44$ %
;44% &
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 

Disconnect77 
(77 
string77 
username77 '
)77' (
;77( )
[99 	
OperationContract99	 
(99 
IsOneWay99 #
=99$ %
true99& *
)99* +
]99+ ,
void:: :
.UpdateFriendRequestsListsToAllConnectedClients:: ;
(::; <
)::< =
;::= >
};; 
[?? 
ServiceContract?? 
]?? 
public@@ 

	interface@@ "
IFriendRequestCallback@@ +
{AA 
[BB 	
OperationContractBB	 
(BB 
IsOneWayBB #
=BB$ %
trueBB& *
)BB* +
]BB+ ,
voidCC &
UpdateFriendsRequestsListsCC '
(CC' (
)CC( )
;CC) *
}DD 
}FF �
hC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IMultiplayerCrossword.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
] 
public 

	interface 3
'IMultiplayerCrosswordNonCallbackMethods <
{ 
[ 	
OperationContract	 
] 
string		 
GetAdmin		 
(		 
)		 
;		 
[ 	
OperationContract	 
] 
int !
GetPointsFromAProfile !
(! "
string" (
nickname) 1
)1 2
;2 3
[ 	
OperationContract	 
] 
void 
SetAdmin 
( 
string 
username %
)% &
;& '
} 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /)
IMultiplayerCrosswordCallback/ L
)L M
)M N
]N O
public 

	interface 0
$IMultiplayerCrosswordCallbackMethods 9
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
AddPointsToProfile 
(  
string  &
userNickname' 3
,3 4
int5 8
points9 ?
)? @
;@ A
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Connect 
( 
string 
username $
)$ %
;% &
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

Disconnect 
( 
string 
username '
)' (
;( )
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!! 
StartCountdown!! 
(!! 
int!! 
totalSeconds!!  ,
)!!, -
;!!- .
[## 	
OperationContract##	 
(## 
IsOneWay## #
=##$ %
true##& *
)##* +
]##+ ,
void$$ <
0UpdateCrosswordsToProfilesToAllConnectedProfiles$$ =
($$= >
)$$> ?
;$$? @
}%% 
[)) 
ServiceContract)) 
])) 
public** 

	interface** )
IMultiplayerCrosswordCallback** 2
{++ 
[,, 	
OperationContract,,	 
(,, 
IsOneWay,, #
=,,$ %
true,,& *
),,* +
],,+ ,
void-- 
UpdateCountdown-- 
(-- 
int--  
seconds--! (
)--( )
;--) *
[// 	
OperationContract//	 
(// 
IsOneWay// #
=//$ %
true//& *
)//* +
]//+ ,
void00 
UpdateCrossword00 
(00 
)00 
;00 
[22 	
OperationContract22	 
(22 
IsOneWay22 #
=22$ %
true22& *
)22* +
]22+ ,
void33  
UpdateProfilesPoints33 !
(33! "
)33" #
;33# $
}44 
}55 �
ZC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IPlayer.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[		 
ServiceContract		 
]		 
public

 

	interface

 
IPlayer

 
{ 
[ 	
OperationContract	 
( 
Name  
=! "
$str# .
). /
]/ 0
long 
	AddPlayer 
( 
Players 
player %
)% &
;& '
[ 	
OperationContract	 
( 
Name  
=! "
$str# /
)/ 0
]0 1
List 
< 
Players 
> 

GetPlayers  
(  !
)! "
;" #
[ 	
OperationContract	 
( 
Name  
=! "
$str# 2
)2 3
]3 4
Player 
GetPlayerByID 
( 
long !
ID" $
)$ %
;% &
[ 	
OperationContract	 
( 
Name  
=! "
$str# 8
)8 9
]9 :
List 
< 
Players 
> 
GetSpecifiedPlayers )
() *
string* 0
name1 5
)5 6
;6 7
[ 	
OperationContract	 
( 
Name 
=  !
$str" 7
)7 8
]8 9
Player 
GetPlayerByNickname "
(" #
String# )
nickname* 2
)2 3
;3 4
[ 	
OperationContract	 
( 
Name 
=  !
$str" 0
)0 1
]1 2
long 
ModifyPlayer 
( 
Players !
modifiedPlayer" 0
)0 1
;1 2
[ 	
OperationContract	 
( 
Name 
=  !
$str" 9
)9 :
]: ;
void !
ModifyPasswordByEmail "
(" #
String# )
originalEmail* 7
,7 8
String9 ?
newPassword@ K
)K L
;L M
[!! 	
OperationContract!!	 
(!! 
Name!! 
=!!  !
$str!!" =
)!!= >
]!!> ?
bool"" %
TheEmailIsAlreadyRegisted"" &
(""& '
String""' -
emailToSearch"". ;
)""; <
;""< =
[$$ 	
OperationContract$$	 
($$ 
Name$$ 
=$$  !
$str$$" @
)$$@ A
]$$A B
bool%% (
TheNicknameIsAlreadyRegisted%% )
(%%) *
String%%* 0
nicknameToSearch%%1 A
)%%A B
;%%B C
}&& 
public(( 

	interface(( 
IPlayerCallback(( $
{)) 
[** 	
OperationContract**	 
(** 
IsOneWay** $
=**% &
true**' +
,**+ ,
Name**- 1
=**2 3
$str**4 >
)**> ?
]**? @
void++ 
Response++ 
(++ 
String++ 
response++ %
)++% &
;++& '
},, 
}-- �*
[C:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IProfile.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{		 
[

 
ServiceContract

 
]

 
public 

	interface &
IProfileNonCallbackMethods /
{ 
[ 	
OperationContract	 
] 
long 

AddProfile 
( 
Profiles  
profiles! )
)) *
;* +
[ 	
OperationContract	 
] 
void 
ChangeLoginStatus 
(  
ProfileLoginStatuses 3
profileLoginStatus4 F
,F G
longH L
	profileIDM V
)V W
;W X
[ 	
OperationContract	 
] 
List 
< 
Profile 
> 

GetFriends  
(  !
long! %
	profileID& /
)/ 0
;0 1
[ 	
OperationContract	 
] 
byte 
[ 
] 
GetImage 
( 
string 
fileName '
)' (
;( )
[ 	
OperationContract	 
] 
Profile 
GetProfileByID 
( 
long #
	profileID$ -
)- .
;. /
[ 	
OperationContract	 
] 
Profile  
GetProfileByPlayerID $
($ %
long% )
playerID* 2
)2 3
;3 4
[ 	
OperationContract	 
] 
Profile   &
GetProfileByPlayerNickname   *
(  * +
string  + 1
nickname  2 :
)  : ;
;  ; <
["" 	
OperationContract""	 
]"" 
bool## 
ModifyImageName## 
(## 
string## #
fileName##$ ,
,##, -
string##. 4
newName##5 <
)##< =
;##= >
[%% 	
OperationContract%%	 
]%% 
bool&& 
TheProfileIsLogged&& 
(&&  
long&&  $
	profileID&&% .
)&&. /
;&&/ 0
[(( 	
OperationContract((	 
](( 
bool)) 
UploadImage)) 
()) 
string)) 
fileName))  (
,))( )
byte))* .
[)). /
]))/ 0
	imageData))1 :
))): ;
;)); <
[++ 	
OperationContract++	 
]++ 
void,, 
AddFriendship,, 
(,, 
Profiles,, #
profiles,,$ ,
,,,, -
Profiles,,. 6
	profiles1,,7 @
),,@ A
;,,A B
[.. 	
OperationContract..	 
].. 
void// 
CancelFriendship// 
(// 
Profiles// &
profiles//' /
,/// 0
Profiles//1 9
	profiles1//: C
)//C D
;//D E
}00 
[33 
ServiceContract33 
(33 
CallbackContract33 %
=33& '
typeof33( .
(33. /
IProfileCallback33/ ?
)33? @
)33@ A
]33A B
public44 

	interface44 #
IProfileCallbackMethods44 ,
{55 
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 
Connect77 
(77 
string77 
username77 $
)77$ %
;77% &
[99 	
OperationContract99	 
(99 
IsOneWay99 #
=99$ %
true99& *
)99* +
]99+ ,
void:: 

Disconnect:: 
(:: 
string:: 
username:: '
)::' (
;::( )
[<< 	
OperationContract<<	 
(<< 
IsOneWay<< #
=<<$ %
true<<& *
)<<* +
]<<+ ,
void== "
InviteFriendToTheLobby== #
(==# $
String==$ *
friendNickname==+ 9
)==9 :
;==: ;
[?? 	
OperationContract??	 
(?? 
IsOneWay?? #
=??$ %
true??& *
)??* +
]??+ ,
void@@ 3
'UpdateFriendsListsToAllConnectedClients@@ 4
(@@4 5
)@@5 6
;@@6 7
}AA 
publicCC 

	interfaceCC 
IProfileCallbackCC %
{DD 
[EE 	
OperationContractEE	 
(EE 
IsOneWayEE #
=EE$ %
trueEE& *
)EE* +
]EE+ ,
voidFF 
UpdateFriendsListsFF 
(FF  
)FF  !
;FF! "
[HH 	
OperationContractHH	 
(HH 
IsOneWayHH #
=HH$ %
trueHH& *
)HH* +
]HH+ ,
voidII '
UpdateFriendsForInviteListsII (
(II( )
)II) *
;II* +
[KK 	
OperationContractKK	 
(KK 
IsOneWayKK #
=KK$ %
trueKK& *
)KK* +
]KK+ ,
voidLL $
OpenPaneForEnterTheLobbyLL %
(LL% &
)LL& '
;LL' (
}MM 
}NN �5
VC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceChat.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public		 

class		 ,
 ServiceChatForNonCallbackMethods		 1
:		2 3#
IChatNotCallbackMethods		4 K
{

 
private 
readonly )
ServiceChatForCallbackMethods 6)
serviceChatForCallbackMethods7 T
;T U
public ,
 ServiceChatForNonCallbackMethods /
(/ 0
)0 1
{ 	)
serviceChatForCallbackMethods )
=* +
new, /)
ServiceChatForCallbackMethods0 M
(M N
)N O
;O P
} 	
public 
List 
<  
KeyValueDataContract (
>( )0
$GetConnectedProfilesAndTheirMessages* N
(N O
)O P
{ 	
return )
serviceChatForCallbackMethods 0
.0 10
$GetConnectedProfilesAndTheirMessages1 U
(U V
)V W
;W X
} 	
}"" 
public&& 

class&& )
ServiceChatForCallbackMethods&& .
:&&/ 0 
IChatCallbackMethods&&1 E
{'' 
private(( 
static(( 
readonly(( 

Dictionary((  *
<((* +
string((+ 1
,((1 2
IChatCallback((3 @
>((@ A
connectedProfiles((B S
=((T U
new((V Y

Dictionary((Z d
<((d e
string((e k
,((k l
IChatCallback((m z
>((z {
((({ |
)((| }
;((} ~
private)) 
static)) 
readonly)) 
List))  $
<))$ % 
KeyValueDataContract))% 9
>))9 :-
!connectedProfilesAndTheirMessages)); \
=))] ^
new))_ b
List))c g
<))g h 
KeyValueDataContract))h |
>))| }
())} ~
)))~ 
;	)) �
public.. 
void.. 
JoinChat.. 
(.. 
string.. #
nickname..$ ,
).., -
{// 	
IChatCallback00 
callback00 "
=00# $
OperationContext00% 5
.005 6
Current006 =
.00= >
GetCallbackChannel00> P
<00P Q
IChatCallback00Q ^
>00^ _
(00_ `
)00` a
;00a b
if22 
(22 
!22 
connectedProfiles22 "
.22" #
ContainsKey22# .
(22. /
nickname22/ 7
)227 8
)228 9
{33 
connectedProfiles44 !
.44! "
Add44" %
(44% &
nickname44& .
,44. /
callback440 8
)448 9
;449 : 
KeyValueDataContract66 $

dictionary66% /
=660 1
new662 5 
KeyValueDataContract666 J
{77 
Key88 
=88 
$str88 '
,88' (
Value99 
=99 
$"99 
{99 
nickname99 '
}99' (
$str99( ?
"99? @
}:: 
;:: -
!connectedProfilesAndTheirMessages;; 1
.;;1 2
Add;;2 5
(;;5 6

dictionary;;6 @
);;@ A
;;;A B+
UpdateChatToAllConectedProfiles== /
(==/ 0
)==0 1
;==1 2
}>> 
}?? 	
public@@ 
void@@ 
	LeaveChat@@ 
(@@ 
string@@ $
nickname@@% -
)@@- .
{AA 	
ifCC 
(CC 
connectedProfilesCC !
.CC! "
ContainsKeyCC" -
(CC- .
nicknameCC. 6
)CC6 7
)CC7 8
{DD 
connectedProfilesEE !
.EE! "
RemoveEE" (
(EE( )
nicknameEE) 1
)EE1 2
;EE2 3 
KeyValueDataContractGG $

dictionaryGG% /
=GG0 1
newGG2 5 
KeyValueDataContractGG6 J
{HH 
KeyII 
=II 
$strII '
,II' (
ValueJJ 
=JJ 
$"JJ 
{JJ 
nicknameJJ '
}JJ' (
$strJJ( 6
"JJ6 7
}KK 
;KK -
!connectedProfilesAndTheirMessagesLL 1
.LL1 2
AddLL2 5
(LL5 6

dictionaryLL6 @
)LL@ A
;LLA B+
UpdateChatToAllConectedProfilesNN /
(NN/ 0
)NN0 1
;NN1 2
ifPP 
(PP 
!PP 
connectedProfilesPP &
.PP& '
AnyPP' *
(PP* +
)PP+ ,
)PP, -
{QQ -
!connectedProfilesAndTheirMessagesRR 5
.RR5 6
ClearRR6 ;
(RR; <
)RR< =
;RR= >
}SS 
}TT 
}UU 	
publicWW 
voidWW 
SendMessageWW 
(WW  
stringWW  &
senderNicknameWW' 5
,WW5 6
stringWW7 =
messageWW> E
)WWE F
{XX 	 
KeyValueDataContractYY  

dictionaryYY! +
=YY, -
newYY. 1 
KeyValueDataContractYY2 F
{ZZ 
Key[[ 
=[[ 
senderNickname[[ $
,[[$ %
Value\\ 
=\\ 
message\\ 
}]] 
;]] -
!connectedProfilesAndTheirMessages^^ -
.^^- .
Add^^. 1
(^^1 2

dictionary^^2 <
)^^< =
;^^= >+
UpdateChatToAllConectedProfiles`` +
(``+ ,
)``, -
;``- .
}aa 	
privategg 
voidgg +
UpdateChatToAllConectedProfilesgg 4
(gg4 5
)gg5 6
{hh 	
foreachii 
(ii 
varii 
chatCallbackii %
inii& (
connectedProfilesii) :
.ii: ;
Valuesii; A
)iiA B
{jj 
chatCallbackkk 
.kk 

UpdateChatkk '
(kk' (
)kk( )
;kk) *
}ll 
}mm 	
internalss 
Listss 
<ss  
KeyValueDataContractss *
>ss* +0
$GetConnectedProfilesAndTheirMessagesss, P
(ssP Q
)ssQ R
{tt 	
returnuu -
!connectedProfilesAndTheirMessagesuu 4
;uu4 5
}vv 	
public|| 
bool|| !
TheProfileIsConnected|| )
(||) *
string||* 0
username||1 9
)||9 :
{}} 	
return~~ 
connectedProfiles~~ $
.~~$ %
ContainsKey~~% 0
(~~0 1
username~~1 9
)~~9 :
;~~: ;
} 	
}
�� 
}�� �@
fC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceMultiplayerCrossword.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public		 

class		 <
0ServiceMultiplayerCrosswordForNonCallbackMethods		 A
:		B C3
'IMultiplayerCrosswordNonCallbackMethods		D k
{

 
private 
readonly 9
-ServiceMultiplayerCrosswordForCallbackMethods F9
-serviceMultiplayerCrosswordForCallbackMethodsG t
;t u
public <
0ServiceMultiplayerCrosswordForNonCallbackMethods ?
(? @
)@ A
{ 	9
-serviceMultiplayerCrosswordForCallbackMethods 9
=: ;
new< ?9
-ServiceMultiplayerCrosswordForCallbackMethods@ m
(m n
)n o
;o p
} 	
public 
string 
GetAdmin 
( 
)  
{ 	
return 9
-serviceMultiplayerCrosswordForCallbackMethods @
.@ A
GetAdminA I
(I J
)J K
;K L
} 	
public 
int !
GetPointsFromAProfile (
(( )
string) /
nickname0 8
)8 9
{ 	
return 9
-serviceMultiplayerCrosswordForCallbackMethods @
.@ A!
GetPointsFromAProfileA V
(V W
nicknameW _
)_ `
;` a
}   	
public"" 
void"" 
SetAdmin"" 
("" 
string"" #
username""$ ,
)"", -
{## 	9
-serviceMultiplayerCrosswordForCallbackMethods$$ 9
.$$9 :
SetAdmin$$: B
($$B C
username$$C K
)$$K L
;$$L M
}%% 	
},, 
public00 

class00 9
-ServiceMultiplayerCrosswordForCallbackMethods00 >
:00? @0
$IMultiplayerCrosswordCallbackMethods00A e
{11 
private22 
static22 
string22 
admin22 #
;22# $
private33 
static33 
readonly33 

Dictionary33  *
<33* +
string33+ 1
,331 2)
IMultiplayerCrosswordCallback333 P
>33P Q
connectedProfiles33R c
=33d e
new33f i

Dictionary33j t
<33t u
string33u {
,33{ |*
IMultiplayerCrosswordCallback	33} �
>
33� �
(
33� �
)
33� �
;
33� �
private44 
static44 
readonly44 

Dictionary44  *
<44* +
string44+ 1
,441 2
int443 6
>446 7 
profilesAndItsPoints448 L
=44M N
new44O R

Dictionary44S ]
<44] ^
string44^ d
,44d e
int44f i
>44i j
(44j k
)44k l
;44l m
public88 
void88 
AddPointsToProfile88 &
(88& '
string88' -
userNickname88. :
,88: ;
int88< ?
points88@ F
)88F G
{99 	
if:: 
(::  
profilesAndItsPoints:: $
.::$ %
ContainsKey::% 0
(::0 1
userNickname::1 =
)::= >
)::> ?
{;;  
profilesAndItsPoints<< $
[<<$ %
userNickname<<% 1
]<<1 2
+=<<3 5
points<<6 <
;<<< =<
0UpdateProfilesPointsListsForAllConnectedProfiles== @
(==@ A
)==A B
;==B C
}>> 
}?? 	
publicAA 
voidAA 
ConnectAA 
(AA 
stringAA "
usernameAA# +
)AA+ ,
{BB 	)
IMultiplayerCrosswordCallbackCC )
callbackCC* 2
=CC3 4
OperationContextCC5 E
.CCE F
CurrentCCF M
.CCM N
GetCallbackChannelCCN `
<CC` a)
IMultiplayerCrosswordCallbackCCa ~
>CC~ 
(	CC �
)
CC� �
;
CC� �
ifEE 
(EE 
!EE 
connectedProfilesEE "
.EE" #
ContainsKeyEE# .
(EE. /
usernameEE/ 7
)EE7 8
)EE8 9
{FF 
connectedProfilesGG !
.GG! "
AddGG" %
(GG% &
usernameGG& .
,GG. /
callbackGG0 8
)GG8 9
;GG9 : 
profilesAndItsPointsHH $
.HH$ %
AddHH% (
(HH( )
usernameHH) 1
,HH1 2
$numHH3 4
)HH4 5
;HH5 6
}II 
}JJ 	
publicLL 
voidLL 

DisconnectLL 
(LL 
stringLL %
usernameLL& .
)LL. /
{MM 	
ifNN 
(NN 
connectedProfilesNN !
.NN! "
ContainsKeyNN" -
(NN- .
usernameNN. 6
)NN6 7
)NN7 8
{OO 
connectedProfilesPP !
.PP! "
RemovePP" (
(PP( )
usernamePP) 1
)PP1 2
;PP2 3 
profilesAndItsPointsQQ $
.QQ$ %
RemoveQQ% +
(QQ+ ,
usernameQQ, 4
)QQ4 5
;QQ5 6
}RR 
}SS 	
publicVV 
voidVV 
StartCountdownVV "
(VV" #
intVV# &
totalSecondsVV' 3
)VV3 4
{WW 	
forXX 
(XX 
intXX 
iXX 
=XX 
totalSecondsXX %
;XX% &
iXX' (
>=XX) +
$numXX, -
;XX- .
iXX/ 0
--XX0 2
)XX2 3
{YY 2
&UpdateCountdownForAllConnectedProfilesZZ 6
(ZZ6 7
iZZ7 8
)ZZ8 9
;ZZ9 :
Thread[[ 
.[[ 
Sleep[[ 
([[ 
$num[[ !
)[[! "
;[[" #
}\\ 
}]] 	
public__ 
void__ <
0UpdateCrosswordsToProfilesToAllConnectedProfiles__ D
(__D E
)__E F
{`` 	
foreachaa 
(aa 
varaa 
profileaa  
inaa! #
connectedProfilesaa$ 5
.aa5 6
Valuesaa6 <
)aa< =
{bb 
profilecc 
.cc 
UpdateCrosswordcc '
(cc' (
)cc( )
;cc) *
}dd 
}ee 	
privatell 
voidll 2
&UpdateCountdownForAllConnectedProfilesll ;
(ll; <
intll< ?
secondsll@ G
)llG H
{mm 	
foreachnn 
(nn 
varnn 
profilenn  
innn! #
connectedProfilesnn$ 5
.nn5 6
Valuesnn6 <
)nn< =
{oo 
profilepp 
.pp 
UpdateCountdownpp '
(pp' (
secondspp( /
)pp/ 0
;pp0 1
}qq 
}rr 	
privatett 
voidtt <
0UpdateProfilesPointsListsForAllConnectedProfilestt E
(ttE F
)ttF G
{uu 	
foreachvv 
(vv 
varvv 
profilevv  
invv! #
connectedProfilesvv$ 5
.vv5 6
Valuesvv6 <
)vv< =
{ww 
profilexx 
.xx  
UpdateProfilesPointsxx ,
(xx, -
)xx- .
;xx. /
}yy 
}zz 	
internal
�� 
string
�� 
GetAdmin
��  
(
��  !
)
��! "
{
�� 	
return
�� 
admin
�� 
;
�� 
}
�� 	
internal
�� 
int
�� #
GetPointsFromAProfile
�� *
(
��* +
string
��+ 1
nickname
��2 :
)
��: ;
{
�� 	
return
�� "
profilesAndItsPoints
�� '
[
��' (
nickname
��( 0
]
��0 1
;
��1 2
}
�� 	
internal
�� 
void
�� 
SetAdmin
�� 
(
�� 
string
�� %
username
��& .
)
��. /
{
�� 	
admin
�� 
=
�� 
username
�� 
;
�� 
}
�� 	
}
�� 
}�� �s
WC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceLobby.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public		 

class		 -
!ServiceLobbyForNonCallbackMethods		 2
:		3 4$
ILobbyNonCallbackMethods		5 M
{

 
private 
readonly *
ServiceLobbyForCallbackMethods 7*
serviceLobbyForCallbackMethods8 V
;V W
public -
!ServiceLobbyForNonCallbackMethods 0
(0 1
)1 2
{ 	*
serviceLobbyForCallbackMethods *
=+ ,
new- 0*
ServiceLobbyForCallbackMethods1 O
(O P
)P Q
;Q R
} 	
public 
string 
GetAdmin 
( 
)  
{ 	
return *
serviceLobbyForCallbackMethods 1
.1 2
GetAdmin2 :
(: ;
); <
;< =
} 	
public 
List 
< 
String 
> 
GetBannedProfiles -
(- .
). /
{ 	
return *
serviceLobbyForCallbackMethods 1
.1 2
GetBannedProfiles2 C
(C D
)D E
;E F
}   	
public"" 
List"" 
<"" 
String"" 
>""  
GetConnectedProfiles"" 0
(""0 1
)""1 2
{## 	
return$$ *
serviceLobbyForCallbackMethods$$ 1
.$$1 2 
GetConnectedProfiles$$2 F
($$F G
)$$G H
;$$H I
}%% 	
public'' 
bool'' 
IsAdmin'' 
('' 
string'' "
nickname''# +
)''+ ,
{(( 	
return)) *
serviceLobbyForCallbackMethods)) 1
.))1 2
IsAdmin))2 9
())9 :
nickname)): B
)))B C
;))C D
}** 	
public,, 
bool,, 
IsBanned,, 
(,, 
string,, #
nickname,,$ ,
),,, -
{-- 	
return.. *
serviceLobbyForCallbackMethods.. 1
...1 2
IsBanned..2 :
(..: ;
nickname..; C
)..C D
;..D E
}// 	
public11 
bool11 
IsConnected11 
(11  
string11  &
nickname11' /
)11/ 0
{22 	
return33 *
serviceLobbyForCallbackMethods33 1
.331 2
IsConnected332 =
(33= >
nickname33> F
)33F G
;33G H
}44 	
public66 
void66 "
SetThePlayersAreInGame66 *
(66* +
)66+ ,
{77 	*
serviceLobbyForCallbackMethods88 *
.88* +"
SetThePlayersAreInGame88+ A
(88A B
)88B C
;88C D
}99 	
public;; 
void;; %
SetThePlayersAreNotInGame;; -
(;;- .
);;. /
{<< 	*
serviceLobbyForCallbackMethods== *
.==* +%
SetThePlayersAreNotInGame==+ D
(==D E
)==E F
;==F G
}>> 	
public@@ 
bool@@ 
ThePlayersAreInGame@@ '
(@@' (
)@@( )
{AA 	
returnBB *
serviceLobbyForCallbackMethodsBB 1
.BB1 2
ThePlayersAreInGameBB2 E
(BBE F
)BBF G
;BBG H
}CC 	
}JJ 
publicNN 

partialNN 
classNN *
ServiceLobbyForCallbackMethodsNN 7
:NN8 9!
ILobbyCallbackMethodsNN: O
{OO 
privatePP 
staticPP 
stringPP 
adminPP #
;PP# $
privateQQ 
staticQQ 
readonlyQQ 
ListQQ  $
<QQ$ %
stringQQ% +
>QQ+ ,
bannedProfilesQQ- ;
=QQ< =
newQQ> A
ListQQB F
<QQF G
stringQQG M
>QQM N
(QQN O
)QQO P
;QQP Q
privateRR 
staticRR 
readonlyRR 

DictionaryRR  *
<RR* +
stringRR+ 1
,RR1 2
ILobbyCallbackRR3 A
>RRA B
connectedProfilesRRC T
=RRU V
newRRW Z

DictionaryRR[ e
<RRe f
stringRRf l
,RRl m
ILobbyCallbackRRn |
>RR| }
(RR} ~
)RR~ 
;	RR �
privateSS 
staticSS 
boolSS 
thePlayersAreInGameSS /
=SS0 1
falseSS2 7
;SS7 8
publicWW 
voidWW 
	BanPlayerWW 
(WW 
stringWW $
usernameWW% -
)WW- .
{XX 	
ifYY 
(YY 
connectedProfilesYY !
.YY! "
ContainsKeyYY" -
(YY- .
usernameYY. 6
)YY6 7
)YY7 8
{ZZ 
if[[ 
([[ 
![[ 
bannedProfiles[[ #
.[[# $
Contains[[$ ,
([[, -
username[[- 5
)[[5 6
)[[6 7
{\\ 
connectedProfiles]] %
[]]% &
username]]& .
]]]. /
.]]/ 0*
ExpelPlayerFromMultiplayerGame]]0 N
(]]N O
)]]O P
;]]P Q
bannedProfiles^^ "
.^^" #
Add^^# &
(^^& '
username^^' /
)^^/ 0
;^^0 1
connectedProfiles__ %
.__% &
Remove__& ,
(__, -
username__- 5
)__5 6
;__6 7:
.UpdateBannedProfilesListsToAllConnectedClients`` B
(``B C
)``C D
;``D E=
1UpdateConnectedProfilesListsToAllConnectedClientsaa E
(aaE F
)aaF G
;aaG HM
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClientsbb U
(bbU V
)bbV W
;bbW X
}cc 
}dd 
}ee 	
publicgg 
voidgg 
Connectgg 
(gg 
stringgg "
usernamegg# +
)gg+ ,
{hh 	
ILobbyCallbackii 
callbackii #
=ii$ %
OperationContextii& 6
.ii6 7
Currentii7 >
.ii> ?
GetCallbackChannelii? Q
<iiQ R
ILobbyCallbackiiR `
>ii` a
(iia b
)iib c
;iic d
ifkk 
(kk 
!kk 
connectedProfileskk "
.kk" #
ContainsKeykk# .
(kk. /
usernamekk/ 7
)kk7 8
)kk8 9
{ll 
ifmm 
(mm 
!mm 
connectedProfilesmm &
.mm& '
Anymm' *
(mm* +
)mm+ ,
)mm, -
{nn 
adminoo 
=oo 
usernameoo $
;oo$ %
}pp 
connectedProfilesss !
.ss! "
Addss" %
(ss% &
usernamess& .
,ss. /
callbackss0 8
)ss8 9
;ss9 :=
1UpdateConnectedProfilesListsToAllConnectedClientstt A
(ttA B
)ttB C
;ttC DM
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClientsuu Q
(uuQ R
)uuR S
;uuS T
}vv 
}ww 	
publicyy 
voidyy 

Disconnectyy 
(yy 
stringyy %
usernameyy& .
)yy. /
{zz 	
if{{ 
({{ 
connectedProfiles{{ !
.{{! "
ContainsKey{{" -
({{- .
username{{. 6
){{6 7
){{7 8
{|| 
connectedProfiles}} !
.}}! "
Remove}}" (
(}}( )
username}}) 1
)}}1 2
;}}2 3
if 
( 
connectedProfiles %
.% &
Any& )
() *
)* +
)+ ,
{
�� 
admin
�� 
=
�� 
connectedProfiles
�� -
.
��- .
Keys
��. 2
.
��2 3
First
��3 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
bannedProfiles
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
}
�� ?
1UpdateConnectedProfilesListsToAllConnectedClients
�� A
(
��A B
)
��B C
;
��C DO
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients
�� Q
(
��Q R
)
��R S
;
��S T
}
�� 
}
�� 	
public
�� 
void
�� 
SetAdmin
�� 
(
�� 
string
�� #
username
��$ ,
)
��, -
{
�� 	
admin
�� 
=
�� 
username
�� 
;
�� ?
1UpdateConnectedProfilesListsToAllConnectedClients
�� =
(
��= >
)
��> ?
;
��? @
}
�� 	
public
�� 
void
�� 
UnbanPlayer
�� 
(
��  
string
��  &
username
��' /
)
��/ 0
{
�� 	
if
�� 
(
�� 
bannedProfiles
�� 
.
�� 
Contains
�� '
(
��' (
username
��( 0
)
��0 1
)
��1 2
{
�� 
bannedProfiles
�� 
.
�� 
Remove
�� %
(
��% &
username
��& .
)
��. /
;
��/ 0<
.UpdateBannedProfilesListsToAllConnectedClients
�� >
(
��> ?
)
��? @
;
��@ A?
1UpdateConnectedProfilesListsToAllConnectedClients
�� A
(
��A B
)
��B C
;
��C D
}
�� 
}
�� 	
private
�� 
void
�� <
.UpdateBannedProfilesListsToAllConnectedClients
�� C
(
��C D
)
��D E
{
�� 	
foreach
�� 
(
�� 
var
�� %
multiplayerGameCallback
�� 0
in
��1 3
connectedProfiles
��4 E
.
��E F
Values
��F L
)
��L M
{
�� %
multiplayerGameCallback
�� '
.
��' ('
UpdateBannedProfilesLists
��( A
(
��A B
)
��B C
;
��C D
}
�� 
}
�� 	
private
�� 
void
�� ?
1UpdateConnectedProfilesListsToAllConnectedClients
�� F
(
��F G
)
��G H
{
�� 	
foreach
�� 
(
�� 
var
�� %
multiplayerGameCallback
�� 0
in
��1 3
connectedProfiles
��4 E
.
��E F
Values
��F L
)
��L M
{
�� %
multiplayerGameCallback
�� '
.
��' (*
UpdateConnectedProfilesLists
��( D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 	
private
�� 
void
�� O
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients
�� V
(
��V W
)
��W X
{
�� 	
foreach
�� 
(
�� 
var
�� %
multiplayerGameCallback
�� 0
in
��1 3
connectedProfiles
��4 E
.
��E F
Values
��F L
)
��L M
{
�� %
multiplayerGameCallback
�� '
.
��' (:
,UpdateConnectedProfilesForInviteToLobbyLists
��( T
(
��T U
)
��U V
;
��V W
}
�� 
}
�� 	
internal
�� 
string
�� 
GetAdmin
��  
(
��  !
)
��! "
{
�� 	
return
�� 
admin
�� 
;
�� 
}
�� 	
internal
�� 
List
�� 
<
�� 
String
�� 
>
�� 
GetBannedProfiles
�� /
(
��/ 0
)
��0 1
{
�� 	
return
�� 
bannedProfiles
�� !
;
��! "
}
�� 	
internal
�� 
List
�� 
<
�� 
String
�� 
>
�� "
GetConnectedProfiles
�� 2
(
��2 3
)
��3 4
{
�� 	
List
�� 
<
�� 
String
�� 
>
�� #
connectedProfilesList
�� .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :
string
��: @
>
��@ A
(
��A B
)
��B C
;
��C D
foreach
�� 
(
�� 
var
�� 
connectedProfile
�� )
in
��* ,
connectedProfiles
��- >
.
��> ?
Keys
��? C
)
��C D
{
�� #
connectedProfilesList
�� %
.
��% &
Add
��& )
(
��) *
connectedProfile
��* :
)
��: ;
;
��; <
}
�� 
return
�� #
connectedProfilesList
�� (
;
��( )
}
�� 	
internal
�� 
bool
�� 
IsAdmin
�� 
(
�� 
string
�� $
nickname
��% -
)
��- .
{
�� 	
return
�� 
admin
�� 
!=
�� 
null
��  
&&
��! #
nickname
��$ ,
==
��- /
admin
��0 5
;
��5 6
}
�� 	
internal
�� 
bool
�� 
IsBanned
�� 
(
�� 
string
�� %
nickname
��& .
)
��. /
{
�� 	
return
�� 
bannedProfiles
�� !
.
��! "
Contains
��" *
(
��* +
nickname
��+ 3
)
��3 4
;
��4 5
}
�� 	
internal
�� 
bool
�� 
IsConnected
�� !
(
��! "
string
��" (
nickname
��) 1
)
��1 2
{
�� 	
return
�� 
connectedProfiles
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
nickname
��1 9
)
��9 :
;
��: ;
}
�� 	
internal
�� 
void
�� $
SetThePlayersAreInGame
�� ,
(
��, -
)
��- .
{
�� 	!
thePlayersAreInGame
�� 
=
��  !
true
��" &
;
��& '
}
�� 	
internal
�� 
void
�� '
SetThePlayersAreNotInGame
�� /
(
��/ 0
)
��0 1
{
�� 	!
thePlayersAreInGame
�� 
=
��  !
false
��" '
;
��' (
}
�� 	
internal
�� 
bool
�� !
ThePlayersAreInGame
�� )
(
��) *
)
��* +
{
�� 	
return
�� !
thePlayersAreInGame
�� &
;
��& '
}
�� 	
}
�� 
}�� ��
_C:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceFriendRequest.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class 5
)ServiceFriendRequestForNonCallbackMethods :
:; <,
 IFriendRequestNonCallbackMethods= ]
{ 
public 
List 
< 
FriendRequests "
>" #)
GetFriendsRequestsByProfileID$ A
(A B
longB F
IDG I
)I J
{ 	
List 
< 
FriendRequests 
>  
friendRequests! /
=0 1
new2 5
List6 :
<: ;
FriendRequests; I
>I J
(J K
)K L
;L M
try 
{ "
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]
friendRequests 
=  "
databaseModelContainer! 7
.7 8
FriendRequestsSet8 I
.I J
WhereJ O
(O P
eP Q
=>R T
eU V
.V W
ProfilesW _
._ `
	IDProfile` i
==j l
IDm o
)o p
.p q
ToListq w
(w x
)x y
;y z
} 
catch 
( 
	Exception 
ex 
)  
{ 
Console 
. 
	WriteLine !
(! "
ex" $
.$ %
ToString% -
(- .
). /
)/ 0
;0 1
} 
return   
friendRequests   !
;  ! "
}!! 	
public## 
List## 
<## 
FriendRequests## "
>##" #*
GetFriendsRequestsByProfile1ID##$ B
(##B C
long##C G
ID##H J
)##J K
{$$ 	
List%% 
<%% 
FriendRequests%% 
>%%  
friendRequests%%! /
=%%0 1
new%%2 5
List%%6 :
<%%: ;
FriendRequests%%; I
>%%I J
(%%J K
)%%K L
;%%L M
try'' 
{(( "
DatabaseModelContainer)) &"
databaseModelContainer))' =
=))> ?
new))@ C"
DatabaseModelContainer))D Z
())Z [
)))[ \
;))\ ]
friendRequests** 
=**  "
databaseModelContainer**! 7
.**7 8
FriendRequestsSet**8 I
.**I J
Where**J O
(**O P
e**P Q
=>**R T
e**U V
.**V W
	Profiles1**W `
.**` a
	IDProfile**a j
==**k m
ID**n p
)**p q
.**q r
ToList**r x
(**x y
)**y z
;**z {
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
Console// 
.// 
	WriteLine// !
(//! "
ex//" $
.//$ %
ToString//% -
(//- .
)//. /
)/// 0
;//0 1
}00 
return22 
friendRequests22 !
;22! "
}33 	
public55 
FriendRequest55  
GetFriendRequestByID55 1
(551 2
long552 6
ID557 9
)559 :
{66 	
FriendRequests77 
friendRequests77 )
=77* +
new77, /
FriendRequests770 >
(77> ?
)77? @
;77@ A
FriendRequest88 
friendRequest88 '
=88( )
new88* -
FriendRequest88. ;
(88; <
)88< =
;88= >
try:: 
{;; "
DatabaseModelContainer<< &"
databaseModelContainer<<' =
=<<> ?
new<<@ C"
DatabaseModelContainer<<D Z
(<<Z [
)<<[ \
;<<\ ]
friendRequests== 
===  "
databaseModelContainer==! 7
.==7 8
FriendRequestsSet==8 I
.==I J
Where==J O
(==O P
fr==P R
=>==S U
fr==V X
.==X Y
IDFriendRequest==Y h
====i k
ID==l n
)==n o
.==o p
FirstOrDefault==p ~
(==~ 
)	== �
;
==� �
if?? 
(?? 
friendRequests?? "
!=??# %
null??& *
)??* +
{@@ 
PlayerBB 
playerProfileBB (
=BB) *
newBB+ .
PlayerBB/ 5
{CC 
IDPlayerDD  
=DD! "
friendRequestsDD# 1
.DD1 2
ProfilesDD2 :
.DD: ;
PlayersDD; B
.DDB C
IDPlayerDDC K
,DDK L
NamesEE 
=EE 
friendRequestsEE  .
.EE. /
ProfilesEE/ 7
.EE7 8
PlayersEE8 ?
.EE? @
NamesEE@ E
,EEE F
SurnamesFF  
=FF! "
friendRequestsFF# 1
.FF1 2
ProfilesFF2 :
.FF: ;
PlayersFF; B
.FFB C
SurnamesFFC K
,FFK L
EmailGG 
=GG 
friendRequestsGG  .
.GG. /
ProfilesGG/ 7
.GG7 8
PlayersGG8 ?
.GG? @
EmailGG@ E
,GGE F
NickNameHH  
=HH! "
friendRequestsHH# 1
.HH1 2
ProfilesHH2 :
.HH: ;
PlayersHH; B
.HHB C
NickNameHHC K
,HHK L
	BirthDateII !
=II" #
friendRequestsII$ 2
.II2 3
ProfilesII3 ;
.II; <
PlayersII< C
.IIC D
	BirthDateIID M
}JJ 
;JJ 
PlayerLL 
playerProfile1LL )
=LL* +
newLL, /
PlayerLL0 6
{MM 
IDPlayerNN  
=NN! "
friendRequestsNN# 1
.NN1 2
	Profiles1NN2 ;
.NN; <
PlayersNN< C
.NNC D
IDPlayerNND L
,NNL M
NamesOO 
=OO 
friendRequestsOO  .
.OO. /
	Profiles1OO/ 8
.OO8 9
PlayersOO9 @
.OO@ A
NamesOOA F
,OOF G
SurnamesPP  
=PP! "
friendRequestsPP# 1
.PP1 2
	Profiles1PP2 ;
.PP; <
PlayersPP< C
.PPC D
SurnamesPPD L
,PPL M
EmailQQ 
=QQ 
friendRequestsQQ  .
.QQ. /
	Profiles1QQ/ 8
.QQ8 9
PlayersQQ9 @
.QQ@ A
EmailQQA F
,QQF G
NickNameRR  
=RR! "
friendRequestsRR# 1
.RR1 2
	Profiles1RR2 ;
.RR; <
PlayersRR< C
.RRC D
NickNameRRD L
,RRL M
	BirthDateSS !
=SS" #
friendRequestsSS$ 2
.SS2 3
	Profiles1SS3 <
.SS< =
PlayersSS= D
.SSD E
	BirthDateSSE N
}TT 
;TT 
ProfileVV 
profileVV #
=VV$ %
newVV& )
ProfileVV* 1
{WW 
	IDProfileXX !
=XX" #
friendRequestsXX$ 2
.XX2 3
ProfilesXX3 ;
.XX; <
	IDProfileXX< E
,XXE F
CoinsYY 
=YY 
(YY  !
longYY! %
)YY% &
friendRequestsYY& 4
.YY4 5
ProfilesYY5 =
.YY= >
CoinsYY> C
,YYC D
LoginStatusZZ #
=ZZ$ %
friendRequestsZZ& 4
.ZZ4 5
ProfilesZZ5 =
.ZZ= >
LoginStatusZZ> I
,ZZI J
Player[[ 
=[[  
playerProfile[[! .
}\\ 
;\\ 
Profile^^ 
profile1^^ $
=^^% &
new^^' *
Profile^^+ 2
{__ 
	IDProfile`` !
=``" #
friendRequests``$ 2
.``2 3
	Profiles1``3 <
.``< =
	IDProfile``= F
,``F G
Coinsaa 
=aa 
(aa  !
longaa! %
)aa% &
friendRequestsaa& 4
.aa4 5
	Profiles1aa5 >
.aa> ?
Coinsaa? D
,aaD E
LoginStatusbb #
=bb$ %
friendRequestsbb& 4
.bb4 5
	Profiles1bb5 >
.bb> ?
LoginStatusbb? J
,bbJ K
Playercc 
=cc  
playerProfile1cc! /
}dd 
;dd 
friendRequestff !
.ff! "
IDFriendRequestff" 1
=ff2 3
friendRequestsff4 B
.ffB C
IDFriendRequestffC R
;ffR S
friendRequestgg !
.gg! "
CreationDategg" .
=gg/ 0
friendRequestsgg1 ?
.gg? @
CreationDategg@ L
;ggL M
friendRequesthh !
.hh! "
Messagehh" )
=hh* +
friendRequestshh, :
.hh: ;
Messagehh; B
;hhB C
friendRequestii !
.ii! "
AceptationStatusii" 2
=ii3 4
friendRequestsii5 C
.iiC D
AceptationStatusiiD T
;iiT U
friendRequestjj !
.jj! "
SendingStatusjj" /
=jj0 1
friendRequestsjj2 @
.jj@ A
SendingStatusjjA N
;jjN O
friendRequestkk !
.kk! "
Profilekk" )
=kk* +
profilekk, 3
;kk3 4
friendRequestll !
.ll! "
Profile1ll" *
=ll+ ,
profile1ll- 5
;ll5 6
}mm 
elsenn 
{oo 
friendRequestpp !
=pp" #
nullpp$ (
;pp( )
}qq 
}rr 
catchss 
(ss 
	Exceptionss 
exss 
)ss  
{tt 
Consoleuu 
.uu 
	WriteLineuu !
(uu! "
exuu" $
.uu$ %
ToStringuu% -
(uu- .
)uu. /
)uu/ 0
;uu0 1
}vv 
returnxx 
friendRequestxx  
;xx  !
}yy 	
public{{ 
List{{ 
<{{ 
FriendRequest{{ !
>{{! "@
4GetPendientsForAceptationFriendsRequestsByProfile1ID{{# W
({{W X
long{{X \

IDProfile1{{] g
){{g h
{|| 	
List}} 
<}} 
FriendRequest}} 
>}} 
friendRequestList}}  1
=}}2 3
new}}4 7
List}}8 <
<}}< =
FriendRequest}}= J
>}}J K
(}}K L
)}}L M
;}}M N
List~~ 
<~~ 
FriendRequests~~ 
>~~  
friendRequestsList~~! 3
=~~4 5
new~~6 9
List~~: >
<~~> ?
FriendRequests~~? M
>~~M N
(~~N O
)~~O P
;~~P Q
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ] 
friendRequestsList
�� "
=
��# $$
databaseModelContainer
��% ;
.
��; <
FriendRequestsSet
��< M
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
�� 
fr
�� 
.
��  
	Profiles1
��  )
.
��) *
	IDProfile
��* 3
==
��4 6

IDProfile1
��7 A
)
��A B
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
�� 
fr
�� 
.
��  
AceptationStatus
��  0
==
��1 3-
FriendRequestAceptationStatuses
��4 S
.
��S T
Pendient
��T \
.
��\ ]
ToString
��] e
(
��e f
)
��f g
)
��g h
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
�� 
fr
�� 
.
��  
SendingStatus
��  -
==
��. 0*
FriendRequestSendingStatuses
��1 M
.
��M N
Sent
��N R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
��  
friendRequestsList
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
friendRequestList
�� %
=
��& '<
.FriendRequestsListToFriendRequestListConverter
��( V
(
��V W 
friendRequestsList
��W i
)
��i j
;
��j k
}
�� 
else
�� 
{
�� 
friendRequestList
�� %
=
��& '
null
��( ,
;
��, -
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
friendRequestList
�� $
;
��$ %
}
�� 	
public
�� 
List
�� 
<
�� 
FriendRequest
�� !
>
��! "H
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID
��# ]
(
��] ^
long
��^ b
	IDProfile
��c l
)
��l m
{
�� 	
List
�� 
<
�� 
FriendRequest
�� 
>
�� 
friendRequestList
��  1
=
��2 3
new
��4 7
List
��8 <
<
��< =
FriendRequest
��= J
>
��J K
(
��K L
)
��L M
;
��M N
List
�� 
<
�� 
FriendRequests
�� 
>
��   
friendRequestsList
��! 3
=
��4 5
new
��6 9
List
��: >
<
��> ?
FriendRequests
��? M
>
��M N
(
��N O
)
��O P
;
��P Q
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ] 
friendRequestsList
�� "
=
��# $$
databaseModelContainer
��% ;
.
��; <
FriendRequestsSet
��< M
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
�� 
fr
�� 
.
��  
Profiles
��  (
.
��( )
	IDProfile
��) 2
==
��3 5
	IDProfile
��6 ?
)
��? @
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
�� 
fr
�� 
.
��  
AceptationStatus
��  0
==
��1 3-
FriendRequestAceptationStatuses
��4 S
.
��S T
Pendient
��T \
.
��\ ]
ToString
��] e
(
��e f
)
��f g
)
��g h
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
�� 
fr
�� 
.
��  
SendingStatus
��  -
==
��. 0*
FriendRequestSendingStatuses
��1 M
.
��M N
Sent
��N R
.
��R S
ToString
��S [
(
��[ \
)
��\ ]
)
��] ^
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
if
�� 
(
��  
friendRequestsList
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
friendRequestList
�� %
=
��& '<
.FriendRequestsListToFriendRequestListConverter
��( V
(
��V W 
friendRequestsList
��W i
)
��i j
;
��j k
}
�� 
else
�� 
{
�� 
friendRequestList
�� %
=
��& '
null
��( ,
;
��, -
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
friendRequestList
�� $
;
��$ %
}
�� 	
private
�� 
List
�� 
<
�� 
FriendRequest
�� "
>
��" #<
.FriendRequestsListToFriendRequestListConverter
��$ R
(
��R S
List
��S W
<
��W X
FriendRequests
��X f
>
��f g 
friendRequestsList
��h z
)
��z {
{
�� 	
List
�� 
<
�� 
FriendRequest
�� 
>
�� 
friendRequestList
��  1
=
��2 3
new
��4 7
List
��8 <
<
��< =
FriendRequest
��= J
>
��J K
(
��K L
)
��L M
;
��M N
foreach
�� 
(
�� 
FriendRequests
�� #
friendRequests
��$ 2
in
��3 5 
friendRequestsList
��6 H
)
��H I
{
�� 
Player
�� 
playerProfile
�� $
=
��% &
new
��' *
Player
��+ 1
{
�� 
IDPlayer
�� 
=
�� 
friendRequests
�� -
.
��- .
Profiles
��. 6
.
��6 7
Players
��7 >
.
��> ?
IDPlayer
��? G
,
��G H
Names
�� 
=
�� 
friendRequests
�� *
.
��* +
Profiles
��+ 3
.
��3 4
Players
��4 ;
.
��; <
Names
��< A
,
��A B
Surnames
�� 
=
�� 
friendRequests
�� -
.
��- .
Profiles
��. 6
.
��6 7
Players
��7 >
.
��> ?
Surnames
��? G
,
��G H
Email
�� 
=
�� 
friendRequests
�� *
.
��* +
Profiles
��+ 3
.
��3 4
Players
��4 ;
.
��; <
Email
��< A
,
��A B
NickName
�� 
=
�� 
friendRequests
�� -
.
��- .
Profiles
��. 6
.
��6 7
Players
��7 >
.
��> ?
NickName
��? G
,
��G H
	BirthDate
�� 
=
�� 
friendRequests
��  .
.
��. /
Profiles
��/ 7
.
��7 8
Players
��8 ?
.
��? @
	BirthDate
��@ I
}
�� 
;
�� 
Player
�� 
playerProfile1
�� %
=
��& '
new
��( +
Player
��, 2
{
�� 
IDPlayer
�� 
=
�� 
friendRequests
�� -
.
��- .
	Profiles1
��. 7
.
��7 8
Players
��8 ?
.
��? @
IDPlayer
��@ H
,
��H I
Names
�� 
=
�� 
friendRequests
�� *
.
��* +
	Profiles1
��+ 4
.
��4 5
Players
��5 <
.
��< =
Names
��= B
,
��B C
Surnames
�� 
=
�� 
friendRequests
�� -
.
��- .
	Profiles1
��. 7
.
��7 8
Players
��8 ?
.
��? @
Surnames
��@ H
,
��H I
Email
�� 
=
�� 
friendRequests
�� *
.
��* +
	Profiles1
��+ 4
.
��4 5
Players
��5 <
.
��< =
Email
��= B
,
��B C
NickName
�� 
=
�� 
friendRequests
�� -
.
��- .
	Profiles1
��. 7
.
��7 8
Players
��8 ?
.
��? @
NickName
��@ H
,
��H I
	BirthDate
�� 
=
�� 
friendRequests
��  .
.
��. /
	Profiles1
��/ 8
.
��8 9
Players
��9 @
.
��@ A
	BirthDate
��A J
}
�� 
;
�� 
Profile
�� 
profile
�� 
=
��  !
new
��" %
Profile
��& -
{
�� 
	IDProfile
�� 
=
�� 
friendRequests
��  .
.
��. /
Profiles
��/ 7
.
��7 8
	IDProfile
��8 A
,
��A B
Coins
�� 
=
�� 
(
�� 
long
�� !
)
��! "
friendRequests
��" 0
.
��0 1
Profiles
��1 9
.
��9 :
Coins
��: ?
,
��? @
LoginStatus
�� 
=
��  !
friendRequests
��" 0
.
��0 1
Profiles
��1 9
.
��9 :
LoginStatus
��: E
,
��E F
Player
�� 
=
�� 
playerProfile
�� *
}
�� 
;
�� 
Profile
�� 
profile1
��  
=
��! "
new
��# &
Profile
��' .
{
�� 
	IDProfile
�� 
=
�� 
friendRequests
��  .
.
��. /
	Profiles1
��/ 8
.
��8 9
	IDProfile
��9 B
,
��B C
Coins
�� 
=
�� 
(
�� 
long
�� !
)
��! "
friendRequests
��" 0
.
��0 1
	Profiles1
��1 :
.
��: ;
Coins
��; @
,
��@ A
LoginStatus
�� 
=
��  !
friendRequests
��" 0
.
��0 1
	Profiles1
��1 :
.
��: ;
LoginStatus
��; F
,
��F G
Player
�� 
=
�� 
playerProfile1
�� +
}
�� 
;
�� 
FriendRequest
�� 
friendRequest
�� +
=
��, -
new
��. 1
FriendRequest
��2 ?
{
�� 
IDFriendRequest
�� #
=
��$ %
friendRequests
��& 4
.
��4 5
IDFriendRequest
��5 D
,
��D E
CreationDate
��  
=
��! "
friendRequests
��# 1
.
��1 2
CreationDate
��2 >
,
��> ?
Message
�� 
=
�� 
friendRequests
�� ,
.
��, -
Message
��- 4
,
��4 5
AceptationStatus
�� $
=
��% &
friendRequests
��' 5
.
��5 6
AceptationStatus
��6 F
,
��F G
SendingStatus
�� !
=
��" #
friendRequests
��$ 2
.
��2 3
SendingStatus
��3 @
,
��@ A
Profile
�� 
=
�� 
profile
�� %
,
��% &
Profile1
�� 
=
�� 
profile1
�� '
}
�� 
;
�� 
friendRequestList
�� !
.
��! "
Add
��" %
(
��% &
friendRequest
��& 3
)
��3 4
;
��4 5
}
�� 
return
�� 
friendRequestList
�� $
;
��$ %
}
�� 	
public
�� 
bool
�� T
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile
�� Z
(
��Z [
long
��[ _"
transmitterProfileID
��` t
,
��t u
long
��v z 
receiverProfileID��{ �
)��� �
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� 
friendRequests
�� -
=
��. /$
databaseModelContainer
��0 F
.
��F G
FriendRequestsSet
��G X
.
��X Y
Where
��Y ^
(
��^ _
fr
��_ a
=>
��b d
fr
��e g
.
��g h
Profiles
��h p
.
��p q
	IDProfile
��q z
==
��{ }#
transmitterProfileID��~ �
)��� �
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
	Profiles1
��$ -
.
��- .
	IDProfile
��. 7
==
��8 :
receiverProfileID
��; L
)
��L M
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
AceptationStatus
��$ 4
==
��5 7-
FriendRequestAceptationStatuses
��8 W
.
��W X
Pendient
��X `
.
��` a
ToString
��a i
(
��i j
)
��j k
)
��k l
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
SendingStatus
��$ 1
==
��2 4*
FriendRequestSendingStatuses
��5 Q
.
��Q R
Sent
��R V
.
��V W
ToString
��W _
(
��_ `
)
��` a
)
��a b
.
�� 
FirstOrDefault
�� #
(
��# $
)
��$ %
;
��% &
if
�� 
(
�� 
friendRequests
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
bool
�� Z
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile
�� `
(
��` a
long
��a e"
transmitterProfileID
��f z
,
��z {
long��| �
senderProfileID��� �
)��� �
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� 
friendRequests
�� -
=
��. /$
databaseModelContainer
��0 F
.
��F G
FriendRequestsSet
��G X
.
��X Y
Where
��Y ^
(
��^ _
fr
��_ a
=>
��b d
fr
��e g
.
��g h
Profiles
��h p
.
��p q
	IDProfile
��q z
==
��{ }
senderProfileID��~ �
)��� �
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
	Profiles1
��$ -
.
��- .
	IDProfile
��. 7
==
��8 :"
transmitterProfileID
��; O
)
��O P
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
AceptationStatus
��$ 4
==
��5 7-
FriendRequestAceptationStatuses
��8 W
.
��W X
Pendient
��X `
.
��` a
ToString
��a i
(
��i j
)
��j k
)
��k l
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
SendingStatus
��$ 1
==
��2 4*
FriendRequestSendingStatuses
��5 Q
.
��Q R
Sent
��R V
.
��V W
ToString
��W _
(
��_ `
)
��` a
)
��a b
.
�� 
FirstOrDefault
�� #
(
��# $
)
��$ %
;
��% &
if
�� 
(
�� 
friendRequests
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
AddFriendRequest
�� $
(
��$ %
FriendRequests
��% 3
friendRequests
��4 B
)
��B C
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]$
databaseModelContainer
�� &
.
��& '
Entry
��' ,
(
��, -
friendRequests
��- ;
)
��; <
.
��< =
State
��= B
=
��C D
EntityState
��E P
.
��P Q
	Unchanged
��Q Z
;
��Z [$
databaseModelContainer
�� &
.
��& '
FriendRequestsSet
��' 8
.
��8 9
Add
��9 <
(
��< =
friendRequests
��= K
)
��K L
;
��L M$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 54
&ServiceFriendRequestForCallbackMethods
�� 64
&serviceFriendRequestForCallbackMethods
��7 ]
=
��^ _
new
��` c5
&ServiceFriendRequestForCallbackMethods��d �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� 6
.
��6 7<
.UpdateFriendRequestsListsToAllConnectedClients
��7 e
(
��e f
)
��f g
;
��g h
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
foreach
�� 
(
�� 
var
�� 
validationErrors
�� -
in
��. 0
ex
��1 3
.
��3 4$
EntityValidationErrors
��4 J
)
��J K
{
�� 
foreach
�� 
(
�� 
var
��  
validationError
��! 0
in
��1 3
validationErrors
��4 D
.
��D E
ValidationErrors
��E U
)
��U V
{
�� 
Console
�� 
.
��  
	WriteLine
��  )
(
��) *
$"
��* ,
$str
��, 6
{
��6 7
validationError
��7 F
.
��F G
PropertyName
��G S
}
��S T
$str
��T \
{
��\ ]
validationError
��] l
.
��l m
ErrorMessage
��m y
}
��y z
"
��z {
)
��{ |
;
��| }
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� !
AcceptFriendRequest
�� '
(
��' (
FriendRequests
��( 6
friendRequests
��7 E
)
��E F
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� $
friendRequestsToModify
�� 5
=
��6 7$
databaseModelContainer
��8 N
.
��N O
FriendRequestsSet
��O `
.
��` a
Find
��a e
(
��e f
friendRequests
��f t
.
��t u
IDFriendRequest��u �
)��� �
;��� �
if
�� 
(
�� $
friendRequestsToModify
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� $
friendRequestsToModify
�� *
.
��* +
AceptationStatus
��+ ;
=
��< =
Enum
��> B
.
��B C
GetName
��C J
(
��J K
typeof
��K Q
(
��Q R-
FriendRequestAceptationStatuses
��R q
)
��q r
,
��r s.
FriendRequestAceptationStatuses��t �
.��� �
Accepted��� �
)��� �
;��� �$
databaseModelContainer
�� *
.
��* +
SaveChanges
��+ 6
(
��6 7
)
��7 8
;
��8 91
#ServiceProfileForNonCallbackMethods
�� 71
#serviceProfileForNonCallbackMethods
��8 [
=
��\ ]
new
��^ a2
#ServiceProfileForNonCallbackMethods��b �
(��� �
)��� �
;��� �1
#serviceProfileForNonCallbackMethods
�� 7
.
��7 8
AddFriendship
��8 E
(
��E F
friendRequests
��F T
.
��T U
Profiles
��U ]
,
��] ^
friendRequests
��_ m
.
��m n
	Profiles1
��n w
)
��w x
;
��x y4
&ServiceFriendRequestForCallbackMethods
�� :4
&serviceFriendRequestForCallbackMethods
��; a
=
��b c
new
��d g5
&ServiceFriendRequestForCallbackMethods��h �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� :
.
��: ;<
.UpdateFriendRequestsListsToAllConnectedClients
��; i
(
��i j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
void
�� !
CancelFriendRequest
�� '
(
��' (
FriendRequests
��( 6
friendRequests
��7 E
)
��E F
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� $
friendRequestsToModify
�� 5
=
��6 7$
databaseModelContainer
��8 N
.
��N O
FriendRequestsSet
��O `
.
��` a
Find
��a e
(
��e f
friendRequests
��f t
.
��t u
IDFriendRequest��u �
)��� �
;��� �
if
�� 
(
�� $
friendRequestsToModify
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� $
friendRequestsToModify
�� *
.
��* +
SendingStatus
��+ 8
=
��9 :
Enum
��; ?
.
��? @
GetName
��@ G
(
��G H
typeof
��H N
(
��N O*
FriendRequestSendingStatuses
��O k
)
��k l
,
��l m+
FriendRequestSendingStatuses��n �
.��� �
Canceled��� �
)��� �
;��� �$
databaseModelContainer
�� *
.
��* +
SaveChanges
��+ 6
(
��6 7
)
��7 8
;
��8 94
&ServiceFriendRequestForCallbackMethods
�� :4
&serviceFriendRequestForCallbackMethods
��; a
=
��b c
new
��d g5
&ServiceFriendRequestForCallbackMethods��h �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� :
.
��: ;<
.UpdateFriendRequestsListsToAllConnectedClients
��; i
(
��i j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
void
�� !
RejectFriendRequest
�� '
(
��' (
FriendRequests
��( 6
friendRequests
��7 E
)
��E F
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� $
friendRequestsToModify
�� 5
=
��6 7$
databaseModelContainer
��8 N
.
��N O
FriendRequestsSet
��O `
.
��` a
Find
��a e
(
��e f
friendRequests
��f t
.
��t u
IDFriendRequest��u �
)��� �
;��� �
if
�� 
(
�� $
friendRequestsToModify
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� $
friendRequestsToModify
�� *
.
��* +
AceptationStatus
��+ ;
=
��< =-
FriendRequestAceptationStatuses
��> ]
.
��] ^
Rejected
��^ f
.
��f g
ToString
��g o
(
��o p
)
��p q
;
��q r$
databaseModelContainer
�� *
.
��* +
SaveChanges
��+ 6
(
��6 7
)
��7 8
;
��8 94
&ServiceFriendRequestForCallbackMethods
�� :4
&serviceFriendRequestForCallbackMethods
��; a
=
��b c
new
��d g5
&ServiceFriendRequestForCallbackMethods��h �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� :
.
��: ;<
.UpdateFriendRequestsListsToAllConnectedClients
��; i
(
��i j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
}
�� 
[
�� 
CallbackBehavior
�� 
(
�� 
ConcurrencyMode
�� %
=
��& '
ConcurrencyMode
��( 7
.
��7 8
Multiple
��8 @
,
��@ A'
UseSynchronizationContext
��B [
=
��\ ]
false
��^ c
)
��c d
]
��d e
public
�� 

class
�� 4
&ServiceFriendRequestForCallbackMethods
�� 7
:
��8 9+
IFriendRequestCallbackMethods
��: W
{
�� 
public
�� 
static
�� 

Dictionary
��  
<
��  !
string
��! '
,
��' ($
IFriendRequestCallback
��) ?
>
��? @
connectedProfiles
��A R
=
��S T
new
��U X

Dictionary
��Y c
<
��c d
string
��d j
,
��j k%
IFriendRequestCallback��l �
>��� �
(��� �
)��� �
;��� �
public
�� 
void
�� 
Connect
�� 
(
�� 
string
�� "
username
��# +
)
��+ ,
{
�� 	$
IFriendRequestCallback
�� "
callback
��# +
=
��, -
OperationContext
��. >
.
��> ?
Current
��? F
.
��F G 
GetCallbackChannel
��G Y
<
��Y Z$
IFriendRequestCallback
��Z p
>
��p q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
!
�� 
connectedProfiles
�� "
.
��" #
ContainsKey
��# .
(
��. /
username
��/ 7
)
��7 8
)
��8 9
{
�� 
connectedProfiles
�� !
.
��! "
Add
��" %
(
��% &
username
��& .
,
��. /
callback
��0 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
public
�� 
void
�� 

Disconnect
�� 
(
�� 
string
�� %
username
��& .
)
��. /
{
�� 	
if
�� 
(
�� 
connectedProfiles
�� !
.
��! "
ContainsKey
��" -
(
��- .
username
��. 6
)
��6 7
)
��7 8
{
�� 
connectedProfiles
�� !
.
��! "
Remove
��" (
(
��( )
username
��) 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
void
�� <
.UpdateFriendRequestsListsToAllConnectedClients
�� B
(
��B C
)
��C D
{
�� 	
foreach
�� 
(
�� 
var
�� #
friendRequestCallback
�� .
in
��/ 1
connectedProfiles
��2 C
.
��C D
Values
��D J
)
��J K
{
�� #
friendRequestCallback
�� %
.
��% &(
UpdateFriendsRequestsLists
��& @
(
��@ A
)
��A B
;
��B C
}
�� 
}
�� 	
}
�� 
}�� ̀
XC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServicePlayer.cs
	namespace 	
ServicesTCP
 
. 
Services 
{		 
public

 

class

 
ServicePlayer

 
:

  
IPlayer

! (
{ 
public 
long 
	AddPlayer 
( 
Players %
player& ,
), -
{ 	
long 
generatedID 
= 
$num  
;  !
try 
{ 
player 
. 
Profiles 
=  !
new" %
Profiles& .
(. /
)/ 0
;0 1"
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]"
databaseModelContainer &
.& '

PlayersSet' 1
.1 2
Add2 5
(5 6
player6 <
)< =
;= >"
databaseModelContainer &
.& '
SaveChanges' 2
(2 3
)3 4
;4 5
generatedID 
= 
player $
.$ %
IDPlayer% -
;- .
} 
catch 
( 
	Exception 
ex 
)  
{ 
Console 
. 
	WriteLine !
(! "
ex" $
.$ %
ToString% -
(- .
). /
)/ 0
;0 1
} 
return 
generatedID 
; 
} 	
public   
List   
<   
Players   
>   

GetPlayers   '
(  ' (
)  ( )
{!! 	
List"" 
<"" 
Players"" 
>"" 
players"" !
=""" #
null""$ (
;""( )
try$$ 
{%% "
DatabaseModelContainer&& &"
databaseModelContainer&&' =
=&&> ?
new&&@ C"
DatabaseModelContainer&&D Z
(&&Z [
)&&[ \
;&&\ ]
players'' 
='' "
databaseModelContainer'' 0
.''0 1

PlayersSet''1 ;
.''; <
ToList''< B
(''B C
)''C D
;''D E
}(( 
catch)) 
()) 
	Exception)) 
ex)) 
)))  
{** 
Console++ 
.++ 
	WriteLine++ !
(++! "
ex++" $
.++$ %
ToString++% -
(++- .
)++. /
)++/ 0
;++0 1
},, 
return-- 
players-- 
;-- 
}.. 	
public00 
Player00 
GetPlayerByID00 #
(00# $
long00$ (
ID00) +
)00+ ,
{11 	
Player22 
player22 
=22 
new22 
Player22  &
(22& '
)22' (
;22( )
Players33 
players33 
=33 
new33 !
Players33" )
(33) *
)33* +
;33+ ,
try55 
{66 "
DatabaseModelContainer77 &"
databaseModelContainer77' =
=77> ?
new77@ C"
DatabaseModelContainer77D Z
(77Z [
)77[ \
;77\ ]
players88 
=88 "
databaseModelContainer88 0
.880 1

PlayersSet881 ;
.88; <
Where88< A
(88A B
e88B C
=>88D F
e88G H
.88H I
IDPlayer88I Q
==88R T
ID88U W
)88W X
.88X Y
FirstOrDefault88Y g
(88g h
)88h i
;88i j
if:: 
(:: 
players:: 
!=:: 
null:: "
)::" #
{;; 
player<< 
.<< 
IDPlayer<< #
=<<$ %
players<<& -
.<<- .
IDPlayer<<. 6
;<<6 7
player== 
.== 
Names==  
===! "
players==# *
.==* +
Names==+ 0
;==0 1
player>> 
.>> 
Surnames>> #
=>>$ %
players>>& -
.>>- .
Surnames>>. 6
;>>6 7
player?? 
.?? 
Email??  
=??! "
players??# *
.??* +
Email??+ 0
;??0 1
player@@ 
.@@ 
NickName@@ #
=@@$ %
players@@& -
.@@- .
NickName@@. 6
;@@6 7
playerAA 
.AA 
	BirthDateAA $
=AA% &
playersAA' .
.AA. /
	BirthDateAA/ 8
;AA8 9
playerBB 
.BB 
PasswordBB #
=BB$ %
playersBB& -
.BB- .
PasswordBB. 6
;BB6 7
}CC 
elseDD 
{EE 
playerFF 
=FF 
nullFF !
;FF! "
}GG 
}II 
catchJJ 
(JJ 
	ExceptionJJ 
exJJ 
)JJ  
{KK 
ConsoleLL 
.LL 
	WriteLineLL !
(LL! "
exLL" $
.LL$ %
ToStringLL% -
(LL- .
)LL. /
)LL/ 0
;LL0 1
}MM 
returnOO 
playerOO 
;OO 
}PP 	
publicRR 
PlayerRR 
GetPlayerByNicknameRR )
(RR) *
stringRR* 0
nicknameRR1 9
)RR9 :
{SS 	
PlayerTT 
playerTT 
=TT 
newTT 
PlayerTT  &
(TT& '
)TT' (
;TT( )
PlayersUU 
playersUU 
=UU 
newUU !
PlayersUU" )
(UU) *
)UU* +
;UU+ ,
tryWW 
{XX "
DatabaseModelContainerYY &"
databaseModelContainerYY' =
=YY> ?
newYY@ C"
DatabaseModelContainerYYD Z
(YYZ [
)YY[ \
;YY\ ]
playersZZ 
=ZZ "
databaseModelContainerZZ 0
.ZZ0 1

PlayersSetZZ1 ;
.ZZ; <
WhereZZ< A
(ZZA B
eZZB C
=>ZZD F
eZZG H
.ZZH I
NickNameZZI Q
==ZZR T
nicknameZZU ]
)ZZ] ^
.ZZ^ _
FirstOrDefaultZZ_ m
(ZZm n
)ZZn o
;ZZo p
if\\ 
(\\ 
players\\ 
!=\\ 
null\\ "
)\\" #
{]] 
player^^ 
.^^ 
IDPlayer^^ #
=^^$ %
players^^& -
.^^- .
IDPlayer^^. 6
;^^6 7
player__ 
.__ 
Names__  
=__! "
players__# *
.__* +
Names__+ 0
;__0 1
player`` 
.`` 
Surnames`` #
=``$ %
players``& -
.``- .
Surnames``. 6
;``6 7
playeraa 
.aa 
Emailaa  
=aa! "
playersaa# *
.aa* +
Emailaa+ 0
;aa0 1
playerbb 
.bb 
NickNamebb #
=bb$ %
playersbb& -
.bb- .
NickNamebb. 6
;bb6 7
playercc 
.cc 
	BirthDatecc $
=cc% &
playerscc' .
.cc. /
	BirthDatecc/ 8
;cc8 9
playerdd 
.dd 
Passworddd #
=dd$ %
playersdd& -
.dd- .
Passworddd. 6
;dd6 7
}ee 
elseff 
{gg 
playerhh 
=hh 
nullhh !
;hh! "
}ii 
}kk 
catchll 
(ll 
	Exceptionll 
exll 
)ll  
{mm 
Consolenn 
.nn 
	WriteLinenn !
(nn! "
exnn" $
.nn$ %
ToStringnn% -
(nn- .
)nn. /
)nn/ 0
;nn0 1
}oo 
returnqq 
playerqq 
;qq 
}rr 	
publictt 
Listtt 
<tt 
Playerstt 
>tt 
GetSpecifiedPlayerstt 0
(tt0 1
stringtt1 7
namett8 <
)tt< =
{uu 	
Listvv 
<vv 
Playersvv 
>vv 
playersvv !
=vv" #
nullvv$ (
;vv( )
tryxx 
{yy "
DatabaseModelContainerzz &"
databaseModelContainerzz' =
=zz> ?
newzz@ C"
DatabaseModelContainerzzD Z
(zzZ [
)zz[ \
;zz\ ]
players{{ 
={{ "
databaseModelContainer{{ 0
.{{0 1

PlayersSet{{1 ;
.{{; <
Where{{< A
({{A B
e{{B C
=>{{D F
e{{G H
.{{H I
Names{{I N
.{{N O
Contains{{O W
({{W X
name{{X \
){{\ ]
){{] ^
.{{^ _
ToList{{_ e
({{e f
){{f g
;{{g h
}|| 
catch}} 
(}} 
	Exception}} 
ex}} 
)}}  
{~~ 
Console 
. 
	WriteLine !
(! "
ex" $
.$ %
ToString% -
(- .
). /
)/ 0
;0 1
}
�� 
return
�� 
players
�� 
;
�� 
}
�� 	
public
�� 
long
�� 
ModifyPlayer
��  
(
��  !
Players
��! (
modifiedPlayer
��) 7
)
��7 8
{
�� 	
long
�� 
generatedID
�� 
=
�� 
$num
��  
;
��  !
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
Players
�� 
playerToModify
�� &
=
��' ($
databaseModelContainer
��) ?
.
��? @

PlayersSet
��@ J
.
��J K
Find
��K O
(
��O P
modifiedPlayer
��P ^
.
��^ _
IDPlayer
��_ g
)
��g h
;
��h i
if
�� 
(
�� 
playerToModify
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
playerToModify
�� "
.
��" #
	BirthDate
��# ,
=
��- .
modifiedPlayer
��/ =
.
��= >
	BirthDate
��> G
;
��G H
playerToModify
�� "
.
��" #
Surnames
��# +
=
��, -
modifiedPlayer
��. <
.
��< =
Surnames
��= E
;
��E F
playerToModify
�� "
.
��" #
Email
��# (
=
��) *
modifiedPlayer
��+ 9
.
��9 :
Email
��: ?
;
��? @
playerToModify
�� "
.
��" #
Names
��# (
=
��) *
modifiedPlayer
��+ 9
.
��9 :
Names
��: ?
;
��? @
playerToModify
�� "
.
��" #
NickName
��# +
=
��, -
modifiedPlayer
��. <
.
��< =
NickName
��= E
;
��E F$
databaseModelContainer
�� *
.
��* +
SaveChanges
��+ 6
(
��6 7
)
��7 8
;
��8 9
generatedID
�� 
=
��  !
(
��" #
int
��# &
)
��& '
playerToModify
��' 5
.
��5 6
IDPlayer
��6 >
;
��> ?
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
generatedID
�� 
;
�� 
}
�� 	
public
�� 
void
�� #
ModifyPasswordByEmail
�� )
(
��) *
String
��* 0
originalEmail
��1 >
,
��> ?
String
��@ F
newPassword
��G R
)
��R S
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
Players
�� 
playerToModify
�� &
=
��' ($
databaseModelContainer
��) ?
.
��? @

PlayersSet
��@ J
.
��J K
FirstOrDefault
��K Y
(
��Y Z
e
��Z [
=>
��\ ^
e
��_ `
.
��` a
Email
��a f
==
��g i
originalEmail
��j w
)
��w x
;
��x y
if
�� 
(
�� 
playerToModify
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
playerToModify
�� "
.
��" #
Password
��# +
=
��, -
newPassword
��. 9
;
��9 :
}
�� $
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
bool
�� '
TheEmailIsAlreadyRegisted
�� -
(
��- .
String
��. 4
emailToSearch
��5 B
)
��B C
{
�� 	$
DatabaseModelContainer
�� "$
databaseModelContainer
��# 9
=
��: ;
new
��< ?$
DatabaseModelContainer
��@ V
(
��V W
)
��W X
;
��X Y
List
�� 
<
�� 
String
�� 
>
�� 
emails
�� 
=
��  !$
databaseModelContainer
��" 8
.
��8 9

PlayersSet
��9 C
.
��C D
Select
��D J
(
��J K
row
��K N
=>
��O Q
row
��R U
.
��U V
Email
��V [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
;
��e f
foreach
�� 
(
�� 
String
�� 
email
�� !
in
��" $
emails
��% +
)
��+ ,
{
�� 
if
�� 
(
�� 
email
�� 
==
�� 
emailToSearch
�� *
)
��* +
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
bool
�� *
TheNicknameIsAlreadyRegisted
�� 0
(
��0 1
String
��1 7
nicknameToSearch
��8 H
)
��H I
{
�� 	$
DatabaseModelContainer
�� "$
databaseModelContainer
��# 9
=
��: ;
new
��< ?$
DatabaseModelContainer
��@ V
(
��V W
)
��W X
;
��X Y
List
�� 
<
�� 
String
�� 
>
�� 
	nicknames
�� "
=
��# $$
databaseModelContainer
��% ;
.
��; <

PlayersSet
��< F
.
��F G
Select
��G M
(
��M N
row
��N Q
=>
��R T
row
��U X
.
��X Y
NickName
��Y a
)
��a b
.
��b c
ToList
��c i
(
��i j
)
��j k
;
��k l
foreach
�� 
(
�� 
String
�� 
nickname
�� $
in
��% '
	nicknames
��( 1
)
��1 2
{
�� 
if
�� 
(
�� 
nickname
�� 
==
�� 
nicknameToSearch
��  0
)
��0 1
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
YC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceProfile.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class /
#ServiceProfileForNonCallbackMethods 4
:5 6&
IProfileNonCallbackMethods7 Q
{ 
public 
long 

AddProfile 
( 
Profiles '
profiles( 0
)0 1
{ 	
long 
generatedID 
= 
$num  
;  !
try 
{ "
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]"
databaseModelContainer &
.& '
ProfilesSet' 2
.2 3
Add3 6
(6 7
profiles7 ?
)? @
;@ A"
databaseModelContainer &
.& '
SaveChanges' 2
(2 3
)3 4
;4 5
generatedID 
= 
profiles &
.& '
	IDProfile' 0
;0 1
} 
catch 
( 
	Exception 
ex 
)  
{ 
Console 
. 
	WriteLine !
(! "
ex" $
.$ %
ToString% -
(- .
). /
)/ 0
;0 1
} 
return!! 
generatedID!! 
;!! 
}"" 	
public$$ 
void$$ 
ChangeLoginStatus$$ %
($$% & 
ProfileLoginStatuses$$& :
profileLoginStatus$$; M
,$$M N
long$$O S
	profileID$$T ]
)$$] ^
{%% 	
try&& 
{'' "
DatabaseModelContainer(( &"
databaseModelContainer((' =
=((> ?
new((@ C"
DatabaseModelContainer((D Z
(((Z [
)(([ \
;((\ ]
Profiles)) 
profileToModify)) (
=))) *"
databaseModelContainer))+ A
.))A B
ProfilesSet))B M
.))M N
Find))N R
())R S
	profileID))S \
)))\ ]
;))] ^
if** 
(** 
profileToModify** #
!=**$ &
null**' +
)**+ ,
{++ 
profileToModify,, #
.,,# $
LoginStatus,,$ /
=,,0 1
profileLoginStatus,,2 D
.,,D E
ToString,,E M
(,,M N
),,N O
;,,O P"
databaseModelContainer.. *
...* +
SaveChanges..+ 6
(..6 7
)..7 8
;..8 9
}// 
}00 
catch11 
(11 
	Exception11 
ex11 
)11  
{22 
Console33 
.33 
	WriteLine33 !
(33! "
ex33" $
.33$ %
ToString33% -
(33- .
)33. /
)33/ 0
;330 1
}44 
}55 	
public77 
List77 
<77 
Profile77 
>77 

GetFriends77 '
(77' (
long77( ,
	profileID77- 6
)776 7
{88 	
List99 
<99 
Profile99 
>99 
profileList99 %
=99& '
new99( +
List99, 0
<990 1
Profile991 8
>998 9
(999 :
)99: ;
;99; <
Profiles:: 
profiles:: 
=:: 
new::  #
Profiles::$ ,
(::, -
)::- .
;::. /
ICollection;; 
<;; 
Profiles;;  
>;;  !
profilesHasSet;;" 0
=;;1 2
new;;3 6
HashSet;;7 >
<;;> ?
Profiles;;? G
>;;G H
(;;H I
);;I J
;;;J K
try== 
{>> "
DatabaseModelContainer?? &"
databaseModelContainer??' =
=??> ?
new??@ C"
DatabaseModelContainer??D Z
(??Z [
)??[ \
;??\ ]
profiles@@ 
=@@ "
databaseModelContainer@@ 1
.@@1 2
ProfilesSet@@2 =
.@@= >
Where@@> C
(@@C D
e@@D E
=>@@F H
e@@I J
.@@J K
	IDProfile@@K T
==@@U W
	profileID@@X a
)@@a b
.@@b c
FirstOrDefault@@c q
(@@q r
)@@r s
;@@s t
ifBB 
(BB 
profilesBB 
!=BB 
nullBB  $
)BB$ %
{CC 
profilesHasSetDD "
=DD# $
profilesDD% -
.DD- .
	Profiles2DD. 7
;DD7 8
foreachFF 
(FF 
ProfilesFF $
pFF% &
inFF' )
profilesHasSetFF* 8
)FF8 9
{GG 
PlayerHH 
profilePlayerHH ,
=HH- .
newHH/ 2
PlayerHH3 9
{II 
IDPlayerJJ $
=JJ% &
pJJ' (
.JJ( )
PlayersJJ) 0
.JJ0 1
IDPlayerJJ1 9
,JJ9 :
NamesKK !
=KK" #
pKK$ %
.KK% &
PlayersKK& -
.KK- .
NamesKK. 3
,KK3 4
SurnamesLL $
=LL% &
pLL' (
.LL( )
PlayersLL) 0
.LL0 1
SurnamesLL1 9
,LL9 :
EmailMM !
=MM" #
pMM$ %
.MM% &
PlayersMM& -
.MM- .
EmailMM. 3
,MM3 4
NickNameNN $
=NN% &
pNN' (
.NN( )
PlayersNN) 0
.NN0 1
NickNameNN1 9
,NN9 :
	BirthDateOO %
=OO& '
pOO( )
.OO) *
PlayersOO* 1
.OO1 2
	BirthDateOO2 ;
}PP 
;PP 
ProfileRR 
profileRR  '
=RR( )
newRR* -
ProfileRR. 5
{SS 
	IDProfileTT %
=TT& '
pTT( )
.TT) *
	IDProfileTT* 3
,TT3 4
CoinsUU !
=UU" #
(UU$ %
longUU% )
)UU) *
pUU* +
.UU+ ,
CoinsUU, 1
,UU1 2
LoginStatusVV '
=VV( )
pVV* +
.VV+ ,
LoginStatusVV, 7
,VV7 8
PlayerWW "
=WW# $
profilePlayerWW% 2
}XX 
;XX 
profileListZZ #
.ZZ# $
AddZZ$ '
(ZZ' (
profileZZ( /
)ZZ/ 0
;ZZ0 1
}[[ 
}\\ 
else]] 
{^^ 
profileList__ 
=__  !
null__" &
;__& '
}`` 
}bb 
catchcc 
(cc 
	Exceptioncc 
excc 
)cc  
{dd 
Consoleee 
.ee 
	WriteLineee !
(ee! "
exee" $
.ee$ %
ToStringee% -
(ee- .
)ee. /
)ee/ 0
;ee0 1
}ff 
returnhh 
profileListhh 
;hh 
}ii 	
publickk 
bytekk 
[kk 
]kk 
GetImagekk 
(kk 
stringkk %
fileNamekk& .
)kk. /
{ll 	
trymm 
{nn 
stringoo 
serverFolderPathoo '
=oo( )
$stroo* u
;oou v
stringpp 
filePathpp 
=pp  !
Pathpp" &
.pp& '
Combinepp' .
(pp. /
serverFolderPathpp/ ?
,pp? @
fileNameppA I
)ppI J
;ppJ K
byteqq 
[qq 
]qq 
	imageDataqq  
=qq! "
Fileqq# '
.qq' (
ReadAllBytesqq( 4
(qq4 5
filePathqq5 =
)qq= >
;qq> ?
returnss 
	imageDatass  
;ss  !
}tt 
catchuu 
(uu 
	Exceptionuu 
)uu 
{vv 
returnww 
nullww 
;ww 
}xx 
}yy 	
public{{ 
Profile{{ 
GetProfileByID{{ %
({{% &
long{{& *
	profileID{{+ 4
){{4 5
{|| 	
Profile}} 
profile}} 
=}} 
new}} !
Profile}}" )
(}}) *
)}}* +
;}}+ ,
Player~~ 
player~~ 
=~~ 
new~~ 
Player~~  &
(~~& '
)~~' (
;~~( )
Profiles 
profiles 
= 
new  #
Profiles$ ,
(, -
)- .
;. /
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
profiles
�� 
=
�� $
databaseModelContainer
�� 1
.
��1 2
ProfilesSet
��2 =
.
��= >
Where
��> C
(
��C D
e
��D E
=>
��F H
e
��I J
.
��J K
	IDProfile
��K T
==
��U W
	profileID
��X a
)
��a b
.
��b c
FirstOrDefault
��c q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
profiles
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
player
�� 
.
�� 
IDPlayer
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
IDPlayer
��7 ?
;
��? @
player
�� 
.
�� 
Names
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Names
��4 9
;
��9 :
player
�� 
.
�� 
Surnames
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Surnames
��7 ?
;
��? @
player
�� 
.
�� 
Email
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Email
��4 9
;
��9 :
player
�� 
.
�� 
NickName
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
NickName
��7 ?
;
��? @
player
�� 
.
�� 
	BirthDate
�� $
=
��% &
profiles
��' /
.
��/ 0
Players
��0 7
.
��7 8
	BirthDate
��8 A
;
��A B
player
�� 
.
�� 
Password
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Password
��7 ?
;
��? @
profile
�� 
.
�� 
	IDProfile
�� %
=
��& '
profiles
��( 0
.
��0 1
	IDProfile
��1 :
;
��: ;
profile
�� 
.
�� 
Coins
�� !
=
��" #
(
��$ %
long
��% )
)
��) *
profiles
��* 2
.
��2 3
Coins
��3 8
;
��8 9
profile
�� 
.
�� 
LoginStatus
�� '
=
��( )
profiles
��* 2
.
��2 3
LoginStatus
��3 >
;
��> ?
profile
�� 
.
�� 
Player
�� "
=
��# $
player
��% +
;
��+ ,
}
�� 
else
�� 
{
�� 
profile
�� 
=
�� 
null
�� "
;
��" #
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
profile
�� 
;
�� 
}
�� 	
public
�� 
Profile
�� "
GetProfileByPlayerID
�� +
(
��+ ,
long
��, 0
playerID
��1 9
)
��9 :
{
�� 	
Profile
�� 
profile
�� 
=
�� 
new
�� !
Profile
��" )
(
��) *
)
��* +
;
��+ ,
Player
�� 
player
�� 
=
�� 
new
�� 
Player
��  &
(
��& '
)
��' (
;
��( )
Profiles
�� 
profiles
�� 
=
�� 
new
��  #
Profiles
��$ ,
(
��, -
)
��- .
;
��. /
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
profiles
�� 
=
�� $
databaseModelContainer
�� 1
.
��1 2
ProfilesSet
��2 =
.
��= >
Where
��> C
(
��C D
e
��D E
=>
��F H
e
��I J
.
��J K
Players
��K R
.
��R S
IDPlayer
��S [
==
��\ ^
playerID
��_ g
)
��g h
.
��h i
FirstOrDefault
��i w
(
��w x
)
��x y
;
��y z
if
�� 
(
�� 
profiles
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
player
�� 
.
�� 
IDPlayer
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
IDPlayer
��7 ?
;
��? @
player
�� 
.
�� 
Names
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Names
��4 9
;
��9 :
player
�� 
.
�� 
Surnames
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Surnames
��7 ?
;
��? @
player
�� 
.
�� 
Email
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Email
��4 9
;
��9 :
player
�� 
.
�� 
NickName
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
NickName
��7 ?
;
��? @
player
�� 
.
�� 
	BirthDate
�� $
=
��% &
profiles
��' /
.
��/ 0
Players
��0 7
.
��7 8
	BirthDate
��8 A
;
��A B
player
�� 
.
�� 
Password
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Password
��7 ?
;
��? @
profile
�� 
.
�� 
	IDProfile
�� %
=
��& '
profiles
��( 0
.
��0 1
	IDProfile
��1 :
;
��: ;
profile
�� 
.
�� 
Coins
�� !
=
��" #
(
��$ %
long
��% )
)
��) *
profiles
��* 2
.
��2 3
Coins
��3 8
;
��8 9
profile
�� 
.
�� 
LoginStatus
�� '
=
��( )
profiles
��* 2
.
��2 3
LoginStatus
��3 >
;
��> ?
profile
�� 
.
�� 
Player
�� "
=
��# $
player
��% +
;
��+ ,
}
�� 
else
�� 
{
�� 
profile
�� 
=
�� 
null
�� "
;
��" #
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
profile
�� 
;
�� 
}
�� 	
public
�� 
Profile
�� (
GetProfileByPlayerNickname
�� 1
(
��1 2
string
��2 8
nickname
��9 A
)
��A B
{
�� 	
Profile
�� 
profile
�� 
=
�� 
new
�� !
Profile
��" )
(
��) *
)
��* +
;
��+ ,
Player
�� 
player
�� 
=
�� 
new
�� 
Player
��  &
(
��& '
)
��' (
;
��( )
Profiles
�� 
profiles
�� 
=
�� 
new
��  #
Profiles
��$ ,
(
��, -
)
��- .
;
��. /
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
profiles
�� 
=
�� $
databaseModelContainer
�� 1
.
��1 2
ProfilesSet
��2 =
.
��= >
Where
��> C
(
��C D
e
��D E
=>
��F H
e
��I J
.
��J K
Players
��K R
.
��R S
NickName
��S [
==
��\ ^
nickname
��_ g
)
��g h
.
��h i
FirstOrDefault
��i w
(
��w x
)
��x y
;
��y z
if
�� 
(
�� 
profiles
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
player
�� 
.
�� 
IDPlayer
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
IDPlayer
��7 ?
;
��? @
player
�� 
.
�� 
Names
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Names
��4 9
;
��9 :
player
�� 
.
�� 
Surnames
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Surnames
��7 ?
;
��? @
player
�� 
.
�� 
Email
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Email
��4 9
;
��9 :
player
�� 
.
�� 
NickName
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
NickName
��7 ?
;
��? @
player
�� 
.
�� 
	BirthDate
�� $
=
��% &
profiles
��' /
.
��/ 0
Players
��0 7
.
��7 8
	BirthDate
��8 A
;
��A B
player
�� 
.
�� 
Password
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Password
��7 ?
;
��? @
profile
�� 
.
�� 
	IDProfile
�� %
=
��& '
profiles
��( 0
.
��0 1
	IDProfile
��1 :
;
��: ;
profile
�� 
.
�� 
Coins
�� !
=
��" #
(
��$ %
long
��% )
)
��) *
profiles
��* 2
.
��2 3
Coins
��3 8
;
��8 9
profile
�� 
.
�� 
LoginStatus
�� '
=
��( )
profiles
��* 2
.
��2 3
LoginStatus
��3 >
;
��> ?
profile
�� 
.
�� 
Player
�� "
=
��# $
player
��% +
;
��+ ,
}
�� 
else
�� 
{
�� 
profile
�� 
=
�� 
null
�� "
;
��" #
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
profile
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
ModifyImageName
�� #
(
��# $
string
��$ *
fileName
��+ 3
,
��3 4
string
��5 ;
newName
��< C
)
��C D
{
�� 	
try
�� 
{
�� 
string
�� 
serverFolderPath
�� '
=
��( )
$str
��* u
;
��u v
var
�� 
matchingFiles
�� !
=
��" #
	Directory
��$ -
.
��- .
GetFiles
��. 6
(
��6 7
serverFolderPath
��7 G
,
��G H
$"
��I K
{
��K L
fileName
��L T
}
��T U
$str
��U W
"
��W X
)
��X Y
.
��. /
ToList
��/ 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
matchingFiles
�� !
.
��! "
Count
��" '
>
��( )
$num
��* +
)
��+ ,
{
�� 
string
�� 
	imagePath
�� $
=
��% &
matchingFiles
��' 4
.
��4 5
First
��5 :
(
��: ;
)
��; <
;
��< =
string
�� 
newFileName
�� &
=
��' (
$"
��) +
{
��+ ,
newName
��, 3
}
��3 4
{
��4 5
Path
��5 9
.
��9 :
GetExtension
��: F
(
��F G
	imagePath
��G P
)
��P Q
}
��Q R
"
��R S
;
��S T
string
�� 
newPath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
Path
��2 6
.
��6 7
GetDirectoryName
��7 G
(
��G H
	imagePath
��H Q
)
��Q R
,
��R S
newFileName
��T _
)
��_ `
;
��` a
File
�� 
.
�� 
Move
�� 
(
�� 
	imagePath
�� '
,
��' (
newPath
��) 0
)
��0 1
;
��1 2
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
bool
��  
TheProfileIsLogged
�� &
(
��& '
long
��' +
	profileID
��, 5
)
��5 6
{
�� 	
Profiles
�� 
profiles
�� 
=
�� 
new
��  #
Profiles
��$ ,
(
��, -
)
��- .
;
��. /
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
profiles
�� 
=
�� $
databaseModelContainer
�� 1
.
��1 2
ProfilesSet
��2 =
.
��= >
Where
��> C
(
��C D
e
��D E
=>
��F H
e
��I J
.
��J K
	IDProfile
��K T
==
��U W
	profileID
��X a
)
��a b
.
��b c
FirstOrDefault
��c q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
profiles
�� 
.
�� 
LoginStatus
�� (
==
��) +
Enum
��, 0
.
��0 1
GetName
��1 8
(
��8 9
typeof
��9 ?
(
��? @"
ProfileLoginStatuses
��@ T
)
��T U
,
��U V"
ProfileLoginStatuses
��W k
.
��k l
Logged
��l r
)
��r s
)
��s t
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
UploadImage
�� 
(
��  
string
��  &
fileName
��' /
,
��/ 0
byte
��1 5
[
��5 6
]
��6 7
	imageData
��8 A
)
��A B
{
�� 	
try
�� 
{
�� 
string
�� 
serverFolderPath
�� '
=
��( )
$str
��* u
;
��u v
string
�� 
searchString
�� #
=
��$ %
$str
��& )
;
��) *
int
�� 
index
�� 
=
�� 
fileName
�� $
.
��$ %
IndexOf
��% ,
(
��, -
searchString
��- 9
)
��9 :
;
��: ;
string
�� .
 fileNameWithoutExtensionToDelete
�� 7
=
��8 9
$str
��: <
;
��< =
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� .
 fileNameWithoutExtensionToDelete
�� 4
=
��5 6
fileName
��7 ?
.
��? @
	Substring
��@ I
(
��I J
$num
��J K
,
��K L
index
��M R
)
��R S
;
��S T
}
�� 
DirectoryInfo
�� 
directoryInfo
�� +
=
��, -
new
��. 1
DirectoryInfo
��2 ?
(
��? @
serverFolderPath
��@ P
)
��P Q
;
��Q R
if
�� 
(
�� 
directoryInfo
�� !
.
��! "
Exists
��" (
)
��( )
{
�� 
FileInfo
�� 
[
�� 
]
�� 
files
�� $
=
��% &
directoryInfo
��' 4
.
��4 5
GetFiles
��5 =
(
��= >
)
��> ?
;
��? @
foreach
�� 
(
�� 
FileInfo
�� %
file
��& *
in
��+ -
files
��. 3
)
��3 4
{
�� 
string
�� &
fileNameWithoutExtension
�� 7
=
��8 9
Path
��: >
.
��> ?)
GetFileNameWithoutExtension
��? Z
(
��Z [
file
��[ _
.
��_ `
Name
��` d
)
��d e
;
��e f
if
�� 
(
�� 
string
�� "
.
��" #
Equals
��# )
(
��) *&
fileNameWithoutExtension
��* B
,
��B C.
 fileNameWithoutExtensionToDelete
��D d
,
��d e
StringComparison
��f v
.
��v w 
OrdinalIgnoreCase��w �
)��� �
)��� �
{
�� 
file
��  
.
��  !
Delete
��! '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 
}
�� 
string
�� 
filePath
�� 
=
��  !
Path
��" &
.
��& '
Combine
��' .
(
��. /
serverFolderPath
��/ ?
,
��? @
fileName
��A I
)
��I J
;
��J K
File
�� 
.
�� 
WriteAllBytes
�� "
(
��" #
filePath
��# +
,
��+ ,
	imageData
��- 6
)
��6 7
;
��7 8
}
�� 
catch
�� 
(
�� 
	Exception
�� 
)
�� 
{
�� 
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
AddFriendship
�� !
(
��! "
Profiles
��" *
profiles
��+ 3
,
��3 4
Profiles
��5 =
	profiles1
��> G
)
��G H
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
string
�� 
sqlQuery
�� 
=
��  !
$str��" �
;��� �
var
�� 

parameter1
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 =
,
��= >
profiles
��? G
.
��G H
	IDProfile
��H Q
)
��Q R
;
��R S
var
�� 

parameter2
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 >
,
��> ?
	profiles1
��@ I
.
��I J
	IDProfile
��J S
)
��S T
;
��T U$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5

parameter1
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. 9
,
��9 :
	profiles1
��; D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P

parameter2
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. :
,
��: ;
profiles
��< D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5.
 ServiceProfileForCallbackMethods
�� 0.
 serviceProfileForCallbackMethods
��1 Q
=
��R S
new
��T W.
 ServiceProfileForCallbackMethods
��X x
(
��x y
)
��y z
;
��z {.
 serviceProfileForCallbackMethods
�� 0
.
��0 15
'UpdateFriendsListsToAllConnectedClients
��1 X
(
��X Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
public
�� 
void
�� 
CancelFriendship
�� $
(
��$ %
Profiles
��% -
profiles
��. 6
,
��6 7
Profiles
��8 @
	profiles1
��A J
)
��J K
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
string
�� 
sqlQuery
�� 
=
��  !
$str��" �
;��� �
var
�� 

parameter1
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 =
,
��= >
profiles
��? G
.
��G H
	IDProfile
��H Q
)
��Q R
;
��R S
var
�� 

parameter2
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 >
,
��> ?
	profiles1
��@ I
.
��I J
	IDProfile
��J S
)
��S T
;
��T U$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5

parameter1
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. 9
,
��9 :
	profiles1
��; D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P

parameter2
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. :
,
��: ;
profiles
��< D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5.
 ServiceProfileForCallbackMethods
�� 0.
 serviceProfileForCallbackMethods
��1 Q
=
��R S
new
��T W.
 ServiceProfileForCallbackMethods
��X x
(
��x y
)
��y z
;
��z {.
 serviceProfileForCallbackMethods
�� 0
.
��0 15
'UpdateFriendsListsToAllConnectedClients
��1 X
(
��X Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
Console
�� 
.
�� 
	WriteLine
�� !
(
��! "
ex
��" $
.
��$ %
ToString
��% -
(
��- .
)
��. /
)
��/ 0
;
��0 1
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� .
 ServiceProfileForCallbackMethods
�� 9
:
��: ;%
IProfileCallbackMethods
��< S
{
�� 
public
�� 
static
�� 
List
�� 
<
�� i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
�� v
>
��v w 
connectedProfiles��x �
=��� �
new��� �
List��� �
<��� �k
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods��� �
>��� �
(��� �
)��� �
;��� �
public
�� 
void
�� 
Connect
�� 
(
�� 
string
�� "
username
��# +
)
��+ ,
{
�� 	
IProfileCallback
�� 
callback
�� %
=
��& '
OperationContext
��( 8
.
��8 9
Current
��9 @
.
��@ A 
GetCallbackChannel
��A S
<
��S T
IProfileCallback
��T d
>
��d e
(
��e f
)
��f g
;
��g hi
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
�� g
result
��h n
=
��o p 
connectedProfiles��q �
.��� �
FirstOrDefault��� �
(��� �
item��� �
=>��� �
item��� �
.��� �
Key��� �
==��� �
username��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
==
�� 
null
�� 
)
�� 
{
�� i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
�� k

dictionary
��l v
=
��w x
new
��y |j
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods��} �
{
�� 
Key
�� 
=
�� 
username
�� "
,
��" #
Value
�� 
=
�� 
callback
�� $
}
�� 
;
�� 
connectedProfiles
�� !
.
��! "
Add
��" %
(
��% &

dictionary
��& 0
)
��0 1
;
��1 25
'UpdateFriendsListsToAllConnectedClients
�� 7
(
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
public
�� 
void
�� 

Disconnect
�� 
(
�� 
string
�� %
username
��& .
)
��. /
{
�� 	i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
�� g
result
��h n
=
��o p 
connectedProfiles��q �
.��� �
FirstOrDefault��� �
(��� �
item��� �
=>��� �
item��� �
.��� �
Key��� �
==��� �
username��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
connectedProfiles
�� !
=
��" #
connectedProfiles
��$ 5
.
��5 6
Where
��6 ;
(
��; <
item
��< @
=>
��A C
item
��D H
.
��H I
Key
��I L
!=
��M O
username
��P X
)
��X Y
.
��Y Z
ToList
��Z `
(
��` a
)
��a b
;
��b c
new
�� +
ServiceChatForCallbackMethods
�� 1
(
��1 2
)
��2 3
.
��3 4
	LeaveChat
��4 =
(
��= >
username
��> F
)
��F G
;
��G H
new
�� 4
&ServiceFriendRequestForCallbackMethods
�� :
(
��: ;
)
��; <
.
��< =

Disconnect
��= G
(
��G H
username
��H P
)
��P Q
;
��Q R
new
�� ,
ServiceLobbyForCallbackMethods
�� 2
(
��2 3
)
��3 4
.
��4 5

Disconnect
��5 ?
(
��? @
username
��@ H
)
��H I
;
��I J
new
�� ;
-ServiceMultiplayerCrosswordForCallbackMethods
�� A
(
��A B
)
��B C
.
��C D

Disconnect
��D N
(
��N O
username
��O W
)
��W X
;
��X Y5
'UpdateFriendsListsToAllConnectedClients
�� 7
(
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
public
�� 
void
�� $
InviteFriendToTheLobby
�� *
(
��* +
string
��+ 1
friendNickname
��2 @
)
��@ A
{
�� 	i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
�� g
result
��h n
=
��o p 
connectedProfiles��q �
.��� �
FirstOrDefault��� �
(��� �
item��� �
=>��� �
item��� �
.��� �
Key��� �
==��� �
friendNickname��� �
)��� �
;��� �
if
�� 
(
�� 
result
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
friend
�� #
in
��$ &
connectedProfiles
��' 8
)
��8 9
{
�� 
if
�� 
(
�� 
friend
�� 
.
�� 
Key
�� "
==
��# %
friendNickname
��& 4
)
��4 5
{
�� 
friend
�� 
.
�� 
Value
�� $
.
��$ %&
OpenPaneForEnterTheLobby
��% =
(
��= >
)
��> ?
;
��? @
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 5
'UpdateFriendsListsToAllConnectedClients
�� ;
(
��; <
)
��< =
{
�� 	
foreach
�� 
(
�� 
var
�� 
friend
�� 
in
��  "
connectedProfiles
��# 4
)
��4 5
{
�� 
friend
�� 
.
�� 
Value
�� 
.
��  
UpdateFriendsLists
�� /
(
��/ 0
)
��0 1
;
��1 2
friend
�� 
.
�� 
Value
�� 
.
�� )
UpdateFriendsForInviteLists
�� 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
}
�� 
}�� 