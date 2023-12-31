�
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
} �
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
]$$) *�
XC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IChat.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IChatCallback/ <
)< =
)= >
]> ?
public 

	interface 
IChat 
{		 
[

 	
OperationContract

	 
(

 
IsOneWay

 #
=

$ %
true

& *
)

* +
]

+ ,
void 
JoinChat 
( 
string 
nickname %
)% &
;& '
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	LeaveChat 
( 
string 
nickname &
)& '
;' (
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SendMessage 
( 
string 
senderNickname  .
,. /
string0 6
message7 >
)> ?
;? @
[ 	
OperationContract	 
] 
List 
<  
KeyValueDataContract !
>! "0
$GetConnectedProfilesAndTheirMessages# G
(G H
)H I
;I J
} 
[ 
ServiceContract 
] 
public 

	interface 
IChatCallback "
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

UpdateChat 
( 
) 
; 
} 
} �#
cC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IMultiplayerGame.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[		 
ServiceContract		 
(		 
CallbackContract		 %
=		& '
typeof		( .
(		. /$
IMultiplayerGameCallback		/ G
)		G H
)		H I
]		I J
public

 

	interface

 
IMultiplayerGame

 %
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
	BanPlayer 
( 
string 
username &
)& '
;' (
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Connect 
( 
string 
username $
)$ %
;% &
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

Disconnect 
( 
string 
username '
)' (
;( )
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SetAdmin 
( 
string 
username %
)% &
;& '
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
UnbanPlayer 
( 
string 
username  (
)( )
;) *
[ 	
OperationContract	 
] 
List 
< 
String 
> 
GetBannedProfiles &
(& '
)' (
;( )
[   	
OperationContract  	 
]   
List!! 
<!! 
String!! 
>!!  
GetConnectedProfiles!! )
(!!) *
)!!* +
;!!+ ,
[## 	
OperationContract##	 
]## 
bool$$ 
IsAdmin$$ 
($$ 
string$$ 
nickname$$ $
)$$$ %
;$$% &
[&& 	
OperationContract&&	 
]&& 
bool'' 
IsBanned'' 
('' 
string'' 
nickname'' %
)''% &
;''& '
[)) 	
OperationContract))	 
])) 
bool** 
IsConnected** 
(** 
string** 
nickname**  (
)**( )
;**) *
[,, 	
OperationContract,,	 
],, 
void-- "
SetThePlayersAreInGame-- #
(--# $
)--$ %
;--% &
[// 	
OperationContract//	 
]// 
void00 %
SetThePlayersAreNotInGame00 &
(00& '
)00' (
;00( )
[22 	
OperationContract22	 
]22 
bool33 
ThePlayersAreInGame33  
(33  !
)33! "
;33" #
}44 
[77 
ServiceContract77 
]77 
public88 

	interface88 $
IMultiplayerGameCallback88 -
{99 
[:: 	
OperationContract::	 
(:: 
IsOneWay:: #
=::$ %
true::& *
)::* +
]::+ ,
void;; *
ExpelPlayerFromMultiplayerGame;; +
(;;+ ,
);;, -
;;;- .
[== 	
OperationContract==	 
(== 
IsOneWay== #
===$ %
true==& *
)==* +
]==+ ,
void>> %
UpdateBannedProfilesLists>> &
(>>& '
)>>' (
;>>( )
[@@ 	
OperationContract@@	 
(@@ 
IsOneWay@@ #
=@@$ %
true@@& *
)@@* +
]@@+ ,
voidAA (
UpdateConnectedProfilesListsAA )
(AA) *
)AA* +
;AA+ ,
[CC 	
OperationContractCC	 
(CC 
IsOneWayCC #
=CC$ %
trueCC& *
)CC* +
]CC+ ,
voidDD 8
,UpdateConnectedProfilesForInviteToLobbyListsDD 9
(DD9 :
)DD: ;
;DD; <
}EE 
}GG �%
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
	interface		 
IFriendRequest		 #
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
[.. 
ServiceContract.. 
(.. 
CallbackContract.. %
=..& '
typeof..( .
(... /"
IFriendRequestCallback../ E
)..E F
)..F G
]..G H
public// 

	interface// ,
 IFriendRequestForCallbackMethods// 5
{00 
[11 	
OperationContract11	 
(11 
IsOneWay11 #
=11$ %
true11& *
)11* +
]11+ ,
void22 
Connect22 
(22 
string22 
username22 $
)22$ %
;22% &
[44 	
OperationContract44	 
(44 
IsOneWay44 #
=44$ %
true44& *
)44* +
]44+ ,
void55 

Disconnect55 
(55 
string55 
username55 '
)55' (
;55( )
[77 	
OperationContract77	 
(77 
IsOneWay77 #
=77$ %
true77& *
)77* +
]77+ ,
void88 :
.UpdateFriendRequestsListsToAllConnectedClients88 ;
(88; <
)88< =
;88= >
}99 
[;; 
ServiceContract;; 
];; 
public<< 

	interface<< "
IFriendRequestCallback<< +
{== 
[>> 	
OperationContract>>	 
(>> 
IsOneWay>> #
=>>$ %
true>>& *
)>>* +
]>>+ ,
void?? &
UpdateFriendsRequestsLists?? '
(??' (
)??( )
;??) *
}@@ 
}BB �
hC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IMultiplayerCrossword.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /)
IMultiplayerCrosswordCallback/ L
)L M
)M N
]N O
public 

	interface !
IMultiplayerCrossword *
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void		 
addPointsToProfile		 
(		  
string		  &
userNickname		' 3
,		3 4
int		5 8
points		9 ?
)		? @
;		@ A
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
Connect 
( 
string 
username $
)$ %
;% &
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 

Disconnect 
( 
string 
username '
)' (
;( )
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
SetAdmin 
( 
string 
username %
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
void 
StartCountdown 
( 
int 
totalSeconds  ,
), -
;- .
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void <
0UpdateCrosswordsToProfilesToAllConnectedProfiles =
(= >
)> ?
;? @
} 
[ 
ServiceContract 
] 
public 

	interface )
IMultiplayerCrosswordCallback 2
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
UpdateCountdown 
( 
int  
seconds! (
)( )
;) *
[!! 	
OperationContract!!	 
(!! 
IsOneWay!! #
=!!$ %
true!!& *
)!!* +
]!!+ ,
void"" 
UpdateCrossword"" 
("" 
)"" 
;"" 
[$$ 	
OperationContract$$	 
($$ 
IsOneWay$$ #
=$$$ %
true$$& *
)$$* +
]$$+ ,
void%%  
UpdateProfilesPoints%% !
(%%! "
)%%" #
;%%# $
}&& 
}'' �
ZC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IPlayer.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
] 
public 

	interface 
IPlayer 
{ 
[ 	
OperationContract	 
( 
Name  
=! "
$str# .
). /
]/ 0
long 
	AddPlayer 
( 
Players 
player %
)% &
;& '
[ 	
OperationContract	 
( 
Name  
=! "
$str# /
)/ 0
]0 1
List 
< 
Players 
> 

GetPlayers  
(  !
)! "
;" #
[ 	
OperationContract	 
( 
Name  
=! "
$str# 2
)2 3
]3 4
Player 
GetPlayerByID 
( 
long !
ID" $
)$ %
;% &
[ 	
OperationContract	 
( 
Name  
=! "
$str# 8
)8 9
]9 :
List 
< 
Players 
> 
GetSpecifiedPlayers )
() *
string* 0
name1 5
)5 6
;6 7
[ 	
OperationContract	 
( 
Name 
=  !
$str" 7
)7 8
]8 9
Player 
GetPlayerByNickname "
(" #
String# )
nickname* 2
)2 3
;3 4
[!! 	
OperationContract!!	 
(!! 
Name!! 
=!!  !
$str!!" 0
)!!0 1
]!!1 2
long"" 
ModifyPlayer"" 
("" 
Players"" !
modifiedPlayer""" 0
)""0 1
;""1 2
[$$ 	
OperationContract$$	 
($$ 
Name$$ 
=$$  !
$str$$" 9
)$$9 :
]$$: ;
void%% !
ModifyPasswordByEmail%% "
(%%" #
String%%# )
originalEmail%%* 7
,%%7 8
String%%9 ?
newPassword%%@ K
)%%K L
;%%L M
['' 	
OperationContract''	 
('' 
Name'' 
=''  !
$str''" =
)''= >
]''> ?
bool(( %
TheEmailIsAlreadyRegisted(( &
(((& '
String((' -
emailToSearch((. ;
)((; <
;((< =
[** 	
OperationContract**	 
(** 
Name** 
=**  !
$str**" @
)**@ A
]**A B
bool++ (
TheNicknameIsAlreadyRegisted++ )
(++) *
String++* 0
nicknameToSearch++1 A
)++A B
;++B C
},, 
public.. 

	interface.. 
IPlayerCallback.. $
{// 
[00 	
OperationContract00	 
(00 
IsOneWay00 $
=00% &
true00' +
,00+ ,
Name00- 1
=002 3
$str004 >
)00> ?
]00? @
void11 
Response11 
(11 
String11 
response11 %
)11% &
;11& '
}22 
}33 �*
[C:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IProfile.cs
	namespace 	
ServicesTCP
 
. 
ServiceContracts &
{ 
[ 
ServiceContract 
] 
public 

	interface 
IProfile 
{ 
[ 	
OperationContract	 
] 
long 

AddProfile 
( 
Profiles  
profiles! )
)) *
;* +
[ 	
OperationContract	 
] 
void 
ChangeLoginStatus 
(  
ProfileLoginStatuses 3
profileLoginStatus4 F
,F G
longH L
	profileIDM V
)V W
;W X
[ 	
OperationContract	 
] 
List 
< 
Profile 
> 

GetFriends  
(  !
long! %
	profileID& /
)/ 0
;0 1
[ 	
OperationContract	 
] 
byte 
[ 
] 
GetImage 
( 
string 
fileName '
)' (
;( )
[ 	
OperationContract	 
] 
Profile 
GetProfileByID 
( 
long #
	profileID$ -
)- .
;. /
[!! 	
OperationContract!!	 
]!! 
Profile""  
GetProfileByPlayerID"" $
(""$ %
long""% )
playerID""* 2
)""2 3
;""3 4
[$$ 	
OperationContract$$	 
]$$ 
Profile%% &
GetProfileByPlayerNickname%% *
(%%* +
string%%+ 1
nickname%%2 :
)%%: ;
;%%; <
['' 	
OperationContract''	 
]'' 
bool(( 
ModifyImageName(( 
((( 
string(( #
fileName(($ ,
,((, -
string((. 4
newName((5 <
)((< =
;((= >
[** 	
OperationContract**	 
]** 
bool++ 
TheProfileIsLogged++ 
(++  
long++  $
	profileID++% .
)++. /
;++/ 0
[-- 	
OperationContract--	 
]-- 
bool.. 
UploadImage.. 
(.. 
string.. 
fileName..  (
,..( )
byte..* .
[... /
]../ 0
	imageData..1 :
)..: ;
;..; <
[00 	
OperationContract00	 
]00 
void11 
AddFriendship11 
(11 
Profiles11 #
profiles11$ ,
,11, -
Profiles11. 6
	profiles1117 @
)11@ A
;11A B
[33 	
OperationContract33	 
]33 
void44 
CancelFriendship44 
(44 
Profiles44 &
profiles44' /
,44/ 0
Profiles441 9
	profiles144: C
)44C D
;44D E
}55 
[88 
ServiceContract88 
(88 
CallbackContract88 %
=88& '
typeof88( .
(88. /
IProfileCallback88/ ?
)88? @
)88@ A
]88A B
public99 

	interface99 &
IProfileForCallbackMethods99 /
{:: 
[;; 	
OperationContract;;	 
(;; 
IsOneWay;; #
=;;$ %
true;;& *
);;* +
];;+ ,
void<< 
Connect<< 
(<< 
string<< 
username<< $
)<<$ %
;<<% &
[>> 	
OperationContract>>	 
(>> 
IsOneWay>> #
=>>$ %
true>>& *
)>>* +
]>>+ ,
void?? 

Disconnect?? 
(?? 
string?? 
username?? '
)??' (
;??( )
[AA 	
OperationContractAA	 
(AA 
IsOneWayAA #
=AA$ %
trueAA& *
)AA* +
]AA+ ,
voidBB 3
'UpdateFriendsListsToAllConnectedClientsBB 4
(BB4 5
)BB5 6
;BB6 7
[DD 	
OperationContractDD	 
(DD 
IsOneWayDD #
=DD$ %
trueDD& *
)DD* +
]DD+ ,
voidEE "
InviteFriendToTheLobbyEE #
(EE# $
StringEE$ *
friendNicknameEE+ 9
)EE9 :
;EE: ;
}FF 
publicHH 

	interfaceHH 
IProfileCallbackHH %
{II 
[JJ 	
OperationContractJJ	 
(JJ 
IsOneWayJJ #
=JJ$ %
trueJJ& *
)JJ* +
]JJ+ ,
voidKK 
UpdateFriendsListsKK 
(KK  
)KK  !
;KK! "
[MM 	
OperationContractMM	 
(MM 
IsOneWayMM #
=MM$ %
trueMM& *
)MM* +
]MM+ ,
voidNN '
UpdateFriendsForInviteListsNN (
(NN( )
)NN) *
;NN* +
[PP 	
OperationContractPP	 
(PP 
IsOneWayPP #
=PP$ %
truePP& *
)PP* +
]PP+ ,
voidQQ $
OpenPaneForEnterTheLobbyQQ %
(QQ% &
)QQ& '
;QQ' (
}RR 
}SS �.
VC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceChat.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class 
ServiceChat 
: 
IChat $
{ 
public 
static 

Dictionary  
<  !
string! '
,' (
IChatCallback) 6
>6 7
connectedProfiles8 I
=J K
newL O

DictionaryP Z
<Z [
string[ a
,a b
IChatCallbackc p
>p q
(q r
)r s
;s t
public 
static 
List 
<  
KeyValueDataContract /
>/ 0-
!connectedProfilesAndTheirMessages1 R
=S T
newU X
ListY ]
<] ^ 
KeyValueDataContract^ r
>r s
(s t
)t u
;u v
public 
void 
JoinChat 
( 
string #
nickname$ ,
), -
{ 	
IChatCallback 
callback "
=# $
OperationContext% 5
.5 6
Current6 =
.= >
GetCallbackChannel> P
<P Q
IChatCallbackQ ^
>^ _
(_ `
)` a
;a b
if 
( 
! 
connectedProfiles "
." #
ContainsKey# .
(. /
nickname/ 7
)7 8
)8 9
{ 
connectedProfiles !
.! "
Add" %
(% &
nickname& .
,. /
callback0 8
)8 9
;9 : 
KeyValueDataContract $

dictionary% /
=0 1
new2 5 
KeyValueDataContract6 J
{ 
Key 
= 
$str '
,' (
Value   
=   
$"   
{   
nickname   '
}  ' (
$str  ( ?
"  ? @
}!! 
;!! -
!connectedProfilesAndTheirMessages"" 1
.""1 2
Add""2 5
(""5 6

dictionary""6 @
)""@ A
;""A B+
UpdateChatToAllConectedProfiles$$ /
($$/ 0
)$$0 1
;$$1 2
}%% 
}&& 	
public'' 
void'' 
	LeaveChat'' 
('' 
string'' $
nickname''% -
)''- .
{(( 	
if** 
(** 
connectedProfiles** !
.**! "
ContainsKey**" -
(**- .
nickname**. 6
)**6 7
)**7 8
{++ 
connectedProfiles,, !
.,,! "
Remove,," (
(,,( )
nickname,,) 1
),,1 2
;,,2 3 
KeyValueDataContract.. $

dictionary..% /
=..0 1
new..2 5 
KeyValueDataContract..6 J
{// 
Key00 
=00 
$str00 '
,00' (
Value11 
=11 
$"11 
{11 
nickname11 '
}11' (
$str11( 6
"116 7
}22 
;22 -
!connectedProfilesAndTheirMessages33 1
.331 2
Add332 5
(335 6

dictionary336 @
)33@ A
;33A B+
UpdateChatToAllConectedProfiles55 /
(55/ 0
)550 1
;551 2
if77 
(77 
!77 
connectedProfiles77 &
.77& '
Any77' *
(77* +
)77+ ,
)77, -
{88 -
!connectedProfilesAndTheirMessages99 5
.995 6
Clear996 ;
(99; <
)99< =
;99= >
}:: 
};; 
}<< 	
public>> 
void>> 
SendMessage>> 
(>>  
string>>  &
senderNickname>>' 5
,>>5 6
string>>7 =
message>>> E
)>>E F
{?? 	 
KeyValueDataContract@@  

dictionary@@! +
=@@, -
new@@. 1 
KeyValueDataContract@@2 F
{AA 
KeyBB 
=BB 
senderNicknameBB $
,BB$ %
ValueCC 
=CC 
messageCC 
}DD 
;DD -
!connectedProfilesAndTheirMessagesEE -
.EE- .
AddEE. 1
(EE1 2

dictionaryEE2 <
)EE< =
;EE= >+
UpdateChatToAllConectedProfilesGG +
(GG+ ,
)GG, -
;GG- .
}HH 	
publicKK 
ListKK 
<KK  
KeyValueDataContractKK (
>KK( )0
$GetConnectedProfilesAndTheirMessagesKK* N
(KKN O
)KKO P
{LL 	
ListMM 
<MM  
KeyValueDataContractMM %
>MM% &
resultMM' -
=MM. /-
!connectedProfilesAndTheirMessagesMM0 Q
.MMQ R
SelectMMR X
(MMX Y
kvMMY [
=>MM\ ^
newNN  
KeyValueDataContractNN $
{NN% &
KeyNN' *
=NN+ ,
kvNN- /
.NN/ 0
KeyNN0 3
,NN3 4
ValueNN5 :
=NN; <
kvNN= ?
.NN? @
ValueNN@ E
}NNF G
)NNG H
.NNH I
ToListNNI O
(NNO P
)NNP Q
;NNQ R
returnPP 
resultPP 
;PP 
}QQ 	
privateUU 
voidUU +
UpdateChatToAllConectedProfilesUU 4
(UU4 5
)UU5 6
{VV 	
foreachWW 
(WW 
varWW 
chatCallbackWW %
inWW& (
connectedProfilesWW) :
.WW: ;
ValuesWW; A
)WWA B
{XX 
chatCallbackYY 
.YY 

UpdateChatYY '
(YY' (
)YY( )
;YY) *
}ZZ 
}[[ 	
}\\ 
}]] �/
fC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceMultiplayerCrossword.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public		 

class		 '
ServiceMultiplayerCrossword		 ,
:		- .!
IMultiplayerCrossword		/ D
{

 
public 
static 
String 
admin "
;" #
public 
static 

Dictionary  
<  !
string! '
,' ()
IMultiplayerCrosswordCallback) F
>F G
connectedProfilesH Y
=Z [
new\ _

Dictionary` j
<j k
stringk q
,q r*
IMultiplayerCrosswordCallback	s �
>
� �
(
� �
)
� �
;
� �
public 
static 

Dictionary  
<  !
string! '
,' (
int) ,
>, - 
profilesAndItsPoints. B
=C D
newE H

DictionaryI S
<S T
stringT Z
,Z [
int\ _
>_ `
(` a
)a b
;b c
public 
static 
bool 
thePlayersAreInGame .
=/ 0
false1 6
;6 7
public 
void 
addPointsToProfile &
(& '
string' -
userNickname. :
,: ;
int< ?
points@ F
)F G
{ 	
if 
(  
profilesAndItsPoints $
.$ %
ContainsKey% 0
(0 1
userNickname1 =
)= >
)> ?
{  
profilesAndItsPoints $
[$ %
userNickname% 1
]1 2
+=3 5
points6 <
;< =<
0UpdateProfilesPointsListsForAllConnectedProfiles @
(@ A
)A B
;B C
} 
} 	
public 
void 
Connect 
( 
string "
username# +
)+ ,
{ 	)
IMultiplayerCrosswordCallback )
callback* 2
=3 4
OperationContext5 E
.E F
CurrentF M
.M N
GetCallbackChannelN `
<` a)
IMultiplayerCrosswordCallbacka ~
>~ 
(	 �
)
� �
;
� �
if 
( 
! 
connectedProfiles "
." #
ContainsKey# .
(. /
username/ 7
)7 8
)8 9
{ 
connectedProfiles   !
.  ! "
Add  " %
(  % &
username  & .
,  . /
callback  0 8
)  8 9
;  9 : 
profilesAndItsPoints!! $
.!!$ %
Add!!% (
(!!( )
username!!) 1
,!!1 2
$num!!3 4
)!!4 5
;!!5 6
}"" 
}## 	
public%% 
void%% 

Disconnect%% 
(%% 
string%% %
username%%& .
)%%. /
{&& 	
if'' 
('' 
connectedProfiles'' !
.''! "
ContainsKey''" -
(''- .
username''. 6
)''6 7
)''7 8
{(( 
connectedProfiles)) !
.))! "
Remove))" (
())( )
username))) 1
)))1 2
;))2 3 
profilesAndItsPoints** $
.**$ %
Remove**% +
(**+ ,
username**, 4
)**4 5
;**5 6
}++ 
},, 	
public.. 
void.. 
SetAdmin.. 
(.. 
string.. #
username..$ ,
).., -
{// 	
admin00 
=00 
username00 
;00 
}11 	
public44 
void44 
StartCountdown44 "
(44" #
int44# &
totalSeconds44' 3
)443 4
{55 	
for66 
(66 
int66 
i66 
=66 
totalSeconds66 %
;66% &
i66' (
>=66) +
$num66, -
;66- .
i66/ 0
--660 2
)662 3
{77 2
&UpdateCountdownForAllConnectedProfiles88 6
(886 7
i887 8
)888 9
;889 :
Thread99 
.99 
Sleep99 
(99 
$num99 !
)99! "
;99" #
}:: 
};; 	
public== 
void== <
0UpdateCrosswordsToProfilesToAllConnectedProfiles== D
(==D E
)==E F
{>> 	
foreach?? 
(?? 
var?? 
profile??  
in??! #
connectedProfiles??$ 5
.??5 6
Values??6 <
)??< =
{@@ 
profileAA 
.AA 
UpdateCrosswordAA '
(AA' (
)AA( )
;AA) *
}BB 
}CC 	
privateII 
voidII 2
&UpdateCountdownForAllConnectedProfilesII ;
(II; <
intII< ?
secondsII@ G
)IIG H
{JJ 	
foreachKK 
(KK 
varKK 
profileKK  
inKK! #
connectedProfilesKK$ 5
.KK5 6
ValuesKK6 <
)KK< =
{LL 
profileMM 
.MM 
UpdateCountdownMM '
(MM' (
secondsMM( /
)MM/ 0
;MM0 1
}NN 
}OO 	
privateQQ 
voidQQ <
0UpdateProfilesPointsListsForAllConnectedProfilesQQ E
(QQE F
)QQF G
{RR 	
foreachSS 
(SS 
varSS 
profileSS  
inSS! #
connectedProfilesSS$ 5
.SS5 6
ValuesSS6 <
)SS< =
{TT 
profileUU 
.UU  
UpdateProfilesPointsUU ,
(UU, -
)UU- .
;UU. /
}VV 
}WW 	
}XX 
}YY �W
aC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceMultiplayerGame.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public

 

class

 "
ServiceMultiplayerGame

 '
:

( )
IMultiplayerGame

* :
{ 
public 
static 
String 
admin "
;" #
public 
static 
List 
< 
string !
>! "
bannedProfiles# 1
=2 3
new4 7
List8 <
<< =
string= C
>C D
(D E
)E F
;F G
public 
static 

Dictionary  
<  !
string! '
,' ($
IMultiplayerGameCallback) A
>A B
connectedProfilesC T
=U V
newW Z

Dictionary[ e
<e f
stringf l
,l m%
IMultiplayerGameCallback	n �
>
� �
(
� �
)
� �
;
� �
public 
static 
bool 
thePlayersAreInGame .
=/ 0
false1 6
;6 7
public 
void 
	BanPlayer 
( 
string $
username% -
)- .
{ 	
if 
( 
connectedProfiles !
.! "
ContainsKey" -
(- .
username. 6
)6 7
)7 8
{ 
if 
( 
! 
bannedProfiles #
.# $
Contains$ ,
(, -
username- 5
)5 6
)6 7
{ 
connectedProfiles %
[% &
username& .
]. /
./ 0*
ExpelPlayerFromMultiplayerGame0 N
(N O
)O P
;P Q
bannedProfiles "
." #
Add# &
(& '
username' /
)/ 0
;0 1
connectedProfiles %
.% &
Remove& ,
(, -
username- 5
)5 6
;6 7:
.UpdateBannedProfilesListsToAllConnectedClients B
(B C
)C D
;D E=
1UpdateConnectedProfilesListsToAllConnectedClients E
(E F
)F G
;G HM
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients U
(U V
)V W
;W X
} 
} 
}   	
public"" 
void"" 
Connect"" 
("" 
string"" "
username""# +
)""+ ,
{## 	$
IMultiplayerGameCallback$$ $
callback$$% -
=$$. /
OperationContext$$0 @
.$$@ A
Current$$A H
.$$H I
GetCallbackChannel$$I [
<$$[ \$
IMultiplayerGameCallback$$\ t
>$$t u
($$u v
)$$v w
;$$w x
if&& 
(&& 
!&& 
connectedProfiles&& "
.&&" #
ContainsKey&&# .
(&&. /
username&&/ 7
)&&7 8
)&&8 9
{'' 
if(( 
((( 
!(( 
connectedProfiles(( &
.((& '
Any((' *
(((* +
)((+ ,
)((, -
{)) 
admin** 
=** 
username** $
;**$ %
}++ 
connectedProfiles.. !
...! "
Add.." %
(..% &
username..& .
,... /
callback..0 8
)..8 9
;..9 :=
1UpdateConnectedProfilesListsToAllConnectedClients// A
(//A B
)//B C
;//C DM
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClients00 Q
(00Q R
)00R S
;00S T
}11 
}22 	
public44 
void44 

Disconnect44 
(44 
string44 %
username44& .
)44. /
{55 	
if66 
(66 
connectedProfiles66 !
.66! "
ContainsKey66" -
(66- .
username66. 6
)666 7
)667 8
{77 
connectedProfiles88 !
.88! "
Remove88" (
(88( )
username88) 1
)881 2
;882 3
if:: 
(:: 
connectedProfiles:: %
.::% &
Any::& )
(::) *
)::* +
)::+ ,
{;; 
admin<< 
=<< 
connectedProfiles<< -
.<<- .
Keys<<. 2
.<<2 3
First<<3 8
(<<8 9
)<<9 :
;<<: ;
}== 
else>> 
{?? 
bannedProfiles@@ "
.@@" #
Clear@@# (
(@@( )
)@@) *
;@@* +
}AA =
1UpdateConnectedProfilesListsToAllConnectedClientsCC A
(CCA B
)CCB C
;CCC DM
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClientsDD Q
(DDQ R
)DDR S
;DDS T
}EE 
}FF 	
publicHH 
voidHH 
SetAdminHH 
(HH 
stringHH #
usernameHH$ ,
)HH, -
{II 	
adminJJ 
=JJ 
usernameJJ 
;JJ =
1UpdateConnectedProfilesListsToAllConnectedClientsKK =
(KK= >
)KK> ?
;KK? @
}LL 	
publicNN 
voidNN 
UnbanPlayerNN 
(NN  
stringNN  &
usernameNN' /
)NN/ 0
{OO 	
ifPP 
(PP 
bannedProfilesPP 
.PP 
ContainsPP '
(PP' (
usernamePP( 0
)PP0 1
)PP1 2
{QQ 
bannedProfilesRR 
.RR 
RemoveRR %
(RR% &
usernameRR& .
)RR. /
;RR/ 0:
.UpdateBannedProfilesListsToAllConnectedClientsSS >
(SS> ?
)SS? @
;SS@ A=
1UpdateConnectedProfilesListsToAllConnectedClientsTT A
(TTA B
)TTB C
;TTC D
}UU 
}VV 	
privateXX 
voidXX :
.UpdateBannedProfilesListsToAllConnectedClientsXX C
(XXC D
)XXD E
{YY 	
foreachZZ 
(ZZ 
varZZ #
multiplayerGameCallbackZZ 0
inZZ1 3
connectedProfilesZZ4 E
.ZZE F
ValuesZZF L
)ZZL M
{[[ #
multiplayerGameCallback\\ '
.\\' (%
UpdateBannedProfilesLists\\( A
(\\A B
)\\B C
;\\C D
}]] 
}^^ 	
private`` 
void`` =
1UpdateConnectedProfilesListsToAllConnectedClients`` F
(``F G
)``G H
{aa 	
foreachbb 
(bb 
varbb #
multiplayerGameCallbackbb 0
inbb1 3
connectedProfilesbb4 E
.bbE F
ValuesbbF L
)bbL M
{cc #
multiplayerGameCallbackdd '
.dd' ((
UpdateConnectedProfilesListsdd( D
(ddD E
)ddE F
;ddF G
}ee 
}ff 	
privatehh 
voidhh M
AUpdateConnectedProfilesForInviteToLobbyListsToAllConnectedClientshh V
(hhV W
)hhW X
{ii 	
foreachjj 
(jj 
varjj #
multiplayerGameCallbackjj 0
injj1 3
connectedProfilesjj4 E
.jjE F
ValuesjjF L
)jjL M
{kk #
multiplayerGameCallbackll '
.ll' (8
,UpdateConnectedProfilesForInviteToLobbyListsll( T
(llT U
)llU V
;llV W
}mm 
}nn 	
publicrr 
Listrr 
<rr 
Stringrr 
>rr 
GetBannedProfilesrr -
(rr- .
)rr. /
{ss 	
returntt 
bannedProfilestt "
;tt" #
}uu 	
publicww 
Listww 
<ww 
Stringww 
>ww  
GetConnectedProfilesww 0
(ww0 1
)ww1 2
{xx 	
Listyy 
<yy 
Stringyy 
>yy !
connectedProfilesListyy .
=yy/ 0
newyy1 4
Listyy5 9
<yy9 :
stringyy: @
>yy@ A
(yyA B
)yyB C
;yyC D
foreachzz 
(zz 
varzz 
connectedProfilezz )
inzz* ,
connectedProfileszz- >
.zz> ?
Keyszz? C
)zzC D
{{{ !
connectedProfilesList|| %
.||% &
Add||& )
(||) *
connectedProfile||* :
)||: ;
;||; <
}}} 
return !
connectedProfilesList (
;( )
}
�� 	
public
�� 
bool
�� 
IsAdmin
�� 
(
�� 
string
�� "
nickname
��# +
)
��+ ,
{
�� 	
if
�� 
(
�� 
admin
�� 
!=
�� 
null
�� 
&&
��  
nickname
��! )
==
��* ,
admin
��- 2
)
��2 3
{
�� 
return
�� 
true
�� 
;
�� 
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
�� 
IsBanned
�� 
(
�� 
string
�� #
nickname
��$ ,
)
��, -
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
nickname
��( 0
)
��0 1
)
��1 2
{
�� 
return
�� 
true
�� 
;
�� 
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
�� 
IsConnected
�� 
(
��  
string
��  &
nickname
��' /
)
��/ 0
{
�� 	
if
�� 
(
�� 
connectedProfiles
�� !
.
��! "
ContainsKey
��" -
(
��- .
nickname
��. 6
)
��6 7
)
��7 8
{
�� 
return
�� 
true
�� 
;
�� 
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
void
�� $
SetThePlayersAreInGame
�� *
(
��* +
)
��+ ,
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
�� 	
public
�� 
void
�� '
SetThePlayersAreNotInGame
�� -
(
��- .
)
��. /
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
�� 	
public
�� 
bool
�� !
ThePlayersAreInGame
�� '
(
��' (
)
��( )
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
class  
ServiceFriendRequest %
:& '
IFriendRequest( 6
{ 
public 
List 
< 
FriendRequests "
>" #)
GetFriendsRequestsByProfileID$ A
(A B
longB F
IDG I
)I J
{ 	
List 
< 
FriendRequests 
>  
friendRequests! /
=0 1
new2 5
List6 :
<: ;
FriendRequests; I
>I J
(J K
)K L
;L M
try 
{ "
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]
friendRequests 
=  "
databaseModelContainer! 7
.7 8
FriendRequestsSet8 I
.I J
WhereJ O
(O P
eP Q
=>R T
eU V
.V W
ProfilesW _
._ `
	IDProfile` i
==j l
IDm o
)o p
.p q
ToListq w
(w x
)x y
;y z
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
return!! 
friendRequests!! !
;!!! "
}"" 	
public$$ 
List$$ 
<$$ 
FriendRequests$$ "
>$$" #*
GetFriendsRequestsByProfile1ID$$$ B
($$B C
long$$C G
ID$$H J
)$$J K
{%% 	
List&& 
<&& 
FriendRequests&& 
>&&  
friendRequests&&! /
=&&0 1
new&&2 5
List&&6 :
<&&: ;
FriendRequests&&; I
>&&I J
(&&J K
)&&K L
;&&L M
try(( 
{)) "
DatabaseModelContainer** &"
databaseModelContainer**' =
=**> ?
new**@ C"
DatabaseModelContainer**D Z
(**Z [
)**[ \
;**\ ]
friendRequests++ 
=++  "
databaseModelContainer++! 7
.++7 8
FriendRequestsSet++8 I
.++I J
Where++J O
(++O P
e++P Q
=>++R T
e++U V
.++V W
	Profiles1++W `
.++` a
	IDProfile++a j
==++k m
ID++n p
)++p q
.++q r
ToList++r x
(++x y
)++y z
;++z {
}-- 
catch.. 
(.. 
	Exception.. 
ex.. 
)..  
{// 
Console00 
.00 
	WriteLine00 !
(00! "
ex00" $
.00$ %
ToString00% -
(00- .
)00. /
)00/ 0
;000 1
}11 
return33 
friendRequests33 !
;33! "
}44 	
public66 
FriendRequest66  
GetFriendRequestByID66 1
(661 2
long662 6
ID667 9
)669 :
{77 	
FriendRequests88 
friendRequests88 )
=88* +
new88, /
FriendRequests880 >
(88> ?
)88? @
;88@ A
FriendRequest99 
friendRequest99 '
=99( )
new99* -
FriendRequest99. ;
(99; <
)99< =
;99= >
try;; 
{<< "
DatabaseModelContainer== &"
databaseModelContainer==' =
===> ?
new==@ C"
DatabaseModelContainer==D Z
(==Z [
)==[ \
;==\ ]
friendRequests>> 
=>>  "
databaseModelContainer>>! 7
.>>7 8
FriendRequestsSet>>8 I
.>>I J
Where>>J O
(>>O P
fr>>P R
=>>>S U
fr>>V X
.>>X Y
IDFriendRequest>>Y h
==>>i k
ID>>l n
)>>n o
.>>o p
FirstOrDefault>>p ~
(>>~ 
)	>> �
;
>>� �
if@@ 
(@@ 
friendRequests@@ "
!=@@# %
null@@& *
)@@* +
{AA 
PlayerCC 
playerProfileCC (
=CC) *
newCC+ .
PlayerCC/ 5
(CC5 6
)CC6 7
;CC7 8
playerProfileDD !
.DD! "
IDPlayerDD" *
=DD+ ,
friendRequestsDD- ;
.DD; <
ProfilesDD< D
.DDD E
PlayersDDE L
.DDL M
IDPlayerDDM U
;DDU V
playerProfileEE !
.EE! "
NamesEE" '
=EE( )
friendRequestsEE* 8
.EE8 9
ProfilesEE9 A
.EEA B
PlayersEEB I
.EEI J
NamesEEJ O
;EEO P
playerProfileFF !
.FF! "
SurnamesFF" *
=FF+ ,
friendRequestsFF- ;
.FF; <
ProfilesFF< D
.FFD E
PlayersFFE L
.FFL M
SurnamesFFM U
;FFU V
playerProfileGG !
.GG! "
EmailGG" '
=GG( )
friendRequestsGG* 8
.GG8 9
ProfilesGG9 A
.GGA B
PlayersGGB I
.GGI J
EmailGGJ O
;GGO P
playerProfileHH !
.HH! "
NickNameHH" *
=HH+ ,
friendRequestsHH- ;
.HH; <
ProfilesHH< D
.HHD E
PlayersHHE L
.HHL M
NickNameHHM U
;HHU V
playerProfileII !
.II! "
	BirthDateII" +
=II, -
friendRequestsII. <
.II< =
ProfilesII= E
.IIE F
PlayersIIF M
.IIM N
	BirthDateIIN W
;IIW X
PlayerKK 
playerProfile1KK )
=KK* +
newKK, /
PlayerKK0 6
(KK6 7
)KK7 8
;KK8 9
playerProfile1LL "
.LL" #
IDPlayerLL# +
=LL, -
friendRequestsLL. <
.LL< =
	Profiles1LL= F
.LLF G
PlayersLLG N
.LLN O
IDPlayerLLO W
;LLW X
playerProfile1MM "
.MM" #
NamesMM# (
=MM) *
friendRequestsMM+ 9
.MM9 :
	Profiles1MM: C
.MMC D
PlayersMMD K
.MMK L
NamesMML Q
;MMQ R
playerProfile1NN "
.NN" #
SurnamesNN# +
=NN, -
friendRequestsNN. <
.NN< =
	Profiles1NN= F
.NNF G
PlayersNNG N
.NNN O
SurnamesNNO W
;NNW X
playerProfile1OO "
.OO" #
EmailOO# (
=OO) *
friendRequestsOO+ 9
.OO9 :
	Profiles1OO: C
.OOC D
PlayersOOD K
.OOK L
EmailOOL Q
;OOQ R
playerProfile1PP "
.PP" #
NickNamePP# +
=PP, -
friendRequestsPP. <
.PP< =
	Profiles1PP= F
.PPF G
PlayersPPG N
.PPN O
NickNamePPO W
;PPW X
playerProfile1QQ "
.QQ" #
	BirthDateQQ# ,
=QQ- .
friendRequestsQQ/ =
.QQ= >
	Profiles1QQ> G
.QQG H
PlayersQQH O
.QQO P
	BirthDateQQP Y
;QQY Z
ProfileSS 
profileSS #
=SS$ %
newSS& )
ProfileSS* 1
(SS1 2
)SS2 3
;SS3 4
profileTT 
.TT 
	IDProfileTT %
=TT& '
friendRequestsTT( 6
.TT6 7
ProfilesTT7 ?
.TT? @
	IDProfileTT@ I
;TTI J
profileUU 
.UU 
CoinsUU !
=UU" #
(UU$ %
longUU% )
)UU) *
friendRequestsUU* 8
.UU8 9
ProfilesUU9 A
.UUA B
CoinsUUB G
;UUG H
profileVV 
.VV 
LoginStatusVV '
=VV( )
friendRequestsVV* 8
.VV8 9
ProfilesVV9 A
.VVA B
LoginStatusVVB M
;VVM N
profileWW 
.WW 
PlayerWW "
=WW# $
playerProfileWW% 2
;WW2 3
ProfileYY 
profile1YY $
=YY% &
newYY' *
ProfileYY+ 2
(YY2 3
)YY3 4
;YY4 5
profile1ZZ 
.ZZ 
	IDProfileZZ &
=ZZ' (
friendRequestsZZ) 7
.ZZ7 8
	Profiles1ZZ8 A
.ZZA B
	IDProfileZZB K
;ZZK L
profile1[[ 
.[[ 
Coins[[ "
=[[# $
([[% &
long[[& *
)[[* +
friendRequests[[+ 9
.[[9 :
	Profiles1[[: C
.[[C D
Coins[[D I
;[[I J
profile1\\ 
.\\ 
LoginStatus\\ (
=\\) *
friendRequests\\+ 9
.\\9 :
	Profiles1\\: C
.\\C D
LoginStatus\\D O
;\\O P
profile1]] 
.]] 
Player]] #
=]]$ %
playerProfile1]]& 4
;]]4 5
friendRequest__ !
.__! "
IDFriendRequest__" 1
=__2 3
friendRequests__4 B
.__B C
IDFriendRequest__C R
;__R S
friendRequest`` !
.``! "
CreationDate``" .
=``/ 0
friendRequests``1 ?
.``? @
CreationDate``@ L
;``L M
friendRequestaa !
.aa! "
Messageaa" )
=aa* +
friendRequestsaa, :
.aa: ;
Messageaa; B
;aaB C
friendRequestbb !
.bb! "
AceptationStatusbb" 2
=bb3 4
friendRequestsbb5 C
.bbC D
AceptationStatusbbD T
;bbT U
friendRequestcc !
.cc! "
SendingStatuscc" /
=cc0 1
friendRequestscc2 @
.cc@ A
SendingStatusccA N
;ccN O
friendRequestdd !
.dd! "
Profiledd" )
=dd* +
profiledd, 3
;dd3 4
friendRequestee !
.ee! "
Profile1ee" *
=ee+ ,
profile1ee- 5
;ee5 6
}ff 
elsegg 
{hh 
friendRequestii !
=ii" #
nullii$ (
;ii( )
}jj 
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
returnqq 
friendRequestqq  
;qq  !
}rr 	
publictt 
Listtt 
<tt 
FriendRequesttt !
>tt! "@
4GetPendientsForAceptationFriendsRequestsByProfile1IDtt# W
(ttW X
longttX \

IDProfile1tt] g
)ttg h
{uu 	
Listvv 
<vv 
FriendRequestvv 
>vv 
friendRequestListvv  1
=vv2 3
newvv4 7
Listvv8 <
<vv< =
FriendRequestvv= J
>vvJ K
(vvK L
)vvL M
;vvM N
Listww 
<ww 
FriendRequestsww 
>ww  
friendRequestsListww! 3
=ww4 5
newww6 9
Listww: >
<ww> ?
FriendRequestsww? M
>wwM N
(wwN O
)wwO P
;wwP Q
tryyy 
{zz "
DatabaseModelContainer{{ &"
databaseModelContainer{{' =
={{> ?
new{{@ C"
DatabaseModelContainer{{D Z
({{Z [
){{[ \
;{{\ ]
friendRequestsList|| "
=||# $"
databaseModelContainer||% ;
.||; <
FriendRequestsSet||< M
.}} 
Where}} 
(}} 
fr}} 
=>}} 
fr}} 
.}}  
	Profiles1}}  )
.}}) *
	IDProfile}}* 3
==}}4 6

IDProfile1}}7 A
)}}A B
.~~ 
Where~~ 
(~~ 
fr~~ 
=>~~ 
fr~~ 
.~~  
AceptationStatus~~  0
==~~1 3+
FriendRequestAceptationStatuses~~4 S
.~~S T
Pendient~~T \
.~~\ ]
ToString~~] e
(~~e f
)~~f g
)~~g h
. 
Where 
( 
fr 
=> 
fr 
.  
SendingStatus  -
==. 0(
FriendRequestSendingStatuses1 M
.M N
SentN R
.R S
ToStringS [
([ \
)\ ]
)] ^
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
(
��1 2
)
��2 3
;
��3 4
playerProfile
�� 
.
�� 
IDPlayer
�� &
=
��' (
friendRequests
��) 7
.
��7 8
Profiles
��8 @
.
��@ A
Players
��A H
.
��H I
IDPlayer
��I Q
;
��Q R
playerProfile
�� 
.
�� 
Names
�� #
=
��$ %
friendRequests
��& 4
.
��4 5
Profiles
��5 =
.
��= >
Players
��> E
.
��E F
Names
��F K
;
��K L
playerProfile
�� 
.
�� 
Surnames
�� &
=
��' (
friendRequests
��) 7
.
��7 8
Profiles
��8 @
.
��@ A
Players
��A H
.
��H I
Surnames
��I Q
;
��Q R
playerProfile
�� 
.
�� 
Email
�� #
=
��$ %
friendRequests
��& 4
.
��4 5
Profiles
��5 =
.
��= >
Players
��> E
.
��E F
Email
��F K
;
��K L
playerProfile
�� 
.
�� 
NickName
�� &
=
��' (
friendRequests
��) 7
.
��7 8
Profiles
��8 @
.
��@ A
Players
��A H
.
��H I
NickName
��I Q
;
��Q R
playerProfile
�� 
.
�� 
	BirthDate
�� '
=
��( )
friendRequests
��* 8
.
��8 9
Profiles
��9 A
.
��A B
Players
��B I
.
��I J
	BirthDate
��J S
;
��S T
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
(
��2 3
)
��3 4
;
��4 5
playerProfile1
�� 
.
�� 
IDPlayer
�� '
=
��( )
friendRequests
��* 8
.
��8 9
	Profiles1
��9 B
.
��B C
Players
��C J
.
��J K
IDPlayer
��K S
;
��S T
playerProfile1
�� 
.
�� 
Names
�� $
=
��% &
friendRequests
��' 5
.
��5 6
	Profiles1
��6 ?
.
��? @
Players
��@ G
.
��G H
Names
��H M
;
��M N
playerProfile1
�� 
.
�� 
Surnames
�� '
=
��( )
friendRequests
��* 8
.
��8 9
	Profiles1
��9 B
.
��B C
Players
��C J
.
��J K
Surnames
��K S
;
��S T
playerProfile1
�� 
.
�� 
Email
�� $
=
��% &
friendRequests
��' 5
.
��5 6
	Profiles1
��6 ?
.
��? @
Players
��@ G
.
��G H
Email
��H M
;
��M N
playerProfile1
�� 
.
�� 
NickName
�� '
=
��( )
friendRequests
��* 8
.
��8 9
	Profiles1
��9 B
.
��B C
Players
��C J
.
��J K
NickName
��K S
;
��S T
playerProfile1
�� 
.
�� 
	BirthDate
�� (
=
��) *
friendRequests
��+ 9
.
��9 :
	Profiles1
��: C
.
��C D
Players
��D K
.
��K L
	BirthDate
��L U
;
��U V
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
(
��- .
)
��. /
;
��/ 0
profile
�� 
.
�� 
	IDProfile
�� !
=
��" #
friendRequests
��$ 2
.
��2 3
Profiles
��3 ;
.
��; <
	IDProfile
��< E
;
��E F
profile
�� 
.
�� 
Coins
�� 
=
�� 
(
��  !
long
��! %
)
��% &
friendRequests
��& 4
.
��4 5
Profiles
��5 =
.
��= >
Coins
��> C
;
��C D
profile
�� 
.
�� 
LoginStatus
�� #
=
��$ %
friendRequests
��& 4
.
��4 5
Profiles
��5 =
.
��= >
LoginStatus
��> I
;
��I J
profile
�� 
.
�� 
Player
�� 
=
��  
playerProfile
��! .
;
��. /
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
(
��. /
)
��/ 0
;
��0 1
profile1
�� 
.
�� 
	IDProfile
�� "
=
��# $
friendRequests
��% 3
.
��3 4
	Profiles1
��4 =
.
��= >
	IDProfile
��> G
;
��G H
profile1
�� 
.
�� 
Coins
�� 
=
��  
(
��! "
long
��" &
)
��& '
friendRequests
��' 5
.
��5 6
	Profiles1
��6 ?
.
��? @
Coins
��@ E
;
��E F
profile1
�� 
.
�� 
LoginStatus
�� $
=
��% &
friendRequests
��' 5
.
��5 6
	Profiles1
��6 ?
.
��? @
LoginStatus
��@ K
;
��K L
profile1
�� 
.
�� 
Player
�� 
=
��  !
playerProfile1
��" 0
;
��0 1
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
(
��? @
)
��@ A
;
��A B
friendRequest
�� 
.
�� 
IDFriendRequest
�� -
=
��. /
friendRequests
��0 >
.
��> ?
IDFriendRequest
��? N
;
��N O
friendRequest
�� 
.
�� 
CreationDate
�� *
=
��+ ,
friendRequests
��- ;
.
��; <
CreationDate
��< H
;
��H I
friendRequest
�� 
.
�� 
Message
�� %
=
��& '
friendRequests
��( 6
.
��6 7
Message
��7 >
;
��> ?
friendRequest
�� 
.
�� 
AceptationStatus
�� .
=
��/ 0
friendRequests
��1 ?
.
��? @
AceptationStatus
��@ P
;
��P Q
friendRequest
�� 
.
�� 
SendingStatus
�� +
=
��, -
friendRequests
��. <
.
��< =
SendingStatus
��= J
;
��J K
friendRequest
�� 
.
�� 
Profile
�� %
=
��& '
profile
��( /
;
��/ 0
friendRequest
�� 
.
�� 
Profile1
�� &
=
��' (
profile1
��) 1
;
��1 2
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
��# $
SendingStatus
��$ 1
==
��2 4*
FriendRequestSendingStatuses
��5 Q
.
��Q R
Sent
��R V
.
��V W
ToString
��W _
(
��_ `
)
��` a
)
��a b
.
�� 
FirstOrDefault
�� #
(
��# $
)
��$ %
;
��% &
if
�� 
(
�� 
friendRequests
�� "
!=
��# %
null
��& *
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
�� Z
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile
�� `
(
��` a
long
��a e"
transmitterProfileID
��f z
,
��z {
long��| �
senderProfileID��� �
)��� �
{
�� 	
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
��8 9
ServiceProfile
�� "
serviceProfile
��# 1
=
��2 3
new
��4 7
ServiceProfile
��8 F
(
��F G
)
��G H
;
��H I
serviceProfile
�� "
.
��" #
AddFriendship
��# 0
(
��0 1
friendRequests
��1 ?
.
��? @
Profiles
��@ H
,
��H I
friendRequests
��J X
.
��X Y
	Profiles1
��Y b
)
��b c
;
��c d4
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
�� 	
}
�� 
[
�� 
CallbackBehavior
�� 
(
�� 
ConcurrencyMode
�� %
=
��& '
ConcurrencyMode
��( 7
.
��7 8
Multiple
��8 @
,
��@ A'
UseSynchronizationContext
��B [
=
��\ ]
false
��^ c
)
��c d
]
��d e
public
�� 

class
�� 4
&ServiceFriendRequestForCallbackMethods
�� 7
:
��8 9.
 IFriendRequestForCallbackMethods
��: Z
{
�� 
public
�� 
static
�� 

Dictionary
��  
<
��  !
string
��! '
,
��' ($
IFriendRequestCallback
��) ?
>
��? @
connectedProfiles
��A R
=
��S T
new
��U X

Dictionary
��Y c
<
��c d
string
��d j
,
��j k%
IFriendRequestCallback��l �
>��� �
(��� �
)��� �
;��� �
public
�� 
void
�� 
Connect
�� 
(
�� 
string
�� "
username
��# +
)
��+ ,
{
�� 	$
IFriendRequestCallback
�� "
callback
��# +
=
��, -
OperationContext
��. >
.
��> ?
Current
��? F
.
��F G 
GetCallbackChannel
��G Y
<
��Y Z$
IFriendRequestCallback
��Z p
>
��p q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
!
�� 
connectedProfiles
�� "
.
��" #
ContainsKey
��# .
(
��. /
username
��/ 7
)
��7 8
)
��8 9
{
�� 
connectedProfiles
�� !
.
��! "
Add
��" %
(
��% &
username
��& .
,
��. /
callback
��0 8
)
��8 9
;
��9 :
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
}�� ݁
XC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServicePlayer.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class 
ServicePlayer 
:  
IPlayer! (
{ 
public 
long 
	AddPlayer 
( 
Players %
player& ,
), -
{ 	
long 
generatedID 
= 
$num  
;  !
try 
{ 
player 
. 
Profiles 
=  !
new" %
Profiles& .
(. /
)/ 0
;0 1"
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]"
databaseModelContainer &
.& '

PlayersSet' 1
.1 2
Add2 5
(5 6
player6 <
)< =
;= >"
databaseModelContainer &
.& '
SaveChanges' 2
(2 3
)3 4
;4 5
generatedID 
= 
player $
.$ %
IDPlayer% -
;- .
}$$ 
catch%% 
(%% 
	Exception%% 
ex%% 
)%%  
{&& 
Console'' 
.'' 
	WriteLine'' !
(''! "
ex''" $
.''$ %
ToString''% -
(''- .
)''. /
)''/ 0
;''0 1
}(( 
return** 
generatedID** 
;** 
}++ 	
public-- 
List-- 
<-- 
Players-- 
>-- 

GetPlayers-- '
(--' (
)--( )
{.. 	
List// 
<// 
Players// 
>// 
players// !
=//" #
null//$ (
;//( )
try11 
{22 "
DatabaseModelContainer33 &"
databaseModelContainer33' =
=33> ?
new33@ C"
DatabaseModelContainer33D Z
(33Z [
)33[ \
;33\ ]
players44 
=44 "
databaseModelContainer44 0
.440 1

PlayersSet441 ;
.44; <
ToList44< B
(44B C
)44C D
;44D E
}55 
catch66 
(66 
	Exception66 
ex66 
)66  
{77 
Console88 
.88 
	WriteLine88 !
(88! "
ex88" $
.88$ %
ToString88% -
(88- .
)88. /
)88/ 0
;880 1
}99 
return:: 
players:: 
;:: 
};; 	
public== 
Player== 
GetPlayerByID== #
(==# $
long==$ (
ID==) +
)==+ ,
{>> 	
Player?? 
player?? 
=?? 
new?? 
Player??  &
(??& '
)??' (
;??( )
Players@@ 
players@@ 
=@@ 
new@@ !
Players@@" )
(@@) *
)@@* +
;@@+ ,
tryBB 
{CC "
DatabaseModelContainerDD &"
databaseModelContainerDD' =
=DD> ?
newDD@ C"
DatabaseModelContainerDDD Z
(DDZ [
)DD[ \
;DD\ ]
playersEE 
=EE "
databaseModelContainerEE 0
.EE0 1

PlayersSetEE1 ;
.EE; <
WhereEE< A
(EEA B
eEEB C
=>EED F
eEEG H
.EEH I
IDPlayerEEI Q
==EER T
IDEEU W
)EEW X
.EEX Y
FirstOrDefaultEEY g
(EEg h
)EEh i
;EEi j
ifGG 
(GG 
playersGG 
!=GG 
nullGG "
)GG" #
{HH 
playerII 
.II 
IDPlayerII #
=II$ %
playersII& -
.II- .
IDPlayerII. 6
;II6 7
playerJJ 
.JJ 
NamesJJ  
=JJ! "
playersJJ# *
.JJ* +
NamesJJ+ 0
;JJ0 1
playerKK 
.KK 
SurnamesKK #
=KK$ %
playersKK& -
.KK- .
SurnamesKK. 6
;KK6 7
playerLL 
.LL 
EmailLL  
=LL! "
playersLL# *
.LL* +
EmailLL+ 0
;LL0 1
playerMM 
.MM 
NickNameMM #
=MM$ %
playersMM& -
.MM- .
NickNameMM. 6
;MM6 7
playerNN 
.NN 
	BirthDateNN $
=NN% &
playersNN' .
.NN. /
	BirthDateNN/ 8
;NN8 9
playerOO 
.OO 
PasswordOO #
=OO$ %
playersOO& -
.OO- .
PasswordOO. 6
;OO6 7
}PP 
elseQQ 
{RR 
playerSS 
=SS 
nullSS !
;SS! "
}TT 
}VV 
catchWW 
(WW 
	ExceptionWW 
exWW 
)WW  
{XX 
ConsoleYY 
.YY 
	WriteLineYY !
(YY! "
exYY" $
.YY$ %
ToStringYY% -
(YY- .
)YY. /
)YY/ 0
;YY0 1
}ZZ 
return\\ 
player\\ 
;\\ 
}]] 	
public__ 
Player__ 
GetPlayerByNickname__ )
(__) *
string__* 0
nickname__1 9
)__9 :
{`` 	
Playeraa 
playeraa 
=aa 
newaa 
Playeraa  &
(aa& '
)aa' (
;aa( )
Playersbb 
playersbb 
=bb 
newbb !
Playersbb" )
(bb) *
)bb* +
;bb+ ,
trydd 
{ee "
DatabaseModelContainerff &"
databaseModelContainerff' =
=ff> ?
newff@ C"
DatabaseModelContainerffD Z
(ffZ [
)ff[ \
;ff\ ]
playersgg 
=gg "
databaseModelContainergg 0
.gg0 1

PlayersSetgg1 ;
.gg; <
Wheregg< A
(ggA B
eggB C
=>ggD F
eggG H
.ggH I
NickNameggI Q
==ggR T
nicknameggU ]
)gg] ^
.gg^ _
FirstOrDefaultgg_ m
(ggm n
)ggn o
;ggo p
ifii 
(ii 
playersii 
!=ii 
nullii "
)ii" #
{jj 
playerkk 
.kk 
IDPlayerkk #
=kk$ %
playerskk& -
.kk- .
IDPlayerkk. 6
;kk6 7
playerll 
.ll 
Namesll  
=ll! "
playersll# *
.ll* +
Namesll+ 0
;ll0 1
playermm 
.mm 
Surnamesmm #
=mm$ %
playersmm& -
.mm- .
Surnamesmm. 6
;mm6 7
playernn 
.nn 
Emailnn  
=nn! "
playersnn# *
.nn* +
Emailnn+ 0
;nn0 1
playeroo 
.oo 
NickNameoo #
=oo$ %
playersoo& -
.oo- .
NickNameoo. 6
;oo6 7
playerpp 
.pp 
	BirthDatepp $
=pp% &
playerspp' .
.pp. /
	BirthDatepp/ 8
;pp8 9
playerqq 
.qq 
Passwordqq #
=qq$ %
playersqq& -
.qq- .
Passwordqq. 6
;qq6 7
}ss 
elsett 
{uu 
playervv 
=vv 
nullvv !
;vv! "
}ww 
}yy 
catchzz 
(zz 
	Exceptionzz 
exzz 
)zz  
{{{ 
Console|| 
.|| 
	WriteLine|| !
(||! "
ex||" $
.||$ %
ToString||% -
(||- .
)||. /
)||/ 0
;||0 1
}}} 
return 
player 
; 
}
�� 	
public
�� 
List
�� 
<
�� 
Players
�� 
>
�� !
GetSpecifiedPlayers
�� 0
(
��0 1
string
��1 7
name
��8 <
)
��< =
{
�� 	
List
�� 
<
�� 
Players
�� 
>
�� 
players
�� !
=
��" #
null
��$ (
;
��( )
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
players
�� 
=
�� $
databaseModelContainer
�� 0
.
��0 1

PlayersSet
��1 ;
.
��; <
Where
��< A
(
��A B
e
��B C
=>
��D F
e
��G H
.
��H I
Names
��I N
.
��N O
Contains
��O W
(
��W X
name
��X \
)
��\ ]
)
��] ^
.
��^ _
ToList
��_ e
(
��e f
)
��f g
;
��g h
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
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class 
ServiceProfile 
:  !
IProfile" *
{ 
public 
long 

AddProfile 
( 
Profiles '
profiles( 0
)0 1
{ 	
long 
generatedID 
= 
$num  
;  !
try 
{ "
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]"
databaseModelContainer &
.& '
ProfilesSet' 2
.2 3
Add3 6
(6 7
profiles7 ?
)? @
;@ A"
databaseModelContainer &
.& '
SaveChanges' 2
(2 3
)3 4
;4 5
generatedID 
= 
profiles &
.& '
	IDProfile' 0
;0 1
} 
catch 
( 
	Exception 
ex 
)  
{ 
Console 
. 
	WriteLine !
(! "
ex" $
.$ %
ToString% -
(- .
). /
)/ 0
;0 1
}   
return"" 
generatedID"" 
;"" 
}## 	
public%% 
void%% 
ChangeLoginStatus%% %
(%%% & 
ProfileLoginStatuses%%& :
profileLoginStatus%%; M
,%%M N
long%%O S
	profileID%%T ]
)%%] ^
{&& 	
try'' 
{(( "
DatabaseModelContainer)) &"
databaseModelContainer))' =
=))> ?
new))@ C"
DatabaseModelContainer))D Z
())Z [
)))[ \
;))\ ]
Profiles** 
profileToModify** (
=**) *"
databaseModelContainer**+ A
.**A B
ProfilesSet**B M
.**M N
Find**N R
(**R S
	profileID**S \
)**\ ]
;**] ^
if++ 
(++ 
profileToModify++ #
!=++$ &
null++' +
)+++ ,
{,, 
profileToModify-- #
.--# $
LoginStatus--$ /
=--0 1
profileLoginStatus--2 D
.--D E
ToString--E M
(--M N
)--N O
;--O P"
databaseModelContainer// *
.//* +
SaveChanges//+ 6
(//6 7
)//7 8
;//8 9
}00 
}11 
catch22 
(22 
	Exception22 
ex22 
)22  
{33 
Console44 
.44 
	WriteLine44 !
(44! "
ex44" $
.44$ %
ToString44% -
(44- .
)44. /
)44/ 0
;440 1
}55 
}66 	
public88 
List88 
<88 
Profile88 
>88 

GetFriends88 '
(88' (
long88( ,
	profileID88- 6
)886 7
{99 	
List:: 
<:: 
Profile:: 
>:: 
profileList:: %
=::& '
new::( +
List::, 0
<::0 1
Profile::1 8
>::8 9
(::9 :
)::: ;
;::; <
Profiles;; 
profiles;; 
=;; 
new;;  #
Profiles;;$ ,
(;;, -
);;- .
;;;. /
ICollection<< 
<<< 
Profiles<<  
><<  !
profilesHasSet<<" 0
=<<1 2
new<<3 6
HashSet<<7 >
<<<> ?
Profiles<<? G
><<G H
(<<H I
)<<I J
;<<J K
try>> 
{?? "
DatabaseModelContainer@@ &"
databaseModelContainer@@' =
=@@> ?
new@@@ C"
DatabaseModelContainer@@D Z
(@@Z [
)@@[ \
;@@\ ]
profilesAA 
=AA "
databaseModelContainerAA 1
.AA1 2
ProfilesSetAA2 =
.AA= >
WhereAA> C
(AAC D
eAAD E
=>AAF H
eAAI J
.AAJ K
	IDProfileAAK T
==AAU W
	profileIDAAX a
)AAa b
.AAb c
FirstOrDefaultAAc q
(AAq r
)AAr s
;AAs t
ifCC 
(CC 
profilesCC 
!=CC 
nullCC  $
)CC$ %
{DD 
profilesHasSetEE "
=EE# $
profilesEE% -
.EE- .
	Profiles2EE. 7
;EE7 8
foreachGG 
(GG 
ProfilesGG $
pGG% &
inGG' )
profilesHasSetGG* 8
)GG8 9
{HH 
PlayerII 
profilePlayerII ,
=II- .
newII/ 2
PlayerII3 9
{JJ 
IDPlayerKK $
=KK% &
pKK' (
.KK( )
PlayersKK) 0
.KK0 1
IDPlayerKK1 9
,KK9 :
NamesLL !
=LL" #
pLL$ %
.LL% &
PlayersLL& -
.LL- .
NamesLL. 3
,LL3 4
SurnamesMM $
=MM% &
pMM' (
.MM( )
PlayersMM) 0
.MM0 1
SurnamesMM1 9
,MM9 :
EmailNN !
=NN" #
pNN$ %
.NN% &
PlayersNN& -
.NN- .
EmailNN. 3
,NN3 4
NickNameOO $
=OO% &
pOO' (
.OO( )
PlayersOO) 0
.OO0 1
NickNameOO1 9
,OO9 :
	BirthDatePP %
=PP& '
pPP( )
.PP) *
PlayersPP* 1
.PP1 2
	BirthDatePP2 ;
}QQ 
;QQ 
ProfileSS 
profileSS  '
=SS( )
newSS* -
ProfileSS. 5
{TT 
	IDProfileUU %
=UU& '
pUU( )
.UU) *
	IDProfileUU* 3
,UU3 4
CoinsVV !
=VV" #
(VV$ %
longVV% )
)VV) *
pVV* +
.VV+ ,
CoinsVV, 1
,VV1 2
LoginStatusWW '
=WW( )
pWW* +
.WW+ ,
LoginStatusWW, 7
,WW7 8
PlayerXX "
=XX# $
profilePlayerXX% 2
}YY 
;YY 
profileList[[ #
.[[# $
Add[[$ '
([[' (
profile[[( /
)[[/ 0
;[[0 1
}\\ 
}]] 
else^^ 
{__ 
profileList`` 
=``  !
null``" &
;``& '
}aa 
}cc 
catchdd 
(dd 
	Exceptiondd 
exdd 
)dd  
{ee 
Consoleff 
.ff 
	WriteLineff !
(ff! "
exff" $
.ff$ %
ToStringff% -
(ff- .
)ff. /
)ff/ 0
;ff0 1
}gg 
returnii 
profileListii 
;ii 
}jj 	
publicll 
bytell 
[ll 
]ll 
GetImagell 
(ll 
stringll %
fileNamell& .
)ll. /
{mm 	
trynn 
{oo 
stringpp 
serverFolderPathpp '
=pp( )
$strpp* u
;ppu v
stringqq 
filePathqq 
=qq  !
Pathqq" &
.qq& '
Combineqq' .
(qq. /
serverFolderPathqq/ ?
,qq? @
fileNameqqA I
)qqI J
;qqJ K
byterr 
[rr 
]rr 
	imageDatarr  
=rr! "
Filerr# '
.rr' (
ReadAllBytesrr( 4
(rr4 5
filePathrr5 =
)rr= >
;rr> ?
returntt 
	imageDatatt  
;tt  !
}uu 
catchvv 
(vv 
	Exceptionvv 
)vv 
{ww 
returnxx 
nullxx 
;xx 
}yy 
}zz 	
public|| 
Profile|| 
GetProfileByID|| %
(||% &
long||& *
	profileID||+ 4
)||4 5
{}} 	
Profile~~ 
profile~~ 
=~~ 
new~~ !
Profile~~" )
(~~) *
)~~* +
;~~+ ,
Player 
player 
= 
new 
Player  &
(& '
)' (
;( )
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
�� 
(
�� 
matchingFiles
�� !
.
��! "
Count
��" '
>
��( )
$num
��* +
)
��+ ,
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
��: ;(
IProfileForCallbackMethods
��< V
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
�� 
ServiceChat
�� 
(
��  
)
��  !
.
��! "
	LeaveChat
��" +
(
��+ ,
username
��, 4
)
��4 5
;
��5 6
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
�� $
ServiceMultiplayerGame
�� *
(
��* +
)
��+ ,
.
��, -

Disconnect
��- 7
(
��7 8
username
��8 @
)
��@ A
;
��A B
new
�� )
ServiceMultiplayerCrossword
�� /
(
��/ 0
)
��0 1
.
��1 2

Disconnect
��2 <
(
��< =
username
��= E
)
��E F
;
��F G5
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
�� 
var
�� 
friend
�� "
in
��# %
connectedProfiles
��& 7
)
��7 8
{
�� 
if
�� 
(
�� 
friend
�� 
.
�� 
Key
�� !
==
��" $
friendNickname
��% 3
)
��3 4
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