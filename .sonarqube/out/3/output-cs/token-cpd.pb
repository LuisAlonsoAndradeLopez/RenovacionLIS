≠
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
} Ñ
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
]$$) *È
XC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IChat.cs
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
} —#
cC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IMultiplayerGame.cs
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
}GG ß%
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
}BB Ä
hC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IMultiplayerCrossword.cs
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
}'' Ù
ZC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IPlayer.cs
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
}33 ù*
[C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IProfile.cs
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
}SS Œ.
VC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceChat.cs
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
}]] …/
fC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceMultiplayerCrossword.cs
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
IMultiplayerCrosswordCallback	s ê
>
ê ë
(
ë í
)
í ì
;
ì î
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
(	 Ä
)
Ä Å
;
Å Ç
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
}YY ßW
aC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceMultiplayerGame.cs
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
IMultiplayerGameCallback	n Ü
>
Ü á
(
á à
)
à â
;
â ä
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
ÄÄ 	
public
ÇÇ 
bool
ÇÇ 
IsAdmin
ÇÇ 
(
ÇÇ 
string
ÇÇ "
nickname
ÇÇ# +
)
ÇÇ+ ,
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
admin
ÑÑ 
!=
ÑÑ 
null
ÑÑ 
&&
ÑÑ  
nickname
ÑÑ! )
==
ÑÑ* ,
admin
ÑÑ- 2
)
ÑÑ2 3
{
ÖÖ 
return
ÜÜ 
true
ÜÜ 
;
ÜÜ 
}
áá 
return
ââ 
false
ââ 
;
ââ 
}
ää 	
public
åå 
bool
åå 
IsBanned
åå 
(
åå 
string
åå #
nickname
åå$ ,
)
åå, -
{
çç 	
if
éé 
(
éé 
bannedProfiles
éé 
.
éé 
Contains
éé '
(
éé' (
nickname
éé( 0
)
éé0 1
)
éé1 2
{
èè 
return
êê 
true
êê 
;
êê 
}
ëë 
return
ìì 
false
ìì 
;
ìì 
}
îî 	
public
ññ 
bool
ññ 
IsConnected
ññ 
(
ññ  
string
ññ  &
nickname
ññ' /
)
ññ/ 0
{
óó 	
if
òò 
(
òò 
connectedProfiles
òò !
.
òò! "
ContainsKey
òò" -
(
òò- .
nickname
òò. 6
)
òò6 7
)
òò7 8
{
ôô 
return
öö 
true
öö 
;
öö 
}
õõ 
return
ùù 
false
ùù 
;
ùù 
}
ûû 	
public
†† 
void
†† $
SetThePlayersAreInGame
†† *
(
††* +
)
††+ ,
{
°° 	!
thePlayersAreInGame
¢¢ 
=
¢¢  !
true
¢¢" &
;
¢¢& '
}
££ 	
public
•• 
void
•• '
SetThePlayersAreNotInGame
•• -
(
••- .
)
••. /
{
¶¶ 	!
thePlayersAreInGame
ßß 
=
ßß  !
false
ßß" '
;
ßß' (
}
®® 	
public
™™ 
bool
™™ !
ThePlayersAreInGame
™™ '
(
™™' (
)
™™( )
{
´´ 	
return
¨¨ !
thePlayersAreInGame
¨¨ &
;
¨¨& '
}
≠≠ 	
}
ÆÆ 
}ØØ å—
_C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceFriendRequest.cs
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
)	>> Ä
;
>>Ä Å
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
ÄÄ 
ToList
ÄÄ 
(
ÄÄ 
)
ÄÄ 
;
ÄÄ 
if
ÇÇ 
(
ÇÇ  
friendRequestsList
ÇÇ &
!=
ÇÇ' )
null
ÇÇ* .
)
ÇÇ. /
{
ÉÉ 
friendRequestList
ÑÑ %
=
ÑÑ& '<
.FriendRequestsListToFriendRequestListConverter
ÑÑ( V
(
ÑÑV W 
friendRequestsList
ÑÑW i
)
ÑÑi j
;
ÑÑj k
}
ÖÖ 
else
ÜÜ 
{
áá 
friendRequestList
àà %
=
àà& '
null
àà( ,
;
àà, -
}
ââ 
}
ãã 
catch
åå 
(
åå 
	Exception
åå 
ex
åå 
)
åå  
{
çç 
Console
éé 
.
éé 
	WriteLine
éé !
(
éé! "
ex
éé" $
.
éé$ %
ToString
éé% -
(
éé- .
)
éé. /
)
éé/ 0
;
éé0 1
}
èè 
return
ëë 
friendRequestList
ëë $
;
ëë$ %
}
íí 	
public
îî 
List
îî 
<
îî 
FriendRequest
îî !
>
îî! "H
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID
îî# ]
(
îî] ^
long
îî^ b
	IDProfile
îîc l
)
îîl m
{
ïï 	
List
ññ 
<
ññ 
FriendRequest
ññ 
>
ññ 
friendRequestList
ññ  1
=
ññ2 3
new
ññ4 7
List
ññ8 <
<
ññ< =
FriendRequest
ññ= J
>
ññJ K
(
ññK L
)
ññL M
;
ññM N
List
óó 
<
óó 
FriendRequests
óó 
>
óó   
friendRequestsList
óó! 3
=
óó4 5
new
óó6 9
List
óó: >
<
óó> ?
FriendRequests
óó? M
>
óóM N
(
óóN O
)
óóO P
;
óóP Q
try
ôô 
{
öö $
DatabaseModelContainer
õõ &$
databaseModelContainer
õõ' =
=
õõ> ?
new
õõ@ C$
DatabaseModelContainer
õõD Z
(
õõZ [
)
õõ[ \
;
õõ\ ] 
friendRequestsList
úú "
=
úú# $$
databaseModelContainer
úú% ;
.
úú; <
FriendRequestsSet
úú< M
.
ùù 
Where
ùù 
(
ùù 
fr
ùù 
=>
ùù 
fr
ùù 
.
ùù  
Profiles
ùù  (
.
ùù( )
	IDProfile
ùù) 2
==
ùù3 5
	IDProfile
ùù6 ?
)
ùù? @
.
ûû 
Where
ûû 
(
ûû 
fr
ûû 
=>
ûû 
fr
ûû 
.
ûû  
AceptationStatus
ûû  0
==
ûû1 3-
FriendRequestAceptationStatuses
ûû4 S
.
ûûS T
Pendient
ûûT \
.
ûû\ ]
ToString
ûû] e
(
ûûe f
)
ûûf g
)
ûûg h
.
üü 
Where
üü 
(
üü 
fr
üü 
=>
üü 
fr
üü 
.
üü  
SendingStatus
üü  -
==
üü. 0*
FriendRequestSendingStatuses
üü1 M
.
üüM N
Sent
üüN R
.
üüR S
ToString
üüS [
(
üü[ \
)
üü\ ]
)
üü] ^
.
†† 
ToList
†† 
(
†† 
)
†† 
;
†† 
if
¢¢ 
(
¢¢  
friendRequestsList
¢¢ &
!=
¢¢' )
null
¢¢* .
)
¢¢. /
{
££ 
friendRequestList
§§ %
=
§§& '<
.FriendRequestsListToFriendRequestListConverter
§§( V
(
§§V W 
friendRequestsList
§§W i
)
§§i j
;
§§j k
}
•• 
else
¶¶ 
{
ßß 
friendRequestList
®® %
=
®®& '
null
®®( ,
;
®®, -
}
©© 
}
´´ 
catch
¨¨ 
(
¨¨ 
	Exception
¨¨ 
ex
¨¨ 
)
¨¨  
{
≠≠ 
Console
ÆÆ 
.
ÆÆ 
	WriteLine
ÆÆ !
(
ÆÆ! "
ex
ÆÆ" $
.
ÆÆ$ %
ToString
ÆÆ% -
(
ÆÆ- .
)
ÆÆ. /
)
ÆÆ/ 0
;
ÆÆ0 1
}
ØØ 
return
±± 
friendRequestList
±± $
;
±±$ %
}
≤≤ 	
private
µµ 
List
µµ 
<
µµ 
FriendRequest
µµ "
>
µµ" #<
.FriendRequestsListToFriendRequestListConverter
µµ$ R
(
µµR S
List
µµS W
<
µµW X
FriendRequests
µµX f
>
µµf g 
friendRequestsList
µµh z
)
µµz {
{
∂∂ 	
List
∑∑ 
<
∑∑ 
FriendRequest
∑∑ 
>
∑∑ 
friendRequestList
∑∑  1
=
∑∑2 3
new
∑∑4 7
List
∑∑8 <
<
∑∑< =
FriendRequest
∑∑= J
>
∑∑J K
(
∑∑K L
)
∑∑L M
;
∑∑M N
foreach
ππ 
(
ππ 
FriendRequests
ππ #
friendRequests
ππ$ 2
in
ππ3 5 
friendRequestsList
ππ6 H
)
ππH I
{
∫∫ 
Player
ºº 
playerProfile
ºº $
=
ºº% &
new
ºº' *
Player
ºº+ 1
(
ºº1 2
)
ºº2 3
;
ºº3 4
playerProfile
ΩΩ 
.
ΩΩ 
IDPlayer
ΩΩ &
=
ΩΩ' (
friendRequests
ΩΩ) 7
.
ΩΩ7 8
Profiles
ΩΩ8 @
.
ΩΩ@ A
Players
ΩΩA H
.
ΩΩH I
IDPlayer
ΩΩI Q
;
ΩΩQ R
playerProfile
ææ 
.
ææ 
Names
ææ #
=
ææ$ %
friendRequests
ææ& 4
.
ææ4 5
Profiles
ææ5 =
.
ææ= >
Players
ææ> E
.
ææE F
Names
ææF K
;
ææK L
playerProfile
øø 
.
øø 
Surnames
øø &
=
øø' (
friendRequests
øø) 7
.
øø7 8
Profiles
øø8 @
.
øø@ A
Players
øøA H
.
øøH I
Surnames
øøI Q
;
øøQ R
playerProfile
¿¿ 
.
¿¿ 
Email
¿¿ #
=
¿¿$ %
friendRequests
¿¿& 4
.
¿¿4 5
Profiles
¿¿5 =
.
¿¿= >
Players
¿¿> E
.
¿¿E F
Email
¿¿F K
;
¿¿K L
playerProfile
¡¡ 
.
¡¡ 
NickName
¡¡ &
=
¡¡' (
friendRequests
¡¡) 7
.
¡¡7 8
Profiles
¡¡8 @
.
¡¡@ A
Players
¡¡A H
.
¡¡H I
NickName
¡¡I Q
;
¡¡Q R
playerProfile
¬¬ 
.
¬¬ 
	BirthDate
¬¬ '
=
¬¬( )
friendRequests
¬¬* 8
.
¬¬8 9
Profiles
¬¬9 A
.
¬¬A B
Players
¬¬B I
.
¬¬I J
	BirthDate
¬¬J S
;
¬¬S T
Player
ƒƒ 
playerProfile1
ƒƒ %
=
ƒƒ& '
new
ƒƒ( +
Player
ƒƒ, 2
(
ƒƒ2 3
)
ƒƒ3 4
;
ƒƒ4 5
playerProfile1
≈≈ 
.
≈≈ 
IDPlayer
≈≈ '
=
≈≈( )
friendRequests
≈≈* 8
.
≈≈8 9
	Profiles1
≈≈9 B
.
≈≈B C
Players
≈≈C J
.
≈≈J K
IDPlayer
≈≈K S
;
≈≈S T
playerProfile1
∆∆ 
.
∆∆ 
Names
∆∆ $
=
∆∆% &
friendRequests
∆∆' 5
.
∆∆5 6
	Profiles1
∆∆6 ?
.
∆∆? @
Players
∆∆@ G
.
∆∆G H
Names
∆∆H M
;
∆∆M N
playerProfile1
«« 
.
«« 
Surnames
«« '
=
««( )
friendRequests
««* 8
.
««8 9
	Profiles1
««9 B
.
««B C
Players
««C J
.
««J K
Surnames
««K S
;
««S T
playerProfile1
»» 
.
»» 
Email
»» $
=
»»% &
friendRequests
»»' 5
.
»»5 6
	Profiles1
»»6 ?
.
»»? @
Players
»»@ G
.
»»G H
Email
»»H M
;
»»M N
playerProfile1
…… 
.
…… 
NickName
…… '
=
……( )
friendRequests
……* 8
.
……8 9
	Profiles1
……9 B
.
……B C
Players
……C J
.
……J K
NickName
……K S
;
……S T
playerProfile1
   
.
   
	BirthDate
   (
=
  ) *
friendRequests
  + 9
.
  9 :
	Profiles1
  : C
.
  C D
Players
  D K
.
  K L
	BirthDate
  L U
;
  U V
Profile
ÃÃ 
profile
ÃÃ 
=
ÃÃ  !
new
ÃÃ" %
Profile
ÃÃ& -
(
ÃÃ- .
)
ÃÃ. /
;
ÃÃ/ 0
profile
ÕÕ 
.
ÕÕ 
	IDProfile
ÕÕ !
=
ÕÕ" #
friendRequests
ÕÕ$ 2
.
ÕÕ2 3
Profiles
ÕÕ3 ;
.
ÕÕ; <
	IDProfile
ÕÕ< E
;
ÕÕE F
profile
ŒŒ 
.
ŒŒ 
Coins
ŒŒ 
=
ŒŒ 
(
ŒŒ  !
long
ŒŒ! %
)
ŒŒ% &
friendRequests
ŒŒ& 4
.
ŒŒ4 5
Profiles
ŒŒ5 =
.
ŒŒ= >
Coins
ŒŒ> C
;
ŒŒC D
profile
œœ 
.
œœ 
LoginStatus
œœ #
=
œœ$ %
friendRequests
œœ& 4
.
œœ4 5
Profiles
œœ5 =
.
œœ= >
LoginStatus
œœ> I
;
œœI J
profile
–– 
.
–– 
Player
–– 
=
––  
playerProfile
––! .
;
––. /
Profile
““ 
profile1
““  
=
““! "
new
““# &
Profile
““' .
(
““. /
)
““/ 0
;
““0 1
profile1
”” 
.
”” 
	IDProfile
”” "
=
””# $
friendRequests
””% 3
.
””3 4
	Profiles1
””4 =
.
””= >
	IDProfile
””> G
;
””G H
profile1
‘‘ 
.
‘‘ 
Coins
‘‘ 
=
‘‘  
(
‘‘! "
long
‘‘" &
)
‘‘& '
friendRequests
‘‘' 5
.
‘‘5 6
	Profiles1
‘‘6 ?
.
‘‘? @
Coins
‘‘@ E
;
‘‘E F
profile1
’’ 
.
’’ 
LoginStatus
’’ $
=
’’% &
friendRequests
’’' 5
.
’’5 6
	Profiles1
’’6 ?
.
’’? @
LoginStatus
’’@ K
;
’’K L
profile1
÷÷ 
.
÷÷ 
Player
÷÷ 
=
÷÷  !
playerProfile1
÷÷" 0
;
÷÷0 1
FriendRequest
ÿÿ 
friendRequest
ÿÿ +
=
ÿÿ, -
new
ÿÿ. 1
FriendRequest
ÿÿ2 ?
(
ÿÿ? @
)
ÿÿ@ A
;
ÿÿA B
friendRequest
ŸŸ 
.
ŸŸ 
IDFriendRequest
ŸŸ -
=
ŸŸ. /
friendRequests
ŸŸ0 >
.
ŸŸ> ?
IDFriendRequest
ŸŸ? N
;
ŸŸN O
friendRequest
⁄⁄ 
.
⁄⁄ 
CreationDate
⁄⁄ *
=
⁄⁄+ ,
friendRequests
⁄⁄- ;
.
⁄⁄; <
CreationDate
⁄⁄< H
;
⁄⁄H I
friendRequest
€€ 
.
€€ 
Message
€€ %
=
€€& '
friendRequests
€€( 6
.
€€6 7
Message
€€7 >
;
€€> ?
friendRequest
‹‹ 
.
‹‹ 
AceptationStatus
‹‹ .
=
‹‹/ 0
friendRequests
‹‹1 ?
.
‹‹? @
AceptationStatus
‹‹@ P
;
‹‹P Q
friendRequest
›› 
.
›› 
SendingStatus
›› +
=
››, -
friendRequests
››. <
.
››< =
SendingStatus
››= J
;
››J K
friendRequest
ﬁﬁ 
.
ﬁﬁ 
Profile
ﬁﬁ %
=
ﬁﬁ& '
profile
ﬁﬁ( /
;
ﬁﬁ/ 0
friendRequest
ﬂﬂ 
.
ﬂﬂ 
Profile1
ﬂﬂ &
=
ﬂﬂ' (
profile1
ﬂﬂ) 1
;
ﬂﬂ1 2
friendRequestList
·· !
.
··! "
Add
··" %
(
··% &
friendRequest
··& 3
)
··3 4
;
··4 5
}
‚‚ 
return
‰‰ 
friendRequestList
‰‰ $
;
‰‰$ %
}
ÂÂ 	
public
ÁÁ 
bool
ÁÁ T
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile
ÁÁ Z
(
ÁÁZ [
long
ÁÁ[ _"
transmitterProfileID
ÁÁ` t
,
ÁÁt u
long
ÁÁv z 
receiverProfileIDÁÁ{ å
)ÁÁå ç
{
ËË 	
try
ÈÈ 
{
ÍÍ $
DatabaseModelContainer
ÎÎ &$
databaseModelContainer
ÎÎ' =
=
ÎÎ> ?
new
ÎÎ@ C$
DatabaseModelContainer
ÎÎD Z
(
ÎÎZ [
)
ÎÎ[ \
;
ÎÎ\ ]
FriendRequests
ÏÏ 
friendRequests
ÏÏ -
=
ÏÏ. /$
databaseModelContainer
ÏÏ0 F
.
ÏÏF G
FriendRequestsSet
ÏÏG X
.
ÏÏX Y
Where
ÏÏY ^
(
ÏÏ^ _
fr
ÏÏ_ a
=>
ÏÏb d
fr
ÏÏe g
.
ÏÏg h
Profiles
ÏÏh p
.
ÏÏp q
	IDProfile
ÏÏq z
==
ÏÏ{ }#
transmitterProfileIDÏÏ~ í
)ÏÏí ì
.
ÌÌ 
Where
ÌÌ 
(
ÌÌ 
fr
ÌÌ 
=>
ÌÌ  
fr
ÌÌ! #
.
ÌÌ# $
	Profiles1
ÌÌ$ -
.
ÌÌ- .
	IDProfile
ÌÌ. 7
==
ÌÌ8 :
receiverProfileID
ÌÌ; L
)
ÌÌL M
.
ÓÓ 
Where
ÓÓ 
(
ÓÓ 
fr
ÓÓ 
=>
ÓÓ  
fr
ÓÓ! #
.
ÓÓ# $
AceptationStatus
ÓÓ$ 4
==
ÓÓ5 7-
FriendRequestAceptationStatuses
ÓÓ8 W
.
ÓÓW X
Pendient
ÓÓX `
.
ÓÓ` a
ToString
ÓÓa i
(
ÓÓi j
)
ÓÓj k
)
ÓÓk l
.
ÔÔ 
Where
ÔÔ 
(
ÔÔ 
fr
ÔÔ 
=>
ÔÔ  
fr
ÔÔ! #
.
ÔÔ# $
SendingStatus
ÔÔ$ 1
==
ÔÔ2 4*
FriendRequestSendingStatuses
ÔÔ5 Q
.
ÔÔQ R
Sent
ÔÔR V
.
ÔÔV W
ToString
ÔÔW _
(
ÔÔ_ `
)
ÔÔ` a
)
ÔÔa b
.
 
FirstOrDefault
 #
(
# $
)
$ %
;
% &
if
ÒÒ 
(
ÒÒ 
friendRequests
ÒÒ "
!=
ÒÒ# %
null
ÒÒ& *
)
ÒÒ* +
{
ÚÚ 
return
ÛÛ 
true
ÛÛ 
;
ÛÛ  
}
ÙÙ 
}
ıı 
catch
ˆˆ 
(
ˆˆ 
	Exception
ˆˆ 
ex
ˆˆ 
)
ˆˆ  
{
˜˜ 
Console
¯¯ 
.
¯¯ 
	WriteLine
¯¯ !
(
¯¯! "
ex
¯¯" $
.
¯¯$ %
ToString
¯¯% -
(
¯¯- .
)
¯¯. /
)
¯¯/ 0
;
¯¯0 1
}
˘˘ 
return
˚˚ 
false
˚˚ 
;
˚˚ 
}
¸¸ 	
public
˛˛ 
bool
˛˛ Z
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile
˛˛ `
(
˛˛` a
long
˛˛a e"
transmitterProfileID
˛˛f z
,
˛˛z {
long˛˛| Ä
senderProfileID˛˛Å ê
)˛˛ê ë
{
ˇˇ 	
try
ÄÄ 
{
ÅÅ $
DatabaseModelContainer
ÇÇ &$
databaseModelContainer
ÇÇ' =
=
ÇÇ> ?
new
ÇÇ@ C$
DatabaseModelContainer
ÇÇD Z
(
ÇÇZ [
)
ÇÇ[ \
;
ÇÇ\ ]
FriendRequests
ÉÉ 
friendRequests
ÉÉ -
=
ÉÉ. /$
databaseModelContainer
ÉÉ0 F
.
ÉÉF G
FriendRequestsSet
ÉÉG X
.
ÉÉX Y
Where
ÉÉY ^
(
ÉÉ^ _
fr
ÉÉ_ a
=>
ÉÉb d
fr
ÉÉe g
.
ÉÉg h
Profiles
ÉÉh p
.
ÉÉp q
	IDProfile
ÉÉq z
==
ÉÉ{ }
senderProfileIDÉÉ~ ç
)ÉÉç é
.
ÑÑ 
Where
ÑÑ 
(
ÑÑ 
fr
ÑÑ 
=>
ÑÑ  
fr
ÑÑ! #
.
ÑÑ# $
	Profiles1
ÑÑ$ -
.
ÑÑ- .
	IDProfile
ÑÑ. 7
==
ÑÑ8 :"
transmitterProfileID
ÑÑ; O
)
ÑÑO P
.
ÖÖ 
Where
ÖÖ 
(
ÖÖ 
fr
ÖÖ 
=>
ÖÖ  
fr
ÖÖ! #
.
ÖÖ# $
AceptationStatus
ÖÖ$ 4
==
ÖÖ5 7-
FriendRequestAceptationStatuses
ÖÖ8 W
.
ÖÖW X
Pendient
ÖÖX `
.
ÖÖ` a
ToString
ÖÖa i
(
ÖÖi j
)
ÖÖj k
)
ÖÖk l
.
ÜÜ 
Where
ÜÜ 
(
ÜÜ 
fr
ÜÜ 
=>
ÜÜ  
fr
ÜÜ! #
.
ÜÜ# $
SendingStatus
ÜÜ$ 1
==
ÜÜ2 4*
FriendRequestSendingStatuses
ÜÜ5 Q
.
ÜÜQ R
Sent
ÜÜR V
.
ÜÜV W
ToString
ÜÜW _
(
ÜÜ_ `
)
ÜÜ` a
)
ÜÜa b
.
áá 
FirstOrDefault
áá #
(
áá# $
)
áá$ %
;
áá% &
if
àà 
(
àà 
friendRequests
àà "
!=
àà# %
null
àà& *
)
àà* +
{
ââ 
return
ää 
true
ää 
;
ää  
}
ãã 
}
åå 
catch
çç 
(
çç 
	Exception
çç 
ex
çç 
)
çç  
{
éé 
Console
èè 
.
èè 
	WriteLine
èè !
(
èè! "
ex
èè" $
.
èè$ %
ToString
èè% -
(
èè- .
)
èè. /
)
èè/ 0
;
èè0 1
}
êê 
return
íí 
false
íí 
;
íí 
}
ìì 	
public
óó 
void
óó 
AddFriendRequest
óó $
(
óó$ %
FriendRequests
óó% 3
friendRequests
óó4 B
)
óóB C
{
òò 	
try
ôô 
{
öö $
DatabaseModelContainer
õõ &$
databaseModelContainer
õõ' =
=
õõ> ?
new
õõ@ C$
DatabaseModelContainer
õõD Z
(
õõZ [
)
õõ[ \
;
õõ\ ]$
databaseModelContainer
úú &
.
úú& '
Entry
úú' ,
(
úú, -
friendRequests
úú- ;
)
úú; <
.
úú< =
State
úú= B
=
úúC D
EntityState
úúE P
.
úúP Q
	Unchanged
úúQ Z
;
úúZ [$
databaseModelContainer
ùù &
.
ùù& '
FriendRequestsSet
ùù' 8
.
ùù8 9
Add
ùù9 <
(
ùù< =
friendRequests
ùù= K
)
ùùK L
;
ùùL M$
databaseModelContainer
ûû &
.
ûû& '
SaveChanges
ûû' 2
(
ûû2 3
)
ûû3 4
;
ûû4 54
&ServiceFriendRequestForCallbackMethods
°° 64
&serviceFriendRequestForCallbackMethods
°°7 ]
=
°°^ _
new
°°` c5
&ServiceFriendRequestForCallbackMethods°°d ä
(°°ä ã
)°°ã å
;°°å ç4
&serviceFriendRequestForCallbackMethods
¢¢ 6
.
¢¢6 7<
.UpdateFriendRequestsListsToAllConnectedClients
¢¢7 e
(
¢¢e f
)
¢¢f g
;
¢¢g h
}
££ 
catch
§§ 
(
§§ )
DbEntityValidationException
§§ .
ex
§§/ 1
)
§§1 2
{
•• 
foreach
¶¶ 
(
¶¶ 
var
¶¶ 
validationErrors
¶¶ -
in
¶¶. 0
ex
¶¶1 3
.
¶¶3 4$
EntityValidationErrors
¶¶4 J
)
¶¶J K
{
ßß 
foreach
®® 
(
®® 
var
®®  
validationError
®®! 0
in
®®1 3
validationErrors
®®4 D
.
®®D E
ValidationErrors
®®E U
)
®®U V
{
©© 
Console
™™ 
.
™™  
	WriteLine
™™  )
(
™™) *
$"
™™* ,
$str
™™, 6
{
™™6 7
validationError
™™7 F
.
™™F G
PropertyName
™™G S
}
™™S T
$str
™™T \
{
™™\ ]
validationError
™™] l
.
™™l m
ErrorMessage
™™m y
}
™™y z
"
™™z {
)
™™{ |
;
™™| }
}
´´ 
}
¨¨ 
}
≠≠ 
}
ÆÆ 	
public
∞∞ 
void
∞∞ !
AcceptFriendRequest
∞∞ '
(
∞∞' (
FriendRequests
∞∞( 6
friendRequests
∞∞7 E
)
∞∞E F
{
±± 	
try
≤≤ 
{
≥≥ $
DatabaseModelContainer
¥¥ &$
databaseModelContainer
¥¥' =
=
¥¥> ?
new
¥¥@ C$
DatabaseModelContainer
¥¥D Z
(
¥¥Z [
)
¥¥[ \
;
¥¥\ ]
FriendRequests
µµ $
friendRequestsToModify
µµ 5
=
µµ6 7$
databaseModelContainer
µµ8 N
.
µµN O
FriendRequestsSet
µµO `
.
µµ` a
Find
µµa e
(
µµe f
friendRequests
µµf t
.
µµt u
IDFriendRequestµµu Ñ
)µµÑ Ö
;µµÖ Ü
if
∂∂ 
(
∂∂ $
friendRequestsToModify
∂∂ *
!=
∂∂+ -
null
∂∂. 2
)
∂∂2 3
{
∑∑ $
friendRequestsToModify
∏∏ *
.
∏∏* +
AceptationStatus
∏∏+ ;
=
∏∏< =
Enum
∏∏> B
.
∏∏B C
GetName
∏∏C J
(
∏∏J K
typeof
∏∏K Q
(
∏∏Q R-
FriendRequestAceptationStatuses
∏∏R q
)
∏∏q r
,
∏∏r s.
FriendRequestAceptationStatuses∏∏t ì
.∏∏ì î
Accepted∏∏î ú
)∏∏ú ù
;∏∏ù û$
databaseModelContainer
ππ *
.
ππ* +
SaveChanges
ππ+ 6
(
ππ6 7
)
ππ7 8
;
ππ8 9
ServiceProfile
ªª "
serviceProfile
ªª# 1
=
ªª2 3
new
ªª4 7
ServiceProfile
ªª8 F
(
ªªF G
)
ªªG H
;
ªªH I
serviceProfile
ºº "
.
ºº" #
AddFriendship
ºº# 0
(
ºº0 1
friendRequests
ºº1 ?
.
ºº? @
Profiles
ºº@ H
,
ººH I
friendRequests
ººJ X
.
ººX Y
	Profiles1
ººY b
)
ººb c
;
ººc d4
&ServiceFriendRequestForCallbackMethods
ææ :4
&serviceFriendRequestForCallbackMethods
ææ; a
=
ææb c
new
ææd g5
&ServiceFriendRequestForCallbackMethodsææh é
(ææé è
)ææè ê
;ææê ë4
&serviceFriendRequestForCallbackMethods
øø :
.
øø: ;<
.UpdateFriendRequestsListsToAllConnectedClients
øø; i
(
øøi j
)
øøj k
;
øøk l
}
¿¿ 
}
¡¡ 
catch
¬¬ 
(
¬¬ 
	Exception
¬¬ 
ex
¬¬ 
)
¬¬  
{
√√ 
Console
ƒƒ 
.
ƒƒ 
	WriteLine
ƒƒ !
(
ƒƒ! "
ex
ƒƒ" $
.
ƒƒ$ %
ToString
ƒƒ% -
(
ƒƒ- .
)
ƒƒ. /
)
ƒƒ/ 0
;
ƒƒ0 1
}
≈≈ 
}
∆∆ 	
public
»» 
void
»» !
CancelFriendRequest
»» '
(
»»' (
FriendRequests
»»( 6
friendRequests
»»7 E
)
»»E F
{
…… 	
try
   
{
ÀÀ $
DatabaseModelContainer
ÃÃ &$
databaseModelContainer
ÃÃ' =
=
ÃÃ> ?
new
ÃÃ@ C$
DatabaseModelContainer
ÃÃD Z
(
ÃÃZ [
)
ÃÃ[ \
;
ÃÃ\ ]
FriendRequests
ÕÕ $
friendRequestsToModify
ÕÕ 5
=
ÕÕ6 7$
databaseModelContainer
ÕÕ8 N
.
ÕÕN O
FriendRequestsSet
ÕÕO `
.
ÕÕ` a
Find
ÕÕa e
(
ÕÕe f
friendRequests
ÕÕf t
.
ÕÕt u
IDFriendRequestÕÕu Ñ
)ÕÕÑ Ö
;ÕÕÖ Ü
if
ŒŒ 
(
ŒŒ $
friendRequestsToModify
ŒŒ *
!=
ŒŒ+ -
null
ŒŒ. 2
)
ŒŒ2 3
{
œœ $
friendRequestsToModify
–– *
.
––* +
SendingStatus
––+ 8
=
––9 :
Enum
––; ?
.
––? @
GetName
––@ G
(
––G H
typeof
––H N
(
––N O*
FriendRequestSendingStatuses
––O k
)
––k l
,
––l m+
FriendRequestSendingStatuses––n ä
.––ä ã
Canceled––ã ì
)––ì î
;––î ï$
databaseModelContainer
—— *
.
——* +
SaveChanges
——+ 6
(
——6 7
)
——7 8
;
——8 94
&ServiceFriendRequestForCallbackMethods
‘‘ :4
&serviceFriendRequestForCallbackMethods
‘‘; a
=
‘‘b c
new
‘‘d g5
&ServiceFriendRequestForCallbackMethods‘‘h é
(‘‘é è
)‘‘è ê
;‘‘ê ë4
&serviceFriendRequestForCallbackMethods
’’ :
.
’’: ;<
.UpdateFriendRequestsListsToAllConnectedClients
’’; i
(
’’i j
)
’’j k
;
’’k l
}
÷÷ 
}
◊◊ 
catch
ÿÿ 
(
ÿÿ 
	Exception
ÿÿ 
ex
ÿÿ 
)
ÿÿ  
{
ŸŸ 
Console
⁄⁄ 
.
⁄⁄ 
	WriteLine
⁄⁄ !
(
⁄⁄! "
ex
⁄⁄" $
.
⁄⁄$ %
ToString
⁄⁄% -
(
⁄⁄- .
)
⁄⁄. /
)
⁄⁄/ 0
;
⁄⁄0 1
}
€€ 
}
‹‹ 	
public
ﬁﬁ 
void
ﬁﬁ !
RejectFriendRequest
ﬁﬁ '
(
ﬁﬁ' (
FriendRequests
ﬁﬁ( 6
friendRequests
ﬁﬁ7 E
)
ﬁﬁE F
{
ﬂﬂ 	
try
‡‡ 
{
·· $
DatabaseModelContainer
‚‚ &$
databaseModelContainer
‚‚' =
=
‚‚> ?
new
‚‚@ C$
DatabaseModelContainer
‚‚D Z
(
‚‚Z [
)
‚‚[ \
;
‚‚\ ]
FriendRequests
„„ $
friendRequestsToModify
„„ 5
=
„„6 7$
databaseModelContainer
„„8 N
.
„„N O
FriendRequestsSet
„„O `
.
„„` a
Find
„„a e
(
„„e f
friendRequests
„„f t
.
„„t u
IDFriendRequest„„u Ñ
)„„Ñ Ö
;„„Ö Ü
if
‰‰ 
(
‰‰ $
friendRequestsToModify
‰‰ *
!=
‰‰+ -
null
‰‰. 2
)
‰‰2 3
{
ÂÂ $
friendRequestsToModify
ÊÊ *
.
ÊÊ* +
AceptationStatus
ÊÊ+ ;
=
ÊÊ< =-
FriendRequestAceptationStatuses
ÊÊ> ]
.
ÊÊ] ^
Rejected
ÊÊ^ f
.
ÊÊf g
ToString
ÊÊg o
(
ÊÊo p
)
ÊÊp q
;
ÊÊq r$
databaseModelContainer
ÁÁ *
.
ÁÁ* +
SaveChanges
ÁÁ+ 6
(
ÁÁ6 7
)
ÁÁ7 8
;
ÁÁ8 94
&ServiceFriendRequestForCallbackMethods
ÈÈ :4
&serviceFriendRequestForCallbackMethods
ÈÈ; a
=
ÈÈb c
new
ÈÈd g5
&ServiceFriendRequestForCallbackMethodsÈÈh é
(ÈÈé è
)ÈÈè ê
;ÈÈê ë4
&serviceFriendRequestForCallbackMethods
ÍÍ :
.
ÍÍ: ;<
.UpdateFriendRequestsListsToAllConnectedClients
ÍÍ; i
(
ÍÍi j
)
ÍÍj k
;
ÍÍk l
}
ÎÎ 
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
	Exception
ÌÌ 
ex
ÌÌ 
)
ÌÌ  
{
ÓÓ 
Console
ÔÔ 
.
ÔÔ 
	WriteLine
ÔÔ !
(
ÔÔ! "
ex
ÔÔ" $
.
ÔÔ$ %
ToString
ÔÔ% -
(
ÔÔ- .
)
ÔÔ. /
)
ÔÔ/ 0
;
ÔÔ0 1
}
 
}
ÒÒ 	
}
ÚÚ 
[
ÙÙ 
CallbackBehavior
ÙÙ 
(
ÙÙ 
ConcurrencyMode
ÙÙ %
=
ÙÙ& '
ConcurrencyMode
ÙÙ( 7
.
ÙÙ7 8
Multiple
ÙÙ8 @
,
ÙÙ@ A'
UseSynchronizationContext
ÙÙB [
=
ÙÙ\ ]
false
ÙÙ^ c
)
ÙÙc d
]
ÙÙd e
public
ıı 

class
ıı 4
&ServiceFriendRequestForCallbackMethods
ıı 7
:
ıı8 9.
 IFriendRequestForCallbackMethods
ıı: Z
{
ˆˆ 
public
˜˜ 
static
˜˜ 

Dictionary
˜˜  
<
˜˜  !
string
˜˜! '
,
˜˜' ($
IFriendRequestCallback
˜˜) ?
>
˜˜? @
connectedProfiles
˜˜A R
=
˜˜S T
new
˜˜U X

Dictionary
˜˜Y c
<
˜˜c d
string
˜˜d j
,
˜˜j k%
IFriendRequestCallback˜˜l Ç
>˜˜Ç É
(˜˜É Ñ
)˜˜Ñ Ö
;˜˜Ö Ü
public
˘˘ 
void
˘˘ 
Connect
˘˘ 
(
˘˘ 
string
˘˘ "
username
˘˘# +
)
˘˘+ ,
{
˙˙ 	$
IFriendRequestCallback
˚˚ "
callback
˚˚# +
=
˚˚, -
OperationContext
˚˚. >
.
˚˚> ?
Current
˚˚? F
.
˚˚F G 
GetCallbackChannel
˚˚G Y
<
˚˚Y Z$
IFriendRequestCallback
˚˚Z p
>
˚˚p q
(
˚˚q r
)
˚˚r s
;
˚˚s t
if
˝˝ 
(
˝˝ 
!
˝˝ 
connectedProfiles
˝˝ "
.
˝˝" #
ContainsKey
˝˝# .
(
˝˝. /
username
˝˝/ 7
)
˝˝7 8
)
˝˝8 9
{
˛˛ 
connectedProfiles
ˇˇ !
.
ˇˇ! "
Add
ˇˇ" %
(
ˇˇ% &
username
ˇˇ& .
,
ˇˇ. /
callback
ˇˇ0 8
)
ˇˇ8 9
;
ˇˇ9 :
}
ÄÄ 
}
ÅÅ 	
public
ÉÉ 
void
ÉÉ 

Disconnect
ÉÉ 
(
ÉÉ 
string
ÉÉ %
username
ÉÉ& .
)
ÉÉ. /
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
connectedProfiles
ÖÖ !
.
ÖÖ! "
ContainsKey
ÖÖ" -
(
ÖÖ- .
username
ÖÖ. 6
)
ÖÖ6 7
)
ÖÖ7 8
{
ÜÜ 
connectedProfiles
áá !
.
áá! "
Remove
áá" (
(
áá( )
username
áá) 1
)
áá1 2
;
áá2 3
}
àà 
}
ââ 	
public
ãã 
void
ãã <
.UpdateFriendRequestsListsToAllConnectedClients
ãã B
(
ããB C
)
ããC D
{
åå 	
foreach
çç 
(
çç 
var
çç #
friendRequestCallback
çç .
in
çç/ 1
connectedProfiles
çç2 C
.
ççC D
Values
ççD J
)
ççJ K
{
éé #
friendRequestCallback
èè %
.
èè% &(
UpdateFriendsRequestsLists
èè& @
(
èè@ A
)
èèA B
;
èèB C
}
êê 
}
ëë 	
}
ìì 
}îî ›Å
XC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServicePlayer.cs
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
ÄÄ 	
public
ÇÇ 
List
ÇÇ 
<
ÇÇ 
Players
ÇÇ 
>
ÇÇ !
GetSpecifiedPlayers
ÇÇ 0
(
ÇÇ0 1
string
ÇÇ1 7
name
ÇÇ8 <
)
ÇÇ< =
{
ÉÉ 	
List
ÑÑ 
<
ÑÑ 
Players
ÑÑ 
>
ÑÑ 
players
ÑÑ !
=
ÑÑ" #
null
ÑÑ$ (
;
ÑÑ( )
try
ÜÜ 
{
áá $
DatabaseModelContainer
àà &$
databaseModelContainer
àà' =
=
àà> ?
new
àà@ C$
DatabaseModelContainer
ààD Z
(
ààZ [
)
àà[ \
;
àà\ ]
players
ââ 
=
ââ $
databaseModelContainer
ââ 0
.
ââ0 1

PlayersSet
ââ1 ;
.
ââ; <
Where
ââ< A
(
ââA B
e
ââB C
=>
ââD F
e
ââG H
.
ââH I
Names
ââI N
.
ââN O
Contains
ââO W
(
ââW X
name
ââX \
)
ââ\ ]
)
ââ] ^
.
ââ^ _
ToList
ââ_ e
(
ââe f
)
ââf g
;
ââg h
}
ää 
catch
ãã 
(
ãã 
	Exception
ãã 
ex
ãã 
)
ãã  
{
åå 
Console
çç 
.
çç 
	WriteLine
çç !
(
çç! "
ex
çç" $
.
çç$ %
ToString
çç% -
(
çç- .
)
çç. /
)
çç/ 0
;
çç0 1
}
éé 
return
èè 
players
èè 
;
èè 
}
ëë 	
public
ìì 
long
ìì 
ModifyPlayer
ìì  
(
ìì  !
Players
ìì! (
modifiedPlayer
ìì) 7
)
ìì7 8
{
îî 	
long
ïï 
generatedID
ïï 
=
ïï 
$num
ïï  
;
ïï  !
try
óó 
{
òò $
DatabaseModelContainer
ôô &$
databaseModelContainer
ôô' =
=
ôô> ?
new
ôô@ C$
DatabaseModelContainer
ôôD Z
(
ôôZ [
)
ôô[ \
;
ôô\ ]
Players
öö 
playerToModify
öö &
=
öö' ($
databaseModelContainer
öö) ?
.
öö? @

PlayersSet
öö@ J
.
ööJ K
Find
ööK O
(
ööO P
modifiedPlayer
ööP ^
.
öö^ _
IDPlayer
öö_ g
)
öög h
;
ööh i
if
õõ 
(
õõ 
playerToModify
õõ !
!=
õõ" $
null
õõ% )
)
õõ) *
{
úú 
playerToModify
ùù "
.
ùù" #
	BirthDate
ùù# ,
=
ùù- .
modifiedPlayer
ùù/ =
.
ùù= >
	BirthDate
ùù> G
;
ùùG H
playerToModify
ûû "
.
ûû" #
Surnames
ûû# +
=
ûû, -
modifiedPlayer
ûû. <
.
ûû< =
Surnames
ûû= E
;
ûûE F
playerToModify
üü "
.
üü" #
Email
üü# (
=
üü) *
modifiedPlayer
üü+ 9
.
üü9 :
Email
üü: ?
;
üü? @
playerToModify
†† "
.
††" #
Names
††# (
=
††) *
modifiedPlayer
††+ 9
.
††9 :
Names
††: ?
;
††? @
playerToModify
°° "
.
°°" #
NickName
°°# +
=
°°, -
modifiedPlayer
°°. <
.
°°< =
NickName
°°= E
;
°°E F$
databaseModelContainer
¢¢ *
.
¢¢* +
SaveChanges
¢¢+ 6
(
¢¢6 7
)
¢¢7 8
;
¢¢8 9
generatedID
££ 
=
££  !
(
££" #
int
££# &
)
££& '
playerToModify
££' 5
.
££5 6
IDPlayer
££6 >
;
££> ?
}
§§ 
}
•• 
catch
¶¶ 
(
¶¶ 
	Exception
¶¶ 
ex
¶¶ 
)
¶¶  
{
ßß 
Console
®® 
.
®® 
	WriteLine
®® !
(
®®! "
ex
®®" $
.
®®$ %
ToString
®®% -
(
®®- .
)
®®. /
)
®®/ 0
;
®®0 1
}
©© 
return
´´ 
generatedID
´´ 
;
´´ 
}
¨¨ 	
public
ÆÆ 
void
ÆÆ #
ModifyPasswordByEmail
ÆÆ )
(
ÆÆ) *
String
ÆÆ* 0
originalEmail
ÆÆ1 >
,
ÆÆ> ?
String
ÆÆ@ F
newPassword
ÆÆG R
)
ÆÆR S
{
ØØ 	
try
∞∞ 
{
±± $
DatabaseModelContainer
≤≤ &$
databaseModelContainer
≤≤' =
=
≤≤> ?
new
≤≤@ C$
DatabaseModelContainer
≤≤D Z
(
≤≤Z [
)
≤≤[ \
;
≤≤\ ]
Players
≥≥ 
playerToModify
≥≥ &
=
≥≥' ($
databaseModelContainer
≥≥) ?
.
≥≥? @

PlayersSet
≥≥@ J
.
≥≥J K
FirstOrDefault
≥≥K Y
(
≥≥Y Z
e
≥≥Z [
=>
≥≥\ ^
e
≥≥_ `
.
≥≥` a
Email
≥≥a f
==
≥≥g i
originalEmail
≥≥j w
)
≥≥w x
;
≥≥x y
if
µµ 
(
µµ 
playerToModify
µµ "
!=
µµ# %
null
µµ& *
)
µµ* +
{
∂∂ 
playerToModify
∑∑ "
.
∑∑" #
Password
∑∑# +
=
∑∑, -
newPassword
∑∑. 9
;
∑∑9 :
}
∏∏ $
databaseModelContainer
∫∫ &
.
∫∫& '
SaveChanges
∫∫' 2
(
∫∫2 3
)
∫∫3 4
;
∫∫4 5
}
ªª 
catch
ºº 
(
ºº 
	Exception
ºº 
ex
ºº 
)
ºº  
{
ΩΩ 
Console
ææ 
.
ææ 
	WriteLine
ææ !
(
ææ! "
ex
ææ" $
.
ææ$ %
ToString
ææ% -
(
ææ- .
)
ææ. /
)
ææ/ 0
;
ææ0 1
}
øø 
}
¡¡ 	
public
√√ 
bool
√√ '
TheEmailIsAlreadyRegisted
√√ -
(
√√- .
String
√√. 4
emailToSearch
√√5 B
)
√√B C
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
∆∆ 
emails
∆∆ 
=
∆∆  !$
databaseModelContainer
∆∆" 8
.
∆∆8 9

PlayersSet
∆∆9 C
.
∆∆C D
Select
∆∆D J
(
∆∆J K
row
∆∆K N
=>
∆∆O Q
row
∆∆R U
.
∆∆U V
Email
∆∆V [
)
∆∆[ \
.
∆∆\ ]
ToList
∆∆] c
(
∆∆c d
)
∆∆d e
;
∆∆e f
foreach
«« 
(
«« 
String
«« 
email
«« !
in
««" $
emails
««% +
)
««+ ,
{
»» 
if
…… 
(
…… 
email
…… 
==
…… 
emailToSearch
…… *
)
……* +
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
œœ 	
public
—— 
bool
—— *
TheNicknameIsAlreadyRegisted
—— 0
(
——0 1
String
——1 7
nicknameToSearch
——8 H
)
——H I
{
““ 	$
DatabaseModelContainer
”” "$
databaseModelContainer
””# 9
=
””: ;
new
””< ?$
DatabaseModelContainer
””@ V
(
””V W
)
””W X
;
””X Y
List
‘‘ 
<
‘‘ 
String
‘‘ 
>
‘‘ 
	nicknames
‘‘ "
=
‘‘# $$
databaseModelContainer
‘‘% ;
.
‘‘; <

PlayersSet
‘‘< F
.
‘‘F G
Select
‘‘G M
(
‘‘M N
row
‘‘N Q
=>
‘‘R T
row
‘‘U X
.
‘‘X Y
NickName
‘‘Y a
)
‘‘a b
.
‘‘b c
ToList
‘‘c i
(
‘‘i j
)
‘‘j k
;
‘‘k l
foreach
’’ 
(
’’ 
String
’’ 
nickname
’’ $
in
’’% '
	nicknames
’’( 1
)
’’1 2
{
÷÷ 
if
◊◊ 
(
◊◊ 
nickname
◊◊ 
==
◊◊ 
nicknameToSearch
◊◊  0
)
◊◊0 1
{
ÿÿ 
return
ŸŸ 
true
ŸŸ 
;
ŸŸ  
}
⁄⁄ 
}
€€ 
return
‹‹ 
false
‹‹ 
;
‹‹ 
}
›› 	
}
ﬁﬁ 
}ﬂﬂ ‘¡
YC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceProfile.cs
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
ÄÄ 
profiles
ÄÄ 
=
ÄÄ 
new
ÄÄ  #
Profiles
ÄÄ$ ,
(
ÄÄ, -
)
ÄÄ- .
;
ÄÄ. /
try
ÇÇ 
{
ÉÉ $
DatabaseModelContainer
ÑÑ &$
databaseModelContainer
ÑÑ' =
=
ÑÑ> ?
new
ÑÑ@ C$
DatabaseModelContainer
ÑÑD Z
(
ÑÑZ [
)
ÑÑ[ \
;
ÑÑ\ ]
profiles
ÖÖ 
=
ÖÖ $
databaseModelContainer
ÖÖ 1
.
ÖÖ1 2
ProfilesSet
ÖÖ2 =
.
ÖÖ= >
Where
ÖÖ> C
(
ÖÖC D
e
ÖÖD E
=>
ÖÖF H
e
ÖÖI J
.
ÖÖJ K
	IDProfile
ÖÖK T
==
ÖÖU W
	profileID
ÖÖX a
)
ÖÖa b
.
ÖÖb c
FirstOrDefault
ÖÖc q
(
ÖÖq r
)
ÖÖr s
;
ÖÖs t
if
áá 
(
áá 
profiles
áá 
!=
áá 
null
áá  $
)
áá$ %
{
àà 
player
ââ 
.
ââ 
IDPlayer
ââ #
=
ââ$ %
profiles
ââ& .
.
ââ. /
Players
ââ/ 6
.
ââ6 7
IDPlayer
ââ7 ?
;
ââ? @
player
ää 
.
ää 
Names
ää  
=
ää! "
profiles
ää# +
.
ää+ ,
Players
ää, 3
.
ää3 4
Names
ää4 9
;
ää9 :
player
ãã 
.
ãã 
Surnames
ãã #
=
ãã$ %
profiles
ãã& .
.
ãã. /
Players
ãã/ 6
.
ãã6 7
Surnames
ãã7 ?
;
ãã? @
player
åå 
.
åå 
Email
åå  
=
åå! "
profiles
åå# +
.
åå+ ,
Players
åå, 3
.
åå3 4
Email
åå4 9
;
åå9 :
player
çç 
.
çç 
NickName
çç #
=
çç$ %
profiles
çç& .
.
çç. /
Players
çç/ 6
.
çç6 7
NickName
çç7 ?
;
çç? @
player
éé 
.
éé 
	BirthDate
éé $
=
éé% &
profiles
éé' /
.
éé/ 0
Players
éé0 7
.
éé7 8
	BirthDate
éé8 A
;
ééA B
player
èè 
.
èè 
Password
èè #
=
èè$ %
profiles
èè& .
.
èè. /
Players
èè/ 6
.
èè6 7
Password
èè7 ?
;
èè? @
profile
ëë 
.
ëë 
	IDProfile
ëë %
=
ëë& '
profiles
ëë( 0
.
ëë0 1
	IDProfile
ëë1 :
;
ëë: ;
profile
íí 
.
íí 
Coins
íí !
=
íí" #
(
íí$ %
long
íí% )
)
íí) *
profiles
íí* 2
.
íí2 3
Coins
íí3 8
;
íí8 9
profile
ìì 
.
ìì 
LoginStatus
ìì '
=
ìì( )
profiles
ìì* 2
.
ìì2 3
LoginStatus
ìì3 >
;
ìì> ?
profile
ïï 
.
ïï 
Player
ïï "
=
ïï# $
player
ïï% +
;
ïï+ ,
}
ññ 
else
óó 
{
òò 
profile
ôô 
=
ôô 
null
ôô "
;
ôô" #
}
öö 
}
úú 
catch
ùù 
(
ùù 
	Exception
ùù 
ex
ùù 
)
ùù  
{
ûû 
Console
üü 
.
üü 
	WriteLine
üü !
(
üü! "
ex
üü" $
.
üü$ %
ToString
üü% -
(
üü- .
)
üü. /
)
üü/ 0
;
üü0 1
}
†† 
return
¢¢ 
profile
¢¢ 
;
¢¢ 
}
££ 	
public
•• 
Profile
•• "
GetProfileByPlayerID
•• +
(
••+ ,
long
••, 0
playerID
••1 9
)
••9 :
{
¶¶ 	
Profile
ßß 
profile
ßß 
=
ßß 
new
ßß !
Profile
ßß" )
(
ßß) *
)
ßß* +
;
ßß+ ,
Player
®® 
player
®® 
=
®® 
new
®® 
Player
®®  &
(
®®& '
)
®®' (
;
®®( )
Profiles
©© 
profiles
©© 
=
©© 
new
©©  #
Profiles
©©$ ,
(
©©, -
)
©©- .
;
©©. /
try
´´ 
{
¨¨ $
DatabaseModelContainer
≠≠ &$
databaseModelContainer
≠≠' =
=
≠≠> ?
new
≠≠@ C$
DatabaseModelContainer
≠≠D Z
(
≠≠Z [
)
≠≠[ \
;
≠≠\ ]
profiles
ÆÆ 
=
ÆÆ $
databaseModelContainer
ÆÆ 1
.
ÆÆ1 2
ProfilesSet
ÆÆ2 =
.
ÆÆ= >
Where
ÆÆ> C
(
ÆÆC D
e
ÆÆD E
=>
ÆÆF H
e
ÆÆI J
.
ÆÆJ K
Players
ÆÆK R
.
ÆÆR S
IDPlayer
ÆÆS [
==
ÆÆ\ ^
playerID
ÆÆ_ g
)
ÆÆg h
.
ÆÆh i
FirstOrDefault
ÆÆi w
(
ÆÆw x
)
ÆÆx y
;
ÆÆy z
if
∞∞ 
(
∞∞ 
profiles
∞∞ 
!=
∞∞ 
null
∞∞  $
)
∞∞$ %
{
±± 
player
≤≤ 
.
≤≤ 
IDPlayer
≤≤ #
=
≤≤$ %
profiles
≤≤& .
.
≤≤. /
Players
≤≤/ 6
.
≤≤6 7
IDPlayer
≤≤7 ?
;
≤≤? @
player
≥≥ 
.
≥≥ 
Names
≥≥  
=
≥≥! "
profiles
≥≥# +
.
≥≥+ ,
Players
≥≥, 3
.
≥≥3 4
Names
≥≥4 9
;
≥≥9 :
player
¥¥ 
.
¥¥ 
Surnames
¥¥ #
=
¥¥$ %
profiles
¥¥& .
.
¥¥. /
Players
¥¥/ 6
.
¥¥6 7
Surnames
¥¥7 ?
;
¥¥? @
player
µµ 
.
µµ 
Email
µµ  
=
µµ! "
profiles
µµ# +
.
µµ+ ,
Players
µµ, 3
.
µµ3 4
Email
µµ4 9
;
µµ9 :
player
∂∂ 
.
∂∂ 
NickName
∂∂ #
=
∂∂$ %
profiles
∂∂& .
.
∂∂. /
Players
∂∂/ 6
.
∂∂6 7
NickName
∂∂7 ?
;
∂∂? @
player
∑∑ 
.
∑∑ 
	BirthDate
∑∑ $
=
∑∑% &
profiles
∑∑' /
.
∑∑/ 0
Players
∑∑0 7
.
∑∑7 8
	BirthDate
∑∑8 A
;
∑∑A B
player
∏∏ 
.
∏∏ 
Password
∏∏ #
=
∏∏$ %
profiles
∏∏& .
.
∏∏. /
Players
∏∏/ 6
.
∏∏6 7
Password
∏∏7 ?
;
∏∏? @
profile
∫∫ 
.
∫∫ 
	IDProfile
∫∫ %
=
∫∫& '
profiles
∫∫( 0
.
∫∫0 1
	IDProfile
∫∫1 :
;
∫∫: ;
profile
ªª 
.
ªª 
Coins
ªª !
=
ªª" #
(
ªª$ %
long
ªª% )
)
ªª) *
profiles
ªª* 2
.
ªª2 3
Coins
ªª3 8
;
ªª8 9
profile
ºº 
.
ºº 
LoginStatus
ºº '
=
ºº( )
profiles
ºº* 2
.
ºº2 3
LoginStatus
ºº3 >
;
ºº> ?
profile
ææ 
.
ææ 
Player
ææ "
=
ææ# $
player
ææ% +
;
ææ+ ,
}
øø 
else
¿¿ 
{
¡¡ 
profile
¬¬ 
=
¬¬ 
null
¬¬ "
;
¬¬" #
}
√√ 
}
≈≈ 
catch
∆∆ 
(
∆∆ 
	Exception
∆∆ 
ex
∆∆ 
)
∆∆  
{
«« 
Console
»» 
.
»» 
	WriteLine
»» !
(
»»! "
ex
»»" $
.
»»$ %
ToString
»»% -
(
»»- .
)
»». /
)
»»/ 0
;
»»0 1
}
…… 
return
ÀÀ 
profile
ÀÀ 
;
ÀÀ 
}
ÃÃ 	
public
ŒŒ 
Profile
ŒŒ (
GetProfileByPlayerNickname
ŒŒ 1
(
ŒŒ1 2
string
ŒŒ2 8
nickname
ŒŒ9 A
)
ŒŒA B
{
œœ 	
Profile
–– 
profile
–– 
=
–– 
new
–– !
Profile
––" )
(
––) *
)
––* +
;
––+ ,
Player
—— 
player
—— 
=
—— 
new
—— 
Player
——  &
(
——& '
)
——' (
;
——( )
Profiles
““ 
profiles
““ 
=
““ 
new
““  #
Profiles
““$ ,
(
““, -
)
““- .
;
““. /
try
‘‘ 
{
’’ $
DatabaseModelContainer
÷÷ &$
databaseModelContainer
÷÷' =
=
÷÷> ?
new
÷÷@ C$
DatabaseModelContainer
÷÷D Z
(
÷÷Z [
)
÷÷[ \
;
÷÷\ ]
profiles
◊◊ 
=
◊◊ $
databaseModelContainer
◊◊ 1
.
◊◊1 2
ProfilesSet
◊◊2 =
.
◊◊= >
Where
◊◊> C
(
◊◊C D
e
◊◊D E
=>
◊◊F H
e
◊◊I J
.
◊◊J K
Players
◊◊K R
.
◊◊R S
NickName
◊◊S [
==
◊◊\ ^
nickname
◊◊_ g
)
◊◊g h
.
◊◊h i
FirstOrDefault
◊◊i w
(
◊◊w x
)
◊◊x y
;
◊◊y z
if
ŸŸ 
(
ŸŸ 
profiles
ŸŸ 
!=
ŸŸ 
null
ŸŸ  $
)
ŸŸ$ %
{
⁄⁄ 
player
€€ 
.
€€ 
IDPlayer
€€ #
=
€€$ %
profiles
€€& .
.
€€. /
Players
€€/ 6
.
€€6 7
IDPlayer
€€7 ?
;
€€? @
player
‹‹ 
.
‹‹ 
Names
‹‹  
=
‹‹! "
profiles
‹‹# +
.
‹‹+ ,
Players
‹‹, 3
.
‹‹3 4
Names
‹‹4 9
;
‹‹9 :
player
›› 
.
›› 
Surnames
›› #
=
››$ %
profiles
››& .
.
››. /
Players
››/ 6
.
››6 7
Surnames
››7 ?
;
››? @
player
ﬁﬁ 
.
ﬁﬁ 
Email
ﬁﬁ  
=
ﬁﬁ! "
profiles
ﬁﬁ# +
.
ﬁﬁ+ ,
Players
ﬁﬁ, 3
.
ﬁﬁ3 4
Email
ﬁﬁ4 9
;
ﬁﬁ9 :
player
ﬂﬂ 
.
ﬂﬂ 
NickName
ﬂﬂ #
=
ﬂﬂ$ %
profiles
ﬂﬂ& .
.
ﬂﬂ. /
Players
ﬂﬂ/ 6
.
ﬂﬂ6 7
NickName
ﬂﬂ7 ?
;
ﬂﬂ? @
player
‡‡ 
.
‡‡ 
	BirthDate
‡‡ $
=
‡‡% &
profiles
‡‡' /
.
‡‡/ 0
Players
‡‡0 7
.
‡‡7 8
	BirthDate
‡‡8 A
;
‡‡A B
player
·· 
.
·· 
Password
·· #
=
··$ %
profiles
··& .
.
··. /
Players
··/ 6
.
··6 7
Password
··7 ?
;
··? @
profile
„„ 
.
„„ 
	IDProfile
„„ %
=
„„& '
profiles
„„( 0
.
„„0 1
	IDProfile
„„1 :
;
„„: ;
profile
‰‰ 
.
‰‰ 
Coins
‰‰ !
=
‰‰" #
(
‰‰$ %
long
‰‰% )
)
‰‰) *
profiles
‰‰* 2
.
‰‰2 3
Coins
‰‰3 8
;
‰‰8 9
profile
ÂÂ 
.
ÂÂ 
LoginStatus
ÂÂ '
=
ÂÂ( )
profiles
ÂÂ* 2
.
ÂÂ2 3
LoginStatus
ÂÂ3 >
;
ÂÂ> ?
profile
ÁÁ 
.
ÁÁ 
Player
ÁÁ "
=
ÁÁ# $
player
ÁÁ% +
;
ÁÁ+ ,
}
ÈÈ 
else
ÍÍ 
{
ÎÎ 
profile
ÏÏ 
=
ÏÏ 
null
ÏÏ "
;
ÏÏ" #
}
ÌÌ 
}
ÔÔ 
catch
 
(
 
	Exception
 
ex
 
)
  
{
ÒÒ 
Console
ÚÚ 
.
ÚÚ 
	WriteLine
ÚÚ !
(
ÚÚ! "
ex
ÚÚ" $
.
ÚÚ$ %
ToString
ÚÚ% -
(
ÚÚ- .
)
ÚÚ. /
)
ÚÚ/ 0
;
ÚÚ0 1
}
ÛÛ 
return
ıı 
profile
ıı 
;
ıı 
}
ˆˆ 	
public
¯¯ 
bool
¯¯ 
ModifyImageName
¯¯ #
(
¯¯# $
string
¯¯$ *
fileName
¯¯+ 3
,
¯¯3 4
string
¯¯5 ;
newName
¯¯< C
)
¯¯C D
{
˘˘ 	
try
˙˙ 
{
˚˚ 
string
¸¸ 
serverFolderPath
¸¸ '
=
¸¸( )
$str
¸¸* u
;
¸¸u v
var
˝˝ 
matchingFiles
˝˝ !
=
˝˝" #
	Directory
˝˝$ -
.
˝˝- .
GetFiles
˝˝. 6
(
˝˝6 7
serverFolderPath
˝˝7 G
,
˝˝G H
$"
˝˝I K
{
˝˝K L
fileName
˝˝L T
}
˝˝T U
$str
˝˝U W
"
˝˝W X
)
˝˝X Y
.
˛˛. /
ToList
˛˛/ 5
(
˛˛5 6
)
˛˛6 7
;
˛˛7 8
if
ÄÄ 
(
ÄÄ 
matchingFiles
ÄÄ !
.
ÄÄ! "
Count
ÄÄ" '
>
ÄÄ( )
$num
ÄÄ* +
)
ÄÄ+ ,
{
ÅÅ 
string
ÇÇ 
	imagePath
ÇÇ $
=
ÇÇ% &
matchingFiles
ÇÇ' 4
.
ÇÇ4 5
First
ÇÇ5 :
(
ÇÇ: ;
)
ÇÇ; <
;
ÇÇ< =
string
ÉÉ 
newFileName
ÉÉ &
=
ÉÉ' (
$"
ÉÉ) +
{
ÉÉ+ ,
newName
ÉÉ, 3
}
ÉÉ3 4
{
ÉÉ4 5
Path
ÉÉ5 9
.
ÉÉ9 :
GetExtension
ÉÉ: F
(
ÉÉF G
	imagePath
ÉÉG P
)
ÉÉP Q
}
ÉÉQ R
"
ÉÉR S
;
ÉÉS T
string
ÑÑ 
newPath
ÑÑ "
=
ÑÑ# $
Path
ÑÑ% )
.
ÑÑ) *
Combine
ÑÑ* 1
(
ÑÑ1 2
Path
ÑÑ2 6
.
ÑÑ6 7
GetDirectoryName
ÑÑ7 G
(
ÑÑG H
	imagePath
ÑÑH Q
)
ÑÑQ R
,
ÑÑR S
newFileName
ÑÑT _
)
ÑÑ_ `
;
ÑÑ` a
File
ÖÖ 
.
ÖÖ 
Move
ÖÖ 
(
ÖÖ 
	imagePath
ÖÖ '
,
ÖÖ' (
newPath
ÖÖ) 0
)
ÖÖ0 1
;
ÖÖ1 2
}
ÜÜ 
}
àà 
catch
ââ 
(
ââ 
	Exception
ââ 
)
ââ 
{
ää 
return
ãã 
false
ãã 
;
ãã 
}
åå 
return
éé 
true
éé 
;
éé 
}
èè 	
public
ëë 
bool
ëë  
TheProfileIsLogged
ëë &
(
ëë& '
long
ëë' +
	profileID
ëë, 5
)
ëë5 6
{
íí 	
Profiles
ìì 
profiles
ìì 
=
ìì 
new
ìì  #
Profiles
ìì$ ,
(
ìì, -
)
ìì- .
;
ìì. /
try
ïï 
{
ññ $
DatabaseModelContainer
óó &$
databaseModelContainer
óó' =
=
óó> ?
new
óó@ C$
DatabaseModelContainer
óóD Z
(
óóZ [
)
óó[ \
;
óó\ ]
profiles
òò 
=
òò $
databaseModelContainer
òò 1
.
òò1 2
ProfilesSet
òò2 =
.
òò= >
Where
òò> C
(
òòC D
e
òòD E
=>
òòF H
e
òòI J
.
òòJ K
	IDProfile
òòK T
==
òòU W
	profileID
òòX a
)
òòa b
.
òòb c
FirstOrDefault
òòc q
(
òòq r
)
òòr s
;
òòs t
if
öö 
(
öö 
profiles
öö 
.
öö 
LoginStatus
öö (
==
öö) +
Enum
öö, 0
.
öö0 1
GetName
öö1 8
(
öö8 9
typeof
öö9 ?
(
öö? @"
ProfileLoginStatuses
öö@ T
)
ööT U
,
ööU V"
ProfileLoginStatuses
ööW k
.
öök l
Logged
ööl r
)
öör s
)
öös t
{
õõ 
return
úú 
true
úú 
;
úú  
}
ùù 
}
†† 
catch
°° 
(
°° 
	Exception
°° 
ex
°° 
)
°°  
{
¢¢ 
Console
££ 
.
££ 
	WriteLine
££ !
(
££! "
ex
££" $
.
££$ %
ToString
££% -
(
££- .
)
££. /
)
££/ 0
;
££0 1
}
§§ 
return
¶¶ 
false
¶¶ 
;
¶¶ 
}
ßß 	
public
©© 
bool
©© 
UploadImage
©© 
(
©©  
string
©©  &
fileName
©©' /
,
©©/ 0
byte
©©1 5
[
©©5 6
]
©©6 7
	imageData
©©8 A
)
©©A B
{
™™ 	
try
´´ 
{
¨¨ 
string
≠≠ 
serverFolderPath
≠≠ '
=
≠≠( )
$str
≠≠* u
;
≠≠u v
string
ØØ 
searchString
ØØ #
=
ØØ$ %
$str
ØØ& )
;
ØØ) *
int
±± 
index
±± 
=
±± 
fileName
±± $
.
±±$ %
IndexOf
±±% ,
(
±±, -
searchString
±±- 9
)
±±9 :
;
±±: ;
string
≤≤ .
 fileNameWithoutExtensionToDelete
≤≤ 7
=
≤≤8 9
$str
≤≤: <
;
≤≤< =
if
¥¥ 
(
¥¥ 
index
¥¥ 
!=
¥¥ 
-
¥¥ 
$num
¥¥ 
)
¥¥  
{
µµ .
 fileNameWithoutExtensionToDelete
∂∂ 4
=
∂∂5 6
fileName
∂∂7 ?
.
∂∂? @
	Substring
∂∂@ I
(
∂∂I J
$num
∂∂J K
,
∂∂K L
index
∂∂M R
)
∂∂R S
;
∂∂S T
}
∑∑ 
DirectoryInfo
∫∫ 
directoryInfo
∫∫ +
=
∫∫, -
new
∫∫. 1
DirectoryInfo
∫∫2 ?
(
∫∫? @
serverFolderPath
∫∫@ P
)
∫∫P Q
;
∫∫Q R
if
ºº 
(
ºº 
directoryInfo
ºº !
.
ºº! "
Exists
ºº" (
)
ºº( )
{
ΩΩ 
FileInfo
ææ 
[
ææ 
]
ææ 
files
ææ $
=
ææ% &
directoryInfo
ææ' 4
.
ææ4 5
GetFiles
ææ5 =
(
ææ= >
)
ææ> ?
;
ææ? @
foreach
¿¿ 
(
¿¿ 
FileInfo
¿¿ %
file
¿¿& *
in
¿¿+ -
files
¿¿. 3
)
¿¿3 4
{
¡¡ 
string
¬¬ &
fileNameWithoutExtension
¬¬ 7
=
¬¬8 9
Path
¬¬: >
.
¬¬> ?)
GetFileNameWithoutExtension
¬¬? Z
(
¬¬Z [
file
¬¬[ _
.
¬¬_ `
Name
¬¬` d
)
¬¬d e
;
¬¬e f
if
ƒƒ 
(
ƒƒ 
string
ƒƒ "
.
ƒƒ" #
Equals
ƒƒ# )
(
ƒƒ) *&
fileNameWithoutExtension
ƒƒ* B
,
ƒƒB C.
 fileNameWithoutExtensionToDelete
ƒƒD d
,
ƒƒd e
StringComparison
ƒƒf v
.
ƒƒv w 
OrdinalIgnoreCaseƒƒw à
)ƒƒà â
)ƒƒâ ä
{
≈≈ 
file
∆∆  
.
∆∆  !
Delete
∆∆! '
(
∆∆' (
)
∆∆( )
;
∆∆) *
}
«« 
}
»» 
}
…… 
string
ÃÃ 
filePath
ÃÃ 
=
ÃÃ  !
Path
ÃÃ" &
.
ÃÃ& '
Combine
ÃÃ' .
(
ÃÃ. /
serverFolderPath
ÃÃ/ ?
,
ÃÃ? @
fileName
ÃÃA I
)
ÃÃI J
;
ÃÃJ K
File
ÕÕ 
.
ÕÕ 
WriteAllBytes
ÕÕ "
(
ÕÕ" #
filePath
ÕÕ# +
,
ÕÕ+ ,
	imageData
ÕÕ- 6
)
ÕÕ6 7
;
ÕÕ7 8
}
œœ 
catch
–– 
(
–– 
	Exception
–– 
)
–– 
{
—— 
return
““ 
false
““ 
;
““ 
}
”” 
return
’’ 
true
’’ 
;
’’ 
}
÷÷ 	
public
ŸŸ 
void
ŸŸ 
AddFriendship
ŸŸ !
(
ŸŸ! "
Profiles
ŸŸ" *
profiles
ŸŸ+ 3
,
ŸŸ3 4
Profiles
ŸŸ5 =
	profiles1
ŸŸ> G
)
ŸŸG H
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
››\ ]
string
ﬂﬂ 
sqlQuery
ﬂﬂ 
=
ﬂﬂ  !
$strﬂﬂ" å
;ﬂﬂå ç
var
·· 

parameter1
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
··2 =
,
··= >
profiles
··? G
.
··G H
	IDProfile
··H Q
)
··Q R
;
··R S
var
‚‚ 

parameter2
‚‚ 
=
‚‚  
new
‚‚! $
SqlParameter
‚‚% 1
(
‚‚1 2
$str
‚‚2 >
,
‚‚> ?
	profiles1
‚‚@ I
.
‚‚I J
	IDProfile
‚‚J S
)
‚‚S T
;
‚‚T U$
databaseModelContainer
‰‰ &
.
‰‰& '
Database
‰‰' /
.
‰‰/ 0
ExecuteSqlCommand
‰‰0 A
(
‰‰A B
sqlQuery
‰‰B J
,
‰‰J K

parameter1
‰‰L V
,
‰‰V W

parameter2
‰‰X b
)
‰‰b c
;
‰‰c d$
databaseModelContainer
ÂÂ &
.
ÂÂ& '
SaveChanges
ÂÂ' 2
(
ÂÂ2 3
)
ÂÂ3 4
;
ÂÂ4 5

parameter1
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
ÁÁ. 9
,
ÁÁ9 :
	profiles1
ÁÁ; D
.
ÁÁD E
	IDProfile
ÁÁE N
)
ÁÁN O
;
ÁÁO P

parameter2
ËË 
=
ËË 
new
ËË  
SqlParameter
ËË! -
(
ËË- .
$str
ËË. :
,
ËË: ;
profiles
ËË< D
.
ËËD E
	IDProfile
ËËE N
)
ËËN O
;
ËËO P$
databaseModelContainer
ÍÍ &
.
ÍÍ& '
Database
ÍÍ' /
.
ÍÍ/ 0
ExecuteSqlCommand
ÍÍ0 A
(
ÍÍA B
sqlQuery
ÍÍB J
,
ÍÍJ K

parameter1
ÍÍL V
,
ÍÍV W

parameter2
ÍÍX b
)
ÍÍb c
;
ÍÍc d$
databaseModelContainer
ÎÎ &
.
ÎÎ& '
SaveChanges
ÎÎ' 2
(
ÎÎ2 3
)
ÎÎ3 4
;
ÎÎ4 5.
 ServiceProfileForCallbackMethods
ÌÌ 0.
 serviceProfileForCallbackMethods
ÌÌ1 Q
=
ÌÌR S
new
ÌÌT W.
 ServiceProfileForCallbackMethods
ÌÌX x
(
ÌÌx y
)
ÌÌy z
;
ÌÌz {.
 serviceProfileForCallbackMethods
ÓÓ 0
.
ÓÓ0 15
'UpdateFriendsListsToAllConnectedClients
ÓÓ1 X
(
ÓÓX Y
)
ÓÓY Z
;
ÓÓZ [
}
ÔÔ 
catch
 
(
 
	Exception
 
ex
 
)
  
{
ÒÒ 
Console
ÚÚ 
.
ÚÚ 
	WriteLine
ÚÚ !
(
ÚÚ! "
ex
ÚÚ" $
.
ÚÚ$ %
ToString
ÚÚ% -
(
ÚÚ- .
)
ÚÚ. /
)
ÚÚ/ 0
;
ÚÚ0 1
}
ÛÛ 
}
ÙÙ 	
public
ˆˆ 
void
ˆˆ 
CancelFriendship
ˆˆ $
(
ˆˆ$ %
Profiles
ˆˆ% -
profiles
ˆˆ. 6
,
ˆˆ6 7
Profiles
ˆˆ8 @
	profiles1
ˆˆA J
)
ˆˆJ K
{
˜˜ 	
try
¯¯ 
{
˘˘ $
DatabaseModelContainer
˙˙ &$
databaseModelContainer
˙˙' =
=
˙˙> ?
new
˙˙@ C$
DatabaseModelContainer
˙˙D Z
(
˙˙Z [
)
˙˙[ \
;
˙˙\ ]
string
¸¸ 
sqlQuery
¸¸ 
=
¸¸  !
$str¸¸" ç
;¸¸ç é
var
˛˛ 

parameter1
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
˛˛2 =
,
˛˛= >
profiles
˛˛? G
.
˛˛G H
	IDProfile
˛˛H Q
)
˛˛Q R
;
˛˛R S
var
ˇˇ 

parameter2
ˇˇ 
=
ˇˇ  
new
ˇˇ! $
SqlParameter
ˇˇ% 1
(
ˇˇ1 2
$str
ˇˇ2 >
,
ˇˇ> ?
	profiles1
ˇˇ@ I
.
ˇˇI J
	IDProfile
ˇˇJ S
)
ˇˇS T
;
ˇˇT U$
databaseModelContainer
ÅÅ &
.
ÅÅ& '
Database
ÅÅ' /
.
ÅÅ/ 0
ExecuteSqlCommand
ÅÅ0 A
(
ÅÅA B
sqlQuery
ÅÅB J
,
ÅÅJ K

parameter1
ÅÅL V
,
ÅÅV W

parameter2
ÅÅX b
)
ÅÅb c
;
ÅÅc d$
databaseModelContainer
ÇÇ &
.
ÇÇ& '
SaveChanges
ÇÇ' 2
(
ÇÇ2 3
)
ÇÇ3 4
;
ÇÇ4 5

parameter1
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
ÑÑ. 9
,
ÑÑ9 :
	profiles1
ÑÑ; D
.
ÑÑD E
	IDProfile
ÑÑE N
)
ÑÑN O
;
ÑÑO P

parameter2
ÖÖ 
=
ÖÖ 
new
ÖÖ  
SqlParameter
ÖÖ! -
(
ÖÖ- .
$str
ÖÖ. :
,
ÖÖ: ;
profiles
ÖÖ< D
.
ÖÖD E
	IDProfile
ÖÖE N
)
ÖÖN O
;
ÖÖO P$
databaseModelContainer
áá &
.
áá& '
Database
áá' /
.
áá/ 0
ExecuteSqlCommand
áá0 A
(
ááA B
sqlQuery
ááB J
,
ááJ K

parameter1
ááL V
,
ááV W

parameter2
ááX b
)
ááb c
;
áác d$
databaseModelContainer
àà &
.
àà& '
SaveChanges
àà' 2
(
àà2 3
)
àà3 4
;
àà4 5.
 ServiceProfileForCallbackMethods
ãã 0.
 serviceProfileForCallbackMethods
ãã1 Q
=
ããR S
new
ããT W.
 ServiceProfileForCallbackMethods
ããX x
(
ããx y
)
ããy z
;
ããz {.
 serviceProfileForCallbackMethods
åå 0
.
åå0 15
'UpdateFriendsListsToAllConnectedClients
åå1 X
(
ååX Y
)
ååY Z
;
ååZ [
}
çç 
catch
éé 
(
éé 
	Exception
éé 
ex
éé 
)
éé  
{
èè 
Console
êê 
.
êê 
	WriteLine
êê !
(
êê! "
ex
êê" $
.
êê$ %
ToString
êê% -
(
êê- .
)
êê. /
)
êê/ 0
;
êê0 1
}
ëë 
}
íí 	
}
ìì 
public
ïï 

partial
ïï 
class
ïï .
 ServiceProfileForCallbackMethods
ïï 9
:
ïï: ;(
IProfileForCallbackMethods
ïï< V
{
ññ 
public
óó 
static
óó 
List
óó 
<
óó i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
óó v
>
óóv w 
connectedProfilesóóx â
=óóä ã
newóóå è
Listóóê î
<óóî ïk
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethodsóóï 
>óó Ò
(óóÒ Ú
)óóÚ Û
;óóÛ Ù
public
öö 
void
öö 
Connect
öö 
(
öö 
string
öö "
username
öö# +
)
öö+ ,
{
õõ 	
IProfileCallback
úú 
callback
úú %
=
úú& '
OperationContext
úú( 8
.
úú8 9
Current
úú9 @
.
úú@ A 
GetCallbackChannel
úúA S
<
úúS T
IProfileCallback
úúT d
>
úúd e
(
úúe f
)
úúf g
;
úúg hi
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
ûû g
result
ûûh n
=
ûûo p 
connectedProfilesûûq Ç
.ûûÇ É
FirstOrDefaultûûÉ ë
(ûûë í
itemûûí ñ
=>ûûó ô
itemûûö û
.ûûû ü
Keyûûü ¢
==ûû£ •
usernameûû¶ Æ
)ûûÆ Ø
;ûûØ ∞
if
†† 
(
†† 
result
†† 
==
†† 
null
†† 
)
†† 
{
°° i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
¢¢ k

dictionary
¢¢l v
=
¢¢w x
new
¢¢y |j
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods¢¢} ÿ
{
££ 
Key
§§ 
=
§§ 
username
§§ "
,
§§" #
Value
•• 
=
•• 
callback
•• $
}
¶¶ 
;
¶¶ 
connectedProfiles
ßß !
.
ßß! "
Add
ßß" %
(
ßß% &

dictionary
ßß& 0
)
ßß0 1
;
ßß1 25
'UpdateFriendsListsToAllConnectedClients
©© 7
(
©©7 8
)
©©8 9
;
©©9 :
}
™™ 
}
´´ 	
public
≠≠ 
void
≠≠ 

Disconnect
≠≠ 
(
≠≠ 
string
≠≠ %
username
≠≠& .
)
≠≠. /
{
ÆÆ 	i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
ØØ g
result
ØØh n
=
ØØo p 
connectedProfilesØØq Ç
.ØØÇ É
FirstOrDefaultØØÉ ë
(ØØë í
itemØØí ñ
=>ØØó ô
itemØØö û
.ØØû ü
KeyØØü ¢
==ØØ£ •
usernameØØ¶ Æ
)ØØÆ Ø
;ØØØ ∞
if
±± 
(
±± 
result
±± 
!=
±± 
null
±± 
)
±± 
{
≤≤ 
connectedProfiles
≥≥ !
=
≥≥" #
connectedProfiles
≥≥$ 5
.
≥≥5 6
Where
≥≥6 ;
(
≥≥; <
item
≥≥< @
=>
≥≥A C
item
≥≥D H
.
≥≥H I
Key
≥≥I L
!=
≥≥M O
username
≥≥P X
)
≥≥X Y
.
≥≥Y Z
ToList
≥≥Z `
(
≥≥` a
)
≥≥a b
;
≥≥b c
new
¥¥ 
ServiceChat
¥¥ 
(
¥¥  
)
¥¥  !
.
¥¥! "
	LeaveChat
¥¥" +
(
¥¥+ ,
username
¥¥, 4
)
¥¥4 5
;
¥¥5 6
new
µµ 4
&ServiceFriendRequestForCallbackMethods
µµ :
(
µµ: ;
)
µµ; <
.
µµ< =

Disconnect
µµ= G
(
µµG H
username
µµH P
)
µµP Q
;
µµQ R
new
∂∂ $
ServiceMultiplayerGame
∂∂ *
(
∂∂* +
)
∂∂+ ,
.
∂∂, -

Disconnect
∂∂- 7
(
∂∂7 8
username
∂∂8 @
)
∂∂@ A
;
∂∂A B
new
∑∑ )
ServiceMultiplayerCrossword
∑∑ /
(
∑∑/ 0
)
∑∑0 1
.
∑∑1 2

Disconnect
∑∑2 <
(
∑∑< =
username
∑∑= E
)
∑∑E F
;
∑∑F G5
'UpdateFriendsListsToAllConnectedClients
ππ 7
(
ππ7 8
)
ππ8 9
;
ππ9 :
}
∫∫ 
}
ªª 	
public
ΩΩ 
void
ΩΩ $
InviteFriendToTheLobby
ΩΩ *
(
ΩΩ* +
string
ΩΩ+ 1
friendNickname
ΩΩ2 @
)
ΩΩ@ A
{
ææ 	i
[KeyValueDataContractForProfilesNicknamesAndTheirCallbackForServiceProfileForCallbackMethods
øø g
result
øøh n
=
øøo p 
connectedProfilesøøq Ç
.øøÇ É
FirstOrDefaultøøÉ ë
(øøë í
itemøøí ñ
=>øøó ô
itemøøö û
.øøû ü
Keyøøü ¢
==øø£ •
friendNicknameøø¶ ¥
)øø¥ µ
;øøµ ∂
if
¡¡ 
(
¡¡ 
result
¡¡ 
!=
¡¡ 
null
¡¡ 
)
¡¡ 
{
¬¬ 
foreach
√√ 
(
√√ 
var
√√ 
friend
√√ "
in
√√# %
connectedProfiles
√√& 7
)
√√7 8
{
ƒƒ 
if
≈≈ 
(
≈≈ 
friend
≈≈ 
.
≈≈ 
Key
≈≈ !
==
≈≈" $
friendNickname
≈≈% 3
)
≈≈3 4
{
∆∆ 
friend
«« 
.
«« 
Value
«« $
.
««$ %&
OpenPaneForEnterTheLobby
««% =
(
««= >
)
««> ?
;
««? @
break
»» 
;
»» 
}
…… 
}
   
}
ÀÀ 
}
ÃÃ 	
public
ŒŒ 
void
ŒŒ 5
'UpdateFriendsListsToAllConnectedClients
ŒŒ ;
(
ŒŒ; <
)
ŒŒ< =
{
œœ 	
foreach
–– 
(
–– 
var
–– 
friend
–– 
in
––  "
connectedProfiles
––# 4
)
––4 5
{
—— 
friend
““ 
.
““ 
Value
““ 
.
““  
UpdateFriendsLists
““ /
(
““/ 0
)
““0 1
;
““1 2
friend
”” 
.
”” 
Value
”” 
.
”” )
UpdateFriendsForInviteLists
”” 8
(
””8 9
)
””9 :
;
””: ;
}
‘‘ 
}
’’ 	
}
÷÷ 
}ÿÿ 