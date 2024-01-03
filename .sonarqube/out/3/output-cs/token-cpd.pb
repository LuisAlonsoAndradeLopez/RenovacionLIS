Æ
mC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\AuxiliaryDataContracts\KeyValueDataContract.cs
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
}(( Ñ
YC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Properties\AssemblyInfo.cs
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
]$$) *°
XC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IChat.cs
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
}!! ˆ%
YC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\ILobby.cs
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
}JJ ∂%
aC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IFriendRequest.cs
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
receiverProfileID	t Ö
)
Ö Ü
;
Ü á
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
senderProfileID	z â
)
â ä
;
ä ã
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
}FF œ
hC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IMultiplayerCrossword.cs
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
}55 Ù
ZC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IPlayer.cs
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
}-- ¨*
[C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IProfile.cs
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
}NN å5
VC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceChat.cs
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
;	)) Ä
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
ÅÅ 
}ÇÇ ‘@
fC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceMultiplayerCrossword.cs
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
IMultiplayerCrosswordCallback	33} ö
>
33ö õ
(
33õ ú
)
33ú ù
;
33ù û
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
(	CC Ä
)
CCÄ Å
;
CCÅ Ç
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
ÄÄ 
string
ÄÄ 
GetAdmin
ÄÄ  
(
ÄÄ  !
)
ÄÄ! "
{
ÅÅ 	
return
ÇÇ 
admin
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
internal
ÖÖ 
int
ÖÖ #
GetPointsFromAProfile
ÖÖ *
(
ÖÖ* +
string
ÖÖ+ 1
nickname
ÖÖ2 :
)
ÖÖ: ;
{
ÜÜ 	
return
áá "
profilesAndItsPoints
áá '
[
áá' (
nickname
áá( 0
]
áá0 1
;
áá1 2
}
àà 	
internal
ää 
void
ää 
SetAdmin
ää 
(
ää 
string
ää %
username
ää& .
)
ää. /
{
ãã 	
admin
åå 
=
åå 
username
åå 
;
åå 
}
çç 	
}
ïï 
}ññ Ñs
WC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceLobby.cs
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
;	RR Ä
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
ÄÄ 
admin
ÅÅ 
=
ÅÅ 
connectedProfiles
ÅÅ -
.
ÅÅ- .
Keys
ÅÅ. 2
.
ÅÅ2 3
First
ÅÅ3 8
(
ÅÅ8 9
)
ÅÅ9 :
;
ÅÅ: ;
}
ÇÇ 
else
ÉÉ 
{
ÑÑ 
bannedProfiles
ÖÖ "
.
ÖÖ" #
Clear
ÖÖ# (
(
ÖÖ( )
)
ÖÖ) *
;
ÖÖ* +
}
ÜÜ ?
1UpdateConnectedProfilesListsToAllConnectedClients
àà A
(
ààA B
)
ààB C
;
ààC DO
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients
ââ Q
(
ââQ R
)
ââR S
;
ââS T
}
ää 
}
ãã 	
public
çç 
void
çç 
SetAdmin
çç 
(
çç 
string
çç #
username
çç$ ,
)
çç, -
{
éé 	
admin
èè 
=
èè 
username
èè 
;
èè ?
1UpdateConnectedProfilesListsToAllConnectedClients
êê =
(
êê= >
)
êê> ?
;
êê? @
}
ëë 	
public
ìì 
void
ìì 
UnbanPlayer
ìì 
(
ìì  
string
ìì  &
username
ìì' /
)
ìì/ 0
{
îî 	
if
ïï 
(
ïï 
bannedProfiles
ïï 
.
ïï 
Contains
ïï '
(
ïï' (
username
ïï( 0
)
ïï0 1
)
ïï1 2
{
ññ 
bannedProfiles
óó 
.
óó 
Remove
óó %
(
óó% &
username
óó& .
)
óó. /
;
óó/ 0<
.UpdateBannedProfilesListsToAllConnectedClients
òò >
(
òò> ?
)
òò? @
;
òò@ A?
1UpdateConnectedProfilesListsToAllConnectedClients
ôô A
(
ôôA B
)
ôôB C
;
ôôC D
}
öö 
}
õõ 	
private
°° 
void
°° <
.UpdateBannedProfilesListsToAllConnectedClients
°° C
(
°°C D
)
°°D E
{
¢¢ 	
foreach
££ 
(
££ 
var
££ %
multiplayerGameCallback
££ 0
in
££1 3
connectedProfiles
££4 E
.
££E F
Values
££F L
)
££L M
{
§§ %
multiplayerGameCallback
•• '
.
••' ('
UpdateBannedProfilesLists
••( A
(
••A B
)
••B C
;
••C D
}
¶¶ 
}
ßß 	
private
©© 
void
©© ?
1UpdateConnectedProfilesListsToAllConnectedClients
©© F
(
©©F G
)
©©G H
{
™™ 	
foreach
´´ 
(
´´ 
var
´´ %
multiplayerGameCallback
´´ 0
in
´´1 3
connectedProfiles
´´4 E
.
´´E F
Values
´´F L
)
´´L M
{
¨¨ %
multiplayerGameCallback
≠≠ '
.
≠≠' (*
UpdateConnectedProfilesLists
≠≠( D
(
≠≠D E
)
≠≠E F
;
≠≠F G
}
ÆÆ 
}
ØØ 	
private
±± 
void
±± O
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients
±± V
(
±±V W
)
±±W X
{
≤≤ 	
foreach
≥≥ 
(
≥≥ 
var
≥≥ %
multiplayerGameCallback
≥≥ 0
in
≥≥1 3
connectedProfiles
≥≥4 E
.
≥≥E F
Values
≥≥F L
)
≥≥L M
{
¥¥ %
multiplayerGameCallback
µµ '
.
µµ' (:
,UpdateConnectedProfilesForInviteToLobbyLists
µµ( T
(
µµT U
)
µµU V
;
µµV W
}
∂∂ 
}
∑∑ 	
internal
ΩΩ 
string
ΩΩ 
GetAdmin
ΩΩ  
(
ΩΩ  !
)
ΩΩ! "
{
ææ 	
return
øø 
admin
øø 
;
øø 
}
¿¿ 	
internal
¬¬ 
List
¬¬ 
<
¬¬ 
String
¬¬ 
>
¬¬ 
GetBannedProfiles
¬¬ /
(
¬¬/ 0
)
¬¬0 1
{
√√ 	
return
ƒƒ 
bannedProfiles
ƒƒ !
;
ƒƒ! "
}
≈≈ 	
internal
«« 
List
«« 
<
«« 
String
«« 
>
«« "
GetConnectedProfiles
«« 2
(
««2 3
)
««3 4
{
»» 	
List
…… 
<
…… 
String
…… 
>
…… #
connectedProfilesList
…… .
=
……/ 0
new
……1 4
List
……5 9
<
……9 :
string
……: @
>
……@ A
(
……A B
)
……B C
;
……C D
foreach
   
(
   
var
   
connectedProfile
   )
in
  * ,
connectedProfiles
  - >
.
  > ?
Keys
  ? C
)
  C D
{
ÀÀ #
connectedProfilesList
ÃÃ %
.
ÃÃ% &
Add
ÃÃ& )
(
ÃÃ) *
connectedProfile
ÃÃ* :
)
ÃÃ: ;
;
ÃÃ; <
}
ÕÕ 
return
œœ #
connectedProfilesList
œœ (
;
œœ( )
}
–– 	
internal
““ 
bool
““ 
IsAdmin
““ 
(
““ 
string
““ $
nickname
““% -
)
““- .
{
”” 	
return
‘‘ 
admin
‘‘ 
!=
‘‘ 
null
‘‘  
&&
‘‘! #
nickname
‘‘$ ,
==
‘‘- /
admin
‘‘0 5
;
‘‘5 6
}
’’ 	
internal
◊◊ 
bool
◊◊ 
IsBanned
◊◊ 
(
◊◊ 
string
◊◊ %
nickname
◊◊& .
)
◊◊. /
{
ÿÿ 	
return
ŸŸ 
bannedProfiles
ŸŸ !
.
ŸŸ! "
Contains
ŸŸ" *
(
ŸŸ* +
nickname
ŸŸ+ 3
)
ŸŸ3 4
;
ŸŸ4 5
}
⁄⁄ 	
internal
‹‹ 
bool
‹‹ 
IsConnected
‹‹ !
(
‹‹! "
string
‹‹" (
nickname
‹‹) 1
)
‹‹1 2
{
›› 	
return
ﬁﬁ 
connectedProfiles
ﬁﬁ $
.
ﬁﬁ$ %
ContainsKey
ﬁﬁ% 0
(
ﬁﬁ0 1
nickname
ﬁﬁ1 9
)
ﬁﬁ9 :
;
ﬁﬁ: ;
}
ﬂﬂ 	
internal
·· 
void
·· $
SetThePlayersAreInGame
·· ,
(
··, -
)
··- .
{
‚‚ 	!
thePlayersAreInGame
„„ 
=
„„  !
true
„„" &
;
„„& '
}
‰‰ 	
internal
ÊÊ 
void
ÊÊ '
SetThePlayersAreNotInGame
ÊÊ /
(
ÊÊ/ 0
)
ÊÊ0 1
{
ÁÁ 	!
thePlayersAreInGame
ËË 
=
ËË  !
false
ËË" '
;
ËË' (
}
ÈÈ 	
internal
ÎÎ 
bool
ÎÎ !
ThePlayersAreInGame
ÎÎ )
(
ÎÎ) *
)
ÎÎ* +
{
ÏÏ 	
return
ÌÌ !
thePlayersAreInGame
ÌÌ &
;
ÌÌ& '
}
ÓÓ 	
}
ıı 
}ˆˆ †¬
_C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceFriendRequest.cs
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
)	== Ä
;
==Ä Å
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
ÄÄ 
{
ÅÅ $
DatabaseModelContainer
ÇÇ &$
databaseModelContainer
ÇÇ' =
=
ÇÇ> ?
new
ÇÇ@ C$
DatabaseModelContainer
ÇÇD Z
(
ÇÇZ [
)
ÇÇ[ \
;
ÇÇ\ ] 
friendRequestsList
ÉÉ "
=
ÉÉ# $$
databaseModelContainer
ÉÉ% ;
.
ÉÉ; <
FriendRequestsSet
ÉÉ< M
.
ÑÑ 
Where
ÑÑ 
(
ÑÑ 
fr
ÑÑ 
=>
ÑÑ 
fr
ÑÑ 
.
ÑÑ  
	Profiles1
ÑÑ  )
.
ÑÑ) *
	IDProfile
ÑÑ* 3
==
ÑÑ4 6

IDProfile1
ÑÑ7 A
)
ÑÑA B
.
ÖÖ 
Where
ÖÖ 
(
ÖÖ 
fr
ÖÖ 
=>
ÖÖ 
fr
ÖÖ 
.
ÖÖ  
AceptationStatus
ÖÖ  0
==
ÖÖ1 3-
FriendRequestAceptationStatuses
ÖÖ4 S
.
ÖÖS T
Pendient
ÖÖT \
.
ÖÖ\ ]
ToString
ÖÖ] e
(
ÖÖe f
)
ÖÖf g
)
ÖÖg h
.
ÜÜ 
Where
ÜÜ 
(
ÜÜ 
fr
ÜÜ 
=>
ÜÜ 
fr
ÜÜ 
.
ÜÜ  
SendingStatus
ÜÜ  -
==
ÜÜ. 0*
FriendRequestSendingStatuses
ÜÜ1 M
.
ÜÜM N
Sent
ÜÜN R
.
ÜÜR S
ToString
ÜÜS [
(
ÜÜ[ \
)
ÜÜ\ ]
)
ÜÜ] ^
.
áá 
ToList
áá 
(
áá 
)
áá 
;
áá 
if
ââ 
(
ââ  
friendRequestsList
ââ &
!=
ââ' )
null
ââ* .
)
ââ. /
{
ää 
friendRequestList
ãã %
=
ãã& '<
.FriendRequestsListToFriendRequestListConverter
ãã( V
(
ããV W 
friendRequestsList
ããW i
)
ããi j
;
ããj k
}
åå 
else
çç 
{
éé 
friendRequestList
èè %
=
èè& '
null
èè( ,
;
èè, -
}
êê 
}
íí 
catch
ìì 
(
ìì 
	Exception
ìì 
ex
ìì 
)
ìì  
{
îî 
Console
ïï 
.
ïï 
	WriteLine
ïï !
(
ïï! "
ex
ïï" $
.
ïï$ %
ToString
ïï% -
(
ïï- .
)
ïï. /
)
ïï/ 0
;
ïï0 1
}
ññ 
return
òò 
friendRequestList
òò $
;
òò$ %
}
ôô 	
public
õõ 
List
õõ 
<
õõ 
FriendRequest
õõ !
>
õõ! "H
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID
õõ# ]
(
õõ] ^
long
õõ^ b
	IDProfile
õõc l
)
õõl m
{
úú 	
List
ùù 
<
ùù 
FriendRequest
ùù 
>
ùù 
friendRequestList
ùù  1
=
ùù2 3
new
ùù4 7
List
ùù8 <
<
ùù< =
FriendRequest
ùù= J
>
ùùJ K
(
ùùK L
)
ùùL M
;
ùùM N
List
ûû 
<
ûû 
FriendRequests
ûû 
>
ûû   
friendRequestsList
ûû! 3
=
ûû4 5
new
ûû6 9
List
ûû: >
<
ûû> ?
FriendRequests
ûû? M
>
ûûM N
(
ûûN O
)
ûûO P
;
ûûP Q
try
†† 
{
°° $
DatabaseModelContainer
¢¢ &$
databaseModelContainer
¢¢' =
=
¢¢> ?
new
¢¢@ C$
DatabaseModelContainer
¢¢D Z
(
¢¢Z [
)
¢¢[ \
;
¢¢\ ] 
friendRequestsList
££ "
=
££# $$
databaseModelContainer
££% ;
.
££; <
FriendRequestsSet
££< M
.
§§ 
Where
§§ 
(
§§ 
fr
§§ 
=>
§§ 
fr
§§ 
.
§§  
Profiles
§§  (
.
§§( )
	IDProfile
§§) 2
==
§§3 5
	IDProfile
§§6 ?
)
§§? @
.
•• 
Where
•• 
(
•• 
fr
•• 
=>
•• 
fr
•• 
.
••  
AceptationStatus
••  0
==
••1 3-
FriendRequestAceptationStatuses
••4 S
.
••S T
Pendient
••T \
.
••\ ]
ToString
••] e
(
••e f
)
••f g
)
••g h
.
¶¶ 
Where
¶¶ 
(
¶¶ 
fr
¶¶ 
=>
¶¶ 
fr
¶¶ 
.
¶¶  
SendingStatus
¶¶  -
==
¶¶. 0*
FriendRequestSendingStatuses
¶¶1 M
.
¶¶M N
Sent
¶¶N R
.
¶¶R S
ToString
¶¶S [
(
¶¶[ \
)
¶¶\ ]
)
¶¶] ^
.
ßß 
ToList
ßß 
(
ßß 
)
ßß 
;
ßß 
if
©© 
(
©©  
friendRequestsList
©© &
!=
©©' )
null
©©* .
)
©©. /
{
™™ 
friendRequestList
´´ %
=
´´& '<
.FriendRequestsListToFriendRequestListConverter
´´( V
(
´´V W 
friendRequestsList
´´W i
)
´´i j
;
´´j k
}
¨¨ 
else
≠≠ 
{
ÆÆ 
friendRequestList
ØØ %
=
ØØ& '
null
ØØ( ,
;
ØØ, -
}
∞∞ 
}
≤≤ 
catch
≥≥ 
(
≥≥ 
	Exception
≥≥ 
ex
≥≥ 
)
≥≥  
{
¥¥ 
Console
µµ 
.
µµ 
	WriteLine
µµ !
(
µµ! "
ex
µµ" $
.
µµ$ %
ToString
µµ% -
(
µµ- .
)
µµ. /
)
µµ/ 0
;
µµ0 1
}
∂∂ 
return
∏∏ 
friendRequestList
∏∏ $
;
∏∏$ %
}
ππ 	
private
ºº 
List
ºº 
<
ºº 
FriendRequest
ºº "
>
ºº" #<
.FriendRequestsListToFriendRequestListConverter
ºº$ R
(
ººR S
List
ººS W
<
ººW X
FriendRequests
ººX f
>
ººf g 
friendRequestsList
ººh z
)
ººz {
{
ΩΩ 	
List
ææ 
<
ææ 
FriendRequest
ææ 
>
ææ 
friendRequestList
ææ  1
=
ææ2 3
new
ææ4 7
List
ææ8 <
<
ææ< =
FriendRequest
ææ= J
>
ææJ K
(
ææK L
)
ææL M
;
ææM N
foreach
¿¿ 
(
¿¿ 
FriendRequests
¿¿ #
friendRequests
¿¿$ 2
in
¿¿3 5 
friendRequestsList
¿¿6 H
)
¿¿H I
{
¡¡ 
Player
√√ 
playerProfile
√√ $
=
√√% &
new
√√' *
Player
√√+ 1
{
ƒƒ 
IDPlayer
≈≈ 
=
≈≈ 
friendRequests
≈≈ -
.
≈≈- .
Profiles
≈≈. 6
.
≈≈6 7
Players
≈≈7 >
.
≈≈> ?
IDPlayer
≈≈? G
,
≈≈G H
Names
∆∆ 
=
∆∆ 
friendRequests
∆∆ *
.
∆∆* +
Profiles
∆∆+ 3
.
∆∆3 4
Players
∆∆4 ;
.
∆∆; <
Names
∆∆< A
,
∆∆A B
Surnames
«« 
=
«« 
friendRequests
«« -
.
««- .
Profiles
««. 6
.
««6 7
Players
««7 >
.
««> ?
Surnames
««? G
,
««G H
Email
»» 
=
»» 
friendRequests
»» *
.
»»* +
Profiles
»»+ 3
.
»»3 4
Players
»»4 ;
.
»»; <
Email
»»< A
,
»»A B
NickName
…… 
=
…… 
friendRequests
…… -
.
……- .
Profiles
……. 6
.
……6 7
Players
……7 >
.
……> ?
NickName
……? G
,
……G H
	BirthDate
   
=
   
friendRequests
    .
.
  . /
Profiles
  / 7
.
  7 8
Players
  8 ?
.
  ? @
	BirthDate
  @ I
}
ÀÀ 
;
ÀÀ 
Player
ÕÕ 
playerProfile1
ÕÕ %
=
ÕÕ& '
new
ÕÕ( +
Player
ÕÕ, 2
{
ŒŒ 
IDPlayer
œœ 
=
œœ 
friendRequests
œœ -
.
œœ- .
	Profiles1
œœ. 7
.
œœ7 8
Players
œœ8 ?
.
œœ? @
IDPlayer
œœ@ H
,
œœH I
Names
–– 
=
–– 
friendRequests
–– *
.
––* +
	Profiles1
––+ 4
.
––4 5
Players
––5 <
.
––< =
Names
––= B
,
––B C
Surnames
—— 
=
—— 
friendRequests
—— -
.
——- .
	Profiles1
——. 7
.
——7 8
Players
——8 ?
.
——? @
Surnames
——@ H
,
——H I
Email
““ 
=
““ 
friendRequests
““ *
.
““* +
	Profiles1
““+ 4
.
““4 5
Players
““5 <
.
““< =
Email
““= B
,
““B C
NickName
”” 
=
”” 
friendRequests
”” -
.
””- .
	Profiles1
””. 7
.
””7 8
Players
””8 ?
.
””? @
NickName
””@ H
,
””H I
	BirthDate
‘‘ 
=
‘‘ 
friendRequests
‘‘  .
.
‘‘. /
	Profiles1
‘‘/ 8
.
‘‘8 9
Players
‘‘9 @
.
‘‘@ A
	BirthDate
‘‘A J
}
’’ 
;
’’ 
Profile
◊◊ 
profile
◊◊ 
=
◊◊  !
new
◊◊" %
Profile
◊◊& -
{
ÿÿ 
	IDProfile
ŸŸ 
=
ŸŸ 
friendRequests
ŸŸ  .
.
ŸŸ. /
Profiles
ŸŸ/ 7
.
ŸŸ7 8
	IDProfile
ŸŸ8 A
,
ŸŸA B
Coins
⁄⁄ 
=
⁄⁄ 
(
⁄⁄ 
long
⁄⁄ !
)
⁄⁄! "
friendRequests
⁄⁄" 0
.
⁄⁄0 1
Profiles
⁄⁄1 9
.
⁄⁄9 :
Coins
⁄⁄: ?
,
⁄⁄? @
LoginStatus
€€ 
=
€€  !
friendRequests
€€" 0
.
€€0 1
Profiles
€€1 9
.
€€9 :
LoginStatus
€€: E
,
€€E F
Player
‹‹ 
=
‹‹ 
playerProfile
‹‹ *
}
›› 
;
›› 
Profile
ﬂﬂ 
profile1
ﬂﬂ  
=
ﬂﬂ! "
new
ﬂﬂ# &
Profile
ﬂﬂ' .
{
‡‡ 
	IDProfile
·· 
=
·· 
friendRequests
··  .
.
··. /
	Profiles1
··/ 8
.
··8 9
	IDProfile
··9 B
,
··B C
Coins
‚‚ 
=
‚‚ 
(
‚‚ 
long
‚‚ !
)
‚‚! "
friendRequests
‚‚" 0
.
‚‚0 1
	Profiles1
‚‚1 :
.
‚‚: ;
Coins
‚‚; @
,
‚‚@ A
LoginStatus
„„ 
=
„„  !
friendRequests
„„" 0
.
„„0 1
	Profiles1
„„1 :
.
„„: ;
LoginStatus
„„; F
,
„„F G
Player
‰‰ 
=
‰‰ 
playerProfile1
‰‰ +
}
ÂÂ 
;
ÂÂ 
FriendRequest
ÁÁ 
friendRequest
ÁÁ +
=
ÁÁ, -
new
ÁÁ. 1
FriendRequest
ÁÁ2 ?
{
ËË 
IDFriendRequest
ÈÈ #
=
ÈÈ$ %
friendRequests
ÈÈ& 4
.
ÈÈ4 5
IDFriendRequest
ÈÈ5 D
,
ÈÈD E
CreationDate
ÍÍ  
=
ÍÍ! "
friendRequests
ÍÍ# 1
.
ÍÍ1 2
CreationDate
ÍÍ2 >
,
ÍÍ> ?
Message
ÎÎ 
=
ÎÎ 
friendRequests
ÎÎ ,
.
ÎÎ, -
Message
ÎÎ- 4
,
ÎÎ4 5
AceptationStatus
ÏÏ $
=
ÏÏ% &
friendRequests
ÏÏ' 5
.
ÏÏ5 6
AceptationStatus
ÏÏ6 F
,
ÏÏF G
SendingStatus
ÌÌ !
=
ÌÌ" #
friendRequests
ÌÌ$ 2
.
ÌÌ2 3
SendingStatus
ÌÌ3 @
,
ÌÌ@ A
Profile
ÓÓ 
=
ÓÓ 
profile
ÓÓ %
,
ÓÓ% &
Profile1
ÔÔ 
=
ÔÔ 
profile1
ÔÔ '
}
 
;
 
friendRequestList
ÚÚ !
.
ÚÚ! "
Add
ÚÚ" %
(
ÚÚ% &
friendRequest
ÚÚ& 3
)
ÚÚ3 4
;
ÚÚ4 5
}
ÛÛ 
return
ıı 
friendRequestList
ıı $
;
ıı$ %
}
ˆˆ 	
public
¯¯ 
bool
¯¯ T
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile
¯¯ Z
(
¯¯Z [
long
¯¯[ _"
transmitterProfileID
¯¯` t
,
¯¯t u
long
¯¯v z 
receiverProfileID¯¯{ å
)¯¯å ç
{
˘˘ 	
try
˙˙ 
{
˚˚ $
DatabaseModelContainer
¸¸ &$
databaseModelContainer
¸¸' =
=
¸¸> ?
new
¸¸@ C$
DatabaseModelContainer
¸¸D Z
(
¸¸Z [
)
¸¸[ \
;
¸¸\ ]
FriendRequests
˝˝ 
friendRequests
˝˝ -
=
˝˝. /$
databaseModelContainer
˝˝0 F
.
˝˝F G
FriendRequestsSet
˝˝G X
.
˝˝X Y
Where
˝˝Y ^
(
˝˝^ _
fr
˝˝_ a
=>
˝˝b d
fr
˝˝e g
.
˝˝g h
Profiles
˝˝h p
.
˝˝p q
	IDProfile
˝˝q z
==
˝˝{ }#
transmitterProfileID˝˝~ í
)˝˝í ì
.
˛˛ 
Where
˛˛ 
(
˛˛ 
fr
˛˛ 
=>
˛˛  
fr
˛˛! #
.
˛˛# $
	Profiles1
˛˛$ -
.
˛˛- .
	IDProfile
˛˛. 7
==
˛˛8 :
receiverProfileID
˛˛; L
)
˛˛L M
.
ˇˇ 
Where
ˇˇ 
(
ˇˇ 
fr
ˇˇ 
=>
ˇˇ  
fr
ˇˇ! #
.
ˇˇ# $
AceptationStatus
ˇˇ$ 4
==
ˇˇ5 7-
FriendRequestAceptationStatuses
ˇˇ8 W
.
ˇˇW X
Pendient
ˇˇX `
.
ˇˇ` a
ToString
ˇˇa i
(
ˇˇi j
)
ˇˇj k
)
ˇˇk l
.
ÄÄ 
Where
ÄÄ 
(
ÄÄ 
fr
ÄÄ 
=>
ÄÄ  
fr
ÄÄ! #
.
ÄÄ# $
SendingStatus
ÄÄ$ 1
==
ÄÄ2 4*
FriendRequestSendingStatuses
ÄÄ5 Q
.
ÄÄQ R
Sent
ÄÄR V
.
ÄÄV W
ToString
ÄÄW _
(
ÄÄ_ `
)
ÄÄ` a
)
ÄÄa b
.
ÅÅ 
FirstOrDefault
ÅÅ #
(
ÅÅ# $
)
ÅÅ$ %
;
ÅÅ% &
if
ÇÇ 
(
ÇÇ 
friendRequests
ÇÇ "
!=
ÇÇ# %
null
ÇÇ& *
)
ÇÇ* +
{
ÉÉ 
return
ÑÑ 
true
ÑÑ 
;
ÑÑ  
}
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá 
	Exception
áá 
ex
áá 
)
áá  
{
àà 
Console
ââ 
.
ââ 
	WriteLine
ââ !
(
ââ! "
ex
ââ" $
.
ââ$ %
ToString
ââ% -
(
ââ- .
)
ââ. /
)
ââ/ 0
;
ââ0 1
}
ää 
return
åå 
false
åå 
;
åå 
}
çç 	
public
èè 
bool
èè Z
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile
èè `
(
èè` a
long
èèa e"
transmitterProfileID
èèf z
,
èèz {
longèè| Ä
senderProfileIDèèÅ ê
)èèê ë
{
êê 	
try
ëë 
{
íí $
DatabaseModelContainer
ìì &$
databaseModelContainer
ìì' =
=
ìì> ?
new
ìì@ C$
DatabaseModelContainer
ììD Z
(
ììZ [
)
ìì[ \
;
ìì\ ]
FriendRequests
îî 
friendRequests
îî -
=
îî. /$
databaseModelContainer
îî0 F
.
îîF G
FriendRequestsSet
îîG X
.
îîX Y
Where
îîY ^
(
îî^ _
fr
îî_ a
=>
îîb d
fr
îîe g
.
îîg h
Profiles
îîh p
.
îîp q
	IDProfile
îîq z
==
îî{ }
senderProfileIDîî~ ç
)îîç é
.
ïï 
Where
ïï 
(
ïï 
fr
ïï 
=>
ïï  
fr
ïï! #
.
ïï# $
	Profiles1
ïï$ -
.
ïï- .
	IDProfile
ïï. 7
==
ïï8 :"
transmitterProfileID
ïï; O
)
ïïO P
.
ññ 
Where
ññ 
(
ññ 
fr
ññ 
=>
ññ  
fr
ññ! #
.
ññ# $
AceptationStatus
ññ$ 4
==
ññ5 7-
FriendRequestAceptationStatuses
ññ8 W
.
ññW X
Pendient
ññX `
.
ññ` a
ToString
ñña i
(
ññi j
)
ññj k
)
ññk l
.
óó 
Where
óó 
(
óó 
fr
óó 
=>
óó  
fr
óó! #
.
óó# $
SendingStatus
óó$ 1
==
óó2 4*
FriendRequestSendingStatuses
óó5 Q
.
óóQ R
Sent
óóR V
.
óóV W
ToString
óóW _
(
óó_ `
)
óó` a
)
óóa b
.
òò 
FirstOrDefault
òò #
(
òò# $
)
òò$ %
;
òò% &
if
ôô 
(
ôô 
friendRequests
ôô "
!=
ôô# %
null
ôô& *
)
ôô* +
{
öö 
return
õõ 
true
õõ 
;
õõ  
}
úú 
}
ùù 
catch
ûû 
(
ûû 
	Exception
ûû 
ex
ûû 
)
ûû  
{
üü 
Console
†† 
.
†† 
	WriteLine
†† !
(
††! "
ex
††" $
.
††$ %
ToString
††% -
(
††- .
)
††. /
)
††/ 0
;
††0 1
}
°° 
return
££ 
false
££ 
;
££ 
}
§§ 	
public
®® 
void
®® 
AddFriendRequest
®® $
(
®®$ %
FriendRequests
®®% 3
friendRequests
®®4 B
)
®®B C
{
©© 	
try
™™ 
{
´´ $
DatabaseModelContainer
¨¨ &$
databaseModelContainer
¨¨' =
=
¨¨> ?
new
¨¨@ C$
DatabaseModelContainer
¨¨D Z
(
¨¨Z [
)
¨¨[ \
;
¨¨\ ]$
databaseModelContainer
≠≠ &
.
≠≠& '
Entry
≠≠' ,
(
≠≠, -
friendRequests
≠≠- ;
)
≠≠; <
.
≠≠< =
State
≠≠= B
=
≠≠C D
EntityState
≠≠E P
.
≠≠P Q
	Unchanged
≠≠Q Z
;
≠≠Z [$
databaseModelContainer
ÆÆ &
.
ÆÆ& '
FriendRequestsSet
ÆÆ' 8
.
ÆÆ8 9
Add
ÆÆ9 <
(
ÆÆ< =
friendRequests
ÆÆ= K
)
ÆÆK L
;
ÆÆL M$
databaseModelContainer
ØØ &
.
ØØ& '
SaveChanges
ØØ' 2
(
ØØ2 3
)
ØØ3 4
;
ØØ4 54
&ServiceFriendRequestForCallbackMethods
≤≤ 64
&serviceFriendRequestForCallbackMethods
≤≤7 ]
=
≤≤^ _
new
≤≤` c5
&ServiceFriendRequestForCallbackMethods≤≤d ä
(≤≤ä ã
)≤≤ã å
;≤≤å ç4
&serviceFriendRequestForCallbackMethods
≥≥ 6
.
≥≥6 7<
.UpdateFriendRequestsListsToAllConnectedClients
≥≥7 e
(
≥≥e f
)
≥≥f g
;
≥≥g h
}
¥¥ 
catch
µµ 
(
µµ )
DbEntityValidationException
µµ .
ex
µµ/ 1
)
µµ1 2
{
∂∂ 
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
validationErrors
∑∑ -
in
∑∑. 0
ex
∑∑1 3
.
∑∑3 4$
EntityValidationErrors
∑∑4 J
)
∑∑J K
{
∏∏ 
foreach
ππ 
(
ππ 
var
ππ  
validationError
ππ! 0
in
ππ1 3
validationErrors
ππ4 D
.
ππD E
ValidationErrors
ππE U
)
ππU V
{
∫∫ 
Console
ªª 
.
ªª  
	WriteLine
ªª  )
(
ªª) *
$"
ªª* ,
$str
ªª, 6
{
ªª6 7
validationError
ªª7 F
.
ªªF G
PropertyName
ªªG S
}
ªªS T
$str
ªªT \
{
ªª\ ]
validationError
ªª] l
.
ªªl m
ErrorMessage
ªªm y
}
ªªy z
"
ªªz {
)
ªª{ |
;
ªª| }
}
ºº 
}
ΩΩ 
}
ææ 
}
øø 	
public
¡¡ 
void
¡¡ !
AcceptFriendRequest
¡¡ '
(
¡¡' (
FriendRequests
¡¡( 6
friendRequests
¡¡7 E
)
¡¡E F
{
¬¬ 	
try
√√ 
{
ƒƒ $
DatabaseModelContainer
≈≈ &$
databaseModelContainer
≈≈' =
=
≈≈> ?
new
≈≈@ C$
DatabaseModelContainer
≈≈D Z
(
≈≈Z [
)
≈≈[ \
;
≈≈\ ]
FriendRequests
∆∆ $
friendRequestsToModify
∆∆ 5
=
∆∆6 7$
databaseModelContainer
∆∆8 N
.
∆∆N O
FriendRequestsSet
∆∆O `
.
∆∆` a
Find
∆∆a e
(
∆∆e f
friendRequests
∆∆f t
.
∆∆t u
IDFriendRequest∆∆u Ñ
)∆∆Ñ Ö
;∆∆Ö Ü
if
«« 
(
«« $
friendRequestsToModify
«« *
!=
««+ -
null
««. 2
)
««2 3
{
»» $
friendRequestsToModify
…… *
.
……* +
AceptationStatus
……+ ;
=
……< =
Enum
……> B
.
……B C
GetName
……C J
(
……J K
typeof
……K Q
(
……Q R-
FriendRequestAceptationStatuses
……R q
)
……q r
,
……r s.
FriendRequestAceptationStatuses……t ì
.……ì î
Accepted……î ú
)……ú ù
;……ù û$
databaseModelContainer
   *
.
  * +
SaveChanges
  + 6
(
  6 7
)
  7 8
;
  8 91
#ServiceProfileForNonCallbackMethods
ÃÃ 71
#serviceProfileForNonCallbackMethods
ÃÃ8 [
=
ÃÃ\ ]
new
ÃÃ^ a2
#ServiceProfileForNonCallbackMethodsÃÃb Ö
(ÃÃÖ Ü
)ÃÃÜ á
;ÃÃá à1
#serviceProfileForNonCallbackMethods
ÕÕ 7
.
ÕÕ7 8
AddFriendship
ÕÕ8 E
(
ÕÕE F
friendRequests
ÕÕF T
.
ÕÕT U
Profiles
ÕÕU ]
,
ÕÕ] ^
friendRequests
ÕÕ_ m
.
ÕÕm n
	Profiles1
ÕÕn w
)
ÕÕw x
;
ÕÕx y4
&ServiceFriendRequestForCallbackMethods
œœ :4
&serviceFriendRequestForCallbackMethods
œœ; a
=
œœb c
new
œœd g5
&ServiceFriendRequestForCallbackMethodsœœh é
(œœé è
)œœè ê
;œœê ë4
&serviceFriendRequestForCallbackMethods
–– :
.
––: ;<
.UpdateFriendRequestsListsToAllConnectedClients
––; i
(
––i j
)
––j k
;
––k l
}
—— 
}
““ 
catch
”” 
(
”” 
	Exception
”” 
ex
”” 
)
””  
{
‘‘ 
Console
’’ 
.
’’ 
	WriteLine
’’ !
(
’’! "
ex
’’" $
.
’’$ %
ToString
’’% -
(
’’- .
)
’’. /
)
’’/ 0
;
’’0 1
}
÷÷ 
}
◊◊ 	
public
ŸŸ 
void
ŸŸ !
CancelFriendRequest
ŸŸ '
(
ŸŸ' (
FriendRequests
ŸŸ( 6
friendRequests
ŸŸ7 E
)
ŸŸE F
{
⁄⁄ 	
try
€€ 
{
‹‹ $
DatabaseModelContainer
›› &$
databaseModelContainer
››' =
=
››> ?
new
››@ C$
DatabaseModelContainer
››D Z
(
››Z [
)
››[ \
;
››\ ]
FriendRequests
ﬁﬁ $
friendRequestsToModify
ﬁﬁ 5
=
ﬁﬁ6 7$
databaseModelContainer
ﬁﬁ8 N
.
ﬁﬁN O
FriendRequestsSet
ﬁﬁO `
.
ﬁﬁ` a
Find
ﬁﬁa e
(
ﬁﬁe f
friendRequests
ﬁﬁf t
.
ﬁﬁt u
IDFriendRequestﬁﬁu Ñ
)ﬁﬁÑ Ö
;ﬁﬁÖ Ü
if
ﬂﬂ 
(
ﬂﬂ $
friendRequestsToModify
ﬂﬂ *
!=
ﬂﬂ+ -
null
ﬂﬂ. 2
)
ﬂﬂ2 3
{
‡‡ $
friendRequestsToModify
·· *
.
··* +
SendingStatus
··+ 8
=
··9 :
Enum
··; ?
.
··? @
GetName
··@ G
(
··G H
typeof
··H N
(
··N O*
FriendRequestSendingStatuses
··O k
)
··k l
,
··l m+
FriendRequestSendingStatuses··n ä
.··ä ã
Canceled··ã ì
)··ì î
;··î ï$
databaseModelContainer
‚‚ *
.
‚‚* +
SaveChanges
‚‚+ 6
(
‚‚6 7
)
‚‚7 8
;
‚‚8 94
&ServiceFriendRequestForCallbackMethods
ÂÂ :4
&serviceFriendRequestForCallbackMethods
ÂÂ; a
=
ÂÂb c
new
ÂÂd g5
&ServiceFriendRequestForCallbackMethodsÂÂh é
(ÂÂé è
)ÂÂè ê
;ÂÂê ë4
&serviceFriendRequestForCallbackMethods
ÊÊ :
.
ÊÊ: ;<
.UpdateFriendRequestsListsToAllConnectedClients
ÊÊ; i
(
ÊÊi j
)
ÊÊj k
;
ÊÊk l
}
ÁÁ 
}
ËË 
catch
ÈÈ 
(
ÈÈ 
	Exception
ÈÈ 
ex
ÈÈ 
)
ÈÈ  
{
ÍÍ 
Console
ÎÎ 
.
ÎÎ 
	WriteLine
ÎÎ !
(
ÎÎ! "
ex
ÎÎ" $
.
ÎÎ$ %
ToString
ÎÎ% -
(
ÎÎ- .
)
ÎÎ. /
)
ÎÎ/ 0
;
ÎÎ0 1
}
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
void
ÔÔ !
RejectFriendRequest
ÔÔ '
(
ÔÔ' (
FriendRequests
ÔÔ( 6
friendRequests
ÔÔ7 E
)
ÔÔE F
{
 	
try
ÒÒ 
{
ÚÚ $
DatabaseModelContainer
ÛÛ &$
databaseModelContainer
ÛÛ' =
=
ÛÛ> ?
new
ÛÛ@ C$
DatabaseModelContainer
ÛÛD Z
(
ÛÛZ [
)
ÛÛ[ \
;
ÛÛ\ ]
FriendRequests
ÙÙ $
friendRequestsToModify
ÙÙ 5
=
ÙÙ6 7$
databaseModelContainer
ÙÙ8 N
.
ÙÙN O
FriendRequestsSet
ÙÙO `
.
ÙÙ` a
Find
ÙÙa e
(
ÙÙe f
friendRequests
ÙÙf t
.
ÙÙt u
IDFriendRequestÙÙu Ñ
)ÙÙÑ Ö
;ÙÙÖ Ü
if
ıı 
(
ıı $
friendRequestsToModify
ıı *
!=
ıı+ -
null
ıı. 2
)
ıı2 3
{
ˆˆ $
friendRequestsToModify
˜˜ *
.
˜˜* +
AceptationStatus
˜˜+ ;
=
˜˜< =-
FriendRequestAceptationStatuses
˜˜> ]
.
˜˜] ^
Rejected
˜˜^ f
.
˜˜f g
ToString
˜˜g o
(
˜˜o p
)
˜˜p q
;
˜˜q r$
databaseModelContainer
¯¯ *
.
¯¯* +
SaveChanges
¯¯+ 6
(
¯¯6 7
)
¯¯7 8
;
¯¯8 94
&ServiceFriendRequestForCallbackMethods
˙˙ :4
&serviceFriendRequestForCallbackMethods
˙˙; a
=
˙˙b c
new
˙˙d g5
&ServiceFriendRequestForCallbackMethods˙˙h é
(˙˙é è
)˙˙è ê
;˙˙ê ë4
&serviceFriendRequestForCallbackMethods
˚˚ :
.
˚˚: ;<
.UpdateFriendRequestsListsToAllConnectedClients
˚˚; i
(
˚˚i j
)
˚˚j k
;
˚˚k l
}
¸¸ 
}
˝˝ 
catch
˛˛ 
(
˛˛ 
	Exception
˛˛ 
ex
˛˛ 
)
˛˛  
{
ˇˇ 
Console
ÄÄ 
.
ÄÄ 
	WriteLine
ÄÄ !
(
ÄÄ! "
ex
ÄÄ" $
.
ÄÄ$ %
ToString
ÄÄ% -
(
ÄÄ- .
)
ÄÄ. /
)
ÄÄ/ 0
;
ÄÄ0 1
}
ÅÅ 
}
ÇÇ 	
}
ÉÉ 
[
áá 
CallbackBehavior
áá 
(
áá 
ConcurrencyMode
áá %
=
áá& '
ConcurrencyMode
áá( 7
.
áá7 8
Multiple
áá8 @
,
áá@ A'
UseSynchronizationContext
ááB [
=
áá\ ]
false
áá^ c
)
áác d
]
áád e
public
àà 

class
àà 4
&ServiceFriendRequestForCallbackMethods
àà 7
:
àà8 9+
IFriendRequestCallbackMethods
àà: W
{
ââ 
public
ää 
static
ää 

Dictionary
ää  
<
ää  !
string
ää! '
,
ää' ($
IFriendRequestCallback
ää) ?
>
ää? @
connectedProfiles
ääA R
=
ääS T
new
ääU X

Dictionary
ääY c
<
ääc d
string
ääd j
,
ääj k%
IFriendRequestCallbackääl Ç
>ääÇ É
(ääÉ Ñ
)ääÑ Ö
;ääÖ Ü
public
åå 
void
åå 
Connect
åå 
(
åå 
string
åå "
username
åå# +
)
åå+ ,
{
çç 	$
IFriendRequestCallback
éé "
callback
éé# +
=
éé, -
OperationContext
éé. >
.
éé> ?
Current
éé? F
.
ééF G 
GetCallbackChannel
ééG Y
<
ééY Z$
IFriendRequestCallback
ééZ p
>
éép q
(
ééq r
)
éér s
;
éés t
if
êê 
(
êê 
!
êê 
connectedProfiles
êê "
.
êê" #
ContainsKey
êê# .
(
êê. /
username
êê/ 7
)
êê7 8
)
êê8 9
{
ëë 
connectedProfiles
íí !
.
íí! "
Add
íí" %
(
íí% &
username
íí& .
,
íí. /
callback
íí0 8
)
íí8 9
;
íí9 :
}
ìì 
}
îî 	
public
ññ 
void
ññ 

Disconnect
ññ 
(
ññ 
string
ññ %
username
ññ& .
)
ññ. /
{
óó 	
if
òò 
(
òò 
connectedProfiles
òò !
.
òò! "
ContainsKey
òò" -
(
òò- .
username
òò. 6
)
òò6 7
)
òò7 8
{
ôô 
connectedProfiles
öö !
.
öö! "
Remove
öö" (
(
öö( )
username
öö) 1
)
öö1 2
;
öö2 3
}
õõ 
}
úú 	
public
ûû 
void
ûû <
.UpdateFriendRequestsListsToAllConnectedClients
ûû B
(
ûûB C
)
ûûC D
{
üü 	
foreach
†† 
(
†† 
var
†† #
friendRequestCallback
†† .
in
††/ 1
connectedProfiles
††2 C
.
††C D
Values
††D J
)
††J K
{
°° #
friendRequestCallback
¢¢ %
.
¢¢% &(
UpdateFriendsRequestsLists
¢¢& @
(
¢¢@ A
)
¢¢A B
;
¢¢B C
}
££ 
}
§§ 	
}
¶¶ 
}ßß ÕÄ
XC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServicePlayer.cs
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
ÄÄ 
return
ÅÅ 
players
ÅÅ 
;
ÅÅ 
}
ÉÉ 	
public
ÖÖ 
long
ÖÖ 
ModifyPlayer
ÖÖ  
(
ÖÖ  !
Players
ÖÖ! (
modifiedPlayer
ÖÖ) 7
)
ÖÖ7 8
{
ÜÜ 	
long
áá 
generatedID
áá 
=
áá 
$num
áá  
;
áá  !
try
ââ 
{
ää $
DatabaseModelContainer
ãã &$
databaseModelContainer
ãã' =
=
ãã> ?
new
ãã@ C$
DatabaseModelContainer
ããD Z
(
ããZ [
)
ãã[ \
;
ãã\ ]
Players
åå 
playerToModify
åå &
=
åå' ($
databaseModelContainer
åå) ?
.
åå? @

PlayersSet
åå@ J
.
ååJ K
Find
ååK O
(
ååO P
modifiedPlayer
ååP ^
.
åå^ _
IDPlayer
åå_ g
)
ååg h
;
ååh i
if
çç 
(
çç 
playerToModify
çç !
!=
çç" $
null
çç% )
)
çç) *
{
éé 
playerToModify
èè "
.
èè" #
	BirthDate
èè# ,
=
èè- .
modifiedPlayer
èè/ =
.
èè= >
	BirthDate
èè> G
;
èèG H
playerToModify
êê "
.
êê" #
Surnames
êê# +
=
êê, -
modifiedPlayer
êê. <
.
êê< =
Surnames
êê= E
;
êêE F
playerToModify
ëë "
.
ëë" #
Email
ëë# (
=
ëë) *
modifiedPlayer
ëë+ 9
.
ëë9 :
Email
ëë: ?
;
ëë? @
playerToModify
íí "
.
íí" #
Names
íí# (
=
íí) *
modifiedPlayer
íí+ 9
.
íí9 :
Names
íí: ?
;
íí? @
playerToModify
ìì "
.
ìì" #
NickName
ìì# +
=
ìì, -
modifiedPlayer
ìì. <
.
ìì< =
NickName
ìì= E
;
ììE F$
databaseModelContainer
îî *
.
îî* +
SaveChanges
îî+ 6
(
îî6 7
)
îî7 8
;
îî8 9
generatedID
ïï 
=
ïï  !
(
ïï" #
int
ïï# &
)
ïï& '
playerToModify
ïï' 5
.
ïï5 6
IDPlayer
ïï6 >
;
ïï> ?
}
ññ 
}
óó 
catch
òò 
(
òò 
	Exception
òò 
ex
òò 
)
òò  
{
ôô 
Console
öö 
.
öö 
	WriteLine
öö !
(
öö! "
ex
öö" $
.
öö$ %
ToString
öö% -
(
öö- .
)
öö. /
)
öö/ 0
;
öö0 1
}
õõ 
return
ùù 
generatedID
ùù 
;
ùù 
}
ûû 	
public
†† 
void
†† #
ModifyPasswordByEmail
†† )
(
††) *
String
††* 0
originalEmail
††1 >
,
††> ?
String
††@ F
newPassword
††G R
)
††R S
{
°° 	
try
¢¢ 
{
££ $
DatabaseModelContainer
§§ &$
databaseModelContainer
§§' =
=
§§> ?
new
§§@ C$
DatabaseModelContainer
§§D Z
(
§§Z [
)
§§[ \
;
§§\ ]
Players
•• 
playerToModify
•• &
=
••' ($
databaseModelContainer
••) ?
.
••? @

PlayersSet
••@ J
.
••J K
FirstOrDefault
••K Y
(
••Y Z
e
••Z [
=>
••\ ^
e
••_ `
.
••` a
Email
••a f
==
••g i
originalEmail
••j w
)
••w x
;
••x y
if
ßß 
(
ßß 
playerToModify
ßß "
!=
ßß# %
null
ßß& *
)
ßß* +
{
®® 
playerToModify
©© "
.
©©" #
Password
©©# +
=
©©, -
newPassword
©©. 9
;
©©9 :
}
™™ $
databaseModelContainer
¨¨ &
.
¨¨& '
SaveChanges
¨¨' 2
(
¨¨2 3
)
¨¨3 4
;
¨¨4 5
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
	Exception
ÆÆ 
ex
ÆÆ 
)
ÆÆ  
{
ØØ 
Console
∞∞ 
.
∞∞ 
	WriteLine
∞∞ !
(
∞∞! "
ex
∞∞" $
.
∞∞$ %
ToString
∞∞% -
(
∞∞- .
)
∞∞. /
)
∞∞/ 0
;
∞∞0 1
}
±± 
}
≥≥ 	
public
µµ 
bool
µµ '
TheEmailIsAlreadyRegisted
µµ -
(
µµ- .
String
µµ. 4
emailToSearch
µµ5 B
)
µµB C
{
∂∂ 	$
DatabaseModelContainer
∑∑ "$
databaseModelContainer
∑∑# 9
=
∑∑: ;
new
∑∑< ?$
DatabaseModelContainer
∑∑@ V
(
∑∑V W
)
∑∑W X
;
∑∑X Y
List
∏∏ 
<
∏∏ 
String
∏∏ 
>
∏∏ 
emails
∏∏ 
=
∏∏  !$
databaseModelContainer
∏∏" 8
.
∏∏8 9

PlayersSet
∏∏9 C
.
∏∏C D
Select
∏∏D J
(
∏∏J K
row
∏∏K N
=>
∏∏O Q
row
∏∏R U
.
∏∏U V
Email
∏∏V [
)
∏∏[ \
.
∏∏\ ]
ToList
∏∏] c
(
∏∏c d
)
∏∏d e
;
∏∏e f
foreach
ππ 
(
ππ 
String
ππ 
email
ππ !
in
ππ" $
emails
ππ% +
)
ππ+ ,
{
∫∫ 
if
ªª 
(
ªª 
email
ªª 
==
ªª 
emailToSearch
ªª *
)
ªª* +
{
ºº 
return
ΩΩ 
true
ΩΩ 
;
ΩΩ  
}
ææ 
}
øø 
return
¿¿ 
false
¿¿ 
;
¿¿ 
}
¡¡ 	
public
√√ 
bool
√√ *
TheNicknameIsAlreadyRegisted
√√ 0
(
√√0 1
String
√√1 7
nicknameToSearch
√√8 H
)
√√H I
{
ƒƒ 	$
DatabaseModelContainer
≈≈ "$
databaseModelContainer
≈≈# 9
=
≈≈: ;
new
≈≈< ?$
DatabaseModelContainer
≈≈@ V
(
≈≈V W
)
≈≈W X
;
≈≈X Y
List
∆∆ 
<
∆∆ 
String
∆∆ 
>
∆∆ 
	nicknames
∆∆ "
=
∆∆# $$
databaseModelContainer
∆∆% ;
.
∆∆; <

PlayersSet
∆∆< F
.
∆∆F G
Select
∆∆G M
(
∆∆M N
row
∆∆N Q
=>
∆∆R T
row
∆∆U X
.
∆∆X Y
NickName
∆∆Y a
)
∆∆a b
.
∆∆b c
ToList
∆∆c i
(
∆∆i j
)
∆∆j k
;
∆∆k l
foreach
«« 
(
«« 
String
«« 
nickname
«« $
in
««% '
	nicknames
««( 1
)
««1 2
{
»» 
if
…… 
(
…… 
nickname
…… 
==
…… 
nicknameToSearch
……  0
)
……0 1
{
   
return
ÀÀ 
true
ÀÀ 
;
ÀÀ  
}
ÃÃ 
}
ÕÕ 
return
ŒŒ 
false
ŒŒ 
;
ŒŒ 
}
œœ 	
}
–– 
}—— î¬
YC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceProfile.cs
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
ÅÅ 
{
ÇÇ $
DatabaseModelContainer
ÉÉ &$
databaseModelContainer
ÉÉ' =
=
ÉÉ> ?
new
ÉÉ@ C$
DatabaseModelContainer
ÉÉD Z
(
ÉÉZ [
)
ÉÉ[ \
;
ÉÉ\ ]
profiles
ÑÑ 
=
ÑÑ $
databaseModelContainer
ÑÑ 1
.
ÑÑ1 2
ProfilesSet
ÑÑ2 =
.
ÑÑ= >
Where
ÑÑ> C
(
ÑÑC D
e
ÑÑD E
=>
ÑÑF H
e
ÑÑI J
.
ÑÑJ K
	IDProfile
ÑÑK T
==
ÑÑU W
	profileID
ÑÑX a
)
ÑÑa b
.
ÑÑb c
FirstOrDefault
ÑÑc q
(
ÑÑq r
)
ÑÑr s
;
ÑÑs t
if
ÜÜ 
(
ÜÜ 
profiles
ÜÜ 
!=
ÜÜ 
null
ÜÜ  $
)
ÜÜ$ %
{
áá 
player
àà 
.
àà 
IDPlayer
àà #
=
àà$ %
profiles
àà& .
.
àà. /
Players
àà/ 6
.
àà6 7
IDPlayer
àà7 ?
;
àà? @
player
ââ 
.
ââ 
Names
ââ  
=
ââ! "
profiles
ââ# +
.
ââ+ ,
Players
ââ, 3
.
ââ3 4
Names
ââ4 9
;
ââ9 :
player
ää 
.
ää 
Surnames
ää #
=
ää$ %
profiles
ää& .
.
ää. /
Players
ää/ 6
.
ää6 7
Surnames
ää7 ?
;
ää? @
player
ãã 
.
ãã 
Email
ãã  
=
ãã! "
profiles
ãã# +
.
ãã+ ,
Players
ãã, 3
.
ãã3 4
Email
ãã4 9
;
ãã9 :
player
åå 
.
åå 
NickName
åå #
=
åå$ %
profiles
åå& .
.
åå. /
Players
åå/ 6
.
åå6 7
NickName
åå7 ?
;
åå? @
player
çç 
.
çç 
	BirthDate
çç $
=
çç% &
profiles
çç' /
.
çç/ 0
Players
çç0 7
.
çç7 8
	BirthDate
çç8 A
;
ççA B
player
éé 
.
éé 
Password
éé #
=
éé$ %
profiles
éé& .
.
éé. /
Players
éé/ 6
.
éé6 7
Password
éé7 ?
;
éé? @
profile
êê 
.
êê 
	IDProfile
êê %
=
êê& '
profiles
êê( 0
.
êê0 1
	IDProfile
êê1 :
;
êê: ;
profile
ëë 
.
ëë 
Coins
ëë !
=
ëë" #
(
ëë$ %
long
ëë% )
)
ëë) *
profiles
ëë* 2
.
ëë2 3
Coins
ëë3 8
;
ëë8 9
profile
íí 
.
íí 
LoginStatus
íí '
=
íí( )
profiles
íí* 2
.
íí2 3
LoginStatus
íí3 >
;
íí> ?
profile
îî 
.
îî 
Player
îî "
=
îî# $
player
îî% +
;
îî+ ,
}
ïï 
else
ññ 
{
óó 
profile
òò 
=
òò 
null
òò "
;
òò" #
}
ôô 
}
õõ 
catch
úú 
(
úú 
	Exception
úú 
ex
úú 
)
úú  
{
ùù 
Console
ûû 
.
ûû 
	WriteLine
ûû !
(
ûû! "
ex
ûû" $
.
ûû$ %
ToString
ûû% -
(
ûû- .
)
ûû. /
)
ûû/ 0
;
ûû0 1
}
üü 
return
°° 
profile
°° 
;
°° 
}
¢¢ 	
public
§§ 
Profile
§§ "
GetProfileByPlayerID
§§ +
(
§§+ ,
long
§§, 0
playerID
§§1 9
)
§§9 :
{
•• 	
Profile
¶¶ 
profile
¶¶ 
=
¶¶ 
new
¶¶ !
Profile
¶¶" )
(
¶¶) *
)
¶¶* +
;
¶¶+ ,
Player
ßß 
player
ßß 
=
ßß 
new
ßß 
Player
ßß  &
(
ßß& '
)
ßß' (
;
ßß( )
Profiles
®® 
profiles
®® 
=
®® 
new
®®  #
Profiles
®®$ ,
(
®®, -
)
®®- .
;
®®. /
try
™™ 
{
´´ $
DatabaseModelContainer
¨¨ &$
databaseModelContainer
¨¨' =
=
¨¨> ?
new
¨¨@ C$
DatabaseModelContainer
¨¨D Z
(
¨¨Z [
)
¨¨[ \
;
¨¨\ ]
profiles
≠≠ 
=
≠≠ $
databaseModelContainer
≠≠ 1
.
≠≠1 2
ProfilesSet
≠≠2 =
.
≠≠= >
Where
≠≠> C
(
≠≠C D
e
≠≠D E
=>
≠≠F H
e
≠≠I J
.
≠≠J K
Players
≠≠K R
.
≠≠R S
IDPlayer
≠≠S [
==
≠≠\ ^
playerID
≠≠_ g
)
≠≠g h
.
≠≠h i
FirstOrDefault
≠≠i w
(
≠≠w x
)
≠≠x y
;
≠≠y z
if
ØØ 
(
ØØ 
profiles
ØØ 
!=
ØØ 
null
ØØ  $
)
ØØ$ %
{
∞∞ 
player
±± 
.
±± 
IDPlayer
±± #
=
±±$ %
profiles
±±& .
.
±±. /
Players
±±/ 6
.
±±6 7
IDPlayer
±±7 ?
;
±±? @
player
≤≤ 
.
≤≤ 
Names
≤≤  
=
≤≤! "
profiles
≤≤# +
.
≤≤+ ,
Players
≤≤, 3
.
≤≤3 4
Names
≤≤4 9
;
≤≤9 :
player
≥≥ 
.
≥≥ 
Surnames
≥≥ #
=
≥≥$ %
profiles
≥≥& .
.
≥≥. /
Players
≥≥/ 6
.
≥≥6 7
Surnames
≥≥7 ?
;
≥≥? @
player
¥¥ 
.
¥¥ 
Email
¥¥  
=
¥¥! "
profiles
¥¥# +
.
¥¥+ ,
Players
¥¥, 3
.
¥¥3 4
Email
¥¥4 9
;
¥¥9 :
player
µµ 
.
µµ 
NickName
µµ #
=
µµ$ %
profiles
µµ& .
.
µµ. /
Players
µµ/ 6
.
µµ6 7
NickName
µµ7 ?
;
µµ? @
player
∂∂ 
.
∂∂ 
	BirthDate
∂∂ $
=
∂∂% &
profiles
∂∂' /
.
∂∂/ 0
Players
∂∂0 7
.
∂∂7 8
	BirthDate
∂∂8 A
;
∂∂A B
player
∑∑ 
.
∑∑ 
Password
∑∑ #
=
∑∑$ %
profiles
∑∑& .
.
∑∑. /
Players
∑∑/ 6
.
∑∑6 7
Password
∑∑7 ?
;
∑∑? @
profile
ππ 
.
ππ 
	IDProfile
ππ %
=
ππ& '
profiles
ππ( 0
.
ππ0 1
	IDProfile
ππ1 :
;
ππ: ;
profile
∫∫ 
.
∫∫ 
Coins
∫∫ !
=
∫∫" #
(
∫∫$ %
long
∫∫% )
)
∫∫) *
profiles
∫∫* 2
.
∫∫2 3
Coins
∫∫3 8
;
∫∫8 9
profile
ªª 
.
ªª 
LoginStatus
ªª '
=
ªª( )
profiles
ªª* 2
.
ªª2 3
LoginStatus
ªª3 >
;
ªª> ?
profile
ΩΩ 
.
ΩΩ 
Player
ΩΩ "
=
ΩΩ# $
player
ΩΩ% +
;
ΩΩ+ ,
}
ææ 
else
øø 
{
¿¿ 
profile
¡¡ 
=
¡¡ 
null
¡¡ "
;
¡¡" #
}
¬¬ 
}
ƒƒ 
catch
≈≈ 
(
≈≈ 
	Exception
≈≈ 
ex
≈≈ 
)
≈≈  
{
∆∆ 
Console
«« 
.
«« 
	WriteLine
«« !
(
««! "
ex
««" $
.
««$ %
ToString
««% -
(
««- .
)
««. /
)
««/ 0
;
««0 1
}
»» 
return
   
profile
   
;
   
}
ÀÀ 	
public
ÕÕ 
Profile
ÕÕ (
GetProfileByPlayerNickname
ÕÕ 1
(
ÕÕ1 2
string
ÕÕ2 8
nickname
ÕÕ9 A
)
ÕÕA B
{
ŒŒ 	
Profile
œœ 
profile
œœ 
=
œœ 
new
œœ !
Profile
œœ" )
(
œœ) *
)
œœ* +
;
œœ+ ,
Player
–– 
player
–– 
=
–– 
new
–– 
Player
––  &
(
––& '
)
––' (
;
––( )
Profiles
—— 
profiles
—— 
=
—— 
new
——  #
Profiles
——$ ,
(
——, -
)
——- .
;
——. /
try
”” 
{
‘‘ $
DatabaseModelContainer
’’ &$
databaseModelContainer
’’' =
=
’’> ?
new
’’@ C$
DatabaseModelContainer
’’D Z
(
’’Z [
)
’’[ \
;
’’\ ]
profiles
÷÷ 
=
÷÷ $
databaseModelContainer
÷÷ 1
.
÷÷1 2
ProfilesSet
÷÷2 =
.
÷÷= >
Where
÷÷> C
(
÷÷C D
e
÷÷D E
=>
÷÷F H
e
÷÷I J
.
÷÷J K
Players
÷÷K R
.
÷÷R S
NickName
÷÷S [
==
÷÷\ ^
nickname
÷÷_ g
)
÷÷g h
.
÷÷h i
FirstOrDefault
÷÷i w
(
÷÷w x
)
÷÷x y
;
÷÷y z
if
ÿÿ 
(
ÿÿ 
profiles
ÿÿ 
!=
ÿÿ 
null
ÿÿ  $
)
ÿÿ$ %
{
ŸŸ 
player
⁄⁄ 
.
⁄⁄ 
IDPlayer
⁄⁄ #
=
⁄⁄$ %
profiles
⁄⁄& .
.
⁄⁄. /
Players
⁄⁄/ 6
.
⁄⁄6 7
IDPlayer
⁄⁄7 ?
;
⁄⁄? @
player
€€ 
.
€€ 
Names
€€  
=
€€! "
profiles
€€# +
.
€€+ ,
Players
€€, 3
.
€€3 4
Names
€€4 9
;
€€9 :
player
‹‹ 
.
‹‹ 
Surnames
‹‹ #
=
‹‹$ %
profiles
‹‹& .
.
‹‹. /
Players
‹‹/ 6
.
‹‹6 7
Surnames
‹‹7 ?
;
‹‹? @
player
›› 
.
›› 
Email
››  
=
››! "
profiles
››# +
.
››+ ,
Players
››, 3
.
››3 4
Email
››4 9
;
››9 :
player
ﬁﬁ 
.
ﬁﬁ 
NickName
ﬁﬁ #
=
ﬁﬁ$ %
profiles
ﬁﬁ& .
.
ﬁﬁ. /
Players
ﬁﬁ/ 6
.
ﬁﬁ6 7
NickName
ﬁﬁ7 ?
;
ﬁﬁ? @
player
ﬂﬂ 
.
ﬂﬂ 
	BirthDate
ﬂﬂ $
=
ﬂﬂ% &
profiles
ﬂﬂ' /
.
ﬂﬂ/ 0
Players
ﬂﬂ0 7
.
ﬂﬂ7 8
	BirthDate
ﬂﬂ8 A
;
ﬂﬂA B
player
‡‡ 
.
‡‡ 
Password
‡‡ #
=
‡‡$ %
profiles
‡‡& .
.
‡‡. /
Players
‡‡/ 6
.
‡‡6 7
Password
‡‡7 ?
;
‡‡? @
profile
‚‚ 
.
‚‚ 
	IDProfile
‚‚ %
=
‚‚& '
profiles
‚‚( 0
.
‚‚0 1
	IDProfile
‚‚1 :
;
‚‚: ;
profile
„„ 
.
„„ 
Coins
„„ !
=
„„" #
(
„„$ %
long
„„% )
)
„„) *
profiles
„„* 2
.
„„2 3
Coins
„„3 8
;
„„8 9
profile
‰‰ 
.
‰‰ 
LoginStatus
‰‰ '
=
‰‰( )
profiles
‰‰* 2
.
‰‰2 3
LoginStatus
‰‰3 >
;
‰‰> ?
profile
ÊÊ 
.
ÊÊ 
Player
ÊÊ "
=
ÊÊ# $
player
ÊÊ% +
;
ÊÊ+ ,
}
ËË 
else
ÈÈ 
{
ÍÍ 
profile
ÎÎ 
=
ÎÎ 
null
ÎÎ "
;
ÎÎ" #
}
ÏÏ 
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
	Exception
ÔÔ 
ex
ÔÔ 
)
ÔÔ  
{
 
Console
ÒÒ 
.
ÒÒ 
	WriteLine
ÒÒ !
(
ÒÒ! "
ex
ÒÒ" $
.
ÒÒ$ %
ToString
ÒÒ% -
(
ÒÒ- .
)
ÒÒ. /
)
ÒÒ/ 0
;
ÒÒ0 1
}
ÚÚ 
return
ÙÙ 
profile
ÙÙ 
;
ÙÙ 
}
ıı 	
public
˜˜ 
bool
˜˜ 
ModifyImageName
˜˜ #
(
˜˜# $
string
˜˜$ *
fileName
˜˜+ 3
,
˜˜3 4
string
˜˜5 ;
newName
˜˜< C
)
˜˜C D
{
¯¯ 	
try
˘˘ 
{
˙˙ 
string
˚˚ 
serverFolderPath
˚˚ '
=
˚˚( )
$str
˚˚* u
;
˚˚u v
var
¸¸ 
matchingFiles
¸¸ !
=
¸¸" #
	Directory
¸¸$ -
.
¸¸- .
GetFiles
¸¸. 6
(
¸¸6 7
serverFolderPath
¸¸7 G
,
¸¸G H
$"
¸¸I K
{
¸¸K L
fileName
¸¸L T
}
¸¸T U
$str
¸¸U W
"
¸¸W X
)
¸¸X Y
.
˝˝. /
ToList
˝˝/ 5
(
˝˝5 6
)
˝˝6 7
;
˝˝7 8
if
ˇˇ 
(
ˇˇ 
matchingFiles
ˇˇ !
.
ˇˇ! "
Count
ˇˇ" '
>
ˇˇ( )
$num
ˇˇ* +
)
ˇˇ+ ,
{
ÄÄ 
string
ÅÅ 
	imagePath
ÅÅ $
=
ÅÅ% &
matchingFiles
ÅÅ' 4
.
ÅÅ4 5
First
ÅÅ5 :
(
ÅÅ: ;
)
ÅÅ; <
;
ÅÅ< =
string
ÇÇ 
newFileName
ÇÇ &
=
ÇÇ' (
$"
ÇÇ) +
{
ÇÇ+ ,
newName
ÇÇ, 3
}
ÇÇ3 4
{
ÇÇ4 5
Path
ÇÇ5 9
.
ÇÇ9 :
GetExtension
ÇÇ: F
(
ÇÇF G
	imagePath
ÇÇG P
)
ÇÇP Q
}
ÇÇQ R
"
ÇÇR S
;
ÇÇS T
string
ÉÉ 
newPath
ÉÉ "
=
ÉÉ# $
Path
ÉÉ% )
.
ÉÉ) *
Combine
ÉÉ* 1
(
ÉÉ1 2
Path
ÉÉ2 6
.
ÉÉ6 7
GetDirectoryName
ÉÉ7 G
(
ÉÉG H
	imagePath
ÉÉH Q
)
ÉÉQ R
,
ÉÉR S
newFileName
ÉÉT _
)
ÉÉ_ `
;
ÉÉ` a
File
ÑÑ 
.
ÑÑ 
Move
ÑÑ 
(
ÑÑ 
	imagePath
ÑÑ '
,
ÑÑ' (
newPath
ÑÑ) 0
)
ÑÑ0 1
;
ÑÑ1 2
}
ÖÖ 
}
áá 
catch
àà 
(
àà 
	Exception
àà 
)
àà 
{
ââ 
return
ää 
false
ää 
;
ää 
}
ãã 
return
çç 
true
çç 
;
çç 
}
éé 	
public
êê 
bool
êê  
TheProfileIsLogged
êê &
(
êê& '
long
êê' +
	profileID
êê, 5
)
êê5 6
{
ëë 	
Profiles
íí 
profiles
íí 
=
íí 
new
íí  #
Profiles
íí$ ,
(
íí, -
)
íí- .
;
íí. /
try
îî 
{
ïï $
DatabaseModelContainer
ññ &$
databaseModelContainer
ññ' =
=
ññ> ?
new
ññ@ C$
DatabaseModelContainer
ññD Z
(
ññZ [
)
ññ[ \
;
ññ\ ]
profiles
óó 
=
óó $
databaseModelContainer
óó 1
.
óó1 2
ProfilesSet
óó2 =
.
óó= >
Where
óó> C
(
óóC D
e
óóD E
=>
óóF H
e
óóI J
.
óóJ K
	IDProfile
óóK T
==
óóU W
	profileID
óóX a
)
óóa b
.
óób c
FirstOrDefault
óóc q
(
óóq r
)
óór s
;
óós t
if
ôô 
(
ôô 
profiles
ôô 
.
ôô 
LoginStatus
ôô (
==
ôô) +
Enum
ôô, 0
.
ôô0 1
GetName
ôô1 8
(
ôô8 9
typeof
ôô9 ?
(
ôô? @"
ProfileLoginStatuses
ôô@ T
)
ôôT U
,
ôôU V"
ProfileLoginStatuses
ôôW k
.
ôôk l
Logged
ôôl r
)
ôôr s
)
ôôs t
{
öö 
return
õõ 
true
õõ 
;
õõ  
}
úú 
}
üü 
catch
†† 
(
†† 
	Exception
†† 
ex
†† 
)
††  
{
°° 
Console
¢¢ 
.
¢¢ 
	WriteLine
¢¢ !
(
¢¢! "
ex
¢¢" $
.
¢¢$ %
ToString
¢¢% -
(
¢¢- .
)
¢¢. /
)
¢¢/ 0
;
¢¢0 1
}
££ 
return
•• 
false
•• 
;
•• 
}
¶¶ 	
public
®® 
bool
®® 
UploadImage
®® 
(
®®  
string
®®  &
fileName
®®' /
,
®®/ 0
byte
®®1 5
[
®®5 6
]
®®6 7
	imageData
®®8 A
)
®®A B
{
©© 	
try
™™ 
{
´´ 
string
¨¨ 
serverFolderPath
¨¨ '
=
¨¨( )
$str
¨¨* u
;
¨¨u v
string
ÆÆ 
searchString
ÆÆ #
=
ÆÆ$ %
$str
ÆÆ& )
;
ÆÆ) *
int
∞∞ 
index
∞∞ 
=
∞∞ 
fileName
∞∞ $
.
∞∞$ %
IndexOf
∞∞% ,
(
∞∞, -
searchString
∞∞- 9
)
∞∞9 :
;
∞∞: ;
string
±± .
 fileNameWithoutExtensionToDelete
±± 7
=
±±8 9
$str
±±: <
;
±±< =
if
≥≥ 
(
≥≥ 
index
≥≥ 
!=
≥≥ 
-
≥≥ 
$num
≥≥ 
)
≥≥  
{
¥¥ .
 fileNameWithoutExtensionToDelete
µµ 4
=
µµ5 6
fileName
µµ7 ?
.
µµ? @
	Substring
µµ@ I
(
µµI J
$num
µµJ K
,
µµK L
index
µµM R
)
µµR S
;
µµS T
}
∂∂ 
DirectoryInfo
ππ 
directoryInfo
ππ +
=
ππ, -
new
ππ. 1
DirectoryInfo
ππ2 ?
(
ππ? @
serverFolderPath
ππ@ P
)
ππP Q
;
ππQ R
if
ªª 
(
ªª 
directoryInfo
ªª !
.
ªª! "
Exists
ªª" (
)
ªª( )
{
ºº 
FileInfo
ΩΩ 
[
ΩΩ 
]
ΩΩ 
files
ΩΩ $
=
ΩΩ% &
directoryInfo
ΩΩ' 4
.
ΩΩ4 5
GetFiles
ΩΩ5 =
(
ΩΩ= >
)
ΩΩ> ?
;
ΩΩ? @
foreach
øø 
(
øø 
FileInfo
øø %
file
øø& *
in
øø+ -
files
øø. 3
)
øø3 4
{
¿¿ 
string
¡¡ &
fileNameWithoutExtension
¡¡ 7
=
¡¡8 9
Path
¡¡: >
.
¡¡> ?)
GetFileNameWithoutExtension
¡¡? Z
(
¡¡Z [
file
¡¡[ _
.
¡¡_ `
Name
¡¡` d
)
¡¡d e
;
¡¡e f
if
√√ 
(
√√ 
string
√√ "
.
√√" #
Equals
√√# )
(
√√) *&
fileNameWithoutExtension
√√* B
,
√√B C.
 fileNameWithoutExtensionToDelete
√√D d
,
√√d e
StringComparison
√√f v
.
√√v w 
OrdinalIgnoreCase√√w à
)√√à â
)√√â ä
{
ƒƒ 
file
≈≈  
.
≈≈  !
Delete
≈≈! '
(
≈≈' (
)
≈≈( )
;
≈≈) *
}
∆∆ 
}
«« 
}
»» 
string
ÀÀ 
filePath
ÀÀ 
=
ÀÀ  !
Path
ÀÀ" &
.
ÀÀ& '
Combine
ÀÀ' .
(
ÀÀ. /
serverFolderPath
ÀÀ/ ?
,
ÀÀ? @
fileName
ÀÀA I
)
ÀÀI J
;
ÀÀJ K
File
ÃÃ 
.
ÃÃ 
WriteAllBytes
ÃÃ "
(
ÃÃ" #
filePath
ÃÃ# +
,
ÃÃ+ ,
	imageData
ÃÃ- 6
)
ÃÃ6 7
;
ÃÃ7 8
}
ŒŒ 
catch
œœ 
(
œœ 
	Exception
œœ 
)
œœ 
{
–– 
return
—— 
false
—— 
;
—— 
}
““ 
return
‘‘ 
true
‘‘ 
;
‘‘ 
}
’’ 	
public
ÿÿ 
void
ÿÿ 
AddFriendship
ÿÿ !
(
ÿÿ! "
Profiles
ÿÿ" *
profiles
ÿÿ+ 3
,
ÿÿ3 4
Profiles
ÿÿ5 =
	profiles1
ÿÿ> G
)
ÿÿG H
{
ŸŸ 	
try
⁄⁄ 
{
€€ $
DatabaseModelContainer
‹‹ &$
databaseModelContainer
‹‹' =
=
‹‹> ?
new
‹‹@ C$
DatabaseModelContainer
‹‹D Z
(
‹‹Z [
)
‹‹[ \
;
‹‹\ ]
string
ﬁﬁ 
sqlQuery
ﬁﬁ 
=
ﬁﬁ  !
$strﬁﬁ" å
;ﬁﬁå ç
var
‡‡ 

parameter1
‡‡ 
=
‡‡  
new
‡‡! $
SqlParameter
‡‡% 1
(
‡‡1 2
$str
‡‡2 =
,
‡‡= >
profiles
‡‡? G
.
‡‡G H
	IDProfile
‡‡H Q
)
‡‡Q R
;
‡‡R S
var
·· 

parameter2
·· 
=
··  
new
··! $
SqlParameter
··% 1
(
··1 2
$str
··2 >
,
··> ?
	profiles1
··@ I
.
··I J
	IDProfile
··J S
)
··S T
;
··T U$
databaseModelContainer
„„ &
.
„„& '
Database
„„' /
.
„„/ 0
ExecuteSqlCommand
„„0 A
(
„„A B
sqlQuery
„„B J
,
„„J K

parameter1
„„L V
,
„„V W

parameter2
„„X b
)
„„b c
;
„„c d$
databaseModelContainer
‰‰ &
.
‰‰& '
SaveChanges
‰‰' 2
(
‰‰2 3
)
‰‰3 4
;
‰‰4 5

parameter1
ÊÊ 
=
ÊÊ 
new
ÊÊ  
SqlParameter
ÊÊ! -
(
ÊÊ- .
$str
ÊÊ. 9
,
ÊÊ9 :
	profiles1
ÊÊ; D
.
ÊÊD E
	IDProfile
ÊÊE N
)
ÊÊN O
;
ÊÊO P

parameter2
ÁÁ 
=
ÁÁ 
new
ÁÁ  
SqlParameter
ÁÁ! -
(
ÁÁ- .
$str
ÁÁ. :
,
ÁÁ: ;
profiles
ÁÁ< D
.
ÁÁD E
	IDProfile
ÁÁE N
)
ÁÁN O
;
ÁÁO P$
databaseModelContainer
ÈÈ &
.
ÈÈ& '
Database
ÈÈ' /
.
ÈÈ/ 0
ExecuteSqlCommand
ÈÈ0 A
(
ÈÈA B
sqlQuery
ÈÈB J
,
ÈÈJ K

parameter1
ÈÈL V
,
ÈÈV W

parameter2
ÈÈX b
)
ÈÈb c
;
ÈÈc d$
databaseModelContainer
ÍÍ &
.
ÍÍ& '
SaveChanges
ÍÍ' 2
(
ÍÍ2 3
)
ÍÍ3 4
;
ÍÍ4 5.
 ServiceProfileForCallbackMethods
ÏÏ 0.
 serviceProfileForCallbackMethods
ÏÏ1 Q
=
ÏÏR S
new
ÏÏT W.
 ServiceProfileForCallbackMethods
ÏÏX x
(
ÏÏx y
)
ÏÏy z
;
ÏÏz {.
 serviceProfileForCallbackMethods
ÌÌ 0
.
ÌÌ0 15
'UpdateFriendsListsToAllConnectedClients
ÌÌ1 X
(
ÌÌX Y
)
ÌÌY Z
;
ÌÌZ [
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
	Exception
ÔÔ 
ex
ÔÔ 
)
ÔÔ  
{
 
Console
ÒÒ 
.
ÒÒ 
	WriteLine
ÒÒ !
(
ÒÒ! "
ex
ÒÒ" $
.
ÒÒ$ %
ToString
ÒÒ% -
(
ÒÒ- .
)
ÒÒ. /
)
ÒÒ/ 0
;
ÒÒ0 1
}
ÚÚ 
}
ÛÛ 	
public
ıı 
void
ıı 
CancelFriendship
ıı $
(
ıı$ %
Profiles
ıı% -
profiles
ıı. 6
,
ıı6 7
Profiles
ıı8 @
	profiles1
ııA J
)
ııJ K
{
ˆˆ 	
try
˜˜ 
{
¯¯ $
DatabaseModelContainer
˘˘ &$
databaseModelContainer
˘˘' =
=
˘˘> ?
new
˘˘@ C$
DatabaseModelContainer
˘˘D Z
(
˘˘Z [
)
˘˘[ \
;
˘˘\ ]
string
˚˚ 
sqlQuery
˚˚ 
=
˚˚  !
$str˚˚" ç
;˚˚ç é
var
˝˝ 

parameter1
˝˝ 
=
˝˝  
new
˝˝! $
SqlParameter
˝˝% 1
(
˝˝1 2
$str
˝˝2 =
,
˝˝= >
profiles
˝˝? G
.
˝˝G H
	IDProfile
˝˝H Q
)
˝˝Q R
;
˝˝R S
var
˛˛ 

parameter2
˛˛ 
=
˛˛  
new
˛˛! $
SqlParameter
˛˛% 1
(
˛˛1 2
$str
˛˛2 >
,
˛˛> ?
	profiles1
˛˛@ I
.
˛˛I J
	IDProfile
˛˛J S
)
˛˛S T
;
˛˛T U$
databaseModelContainer
ÄÄ &
.
ÄÄ& '
Database
ÄÄ' /
.
ÄÄ/ 0
ExecuteSqlCommand
ÄÄ0 A
(
ÄÄA B
sqlQuery
ÄÄB J
,
ÄÄJ K

parameter1
ÄÄL V
,
ÄÄV W

parameter2
ÄÄX b
)
ÄÄb c
;
ÄÄc d$
databaseModelContainer
ÅÅ &
.
ÅÅ& '
SaveChanges
ÅÅ' 2
(
ÅÅ2 3
)
ÅÅ3 4
;
ÅÅ4 5

parameter1
ÉÉ 
=
ÉÉ 
new
ÉÉ  
SqlParameter
ÉÉ! -
(
ÉÉ- .
$str
ÉÉ. 9
,
ÉÉ9 :
	profiles1
ÉÉ; D
.
ÉÉD E
	IDProfile
ÉÉE N
)
ÉÉN O
;
ÉÉO P

parameter2
ÑÑ 
=
ÑÑ 
new
ÑÑ  
SqlParameter
ÑÑ! -
(
ÑÑ- .
$str
ÑÑ. :
,
ÑÑ: ;
profiles
ÑÑ< D
.
ÑÑD E
	IDProfile
ÑÑE N
)
ÑÑN O
;
ÑÑO P$
databaseModelContainer
ÜÜ &
.
ÜÜ& '
Database
ÜÜ' /
.
ÜÜ/ 0
ExecuteSqlCommand
ÜÜ0 A
(
ÜÜA B
sqlQuery
ÜÜB J
,
ÜÜJ K

parameter1
ÜÜL V
,
ÜÜV W

parameter2
ÜÜX b
)
ÜÜb c
;
ÜÜc d$
databaseModelContainer
áá &
.
áá& '
SaveChanges
áá' 2
(
áá2 3
)
áá3 4
;
áá4 5.
 ServiceProfileForCallbackMethods
ää 0.
 serviceProfileForCallbackMethods
ää1 Q
=
ääR S
new
ääT W.
 ServiceProfileForCallbackMethods
ääX x
(
ääx y
)
ääy z
;
ääz {.
 serviceProfileForCallbackMethods
ãã 0
.
ãã0 15
'UpdateFriendsListsToAllConnectedClients
ãã1 X
(
ããX Y
)
ããY Z
;
ããZ [
}
åå 
catch
çç 
(
çç 
	Exception
çç 
ex
çç 
)
çç  
{
éé 
Console
èè 
.
èè 
	WriteLine
èè !
(
èè! "
ex
èè" $
.
èè$ %
ToString
èè% -
(
èè- .
)
èè. /
)
èè/ 0
;
èè0 1
}
êê 
}
ëë 	
}
íí 
public
ññ 

partial
ññ 
class
ññ .
 ServiceProfileForCallbackMethods
ññ 9
:
ññ: ;%
IProfileCallbackMethods
ññ< S
{
óó 
public
òò 
static
òò 
List
òò 
<
òò i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
òò v
>
òòv w 
connectedProfilesòòx â
=òòä ã
newòòå è
Listòòê î
<òòî ïk
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethodsòòï 
>òò Ò
(òòÒ Ú
)òòÚ Û
;òòÛ Ù
public
úú 
void
úú 
Connect
úú 
(
úú 
string
úú "
username
úú# +
)
úú+ ,
{
ùù 	
IProfileCallback
ûû 
callback
ûû %
=
ûû& '
OperationContext
ûû( 8
.
ûû8 9
Current
ûû9 @
.
ûû@ A 
GetCallbackChannel
ûûA S
<
ûûS T
IProfileCallback
ûûT d
>
ûûd e
(
ûûe f
)
ûûf g
;
ûûg hi
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
†† g
result
††h n
=
††o p 
connectedProfiles††q Ç
.††Ç É
FirstOrDefault††É ë
(††ë í
item††í ñ
=>††ó ô
item††ö û
.††û ü
Key††ü ¢
==††£ •
username††¶ Æ
)††Æ Ø
;††Ø ∞
if
¢¢ 
(
¢¢ 
result
¢¢ 
==
¢¢ 
null
¢¢ 
)
¢¢ 
{
££ i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
§§ k

dictionary
§§l v
=
§§w x
new
§§y |j
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods§§} ÿ
{
•• 
Key
¶¶ 
=
¶¶ 
username
¶¶ "
,
¶¶" #
Value
ßß 
=
ßß 
callback
ßß $
}
®® 
;
®® 
connectedProfiles
©© !
.
©©! "
Add
©©" %
(
©©% &

dictionary
©©& 0
)
©©0 1
;
©©1 25
'UpdateFriendsListsToAllConnectedClients
´´ 7
(
´´7 8
)
´´8 9
;
´´9 :
}
¨¨ 
}
≠≠ 	
public
ØØ 
void
ØØ 

Disconnect
ØØ 
(
ØØ 
string
ØØ %
username
ØØ& .
)
ØØ. /
{
∞∞ 	i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
±± g
result
±±h n
=
±±o p 
connectedProfiles±±q Ç
.±±Ç É
FirstOrDefault±±É ë
(±±ë í
item±±í ñ
=>±±ó ô
item±±ö û
.±±û ü
Key±±ü ¢
==±±£ •
username±±¶ Æ
)±±Æ Ø
;±±Ø ∞
if
≥≥ 
(
≥≥ 
result
≥≥ 
!=
≥≥ 
null
≥≥ 
)
≥≥ 
{
¥¥ 
connectedProfiles
µµ !
=
µµ" #
connectedProfiles
µµ$ 5
.
µµ5 6
Where
µµ6 ;
(
µµ; <
item
µµ< @
=>
µµA C
item
µµD H
.
µµH I
Key
µµI L
!=
µµM O
username
µµP X
)
µµX Y
.
µµY Z
ToList
µµZ `
(
µµ` a
)
µµa b
;
µµb c
new
∂∂ +
ServiceChatForCallbackMethods
∂∂ 1
(
∂∂1 2
)
∂∂2 3
.
∂∂3 4
	LeaveChat
∂∂4 =
(
∂∂= >
username
∂∂> F
)
∂∂F G
;
∂∂G H
new
∑∑ 4
&ServiceFriendRequestForCallbackMethods
∑∑ :
(
∑∑: ;
)
∑∑; <
.
∑∑< =

Disconnect
∑∑= G
(
∑∑G H
username
∑∑H P
)
∑∑P Q
;
∑∑Q R
new
∏∏ ,
ServiceLobbyForCallbackMethods
∏∏ 2
(
∏∏2 3
)
∏∏3 4
.
∏∏4 5

Disconnect
∏∏5 ?
(
∏∏? @
username
∏∏@ H
)
∏∏H I
;
∏∏I J
new
ππ ;
-ServiceMultiplayerCrosswordForCallbackMethods
ππ A
(
ππA B
)
ππB C
.
ππC D

Disconnect
ππD N
(
ππN O
username
ππO W
)
ππW X
;
ππX Y5
'UpdateFriendsListsToAllConnectedClients
ªª 7
(
ªª7 8
)
ªª8 9
;
ªª9 :
}
ºº 
}
ΩΩ 	
public
øø 
void
øø $
InviteFriendToTheLobby
øø *
(
øø* +
string
øø+ 1
friendNickname
øø2 @
)
øø@ A
{
¿¿ 	i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
¡¡ g
result
¡¡h n
=
¡¡o p 
connectedProfiles¡¡q Ç
.¡¡Ç É
FirstOrDefault¡¡É ë
(¡¡ë í
item¡¡í ñ
=>¡¡ó ô
item¡¡ö û
.¡¡û ü
Key¡¡ü ¢
==¡¡£ •
friendNickname¡¡¶ ¥
)¡¡¥ µ
;¡¡µ ∂
if
√√ 
(
√√ 
result
√√ 
!=
√√ 
null
√√ 
)
√√ 
{
ƒƒ 
foreach
≈≈ 
(
≈≈ 
var
≈≈ 
friend
≈≈ #
in
≈≈$ &
connectedProfiles
≈≈' 8
)
≈≈8 9
{
∆∆ 
if
«« 
(
«« 
friend
«« 
.
«« 
Key
«« "
==
««# %
friendNickname
««& 4
)
««4 5
{
»» 
friend
…… 
.
…… 
Value
…… $
.
……$ %&
OpenPaneForEnterTheLobby
……% =
(
……= >
)
……> ?
;
……? @
break
   
;
   
}
ÀÀ 
}
ÃÃ 
}
ÕÕ 
}
ŒŒ 	
public
–– 
void
–– 5
'UpdateFriendsListsToAllConnectedClients
–– ;
(
––; <
)
––< =
{
—— 	
foreach
““ 
(
““ 
var
““ 
friend
““ 
in
““  "
connectedProfiles
““# 4
)
““4 5
{
”” 
friend
‘‘ 
.
‘‘ 
Value
‘‘ 
.
‘‘  
UpdateFriendsLists
‘‘ /
(
‘‘/ 0
)
‘‘0 1
;
‘‘1 2
friend
’’ 
.
’’ 
Value
’’ 
.
’’ )
UpdateFriendsForInviteLists
’’ 8
(
’’8 9
)
’’9 :
;
’’: ;
}
÷÷ 
}
◊◊ 	
}
ﬁﬁ 
}‡‡ 