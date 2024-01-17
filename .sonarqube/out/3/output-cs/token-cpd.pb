–
mC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\AuxiliaryDataContracts\KeyValueDataContract.cs
	namespace 	
ServicesTCP
 
. 
AuxiliaryContracts (
{ 
[ 
DataContract 
] 
public 

class  
KeyValueDataContract %
{		 
[

 	

DataMember

	 
]

 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
string 
Value 
{ 
get !
;! "
set# &
;& '
}( )
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
== 
null 
|| 
GetType &
(& '
)' (
!=) +
obj, /
./ 0
GetType0 7
(7 8
)8 9
)9 :
{ 
return 
false 
; 
}  
KeyValueDataContract  
other! &
=' (
() * 
KeyValueDataContract* >
)> ?
obj? B
;B C
return 
Key 
== 
other 
.  
Key  #
&&$ &
Value' ,
==- /
other0 5
.5 6
Value6 ;
;; <
} 	
public 
override 
int 
GetHashCode '
(' (
)( )
{ 	
	unchecked 
{ 
int   
hash   
=   
$num   
;   
hash!! 
=!! 
hash!! 
*!! 
$num!!  
+!!! "
Key!!# &
.!!& '
GetHashCode!!' 2
(!!2 3
)!!3 4
;!!4 5
hash"" 
="" 
hash"" 
*"" 
$num""  
+""! "
(""# $
Value""$ )
?"") *
.""* +
GetHashCode""+ 6
(""6 7
)""7 8
??""9 ;
$num""< =
)""= >
;""> ?
return## 
hash## 
;## 
}$$ 
}%% 	
}&& 
[(( 
DataContract(( 
](( 
public)) 

class)) X
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword)) ]
{** 
[++ 	

DataMember++	 
]++ 
public,, 
string,, 
Key,, 
{,, 
get,, 
;,,  
set,,! $
;,,$ %
},,& '
[.. 	

DataMember..	 
].. 
public// 
int// 
Value// 
{// 
get// 
;// 
set//  #
;//# $
}//% &
}00 
}11 Ñ
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
}FF ûV
hC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\ServiceContracts\IMultiplayerCrossword.cs
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
 3
'IMultiplayerCrosswordNonCallbackMethods

 <
{ 
[ 	
OperationContract	 
] 
void "
ClearAnsweredWordsList #
(# $
)$ %
;% &
[ 	
OperationContract	 
] 
string 
GetAdmin 
( 
) 
; 
[ 	
OperationContract	 
] 
List 
< X
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword Y
>Y Z&
GetAllProfilesAndItsPoints[ u
(u v
)v w
;w x
[ 	
OperationContract	 
] 
List 
< 
String 
>  
GetConnectedProfiles )
() *
)* +
;+ ,
[ 	
OperationContract	 
] 
int &
GetCrosswordNumberSelected &
(& '
)' (
;( )
[ 	
OperationContract	 
] 
int 
GetCrosswordsPlayed 
(  
)  !
;! "
[ 	
OperationContract	 
] 
int !
GetPointsFromAProfile !
(! "
string" (
nickname) 1
)1 2
;2 3
[!! 	
OperationContract!!	 
]!! 
void"" 
SetAdmin"" 
("" 
string"" 
username"" %
)""% &
;""& '
[$$ 	
OperationContract$$	 
]$$ 
void%% %
SetTheCrosswordIsComplete%% &
(%%& '
)%%' (
;%%( )
['' 	
OperationContract''	 
]'' 
void(( (
SetTheCrosswordIsNotComplete(( )
((() *
)((* +
;((+ ,
[** 	
OperationContract**	 
]** 
bool++ 
TheWordIsAnswered++ 
(++ 
string++ %
word++& *
)++* +
;+++ ,
},, 
[00 
ServiceContract00 
(00 
CallbackContract00 %
=00& '
typeof00( .
(00. /)
IMultiplayerCrosswordCallback00/ L
)00L M
)00M N
]00N O
public11 

	interface11 0
$IMultiplayerCrosswordCallbackMethods11 9
{22 
[33 	
OperationContract33	 
(33 
IsOneWay33 #
=33$ %
true33& *
)33* +
]33+ ,
void44 <
0AddCompletedWordToAllConnectedProfilesCrosswords44 =
(44= >
string44> D
word44E I
,44I J
string44K Q
answer44R X
)44X Y
;44Y Z
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 
AddPointsToProfile77 
(77  
string77  &
userNickname77' 3
,773 4
int775 8
points779 ?
)77? @
;77@ A
[99 	
OperationContract99	 
(99 
IsOneWay99 #
=99$ %
true99& *
)99* +
]99+ ,
void:: 
Connect:: 
(:: 
string:: 
username:: $
)::$ %
;::% &
[<< 	
OperationContract<<	 
(<< 
IsOneWay<< #
=<<$ %
true<<& *
)<<* +
]<<+ ,
void== 

Disconnect== 
(== 
string== 
username== '
)==' (
;==( )
[?? 	
OperationContract??	 
(?? 
IsOneWay?? #
=??$ %
true??& *
)??* +
]??+ ,
void@@ 
EndGame@@ 
(@@ 
)@@ 
;@@ 
[BB 	
OperationContractBB	 
(BB 
IsOneWayBB #
=BB$ %
trueBB& *
)BB* +
]BB+ ,
voidCC 0
$ExpeltProfileForTheGameForBeingAloneCC 1
(CC1 2
)CC2 3
;CC3 4
[EE 	
OperationContractEE	 
(EE 
IsOneWayEE #
=EE$ %
trueEE& *
)EE* +
]EE+ ,
voidFF 2
&OpenTheLobbyViewToAllConnectedProfilesFF 3
(FF3 4
)FF4 5
;FF5 6
[HH 	
OperationContractHH	 
(HH 
IsOneWayHH #
=HH$ %
trueHH& *
)HH* +
]HH+ ,
voidII =
1OpenTheMultiplayerCrosswordViewToConnectedClientsII >
(II> ?
)II? @
;II@ A
[KK 	
OperationContractKK	 
(KK 
IsOneWayKK #
=KK$ %
trueKK& *
)KK* +
]KK+ ,
voidLL g
[OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPagesLL h
(LLh i
)LLi j
;LLj k
[NN 	
OperationContractNN	 
(NN 
IsOneWayNN #
=NN$ %
trueNN& *
)NN* +
]NN+ ,
voidOO T
HShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfilesOO U
(OOU V
)OOV W
;OOW X
[QQ 	
OperationContractQQ	 
(QQ 
IsOneWayQQ #
=QQ$ %
trueQQ& *
)QQ* +
]QQ+ ,
voidRR <
0ShowTheSelectedCrosswordBorderToConnectedClientsRR =
(RR= >
)RR> ?
;RR? @
[TT 	
OperationContractTT	 
(TT 
IsOneWayTT #
=TT$ %
trueTT& *
)TT* +
]TT+ ,
voidUU 
StartGameCountdownUU 
(UU  
intUU  #
totalSecondsUU$ 0
)UU0 1
;UU1 2
[WW 	
OperationContractWW	 
(WW 
IsOneWayWW #
=WW$ %
trueWW& *
)WW* +
]WW+ ,
voidXX  
StartGlobalCountdownXX !
(XX! "
intXX" %
totalSecondsXX& 2
)XX2 3
;XX3 4
[ZZ 	
OperationContractZZ	 
(ZZ 
IsOneWayZZ #
=ZZ$ %
trueZZ& *
)ZZ* +
]ZZ+ ,
void[[ /
#StartTheCrosswordSelectionAlgorythm[[ 0
([[0 1
)[[1 2
;[[2 3
}\\ 
[`` 
ServiceContract`` 
]`` 
publicaa 

	interfaceaa )
IMultiplayerCrosswordCallbackaa 2
{bb 
[cc 	
OperationContractcc	 
(cc 
IsOneWaycc #
=cc$ %
truecc& *
)cc* +
]cc+ ,
voiddd 4
(ExpeltProfileToTheLobbyViewForBeingAlonedd 5
(dd5 6
)dd6 7
;dd7 8
[ff 	
OperationContractff	 
(ff 
IsOneWayff #
=ff$ %
trueff& *
)ff* +
]ff+ ,
voidgg >
2ShowBlackScreenAnimationOnLobbyViewOrItsChildPagesgg ?
(gg? @
)gg@ A
;ggA B
[ii 	
OperationContractii	 
(ii 
IsOneWayii #
=ii$ %
trueii& *
)ii* +
]ii+ ,
voidjj 

ShowGoTextjj 
(jj 
)jj 
;jj 
[ll 	
OperationContractll	 
(ll 
IsOneWayll #
=ll$ %
truell& *
)ll* +
]ll+ ,
voidmm 2
&ShowTheSelectedCrosswordAndItsQustionsmm 3
(mm3 4
)mm4 5
;mm5 6
[oo 	
OperationContractoo	 
(oo 
IsOneWayoo #
=oo$ %
trueoo& *
)oo* +
]oo+ ,
voidpp 
ShowTimesUpTextpp 
(pp 
)pp 
;pp 
[rr 	
OperationContractrr	 
(rr 
IsOneWayrr #
=rr$ %
truerr& *
)rr* +
]rr+ ,
voidss 
OpenLobbyViewss 
(ss 
)ss 
;ss 
[uu 	
OperationContractuu	 
(uu 
IsOneWayuu #
=uu$ %
trueuu& *
)uu* +
]uu+ ,
voidvv (
OpenMultiplayerCrosswordViewvv )
(vv) *
)vv* +
;vv+ ,
[xx 	
OperationContractxx	 
(xx 
IsOneWayxx #
=xx$ %
truexx& *
)xx* +
]xx+ ,
voidyy 7
+OpenRandomMultiplayerCrosswordGeneratorViewyy 8
(yy8 9
)yy9 :
;yy: ;
[{{ 	
OperationContract{{	 
({{ 
IsOneWay{{ #
={{$ %
true{{& *
){{* +
]{{+ ,
void|| U
IOpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage|| V
(||V W
)||W X
;||X Y
[~~ 	
OperationContract~~	 
(~~ 
IsOneWay~~ #
=~~$ %
true~~& *
)~~* +
]~~+ ,
void 
OpenWinnersView 
( 
) 
; 
[
ÅÅ 	
OperationContract
ÅÅ	 
(
ÅÅ 
IsOneWay
ÅÅ #
=
ÅÅ$ %
true
ÅÅ& *
)
ÅÅ* +
]
ÅÅ+ ,
void
ÇÇ ,
ShowTheSelectedCrosswordBorder
ÇÇ +
(
ÇÇ+ ,
)
ÇÇ, -
;
ÇÇ- .
[
ÑÑ 	
OperationContract
ÑÑ	 
(
ÑÑ 
IsOneWay
ÑÑ #
=
ÑÑ$ %
true
ÑÑ& *
)
ÑÑ* +
]
ÑÑ+ ,
void
ÖÖ !
UpdateGameCountdown
ÖÖ  
(
ÖÖ  !
int
ÖÖ! $
seconds
ÖÖ% ,
)
ÖÖ, -
;
ÖÖ- .
[
áá 	
OperationContract
áá	 
(
áá 
IsOneWay
áá #
=
áá$ %
true
áá& *
)
áá* +
]
áá+ ,
void
àà #
UpdateGlobalCountdown
àà "
(
àà" #
int
àà# &
seconds
àà' .
)
àà. /
;
àà/ 0
[
ää 	
OperationContract
ää	 
(
ää 
IsOneWay
ää #
=
ää$ %
true
ää& *
)
ää* +
]
ää+ ,
void
ãã 
UpdateCrossword
ãã 
(
ãã 
string
ãã #
word
ãã$ (
,
ãã( )
string
ãã* 0
answer
ãã1 7
)
ãã7 8
;
ãã8 9
[
çç 	
OperationContract
çç	 
(
çç 
IsOneWay
çç #
=
çç$ %
true
çç& *
)
çç* +
]
çç+ ,
void
éé "
UpdateProfilesPoints
éé !
(
éé! "
)
éé" #
;
éé# $
}
èè 
}êê ∫
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
[)) 	
OperationContract))	 
])) 
void** 
DeletePlayer** 
(** 
string**  
playerNickname**! /
)**/ 0
;**0 1
}++ 
public-- 

	interface-- 
IPlayerCallback-- $
{.. 
[// 	
OperationContract//	 
(// 
IsOneWay// $
=//% &
true//' +
,//+ ,
Name//- 1
=//2 3
$str//4 >
)//> ?
]//? @
void00 
Response00 
(00 
String00 
response00 %
)00% &
;00& '
}11 
}22 Î+
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
[33 	
OperationContract33	 
]33 
void44 
DeleteProfile44 
(44 
long44 
playerID44  (
)44( )
;44) *
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
	interface99 #
IProfileCallbackMethods99 ,
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
voidBB "
InviteFriendToTheLobbyBB #
(BB# $
StringBB$ *
friendNicknameBB+ 9
)BB9 :
;BB: ;
[DD 	
OperationContractDD	 
(DD 
IsOneWayDD #
=DD$ %
trueDD& *
)DD* +
]DD+ ,
voidEE 3
'UpdateFriendsListsToAllConnectedClientsEE 4
(EE4 5
)EE5 6
;EE6 7
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
}SS å5
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
}ÇÇ åÚ
fC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceMultiplayerCrossword.cs
	namespace

 	
ServicesTCP


 
.

 
Services

 
{ 
public 

class <
0ServiceMultiplayerCrosswordForNonCallbackMethods A
:B C3
'IMultiplayerCrosswordNonCallbackMethodsD k
{ 
private 
readonly 9
-ServiceMultiplayerCrosswordForCallbackMethods F9
-serviceMultiplayerCrosswordForCallbackMethodsG t
;t u
public <
0ServiceMultiplayerCrosswordForNonCallbackMethods ?
(? @
)@ A
{ 	9
-serviceMultiplayerCrosswordForCallbackMethods 9
=: ;
new< ?9
-ServiceMultiplayerCrosswordForCallbackMethods@ m
(m n
)n o
;o p
} 	
public 
void "
ClearAnsweredWordsList *
(* +
)+ ,
{ 	9
-serviceMultiplayerCrosswordForCallbackMethods 9
.9 :"
ClearAnsweredWordsList: P
(P Q
)Q R
;R S
} 	
public   
string   
GetAdmin   
(   
)    
{!! 	
return"" 9
-serviceMultiplayerCrosswordForCallbackMethods"" @
.""@ A
GetAdmin""A I
(""I J
)""J K
;""K L
}## 	
public%% 
List%% 
<%% X
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword%% `
>%%` a&
GetAllProfilesAndItsPoints%%b |
(%%| }
)%%} ~
{&& 	
return'' 9
-serviceMultiplayerCrosswordForCallbackMethods'' @
.''@ A&
GetAllProfilesAndItsPoints''A [
(''[ \
)''\ ]
;''] ^
}(( 	
public** 
List** 
<** 
String** 
>**  
GetConnectedProfiles** 0
(**0 1
)**1 2
{++ 	
return,, 9
-serviceMultiplayerCrosswordForCallbackMethods,, @
.,,@ A 
GetConnectedProfiles,,A U
(,,U V
),,V W
;,,W X
}-- 	
public// 
int// &
GetCrosswordNumberSelected// -
(//- .
)//. /
{00 	
return11 9
-serviceMultiplayerCrosswordForCallbackMethods11 @
.11@ A&
GetCrosswordNumberSelected11A [
(11[ \
)11\ ]
;11] ^
}22 	
public44 
int44 
GetCrosswordsPlayed44 &
(44& '
)44' (
{55 	
return66 9
-serviceMultiplayerCrosswordForCallbackMethods66 @
.66@ A
GetCrosswordsPlayed66A T
(66T U
)66U V
;66V W
}77 	
public99 
int99 !
GetPointsFromAProfile99 (
(99( )
string99) /
nickname990 8
)998 9
{:: 	
return;; 9
-serviceMultiplayerCrosswordForCallbackMethods;; @
.;;@ A!
GetPointsFromAProfile;;A V
(;;V W
nickname;;W _
);;_ `
;;;` a
}<< 	
public>> 
void>> 
SetAdmin>> 
(>> 
string>> #
username>>$ ,
)>>, -
{?? 	9
-serviceMultiplayerCrosswordForCallbackMethods@@ 9
.@@9 :
SetAdmin@@: B
(@@B C
username@@C K
)@@K L
;@@L M
}AA 	
publicCC 
voidCC %
SetTheCrosswordIsCompleteCC -
(CC- .
)CC. /
{DD 	9
-serviceMultiplayerCrosswordForCallbackMethodsEE 9
.EE9 :%
SetTheCrosswordIsCompleteEE: S
(EES T
)EET U
;EEU V
}FF 	
publicHH 
voidHH (
SetTheCrosswordIsNotCompleteHH 0
(HH0 1
)HH1 2
{II 	9
-serviceMultiplayerCrosswordForCallbackMethodsJJ 9
.JJ9 :(
SetTheCrosswordIsNotCompleteJJ: V
(JJV W
)JJW X
;JJX Y
}KK 	
publicMM 
boolMM 
TheWordIsAnsweredMM %
(MM% &
stringMM& ,
wordMM- 1
)MM1 2
{NN 	
returnOO 9
-serviceMultiplayerCrosswordForCallbackMethodsOO @
.OO@ A
TheWordIsAnsweredOOA R
(OOR S
wordOOS W
)OOW X
;OOX Y
}PP 	
}WW 
public[[ 

class[[ 9
-ServiceMultiplayerCrosswordForCallbackMethods[[ >
:[[? @0
$IMultiplayerCrosswordCallbackMethods[[A e
{\\ 
private]] 
static]] 
string]] 
admin]] #
;]]# $
private^^ 
static^^ 
readonly^^ 

Dictionary^^  *
<^^* +
string^^+ 1
,^^1 2)
IMultiplayerCrosswordCallback^^3 P
>^^P Q
connectedProfiles^^R c
=^^d e
new^^f i

Dictionary^^j t
<^^t u
string^^u {
,^^{ |*
IMultiplayerCrosswordCallback	^^} ö
>
^^ö õ
(
^^õ ú
)
^^ú ù
;
^^ù û
private__ 
static__ 
readonly__ 

Dictionary__  *
<__* +
string__+ 1
,__1 2
int__3 6
>__6 7 
profilesAndItsPoints__8 L
=__M N
new__O R

Dictionary__S ]
<__] ^
string__^ d
,__d e
int__f i
>__i j
(__j k
)__k l
;__l m
private`` 
static`` 
readonly`` 
int``  #
[``# $
]``$ %#
crosswordsPlayedNumbers``& =
=``> ?
new``@ C
int``D G
[``G H
$num``H I
]``I J
;``J K
privateaa 
staticaa 
intaa 
crosswordsPlayedaa +
=aa, -
$numaa. /
;aa/ 0
privatebb 
staticbb 
intbb #
crosswordNumberSelectedbb 2
;bb2 3
privatecc 
staticcc 
boolcc &
selectedCrosswordCompletedcc 6
=cc7 8
falsecc9 >
;cc> ?
privatedd 
staticdd 
Listdd 
<dd 
stringdd "
>dd" #/
#answeredWordsOfTheSelectedCrossworddd$ G
=ddH I
newddJ M
ListddN R
<ddR S
stringddS Y
>ddY Z
(ddZ [
)dd[ \
;dd\ ]
privateee #
CancellationTokenSourceee '#
cancellationTokenSourceee( ?
;ee? @
publicjj 
voidjj <
0AddCompletedWordToAllConnectedProfilesCrosswordsjj D
(jjD E
stringjjE K
wordjjL P
,jjP Q
stringjjR X
answerjjY _
)jj_ `
{kk 	/
#answeredWordsOfTheSelectedCrosswordll /
.ll/ 0
Addll0 3
(ll3 4
wordll4 8
)ll8 9
;ll9 :
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
UpdateCrosswordpp '
(pp' (
wordpp( ,
,pp, -
answerpp. 4
)pp4 5
;pp5 6
}qq 
}rr 	
publictt 
voidtt 
AddPointsToProfilett &
(tt& '
stringtt' -
userNicknamett. :
,tt: ;
inttt< ?
pointstt@ F
)ttF G
{uu 	
ifvv 
(vv  
profilesAndItsPointsvv $
.vv$ %
ContainsKeyvv% 0
(vv0 1
userNicknamevv1 =
)vv= >
)vv> ?
{ww  
profilesAndItsPointsxx $
[xx$ %
userNicknamexx% 1
]xx1 2
+=xx3 5
pointsxx6 <
;xx< =<
0UpdateProfilesPointsListsForAllConnectedProfilesyy @
(yy@ A
)yyA B
;yyB C
}zz 
}{{ 	
public}} 
void}} 
Connect}} 
(}} 
string}} "
username}}# +
)}}+ ,
{~~ 	)
IMultiplayerCrosswordCallback )
callback* 2
=3 4
OperationContext5 E
.E F
CurrentF M
.M N
GetCallbackChannelN `
<` a)
IMultiplayerCrosswordCallbacka ~
>~ 
(	 Ä
)
Ä Å
;
Å Ç
if
ÅÅ 
(
ÅÅ 
!
ÅÅ 
connectedProfiles
ÅÅ "
.
ÅÅ" #
ContainsKey
ÅÅ# .
(
ÅÅ. /
username
ÅÅ/ 7
)
ÅÅ7 8
)
ÅÅ8 9
{
ÇÇ 
connectedProfiles
ÉÉ !
.
ÉÉ! "
Add
ÉÉ" %
(
ÉÉ% &
username
ÉÉ& .
,
ÉÉ. /
callback
ÉÉ0 8
)
ÉÉ8 9
;
ÉÉ9 :"
profilesAndItsPoints
ÑÑ $
.
ÑÑ$ %
Add
ÑÑ% (
(
ÑÑ( )
username
ÑÑ) 1
,
ÑÑ1 2
$num
ÑÑ3 4
)
ÑÑ4 5
;
ÑÑ5 6
}
ÖÖ 
}
ÜÜ 	
public
àà 
void
àà 

Disconnect
àà 
(
àà 
string
àà %
username
àà& .
)
àà. /
{
ââ 	
if
ää 
(
ää 
connectedProfiles
ää !
.
ää! "
ContainsKey
ää" -
(
ää- .
username
ää. 6
)
ää6 7
)
ää7 8
{
ãã 
connectedProfiles
åå !
.
åå! "
Remove
åå" (
(
åå( )
username
åå) 1
)
åå1 2
;
åå2 3"
profilesAndItsPoints
çç $
.
çç$ %
Remove
çç% +
(
çç+ ,
username
çç, 4
)
çç4 5
;
çç5 6
}
éé >
0UpdateProfilesPointsListsForAllConnectedProfiles
êê <
(
êê< =
)
êê= >
;
êê> ?
if
íí 
(
íí 
connectedProfiles
íí !
.
íí! "
Count
íí" '
==
íí( *
$num
íí+ ,
||
íí- /"
profilesAndItsPoints
íí0 D
.
ííD E
Count
ííE J
==
ííK M
$num
ííN O
)
ííO P
{
ìì 2
$ExpeltProfileForTheGameForBeingAlone
îî 4
(
îî4 5
)
îî5 6
;
îî6 7
}
ïï 
if
óó 
(
óó 
connectedProfiles
óó !
.
óó! "
Count
óó" '
==
óó( *
$num
óó+ ,
||
óó- /"
profilesAndItsPoints
óó0 D
.
óóD E
Count
óóE J
==
óóK M
$num
óóN O
)
óóO P
{
òò /
!ServiceLobbyForNonCallbackMethods
ôô 1/
!serviceLobbyForNonCallbackMethods
ôô2 S
=
ôôT U
new
ôôV Y/
!ServiceLobbyForNonCallbackMethods
ôôZ {
(
ôô{ |
)
ôô| }
;
ôô} ~/
!serviceLobbyForNonCallbackMethods
öö 1
.
öö1 2'
SetThePlayersAreNotInGame
öö2 K
(
ööK L
)
ööL M
;
ööM N
}
õõ 
}
úú 	
public
ûû 
void
ûû 
EndGame
ûû 
(
ûû 
)
ûû 
{
üü 	
List
†† 
<
†† 
string
†† 
>
†† 
keysCopy
†† !
=
††" #
new
††$ '
List
††( ,
<
††, -
string
††- 3
>
††3 4
(
††4 5"
profilesAndItsPoints
††5 I
.
††I J
Keys
††J N
)
††N O
;
††O P
foreach
¢¢ 
(
¢¢ 
string
¢¢ 
key
¢¢ 
in
¢¢  "
keysCopy
¢¢# +
)
¢¢+ ,
{
££ "
profilesAndItsPoints
§§ $
[
§§$ %
key
§§% (
]
§§( )
=
§§* +
$num
§§, -
;
§§- .
}
•• 
Array
ßß 
.
ßß 
Clear
ßß 
(
ßß %
crosswordsPlayedNumbers
ßß /
,
ßß/ 0
$num
ßß1 2
,
ßß2 3%
crosswordsPlayedNumbers
ßß4 K
.
ßßK L
Length
ßßL R
)
ßßR S
;
ßßS T
crosswordsPlayed
®® 
=
®® 
$num
®®  
;
®®  !%
crosswordNumberSelected
©© #
=
©©$ %
-
©©& '
$num
©©' (
;
©©( )
}
™™ 	
public
¨¨ 
void
¨¨ 2
$ExpeltProfileForTheGameForBeingAlone
¨¨ 8
(
¨¨8 9
)
¨¨9 :
{
≠≠ 	
foreach
ÆÆ 
(
ÆÆ 
var
ÆÆ 
profile
ÆÆ  
in
ÆÆ! #
connectedProfiles
ÆÆ$ 5
.
ÆÆ5 6
Values
ÆÆ6 <
)
ÆÆ< =
{
ØØ 
profile
∞∞ 
.
∞∞ 6
(ExpeltProfileToTheLobbyViewForBeingAlone
∞∞ @
(
∞∞@ A
)
∞∞A B
;
∞∞B C
}
±± /
!ServiceLobbyForNonCallbackMethods
≥≥ -/
!serviceLobbyForNonCallbackMethods
≥≥. O
=
≥≥P Q
new
≥≥R U/
!ServiceLobbyForNonCallbackMethods
≥≥V w
(
≥≥w x
)
≥≥x y
;
≥≥y z/
!serviceLobbyForNonCallbackMethods
¥¥ -
.
¥¥- .'
SetThePlayersAreNotInGame
¥¥. G
(
¥¥G H
)
¥¥H I
;
¥¥I J
}
µµ 	
public
∑∑ 
void
∑∑ 4
&OpenTheLobbyViewToAllConnectedProfiles
∑∑ :
(
∑∑: ;
)
∑∑; <
{
∏∏ 	
foreach
ππ 
(
ππ 
var
ππ 
profile
ππ  
in
ππ! #
connectedProfiles
ππ$ 5
.
ππ5 6
Values
ππ6 <
)
ππ< =
{
∫∫ 
profile
ªª 
.
ªª 
OpenLobbyView
ªª %
(
ªª% &
)
ªª& '
;
ªª' (
}
ºº 
}
ΩΩ 	
public
øø 
void
øø ?
1OpenTheMultiplayerCrosswordViewToConnectedClients
øø E
(
øøE F
)
øøF G
{
¿¿ 	
foreach
¡¡ 
(
¡¡ 
var
¡¡ 
profile
¡¡  
in
¡¡! #
connectedProfiles
¡¡$ 5
.
¡¡5 6
Values
¡¡6 <
)
¡¡< =
{
¬¬ 
profile
√√ 
.
√√ *
OpenMultiplayerCrosswordView
√√ 4
(
√√4 5
)
√√5 6
;
√√6 7
}
ƒƒ 
}
≈≈ 	
public
«« 
void
«« i
[OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages
«« o
(
««o p
)
««p q
{
»» 	
foreach
…… 
(
…… 
var
…… 
profile
……  
in
……! #
connectedProfiles
……$ 5
)
……5 6
{
   
profile
ÀÀ 
.
ÀÀ 
Value
ÀÀ 
.
ÀÀ W
IOpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage
ÀÀ g
(
ÀÀg h
)
ÀÀh i
;
ÀÀi j
}
ÃÃ 
}
ÕÕ 	
public
œœ 
void
œœ V
HShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles
œœ \
(
œœ\ ]
)
œœ] ^
{
–– 	
foreach
—— 
(
—— 
var
—— 
profile
——  
in
——! #
connectedProfiles
——$ 5
)
——5 6
{
““ 
profile
”” 
.
”” 
Value
”” 
.
”” @
2ShowBlackScreenAnimationOnLobbyViewOrItsChildPages
”” P
(
””P Q
)
””Q R
;
””R S
}
‘‘ 
Thread
÷÷ 
.
÷÷ 
Sleep
÷÷ 
(
÷÷ 
$num
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 	
public
ŸŸ 
void
ŸŸ >
0ShowTheSelectedCrosswordBorderToConnectedClients
ŸŸ D
(
ŸŸD E
)
ŸŸE F
{
⁄⁄ 	
foreach
€€ 
(
€€ 
var
€€ 
profile
€€  
in
€€! #
connectedProfiles
€€$ 5
.
€€5 6
Values
€€6 <
)
€€< =
{
‹‹ 
profile
›› 
.
›› ,
ShowTheSelectedCrosswordBorder
›› 6
(
››6 7
)
››7 8
;
››8 9
}
ﬁﬁ 
Thread
‡‡ 
.
‡‡ 
Sleep
‡‡ 
(
‡‡ 
$num
‡‡ 
)
‡‡ 
;
‡‡ 
}
·· 	
public
„„ 
void
„„ 1
#StartTheCrosswordSelectionAlgorythm
„„ 7
(
„„7 8
)
„„8 9
{
‰‰ 	
while
ÂÂ 
(
ÂÂ 
true
ÂÂ 
)
ÂÂ 
{
ÊÊ %
crosswordNumberSelected
ÁÁ '
=
ÁÁ( )
new
ÁÁ* -
Random
ÁÁ. 4
(
ÁÁ4 5
)
ÁÁ5 6
.
ÁÁ6 7
Next
ÁÁ7 ;
(
ÁÁ; <
$num
ÁÁ< =
,
ÁÁ= >
$num
ÁÁ? @
)
ÁÁ@ A
;
ÁÁA B
if
ËË 
(
ËË 
Array
ËË 
.
ËË 
IndexOf
ËË !
(
ËË! "%
crosswordsPlayedNumbers
ËË" 9
,
ËË9 :%
crosswordNumberSelected
ËË; R
)
ËËR S
==
ËËT V
-
ËËW X
$num
ËËX Y
)
ËËY Z
{
ÈÈ %
crosswordsPlayedNumbers
ÍÍ +
[
ÍÍ+ ,
crosswordsPlayed
ÍÍ, <
]
ÍÍ< =
=
ÍÍ> ?%
crosswordNumberSelected
ÍÍ@ W
;
ÍÍW X
break
ÎÎ 
;
ÎÎ 
}
ÏÏ 
}
ÌÌ 
crosswordsPlayed
ÔÔ 
++
ÔÔ 
;
ÔÔ 
}
 	
public
ÛÛ 
void
ÛÛ  
StartGameCountdown
ÛÛ &
(
ÛÛ& '
int
ÛÛ' *
totalSeconds
ÛÛ+ 7
)
ÛÛ7 8
{
ÙÙ 	%
cancellationTokenSource
ıı #
=
ıı$ %
new
ıı& )%
CancellationTokenSource
ıı* A
(
ııA B
)
ııB C
;
ııC D
Task
˜˜ 
.
˜˜ 
Run
˜˜ 
(
˜˜ 
async
˜˜ 
(
˜˜ 
)
˜˜ 
=>
˜˜  
await
˜˜! &
CountdownAsync
˜˜' 5
(
˜˜5 6
totalSeconds
˜˜6 B
,
˜˜B C%
cancellationTokenSource
˜˜D [
.
˜˜[ \
Token
˜˜\ a
)
˜˜a b
)
˜˜b c
;
˜˜c d
}
¯¯ 	
public
˙˙ 
void
˙˙ "
StartGlobalCountdown
˙˙ (
(
˙˙( )
int
˙˙) ,
totalSeconds
˙˙- 9
)
˙˙9 :
{
˚˚ 	
for
¸¸ 
(
¸¸ 
int
¸¸ 
i
¸¸ 
=
¸¸ 
totalSeconds
¸¸ %
;
¸¸% &
i
¸¸' (
>=
¸¸) +
$num
¸¸, -
;
¸¸- .
i
¸¸/ 0
--
¸¸0 2
)
¸¸2 3
{
˝˝ :
,UpdateGlobalCountdownForAllConnectedProfiles
˛˛ <
(
˛˛< =
i
˛˛= >
)
˛˛> ?
;
˛˛? @
Thread
ˇˇ 
.
ˇˇ 
Sleep
ˇˇ 
(
ˇˇ 
$num
ˇˇ !
)
ˇˇ! "
;
ˇˇ" #
}
ÄÄ .
 ShowGoTextToAllConnectedProfiles
ÇÇ ,
(
ÇÇ, -
)
ÇÇ- .
;
ÇÇ. /J
<ShowTheSelectedCrosswordAndItsQustionsToAllConnectedProfiles
ÉÉ H
(
ÉÉH I
)
ÉÉI J
;
ÉÉJ K
}
ÑÑ 	
private
ää 
async
ää 
Task
ää 
CountdownAsync
ää )
(
ää) *
int
ää* -
totalSeconds
ää. :
,
ää: ;
CancellationToken
ää< M
cancellationToken
ääN _
)
ää_ `
{
ãã 	
for
åå 
(
åå 
int
åå 
i
åå 
=
åå 
totalSeconds
åå %
;
åå% &
i
åå' (
>=
åå) +
$num
åå, -
;
åå- .
i
åå/ 0
--
åå0 2
)
åå2 3
{
çç 
if
éé 
(
éé 
cancellationToken
éé %
.
éé% &%
IsCancellationRequested
éé& =
)
éé= >
{
èè 
break
êê 
;
êê 
}
ëë 8
*UpdateGameCountdownForAllConnectedProfiles
ìì :
(
ìì: ;
i
ìì; <
)
ìì< =
;
ìì= >
await
îî 
Task
îî 
.
îî 
Delay
îî  
(
îî  !
$num
îî! %
)
îî% &
;
îî& '
if
ññ 
(
ññ (
selectedCrosswordCompleted
ññ .
)
ññ. /
{
óó 
break
òò 
;
òò 
}
ôô 
if
õõ 
(
õõ 
i
õõ 
==
õõ 
$num
õõ 
)
õõ 
{
úú (
selectedCrosswordCompleted
ùù .
=
ùù/ 0
true
ùù1 5
;
ùù5 63
%ShowTimesUpTextToAllConnectedProfiles
ûû 9
(
ûû9 :
)
ûû: ;
;
ûû; <
}
üü 
}
†† 
if
¢¢ 
(
¢¢ 
crosswordsPlayed
¢¢  
==
¢¢! #
$num
¢¢$ %
)
¢¢% &
{
££ 3
%OpenWinnersViewToAllConnectedProfiles
§§ 5
(
§§5 6
)
§§6 7
;
§§7 8
}
•• 
else
¶¶ 
{
ßß O
AOpenRandomMultiplayerCrosswordGeneratorViewToAllConnectedProfiles
®® Q
(
®®Q R
)
®®R S
;
®®S T
}
©© 
}
™™ 	
private
¨¨ 
void
¨¨ O
AOpenRandomMultiplayerCrosswordGeneratorViewToAllConnectedProfiles
¨¨ V
(
¨¨V W
)
¨¨W X
{
≠≠ 	
foreach
ÆÆ 
(
ÆÆ 
var
ÆÆ 
profile
ÆÆ  
in
ÆÆ! #
connectedProfiles
ÆÆ$ 5
.
ÆÆ5 6
Values
ÆÆ6 <
)
ÆÆ< =
{
ØØ 
profile
∞∞ 
.
∞∞ 9
+OpenRandomMultiplayerCrosswordGeneratorView
∞∞ C
(
∞∞C D
)
∞∞D E
;
∞∞E F
}
±± 
}
≤≤ 	
private
¥¥ 
void
¥¥ 3
%OpenWinnersViewToAllConnectedProfiles
¥¥ :
(
¥¥: ;
)
¥¥; <
{
µµ 	
foreach
∂∂ 
(
∂∂ 
var
∂∂ 
profile
∂∂  
in
∂∂! #
connectedProfiles
∂∂$ 5
.
∂∂5 6
Values
∂∂6 <
)
∂∂< =
{
∑∑ 
profile
∏∏ 
.
∏∏ 
OpenWinnersView
∏∏ '
(
∏∏' (
)
∏∏( )
;
∏∏) *
}
ππ 
}
∫∫ 	
private
ºº 
void
ºº .
 ShowGoTextToAllConnectedProfiles
ºº 5
(
ºº5 6
)
ºº6 7
{
ΩΩ 	
foreach
ææ 
(
ææ 
var
ææ 
profile
ææ  
in
ææ! #
connectedProfiles
ææ$ 5
.
ææ5 6
Values
ææ6 <
)
ææ< =
{
øø 
profile
¿¿ 
.
¿¿ 

ShowGoText
¿¿ "
(
¿¿" #
)
¿¿# $
;
¿¿$ %
}
¡¡ 
Thread
√√ 
.
√√ 
Sleep
√√ 
(
√√ 
$num
√√ 
)
√√ 
;
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ J
<ShowTheSelectedCrosswordAndItsQustionsToAllConnectedProfiles
∆∆ Q
(
∆∆Q R
)
∆∆R S
{
«« 	
foreach
»» 
(
»» 
var
»» 
profile
»»  
in
»»! #
connectedProfiles
»»$ 5
.
»»5 6
Values
»»6 <
)
»»< =
{
…… 
profile
   
.
   4
&ShowTheSelectedCrosswordAndItsQustions
   >
(
  > ?
)
  ? @
;
  @ A
}
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
void
ŒŒ 3
%ShowTimesUpTextToAllConnectedProfiles
ŒŒ :
(
ŒŒ: ;
)
ŒŒ; <
{
œœ 	
foreach
–– 
(
–– 
var
–– 
profile
––  
in
––! #
connectedProfiles
––$ 5
.
––5 6
Values
––6 <
)
––< =
{
—— 
profile
““ 
.
““ 
ShowTimesUpText
““ '
(
““' (
)
““( )
;
““) *
}
”” 
Thread
’’ 
.
’’ 
Sleep
’’ 
(
’’ 
$num
’’ 
)
’’ 
;
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ 8
*UpdateGameCountdownForAllConnectedProfiles
ÿÿ ?
(
ÿÿ? @
int
ÿÿ@ C
seconds
ÿÿD K
)
ÿÿK L
{
ŸŸ 	
foreach
⁄⁄ 
(
⁄⁄ 
var
⁄⁄ 
profile
⁄⁄  
in
⁄⁄! #
connectedProfiles
⁄⁄$ 5
.
⁄⁄5 6
Values
⁄⁄6 <
)
⁄⁄< =
{
€€ 
profile
‹‹ 
.
‹‹ !
UpdateGameCountdown
‹‹ +
(
‹‹+ ,
seconds
‹‹, 3
)
‹‹3 4
;
‹‹4 5
}
›› 
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ :
,UpdateGlobalCountdownForAllConnectedProfiles
‡‡ A
(
‡‡A B
int
‡‡B E
seconds
‡‡F M
)
‡‡M N
{
·· 	
foreach
‚‚ 
(
‚‚ 
var
‚‚ 
profile
‚‚  
in
‚‚! #
connectedProfiles
‚‚$ 5
.
‚‚5 6
Values
‚‚6 <
)
‚‚< =
{
„„ 
profile
‰‰ 
.
‰‰ #
UpdateGlobalCountdown
‰‰ -
(
‰‰- .
seconds
‰‰. 5
)
‰‰5 6
;
‰‰6 7
}
ÂÂ 
}
ÊÊ 	
private
ËË 
void
ËË >
0UpdateProfilesPointsListsForAllConnectedProfiles
ËË E
(
ËËE F
)
ËËF G
{
ÈÈ 	
foreach
ÍÍ 
(
ÍÍ 
var
ÍÍ 
profile
ÍÍ  
in
ÍÍ! #
connectedProfiles
ÍÍ$ 5
.
ÍÍ5 6
Values
ÍÍ6 <
)
ÍÍ< =
{
ÎÎ 
profile
ÏÏ 
.
ÏÏ "
UpdateProfilesPoints
ÏÏ ,
(
ÏÏ, -
)
ÏÏ- .
;
ÏÏ. /
}
ÌÌ 
}
ÓÓ 	
internal
ÙÙ 
void
ÙÙ $
ClearAnsweredWordsList
ÙÙ ,
(
ÙÙ, -
)
ÙÙ- .
{
ıı 	1
#answeredWordsOfTheSelectedCrossword
ˆˆ /
.
ˆˆ/ 0
Clear
ˆˆ0 5
(
ˆˆ5 6
)
ˆˆ6 7
;
ˆˆ7 8
}
˜˜ 	
internal
˘˘ 
string
˘˘ 
GetAdmin
˘˘  
(
˘˘  !
)
˘˘! "
{
˙˙ 	
return
˚˚ 
admin
˚˚ 
;
˚˚ 
}
¸¸ 	
internal
˛˛ 
List
˛˛ 
<
˛˛ 
String
˛˛ 
>
˛˛ "
GetConnectedProfiles
˛˛ 2
(
˛˛2 3
)
˛˛3 4
{
ˇˇ 	
List
ÄÄ 
<
ÄÄ 
String
ÄÄ 
>
ÄÄ #
connectedProfilesList
ÄÄ .
=
ÄÄ/ 0
new
ÄÄ1 4
List
ÄÄ5 9
<
ÄÄ9 :
string
ÄÄ: @
>
ÄÄ@ A
(
ÄÄA B
)
ÄÄB C
;
ÄÄC D
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
connectedProfile
ÅÅ )
in
ÅÅ* ,
connectedProfiles
ÅÅ- >
.
ÅÅ> ?
Keys
ÅÅ? C
)
ÅÅC D
{
ÇÇ #
connectedProfilesList
ÉÉ %
.
ÉÉ% &
Add
ÉÉ& )
(
ÉÉ) *
connectedProfile
ÉÉ* :
)
ÉÉ: ;
;
ÉÉ; <
}
ÑÑ 
return
ÜÜ #
connectedProfilesList
ÜÜ (
;
ÜÜ( )
}
áá 	
internal
ââ 
List
ââ 
<
ââ Z
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
ââ b
>
ââb c(
GetAllProfilesAndItsPoints
ââd ~
(
ââ~ 
)ââ Ä
{
ää 	
List
ãã 
<
ãã Z
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
ãã ]
>
ãã] ^.
 profilesAndItsPointsForTransport
ãã_ 
=ããÄ Å
newããÇ Ö
ListããÜ ä
<ããä ã\
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrosswordããã ◊
>ãã◊ ÿ
(ããÿ Ÿ
)ããŸ ⁄
;ãã⁄ €
foreach
çç 
(
çç 
var
çç !
profileAndItsPoints
çç ,
in
çç- /"
profilesAndItsPoints
çç0 D
)
ççD E
{
éé Z
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
èè \

dictionary
èè] g
=
èèh i
new
èèj m[
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrosswordèèn ∫
{
êê 
Key
ëë 
=
ëë !
profileAndItsPoints
ëë -
.
ëë- .
Key
ëë. 1
,
ëë1 2
Value
íí 
=
íí !
profileAndItsPoints
íí /
.
íí/ 0
Value
íí0 5
}
ìì 
;
ìì .
 profilesAndItsPointsForTransport
ïï 0
.
ïï0 1
Add
ïï1 4
(
ïï4 5

dictionary
ïï5 ?
)
ïï? @
;
ïï@ A
}
ññ 
return
óó .
 profilesAndItsPointsForTransport
óó 3
;
óó3 4
}
òò 	
internal
öö 
int
öö (
GetCrosswordNumberSelected
öö /
(
öö/ 0
)
öö0 1
{
õõ 	
return
úú %
crosswordNumberSelected
úú *
;
úú* +
}
ùù 	
internal
üü 
int
üü !
GetCrosswordsPlayed
üü (
(
üü( )
)
üü) *
{
†† 	
return
°° 
crosswordsPlayed
°° #
;
°°# $
}
¢¢ 	
internal
§§ 
int
§§ #
GetPointsFromAProfile
§§ *
(
§§* +
string
§§+ 1
nickname
§§2 :
)
§§: ;
{
•• 	
return
¶¶ "
profilesAndItsPoints
¶¶ '
[
¶¶' (
nickname
¶¶( 0
]
¶¶0 1
;
¶¶1 2
}
ßß 	
internal
©© 
void
©© 
SetAdmin
©© 
(
©© 
string
©© %
username
©©& .
)
©©. /
{
™™ 	
admin
´´ 
=
´´ 
username
´´ 
;
´´ 
}
¨¨ 	
internal
ÆÆ 
void
ÆÆ '
SetTheCrosswordIsComplete
ÆÆ /
(
ÆÆ/ 0
)
ÆÆ0 1
{
ØØ 	(
selectedCrosswordCompleted
∞∞ &
=
∞∞' (
true
∞∞) -
;
∞∞- .
}
±± 	
internal
≥≥ 
void
≥≥ *
SetTheCrosswordIsNotComplete
≥≥ 2
(
≥≥2 3
)
≥≥3 4
{
¥¥ 	(
selectedCrosswordCompleted
µµ &
=
µµ' (
false
µµ) .
;
µµ. /
}
∂∂ 	
internal
∏∏ 
bool
∏∏ 
TheWordIsAnswered
∏∏ '
(
∏∏' (
string
∏∏( .
word
∏∏/ 3
)
∏∏3 4
{
ππ 	
return
∫∫ 1
#answeredWordsOfTheSelectedCrossword
∫∫ 6
.
∫∫6 7
Contains
∫∫7 ?
(
∫∫? @
word
∫∫@ D
)
∫∫D E
;
∫∫E F
}
ªª 	
}
√√ 
}ƒƒ Ñs
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
}ˆˆ °Õ
_C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceFriendRequest.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class 5
)ServiceFriendRequestForNonCallbackMethods :
:; <,
 IFriendRequestNonCallbackMethods= ]
{ 
public 
List 
< 
FriendRequests "
>" #)
GetFriendsRequestsByProfileID$ A
(A B
longB F
IDG I
)I J
{ 	
List 
< 
FriendRequests 
>  
friendRequests! /
=0 1
new2 5
List6 :
<: ;
FriendRequests; I
>I J
(J K
)K L
;L M
try 
{ "
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]
friendRequests 
=  "
databaseModelContainer! 7
.7 8
FriendRequestsSet8 I
.I J
WhereJ O
(O P
eP Q
=>R T
eU V
.V W
ProfilesW _
._ `
	IDProfile` i
==j l
IDm o
)o p
.p q
ToListq w
(w x
)x y
;y z
} 
catch 
( '
DbEntityValidationException .
ex/ 1
)1 2
{   
string!! 
logFilePath!! "
=!!# $
Path!!% )
.!!) *
Combine!!* 1
(!!1 2
	Directory!!2 ;
.!!; <
GetCurrentDirectory!!< O
(!!O P
)!!P Q
,!!Q R
$str!!S e
)!!e f
;!!f g
File"" 
."" 
AppendAllText"" "
(""" #
logFilePath""# .
,"". /
$"""0 2
$str""2 =
{""= >
ex""> @
}""@ A
$str""A C
"""C D
)""D E
;""E F
}## 
catch$$ 
($$ 
DbUpdateException$$ $
ex$$% '
)$$' (
{%% 
string&& 
logFilePath&& "
=&&# $
Path&&% )
.&&) *
Combine&&* 1
(&&1 2
	Directory&&2 ;
.&&; <
GetCurrentDirectory&&< O
(&&O P
)&&P Q
,&&Q R
$str&&S e
)&&e f
;&&f g
File'' 
.'' 
AppendAllText'' "
(''" #
logFilePath''# .
,''. /
$"''0 2
$str''2 =
{''= >
ex''> @
}''@ A
$str''A C
"''C D
)''D E
;''E F
}(( 
catch)) 
()) -
!EntityCommandCompilationException)) 4
ex))5 7
)))7 8
{** 
string++ 
logFilePath++ "
=++# $
Path++% )
.++) *
Combine++* 1
(++1 2
	Directory++2 ;
.++; <
GetCurrentDirectory++< O
(++O P
)++P Q
,++Q R
$str++S e
)++e f
;++f g
File,, 
.,, 
AppendAllText,, "
(,," #
logFilePath,,# .
,,,. /
$",,0 2
$str,,2 =
{,,= >
ex,,> @
},,@ A
$str,,A C
",,C D
),,D E
;,,E F
}-- 
catch.. 
(.. +
EntityCommandExecutionException.. 2
ex..3 5
)..5 6
{// 
string00 
logFilePath00 "
=00# $
Path00% )
.00) *
Combine00* 1
(001 2
	Directory002 ;
.00; <
GetCurrentDirectory00< O
(00O P
)00P Q
,00Q R
$str00S e
)00e f
;00f g
File11 
.11 
AppendAllText11 "
(11" #
logFilePath11# .
,11. /
$"110 2
$str112 =
{11= >
ex11> @
}11@ A
$str11A C
"11C D
)11D E
;11E F
}22 
catch33 
(33 !
SqlNullValueException33 (
ex33) +
)33+ ,
{44 
string55 
logFilePath55 "
=55# $
Path55% )
.55) *
Combine55* 1
(551 2
	Directory552 ;
.55; <
GetCurrentDirectory55< O
(55O P
)55P Q
,55Q R
$str55S e
)55e f
;55f g
File66 
.66 
AppendAllText66 "
(66" #
logFilePath66# .
,66. /
$"660 2
$str662 =
{66= >
ex66> @
}66@ A
$str66A C
"66C D
)66D E
;66E F
}77 
return99 
friendRequests99 !
;99! "
}:: 	
public<< 
List<< 
<<< 
FriendRequests<< "
><<" #*
GetFriendsRequestsByProfile1ID<<$ B
(<<B C
long<<C G
ID<<H J
)<<J K
{== 	
List>> 
<>> 
FriendRequests>> 
>>>  
friendRequests>>! /
=>>0 1
new>>2 5
List>>6 :
<>>: ;
FriendRequests>>; I
>>>I J
(>>J K
)>>K L
;>>L M
try@@ 
{AA "
DatabaseModelContainerBB &"
databaseModelContainerBB' =
=BB> ?
newBB@ C"
DatabaseModelContainerBBD Z
(BBZ [
)BB[ \
;BB\ ]
friendRequestsCC 
=CC  "
databaseModelContainerCC! 7
.CC7 8
FriendRequestsSetCC8 I
.CCI J
WhereCCJ O
(CCO P
eCCP Q
=>CCR T
eCCU V
.CCV W
	Profiles1CCW `
.CC` a
	IDProfileCCa j
==CCk m
IDCCn p
)CCp q
.CCq r
ToListCCr x
(CCx y
)CCy z
;CCz {
}EE 
catchFF 
(FF '
DbEntityValidationExceptionFF .
exFF/ 1
)FF1 2
{GG 
stringHH 
logFilePathHH "
=HH# $
PathHH% )
.HH) *
CombineHH* 1
(HH1 2
	DirectoryHH2 ;
.HH; <
GetCurrentDirectoryHH< O
(HHO P
)HHP Q
,HHQ R
$strHHS e
)HHe f
;HHf g
FileII 
.II 
AppendAllTextII "
(II" #
logFilePathII# .
,II. /
$"II0 2
$strII2 =
{II= >
exII> @
}II@ A
$strIIA C
"IIC D
)IID E
;IIE F
}JJ 
catchKK 
(KK 
DbUpdateExceptionKK $
exKK% '
)KK' (
{LL 
stringMM 
logFilePathMM "
=MM# $
PathMM% )
.MM) *
CombineMM* 1
(MM1 2
	DirectoryMM2 ;
.MM; <
GetCurrentDirectoryMM< O
(MMO P
)MMP Q
,MMQ R
$strMMS e
)MMe f
;MMf g
FileNN 
.NN 
AppendAllTextNN "
(NN" #
logFilePathNN# .
,NN. /
$"NN0 2
$strNN2 =
{NN= >
exNN> @
}NN@ A
$strNNA C
"NNC D
)NND E
;NNE F
}OO 
catchPP 
(PP -
!EntityCommandCompilationExceptionPP 4
exPP5 7
)PP7 8
{QQ 
stringRR 
logFilePathRR "
=RR# $
PathRR% )
.RR) *
CombineRR* 1
(RR1 2
	DirectoryRR2 ;
.RR; <
GetCurrentDirectoryRR< O
(RRO P
)RRP Q
,RRQ R
$strRRS e
)RRe f
;RRf g
FileSS 
.SS 
AppendAllTextSS "
(SS" #
logFilePathSS# .
,SS. /
$"SS0 2
$strSS2 =
{SS= >
exSS> @
}SS@ A
$strSSA C
"SSC D
)SSD E
;SSE F
}TT 
catchUU 
(UU +
EntityCommandExecutionExceptionUU 2
exUU3 5
)UU5 6
{VV 
stringWW 
logFilePathWW "
=WW# $
PathWW% )
.WW) *
CombineWW* 1
(WW1 2
	DirectoryWW2 ;
.WW; <
GetCurrentDirectoryWW< O
(WWO P
)WWP Q
,WWQ R
$strWWS e
)WWe f
;WWf g
FileXX 
.XX 
AppendAllTextXX "
(XX" #
logFilePathXX# .
,XX. /
$"XX0 2
$strXX2 =
{XX= >
exXX> @
}XX@ A
$strXXA C
"XXC D
)XXD E
;XXE F
}YY 
catchZZ 
(ZZ !
SqlNullValueExceptionZZ (
exZZ) +
)ZZ+ ,
{[[ 
string\\ 
logFilePath\\ "
=\\# $
Path\\% )
.\\) *
Combine\\* 1
(\\1 2
	Directory\\2 ;
.\\; <
GetCurrentDirectory\\< O
(\\O P
)\\P Q
,\\Q R
$str\\S e
)\\e f
;\\f g
File]] 
.]] 
AppendAllText]] "
(]]" #
logFilePath]]# .
,]]. /
$"]]0 2
$str]]2 =
{]]= >
ex]]> @
}]]@ A
$str]]A C
"]]C D
)]]D E
;]]E F
}^^ 
return`` 
friendRequests`` !
;``! "
}aa 	
publiccc 
FriendRequestcc  
GetFriendRequestByIDcc 1
(cc1 2
longcc2 6
IDcc7 9
)cc9 :
{dd 	
FriendRequestsee 
friendRequestsee )
=ee* +
newee, /
FriendRequestsee0 >
(ee> ?
)ee? @
;ee@ A
FriendRequestff 
friendRequestff '
=ff( )
newff* -
FriendRequestff. ;
(ff; <
)ff< =
;ff= >
tryhh 
{ii "
DatabaseModelContainerjj &"
databaseModelContainerjj' =
=jj> ?
newjj@ C"
DatabaseModelContainerjjD Z
(jjZ [
)jj[ \
;jj\ ]
friendRequestskk 
=kk  "
databaseModelContainerkk! 7
.kk7 8
FriendRequestsSetkk8 I
.kkI J
WherekkJ O
(kkO P
frkkP R
=>kkS U
frkkV X
.kkX Y
IDFriendRequestkkY h
==kki k
IDkkl n
)kkn o
.kko p
FirstOrDefaultkkp ~
(kk~ 
)	kk Ä
;
kkÄ Å
ifmm 
(mm 
friendRequestsmm "
!=mm# %
nullmm& *
)mm* +
{nn 
Playerpp 
playerProfilepp (
=pp) *
newpp+ .
Playerpp/ 5
{qq 
IDPlayerrr  
=rr! "
friendRequestsrr# 1
.rr1 2
Profilesrr2 :
.rr: ;
Playersrr; B
.rrB C
IDPlayerrrC K
,rrK L
Namesss 
=ss 
friendRequestsss  .
.ss. /
Profilesss/ 7
.ss7 8
Playersss8 ?
.ss? @
Namesss@ E
,ssE F
Surnamestt  
=tt! "
friendRequeststt# 1
.tt1 2
Profilestt2 :
.tt: ;
Playerstt; B
.ttB C
SurnamesttC K
,ttK L
Emailuu 
=uu 
friendRequestsuu  .
.uu. /
Profilesuu/ 7
.uu7 8
Playersuu8 ?
.uu? @
Emailuu@ E
,uuE F
NickNamevv  
=vv! "
friendRequestsvv# 1
.vv1 2
Profilesvv2 :
.vv: ;
Playersvv; B
.vvB C
NickNamevvC K
,vvK L
	BirthDateww !
=ww" #
friendRequestsww$ 2
.ww2 3
Profilesww3 ;
.ww; <
Playersww< C
.wwC D
	BirthDatewwD M
}xx 
;xx 
Playerzz 
playerProfile1zz )
=zz* +
newzz, /
Playerzz0 6
{{{ 
IDPlayer||  
=||! "
friendRequests||# 1
.||1 2
	Profiles1||2 ;
.||; <
Players||< C
.||C D
IDPlayer||D L
,||L M
Names}} 
=}} 
friendRequests}}  .
.}}. /
	Profiles1}}/ 8
.}}8 9
Players}}9 @
.}}@ A
Names}}A F
,}}F G
Surnames~~  
=~~! "
friendRequests~~# 1
.~~1 2
	Profiles1~~2 ;
.~~; <
Players~~< C
.~~C D
Surnames~~D L
,~~L M
Email 
= 
friendRequests  .
.. /
	Profiles1/ 8
.8 9
Players9 @
.@ A
EmailA F
,F G
NickName
ÄÄ  
=
ÄÄ! "
friendRequests
ÄÄ# 1
.
ÄÄ1 2
	Profiles1
ÄÄ2 ;
.
ÄÄ; <
Players
ÄÄ< C
.
ÄÄC D
NickName
ÄÄD L
,
ÄÄL M
	BirthDate
ÅÅ !
=
ÅÅ" #
friendRequests
ÅÅ$ 2
.
ÅÅ2 3
	Profiles1
ÅÅ3 <
.
ÅÅ< =
Players
ÅÅ= D
.
ÅÅD E
	BirthDate
ÅÅE N
}
ÇÇ 
;
ÇÇ 
Profile
ÑÑ 
profile
ÑÑ #
=
ÑÑ$ %
new
ÑÑ& )
Profile
ÑÑ* 1
{
ÖÖ 
	IDProfile
ÜÜ !
=
ÜÜ" #
friendRequests
ÜÜ$ 2
.
ÜÜ2 3
Profiles
ÜÜ3 ;
.
ÜÜ; <
	IDProfile
ÜÜ< E
,
ÜÜE F
Coins
áá 
=
áá 
(
áá  !
long
áá! %
)
áá% &
friendRequests
áá& 4
.
áá4 5
Profiles
áá5 =
.
áá= >
Coins
áá> C
,
ááC D
LoginStatus
àà #
=
àà$ %
friendRequests
àà& 4
.
àà4 5
Profiles
àà5 =
.
àà= >
LoginStatus
àà> I
,
ààI J
Player
ââ 
=
ââ  
playerProfile
ââ! .
}
ää 
;
ää 
Profile
åå 
profile1
åå $
=
åå% &
new
åå' *
Profile
åå+ 2
{
çç 
	IDProfile
éé !
=
éé" #
friendRequests
éé$ 2
.
éé2 3
	Profiles1
éé3 <
.
éé< =
	IDProfile
éé= F
,
ééF G
Coins
èè 
=
èè 
(
èè  !
long
èè! %
)
èè% &
friendRequests
èè& 4
.
èè4 5
	Profiles1
èè5 >
.
èè> ?
Coins
èè? D
,
èèD E
LoginStatus
êê #
=
êê$ %
friendRequests
êê& 4
.
êê4 5
	Profiles1
êê5 >
.
êê> ?
LoginStatus
êê? J
,
êêJ K
Player
ëë 
=
ëë  
playerProfile1
ëë! /
}
íí 
;
íí 
friendRequest
îî !
.
îî! "
IDFriendRequest
îî" 1
=
îî2 3
friendRequests
îî4 B
.
îîB C
IDFriendRequest
îîC R
;
îîR S
friendRequest
ïï !
.
ïï! "
CreationDate
ïï" .
=
ïï/ 0
friendRequests
ïï1 ?
.
ïï? @
CreationDate
ïï@ L
;
ïïL M
friendRequest
ññ !
.
ññ! "
Message
ññ" )
=
ññ* +
friendRequests
ññ, :
.
ññ: ;
Message
ññ; B
;
ññB C
friendRequest
óó !
.
óó! "
AceptationStatus
óó" 2
=
óó3 4
friendRequests
óó5 C
.
óóC D
AceptationStatus
óóD T
;
óóT U
friendRequest
òò !
.
òò! "
SendingStatus
òò" /
=
òò0 1
friendRequests
òò2 @
.
òò@ A
SendingStatus
òòA N
;
òòN O
friendRequest
ôô !
.
ôô! "
Profile
ôô" )
=
ôô* +
profile
ôô, 3
;
ôô3 4
friendRequest
öö !
.
öö! "
Profile1
öö" *
=
öö+ ,
profile1
öö- 5
;
öö5 6
}
õõ 
else
úú 
{
ùù 
friendRequest
ûû !
=
ûû" #
null
ûû$ (
;
ûû( )
}
üü 
}
†† 
catch
°° 
(
°° )
DbEntityValidationException
°° .
ex
°°/ 1
)
°°1 2
{
¢¢ 
string
££ 
logFilePath
££ "
=
££# $
Path
££% )
.
££) *
Combine
££* 1
(
££1 2
	Directory
££2 ;
.
££; <!
GetCurrentDirectory
££< O
(
££O P
)
££P Q
,
££Q R
$str
££S e
)
££e f
;
££f g
File
§§ 
.
§§ 
AppendAllText
§§ "
(
§§" #
logFilePath
§§# .
,
§§. /
$"
§§0 2
$str
§§2 =
{
§§= >
ex
§§> @
}
§§@ A
$str
§§A C
"
§§C D
)
§§D E
;
§§E F
}
•• 
catch
¶¶ 
(
¶¶ 
DbUpdateException
¶¶ $
ex
¶¶% '
)
¶¶' (
{
ßß 
string
®® 
logFilePath
®® "
=
®®# $
Path
®®% )
.
®®) *
Combine
®®* 1
(
®®1 2
	Directory
®®2 ;
.
®®; <!
GetCurrentDirectory
®®< O
(
®®O P
)
®®P Q
,
®®Q R
$str
®®S e
)
®®e f
;
®®f g
File
©© 
.
©© 
AppendAllText
©© "
(
©©" #
logFilePath
©©# .
,
©©. /
$"
©©0 2
$str
©©2 =
{
©©= >
ex
©©> @
}
©©@ A
$str
©©A C
"
©©C D
)
©©D E
;
©©E F
}
™™ 
catch
´´ 
(
´´ /
!EntityCommandCompilationException
´´ 4
ex
´´5 7
)
´´7 8
{
¨¨ 
string
≠≠ 
logFilePath
≠≠ "
=
≠≠# $
Path
≠≠% )
.
≠≠) *
Combine
≠≠* 1
(
≠≠1 2
	Directory
≠≠2 ;
.
≠≠; <!
GetCurrentDirectory
≠≠< O
(
≠≠O P
)
≠≠P Q
,
≠≠Q R
$str
≠≠S e
)
≠≠e f
;
≠≠f g
File
ÆÆ 
.
ÆÆ 
AppendAllText
ÆÆ "
(
ÆÆ" #
logFilePath
ÆÆ# .
,
ÆÆ. /
$"
ÆÆ0 2
$str
ÆÆ2 =
{
ÆÆ= >
ex
ÆÆ> @
}
ÆÆ@ A
$str
ÆÆA C
"
ÆÆC D
)
ÆÆD E
;
ÆÆE F
}
ØØ 
catch
∞∞ 
(
∞∞ -
EntityCommandExecutionException
∞∞ 2
ex
∞∞3 5
)
∞∞5 6
{
±± 
string
≤≤ 
logFilePath
≤≤ "
=
≤≤# $
Path
≤≤% )
.
≤≤) *
Combine
≤≤* 1
(
≤≤1 2
	Directory
≤≤2 ;
.
≤≤; <!
GetCurrentDirectory
≤≤< O
(
≤≤O P
)
≤≤P Q
,
≤≤Q R
$str
≤≤S e
)
≤≤e f
;
≤≤f g
File
≥≥ 
.
≥≥ 
AppendAllText
≥≥ "
(
≥≥" #
logFilePath
≥≥# .
,
≥≥. /
$"
≥≥0 2
$str
≥≥2 =
{
≥≥= >
ex
≥≥> @
}
≥≥@ A
$str
≥≥A C
"
≥≥C D
)
≥≥D E
;
≥≥E F
}
¥¥ 
catch
µµ 
(
µµ #
SqlNullValueException
µµ (
ex
µµ) +
)
µµ+ ,
{
∂∂ 
string
∑∑ 
logFilePath
∑∑ "
=
∑∑# $
Path
∑∑% )
.
∑∑) *
Combine
∑∑* 1
(
∑∑1 2
	Directory
∑∑2 ;
.
∑∑; <!
GetCurrentDirectory
∑∑< O
(
∑∑O P
)
∑∑P Q
,
∑∑Q R
$str
∑∑S e
)
∑∑e f
;
∑∑f g
File
∏∏ 
.
∏∏ 
AppendAllText
∏∏ "
(
∏∏" #
logFilePath
∏∏# .
,
∏∏. /
$"
∏∏0 2
$str
∏∏2 =
{
∏∏= >
ex
∏∏> @
}
∏∏@ A
$str
∏∏A C
"
∏∏C D
)
∏∏D E
;
∏∏E F
}
ππ 
return
ªª 
friendRequest
ªª  
;
ªª  !
}
ºº 	
public
ææ 
List
ææ 
<
ææ 
FriendRequest
ææ !
>
ææ! "B
4GetPendientsForAceptationFriendsRequestsByProfile1ID
ææ# W
(
ææW X
long
ææX \

IDProfile1
ææ] g
)
ææg h
{
øø 	
List
¿¿ 
<
¿¿ 
FriendRequest
¿¿ 
>
¿¿ 
friendRequestList
¿¿  1
=
¿¿2 3
new
¿¿4 7
List
¿¿8 <
<
¿¿< =
FriendRequest
¿¿= J
>
¿¿J K
(
¿¿K L
)
¿¿L M
;
¿¿M N
List
¡¡ 
<
¡¡ 
FriendRequests
¡¡ 
>
¡¡   
friendRequestsList
¡¡! 3
=
¡¡4 5
new
¡¡6 9
List
¡¡: >
<
¡¡> ?
FriendRequests
¡¡? M
>
¡¡M N
(
¡¡N O
)
¡¡O P
;
¡¡P Q
try
√√ 
{
ƒƒ $
DatabaseModelContainer
≈≈ &$
databaseModelContainer
≈≈' =
=
≈≈> ?
new
≈≈@ C$
DatabaseModelContainer
≈≈D Z
(
≈≈Z [
)
≈≈[ \
;
≈≈\ ] 
friendRequestsList
∆∆ "
=
∆∆# $$
databaseModelContainer
∆∆% ;
.
∆∆; <
FriendRequestsSet
∆∆< M
.
«« 
Where
«« 
(
«« 
fr
«« 
=>
«« 
fr
«« 
.
««  
	Profiles1
««  )
.
««) *
	IDProfile
««* 3
==
««4 6

IDProfile1
««7 A
)
««A B
.
»» 
Where
»» 
(
»» 
fr
»» 
=>
»» 
fr
»» 
.
»»  
AceptationStatus
»»  0
==
»»1 3-
FriendRequestAceptationStatuses
»»4 S
.
»»S T
Pendient
»»T \
.
»»\ ]
ToString
»»] e
(
»»e f
)
»»f g
)
»»g h
.
…… 
Where
…… 
(
…… 
fr
…… 
=>
…… 
fr
…… 
.
……  
SendingStatus
……  -
==
……. 0*
FriendRequestSendingStatuses
……1 M
.
……M N
Sent
……N R
.
……R S
ToString
……S [
(
……[ \
)
……\ ]
)
……] ^
.
   
ToList
   
(
   
)
   
;
   
if
ÃÃ 
(
ÃÃ  
friendRequestsList
ÃÃ &
!=
ÃÃ' )
null
ÃÃ* .
)
ÃÃ. /
{
ÕÕ 
friendRequestList
ŒŒ %
=
ŒŒ& '<
.FriendRequestsListToFriendRequestListConverter
ŒŒ( V
(
ŒŒV W 
friendRequestsList
ŒŒW i
)
ŒŒi j
;
ŒŒj k
}
œœ 
else
–– 
{
—— 
friendRequestList
““ %
=
““& '
null
““( ,
;
““, -
}
”” 
}
’’ 
catch
÷÷ 
(
÷÷ )
DbEntityValidationException
÷÷ .
ex
÷÷/ 1
)
÷÷1 2
{
◊◊ 
string
ÿÿ 
logFilePath
ÿÿ "
=
ÿÿ# $
Path
ÿÿ% )
.
ÿÿ) *
Combine
ÿÿ* 1
(
ÿÿ1 2
	Directory
ÿÿ2 ;
.
ÿÿ; <!
GetCurrentDirectory
ÿÿ< O
(
ÿÿO P
)
ÿÿP Q
,
ÿÿQ R
$str
ÿÿS e
)
ÿÿe f
;
ÿÿf g
File
ŸŸ 
.
ŸŸ 
AppendAllText
ŸŸ "
(
ŸŸ" #
logFilePath
ŸŸ# .
,
ŸŸ. /
$"
ŸŸ0 2
$str
ŸŸ2 =
{
ŸŸ= >
ex
ŸŸ> @
}
ŸŸ@ A
$str
ŸŸA C
"
ŸŸC D
)
ŸŸD E
;
ŸŸE F
}
⁄⁄ 
catch
€€ 
(
€€ 
DbUpdateException
€€ $
ex
€€% '
)
€€' (
{
‹‹ 
string
›› 
logFilePath
›› "
=
››# $
Path
››% )
.
››) *
Combine
››* 1
(
››1 2
	Directory
››2 ;
.
››; <!
GetCurrentDirectory
››< O
(
››O P
)
››P Q
,
››Q R
$str
››S e
)
››e f
;
››f g
File
ﬁﬁ 
.
ﬁﬁ 
AppendAllText
ﬁﬁ "
(
ﬁﬁ" #
logFilePath
ﬁﬁ# .
,
ﬁﬁ. /
$"
ﬁﬁ0 2
$str
ﬁﬁ2 =
{
ﬁﬁ= >
ex
ﬁﬁ> @
}
ﬁﬁ@ A
$str
ﬁﬁA C
"
ﬁﬁC D
)
ﬁﬁD E
;
ﬁﬁE F
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ /
!EntityCommandCompilationException
‡‡ 4
ex
‡‡5 7
)
‡‡7 8
{
·· 
string
‚‚ 
logFilePath
‚‚ "
=
‚‚# $
Path
‚‚% )
.
‚‚) *
Combine
‚‚* 1
(
‚‚1 2
	Directory
‚‚2 ;
.
‚‚; <!
GetCurrentDirectory
‚‚< O
(
‚‚O P
)
‚‚P Q
,
‚‚Q R
$str
‚‚S e
)
‚‚e f
;
‚‚f g
File
„„ 
.
„„ 
AppendAllText
„„ "
(
„„" #
logFilePath
„„# .
,
„„. /
$"
„„0 2
$str
„„2 =
{
„„= >
ex
„„> @
}
„„@ A
$str
„„A C
"
„„C D
)
„„D E
;
„„E F
}
‰‰ 
catch
ÂÂ 
(
ÂÂ -
EntityCommandExecutionException
ÂÂ 2
ex
ÂÂ3 5
)
ÂÂ5 6
{
ÊÊ 
string
ÁÁ 
logFilePath
ÁÁ "
=
ÁÁ# $
Path
ÁÁ% )
.
ÁÁ) *
Combine
ÁÁ* 1
(
ÁÁ1 2
	Directory
ÁÁ2 ;
.
ÁÁ; <!
GetCurrentDirectory
ÁÁ< O
(
ÁÁO P
)
ÁÁP Q
,
ÁÁQ R
$str
ÁÁS e
)
ÁÁe f
;
ÁÁf g
File
ËË 
.
ËË 
AppendAllText
ËË "
(
ËË" #
logFilePath
ËË# .
,
ËË. /
$"
ËË0 2
$str
ËË2 =
{
ËË= >
ex
ËË> @
}
ËË@ A
$str
ËËA C
"
ËËC D
)
ËËD E
;
ËËE F
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ #
SqlNullValueException
ÍÍ (
ex
ÍÍ) +
)
ÍÍ+ ,
{
ÎÎ 
string
ÏÏ 
logFilePath
ÏÏ "
=
ÏÏ# $
Path
ÏÏ% )
.
ÏÏ) *
Combine
ÏÏ* 1
(
ÏÏ1 2
	Directory
ÏÏ2 ;
.
ÏÏ; <!
GetCurrentDirectory
ÏÏ< O
(
ÏÏO P
)
ÏÏP Q
,
ÏÏQ R
$str
ÏÏS e
)
ÏÏe f
;
ÏÏf g
File
ÌÌ 
.
ÌÌ 
AppendAllText
ÌÌ "
(
ÌÌ" #
logFilePath
ÌÌ# .
,
ÌÌ. /
$"
ÌÌ0 2
$str
ÌÌ2 =
{
ÌÌ= >
ex
ÌÌ> @
}
ÌÌ@ A
$str
ÌÌA C
"
ÌÌC D
)
ÌÌD E
;
ÌÌE F
}
ÓÓ 
return
 
friendRequestList
 $
;
$ %
}
ÒÒ 	
public
ÛÛ 
List
ÛÛ 
<
ÛÛ 
FriendRequest
ÛÛ !
>
ÛÛ! "H
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID
ÛÛ# ]
(
ÛÛ] ^
long
ÛÛ^ b
	IDProfile
ÛÛc l
)
ÛÛl m
{
ÙÙ 	
List
ıı 
<
ıı 
FriendRequest
ıı 
>
ıı 
friendRequestList
ıı  1
=
ıı2 3
new
ıı4 7
List
ıı8 <
<
ıı< =
FriendRequest
ıı= J
>
ııJ K
(
ııK L
)
ııL M
;
ııM N
List
ˆˆ 
<
ˆˆ 
FriendRequests
ˆˆ 
>
ˆˆ   
friendRequestsList
ˆˆ! 3
=
ˆˆ4 5
new
ˆˆ6 9
List
ˆˆ: >
<
ˆˆ> ?
FriendRequests
ˆˆ? M
>
ˆˆM N
(
ˆˆN O
)
ˆˆO P
;
ˆˆP Q
try
¯¯ 
{
˘˘ $
DatabaseModelContainer
˙˙ &$
databaseModelContainer
˙˙' =
=
˙˙> ?
new
˙˙@ C$
DatabaseModelContainer
˙˙D Z
(
˙˙Z [
)
˙˙[ \
;
˙˙\ ] 
friendRequestsList
˚˚ "
=
˚˚# $$
databaseModelContainer
˚˚% ;
.
˚˚; <
FriendRequestsSet
˚˚< M
.
¸¸ 
Where
¸¸ 
(
¸¸ 
fr
¸¸ 
=>
¸¸ 
fr
¸¸ 
.
¸¸  
Profiles
¸¸  (
.
¸¸( )
	IDProfile
¸¸) 2
==
¸¸3 5
	IDProfile
¸¸6 ?
)
¸¸? @
.
˝˝ 
Where
˝˝ 
(
˝˝ 
fr
˝˝ 
=>
˝˝ 
fr
˝˝ 
.
˝˝  
AceptationStatus
˝˝  0
==
˝˝1 3-
FriendRequestAceptationStatuses
˝˝4 S
.
˝˝S T
Pendient
˝˝T \
.
˝˝\ ]
ToString
˝˝] e
(
˝˝e f
)
˝˝f g
)
˝˝g h
.
˛˛ 
Where
˛˛ 
(
˛˛ 
fr
˛˛ 
=>
˛˛ 
fr
˛˛ 
.
˛˛  
SendingStatus
˛˛  -
==
˛˛. 0*
FriendRequestSendingStatuses
˛˛1 M
.
˛˛M N
Sent
˛˛N R
.
˛˛R S
ToString
˛˛S [
(
˛˛[ \
)
˛˛\ ]
)
˛˛] ^
.
ˇˇ 
ToList
ˇˇ 
(
ˇˇ 
)
ˇˇ 
;
ˇˇ 
if
ÅÅ 
(
ÅÅ  
friendRequestsList
ÅÅ &
!=
ÅÅ' )
null
ÅÅ* .
)
ÅÅ. /
{
ÇÇ 
friendRequestList
ÉÉ %
=
ÉÉ& '<
.FriendRequestsListToFriendRequestListConverter
ÉÉ( V
(
ÉÉV W 
friendRequestsList
ÉÉW i
)
ÉÉi j
;
ÉÉj k
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
friendRequestList
áá %
=
áá& '
null
áá( ,
;
áá, -
}
àà 
}
ää 
catch
ãã 
(
ãã )
DbEntityValidationException
ãã .
ex
ãã/ 1
)
ãã1 2
{
åå 
string
çç 
logFilePath
çç "
=
çç# $
Path
çç% )
.
çç) *
Combine
çç* 1
(
çç1 2
	Directory
çç2 ;
.
çç; <!
GetCurrentDirectory
çç< O
(
ççO P
)
ççP Q
,
ççQ R
$str
ççS e
)
ççe f
;
ççf g
File
éé 
.
éé 
AppendAllText
éé "
(
éé" #
logFilePath
éé# .
,
éé. /
$"
éé0 2
$str
éé2 =
{
éé= >
ex
éé> @
}
éé@ A
$str
ééA C
"
ééC D
)
ééD E
;
ééE F
}
èè 
catch
êê 
(
êê 
DbUpdateException
êê $
ex
êê% '
)
êê' (
{
ëë 
string
íí 
logFilePath
íí "
=
íí# $
Path
íí% )
.
íí) *
Combine
íí* 1
(
íí1 2
	Directory
íí2 ;
.
íí; <!
GetCurrentDirectory
íí< O
(
ííO P
)
ííP Q
,
ííQ R
$str
ííS e
)
ííe f
;
ííf g
File
ìì 
.
ìì 
AppendAllText
ìì "
(
ìì" #
logFilePath
ìì# .
,
ìì. /
$"
ìì0 2
$str
ìì2 =
{
ìì= >
ex
ìì> @
}
ìì@ A
$str
ììA C
"
ììC D
)
ììD E
;
ììE F
}
îî 
catch
ïï 
(
ïï /
!EntityCommandCompilationException
ïï 4
ex
ïï5 7
)
ïï7 8
{
ññ 
string
óó 
logFilePath
óó "
=
óó# $
Path
óó% )
.
óó) *
Combine
óó* 1
(
óó1 2
	Directory
óó2 ;
.
óó; <!
GetCurrentDirectory
óó< O
(
óóO P
)
óóP Q
,
óóQ R
$str
óóS e
)
óóe f
;
óóf g
File
òò 
.
òò 
AppendAllText
òò "
(
òò" #
logFilePath
òò# .
,
òò. /
$"
òò0 2
$str
òò2 =
{
òò= >
ex
òò> @
}
òò@ A
$str
òòA C
"
òòC D
)
òòD E
;
òòE F
}
ôô 
catch
öö 
(
öö -
EntityCommandExecutionException
öö 2
ex
öö3 5
)
öö5 6
{
õõ 
string
úú 
logFilePath
úú "
=
úú# $
Path
úú% )
.
úú) *
Combine
úú* 1
(
úú1 2
	Directory
úú2 ;
.
úú; <!
GetCurrentDirectory
úú< O
(
úúO P
)
úúP Q
,
úúQ R
$str
úúS e
)
úúe f
;
úúf g
File
ùù 
.
ùù 
AppendAllText
ùù "
(
ùù" #
logFilePath
ùù# .
,
ùù. /
$"
ùù0 2
$str
ùù2 =
{
ùù= >
ex
ùù> @
}
ùù@ A
$str
ùùA C
"
ùùC D
)
ùùD E
;
ùùE F
}
ûû 
catch
üü 
(
üü #
SqlNullValueException
üü (
ex
üü) +
)
üü+ ,
{
†† 
string
°° 
logFilePath
°° "
=
°°# $
Path
°°% )
.
°°) *
Combine
°°* 1
(
°°1 2
	Directory
°°2 ;
.
°°; <!
GetCurrentDirectory
°°< O
(
°°O P
)
°°P Q
,
°°Q R
$str
°°S e
)
°°e f
;
°°f g
File
¢¢ 
.
¢¢ 
AppendAllText
¢¢ "
(
¢¢" #
logFilePath
¢¢# .
,
¢¢. /
$"
¢¢0 2
$str
¢¢2 =
{
¢¢= >
ex
¢¢> @
}
¢¢@ A
$str
¢¢A C
"
¢¢C D
)
¢¢D E
;
¢¢E F
}
££ 
return
•• 
friendRequestList
•• $
;
••$ %
}
¶¶ 	
private
©© 
List
©© 
<
©© 
FriendRequest
©© "
>
©©" #<
.FriendRequestsListToFriendRequestListConverter
©©$ R
(
©©R S
List
©©S W
<
©©W X
FriendRequests
©©X f
>
©©f g 
friendRequestsList
©©h z
)
©©z {
{
™™ 	
List
´´ 
<
´´ 
FriendRequest
´´ 
>
´´ 
friendRequestList
´´  1
=
´´2 3
new
´´4 7
List
´´8 <
<
´´< =
FriendRequest
´´= J
>
´´J K
(
´´K L
)
´´L M
;
´´M N
foreach
≠≠ 
(
≠≠ 
FriendRequests
≠≠ #
friendRequests
≠≠$ 2
in
≠≠3 5 
friendRequestsList
≠≠6 H
)
≠≠H I
{
ÆÆ 
Player
∞∞ 
playerProfile
∞∞ $
=
∞∞% &
new
∞∞' *
Player
∞∞+ 1
{
±± 
IDPlayer
≤≤ 
=
≤≤ 
friendRequests
≤≤ -
.
≤≤- .
Profiles
≤≤. 6
.
≤≤6 7
Players
≤≤7 >
.
≤≤> ?
IDPlayer
≤≤? G
,
≤≤G H
Names
≥≥ 
=
≥≥ 
friendRequests
≥≥ *
.
≥≥* +
Profiles
≥≥+ 3
.
≥≥3 4
Players
≥≥4 ;
.
≥≥; <
Names
≥≥< A
,
≥≥A B
Surnames
¥¥ 
=
¥¥ 
friendRequests
¥¥ -
.
¥¥- .
Profiles
¥¥. 6
.
¥¥6 7
Players
¥¥7 >
.
¥¥> ?
Surnames
¥¥? G
,
¥¥G H
Email
µµ 
=
µµ 
friendRequests
µµ *
.
µµ* +
Profiles
µµ+ 3
.
µµ3 4
Players
µµ4 ;
.
µµ; <
Email
µµ< A
,
µµA B
NickName
∂∂ 
=
∂∂ 
friendRequests
∂∂ -
.
∂∂- .
Profiles
∂∂. 6
.
∂∂6 7
Players
∂∂7 >
.
∂∂> ?
NickName
∂∂? G
,
∂∂G H
	BirthDate
∑∑ 
=
∑∑ 
friendRequests
∑∑  .
.
∑∑. /
Profiles
∑∑/ 7
.
∑∑7 8
Players
∑∑8 ?
.
∑∑? @
	BirthDate
∑∑@ I
}
∏∏ 
;
∏∏ 
Player
∫∫ 
playerProfile1
∫∫ %
=
∫∫& '
new
∫∫( +
Player
∫∫, 2
{
ªª 
IDPlayer
ºº 
=
ºº 
friendRequests
ºº -
.
ºº- .
	Profiles1
ºº. 7
.
ºº7 8
Players
ºº8 ?
.
ºº? @
IDPlayer
ºº@ H
,
ººH I
Names
ΩΩ 
=
ΩΩ 
friendRequests
ΩΩ *
.
ΩΩ* +
	Profiles1
ΩΩ+ 4
.
ΩΩ4 5
Players
ΩΩ5 <
.
ΩΩ< =
Names
ΩΩ= B
,
ΩΩB C
Surnames
ææ 
=
ææ 
friendRequests
ææ -
.
ææ- .
	Profiles1
ææ. 7
.
ææ7 8
Players
ææ8 ?
.
ææ? @
Surnames
ææ@ H
,
ææH I
Email
øø 
=
øø 
friendRequests
øø *
.
øø* +
	Profiles1
øø+ 4
.
øø4 5
Players
øø5 <
.
øø< =
Email
øø= B
,
øøB C
NickName
¿¿ 
=
¿¿ 
friendRequests
¿¿ -
.
¿¿- .
	Profiles1
¿¿. 7
.
¿¿7 8
Players
¿¿8 ?
.
¿¿? @
NickName
¿¿@ H
,
¿¿H I
	BirthDate
¡¡ 
=
¡¡ 
friendRequests
¡¡  .
.
¡¡. /
	Profiles1
¡¡/ 8
.
¡¡8 9
Players
¡¡9 @
.
¡¡@ A
	BirthDate
¡¡A J
}
¬¬ 
;
¬¬ 
Profile
ƒƒ 
profile
ƒƒ 
=
ƒƒ  !
new
ƒƒ" %
Profile
ƒƒ& -
{
≈≈ 
	IDProfile
∆∆ 
=
∆∆ 
friendRequests
∆∆  .
.
∆∆. /
Profiles
∆∆/ 7
.
∆∆7 8
	IDProfile
∆∆8 A
,
∆∆A B
Coins
«« 
=
«« 
(
«« 
long
«« !
)
««! "
friendRequests
««" 0
.
««0 1
Profiles
««1 9
.
««9 :
Coins
««: ?
,
««? @
LoginStatus
»» 
=
»»  !
friendRequests
»»" 0
.
»»0 1
Profiles
»»1 9
.
»»9 :
LoginStatus
»»: E
,
»»E F
Player
…… 
=
…… 
playerProfile
…… *
}
   
;
   
Profile
ÃÃ 
profile1
ÃÃ  
=
ÃÃ! "
new
ÃÃ# &
Profile
ÃÃ' .
{
ÕÕ 
	IDProfile
ŒŒ 
=
ŒŒ 
friendRequests
ŒŒ  .
.
ŒŒ. /
	Profiles1
ŒŒ/ 8
.
ŒŒ8 9
	IDProfile
ŒŒ9 B
,
ŒŒB C
Coins
œœ 
=
œœ 
(
œœ 
long
œœ !
)
œœ! "
friendRequests
œœ" 0
.
œœ0 1
	Profiles1
œœ1 :
.
œœ: ;
Coins
œœ; @
,
œœ@ A
LoginStatus
–– 
=
––  !
friendRequests
––" 0
.
––0 1
	Profiles1
––1 :
.
––: ;
LoginStatus
––; F
,
––F G
Player
—— 
=
—— 
playerProfile1
—— +
}
““ 
;
““ 
FriendRequest
‘‘ 
friendRequest
‘‘ +
=
‘‘, -
new
‘‘. 1
FriendRequest
‘‘2 ?
{
’’ 
IDFriendRequest
÷÷ #
=
÷÷$ %
friendRequests
÷÷& 4
.
÷÷4 5
IDFriendRequest
÷÷5 D
,
÷÷D E
CreationDate
◊◊  
=
◊◊! "
friendRequests
◊◊# 1
.
◊◊1 2
CreationDate
◊◊2 >
,
◊◊> ?
Message
ÿÿ 
=
ÿÿ 
friendRequests
ÿÿ ,
.
ÿÿ, -
Message
ÿÿ- 4
,
ÿÿ4 5
AceptationStatus
ŸŸ $
=
ŸŸ% &
friendRequests
ŸŸ' 5
.
ŸŸ5 6
AceptationStatus
ŸŸ6 F
,
ŸŸF G
SendingStatus
⁄⁄ !
=
⁄⁄" #
friendRequests
⁄⁄$ 2
.
⁄⁄2 3
SendingStatus
⁄⁄3 @
,
⁄⁄@ A
Profile
€€ 
=
€€ 
profile
€€ %
,
€€% &
Profile1
‹‹ 
=
‹‹ 
profile1
‹‹ '
}
›› 
;
›› 
friendRequestList
ﬂﬂ !
.
ﬂﬂ! "
Add
ﬂﬂ" %
(
ﬂﬂ% &
friendRequest
ﬂﬂ& 3
)
ﬂﬂ3 4
;
ﬂﬂ4 5
}
‡‡ 
return
‚‚ 
friendRequestList
‚‚ $
;
‚‚$ %
}
„„ 	
public
ÂÂ 
bool
ÂÂ T
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile
ÂÂ Z
(
ÂÂZ [
long
ÂÂ[ _"
transmitterProfileID
ÂÂ` t
,
ÂÂt u
long
ÂÂv z 
receiverProfileIDÂÂ{ å
)ÂÂå ç
{
ÊÊ 	
try
ÁÁ 
{
ËË $
DatabaseModelContainer
ÈÈ &$
databaseModelContainer
ÈÈ' =
=
ÈÈ> ?
new
ÈÈ@ C$
DatabaseModelContainer
ÈÈD Z
(
ÈÈZ [
)
ÈÈ[ \
;
ÈÈ\ ]
FriendRequests
ÍÍ 
friendRequests
ÍÍ -
=
ÍÍ. /$
databaseModelContainer
ÍÍ0 F
.
ÍÍF G
FriendRequestsSet
ÍÍG X
.
ÍÍX Y
Where
ÍÍY ^
(
ÍÍ^ _
fr
ÍÍ_ a
=>
ÍÍb d
fr
ÍÍe g
.
ÍÍg h
Profiles
ÍÍh p
.
ÍÍp q
	IDProfile
ÍÍq z
==
ÍÍ{ }#
transmitterProfileIDÍÍ~ í
)ÍÍí ì
.
ÎÎ 
Where
ÎÎ 
(
ÎÎ 
fr
ÎÎ 
=>
ÎÎ  
fr
ÎÎ! #
.
ÎÎ# $
	Profiles1
ÎÎ$ -
.
ÎÎ- .
	IDProfile
ÎÎ. 7
==
ÎÎ8 :
receiverProfileID
ÎÎ; L
)
ÎÎL M
.
ÏÏ 
Where
ÏÏ 
(
ÏÏ 
fr
ÏÏ 
=>
ÏÏ  
fr
ÏÏ! #
.
ÏÏ# $
AceptationStatus
ÏÏ$ 4
==
ÏÏ5 7-
FriendRequestAceptationStatuses
ÏÏ8 W
.
ÏÏW X
Pendient
ÏÏX `
.
ÏÏ` a
ToString
ÏÏa i
(
ÏÏi j
)
ÏÏj k
)
ÏÏk l
.
ÌÌ 
Where
ÌÌ 
(
ÌÌ 
fr
ÌÌ 
=>
ÌÌ  
fr
ÌÌ! #
.
ÌÌ# $
SendingStatus
ÌÌ$ 1
==
ÌÌ2 4*
FriendRequestSendingStatuses
ÌÌ5 Q
.
ÌÌQ R
Sent
ÌÌR V
.
ÌÌV W
ToString
ÌÌW _
(
ÌÌ_ `
)
ÌÌ` a
)
ÌÌa b
.
ÓÓ 
FirstOrDefault
ÓÓ #
(
ÓÓ# $
)
ÓÓ$ %
;
ÓÓ% &
if
ÔÔ 
(
ÔÔ 
friendRequests
ÔÔ "
!=
ÔÔ# %
null
ÔÔ& *
)
ÔÔ* +
{
 
return
ÒÒ 
true
ÒÒ 
;
ÒÒ  
}
ÚÚ 
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ )
DbEntityValidationException
ÙÙ .
ex
ÙÙ/ 1
)
ÙÙ1 2
{
ıı 
string
ˆˆ 
logFilePath
ˆˆ "
=
ˆˆ# $
Path
ˆˆ% )
.
ˆˆ) *
Combine
ˆˆ* 1
(
ˆˆ1 2
	Directory
ˆˆ2 ;
.
ˆˆ; <!
GetCurrentDirectory
ˆˆ< O
(
ˆˆO P
)
ˆˆP Q
,
ˆˆQ R
$str
ˆˆS e
)
ˆˆe f
;
ˆˆf g
File
˜˜ 
.
˜˜ 
AppendAllText
˜˜ "
(
˜˜" #
logFilePath
˜˜# .
,
˜˜. /
$"
˜˜0 2
$str
˜˜2 =
{
˜˜= >
ex
˜˜> @
}
˜˜@ A
$str
˜˜A C
"
˜˜C D
)
˜˜D E
;
˜˜E F
}
¯¯ 
catch
˘˘ 
(
˘˘ 
DbUpdateException
˘˘ $
ex
˘˘% '
)
˘˘' (
{
˙˙ 
string
˚˚ 
logFilePath
˚˚ "
=
˚˚# $
Path
˚˚% )
.
˚˚) *
Combine
˚˚* 1
(
˚˚1 2
	Directory
˚˚2 ;
.
˚˚; <!
GetCurrentDirectory
˚˚< O
(
˚˚O P
)
˚˚P Q
,
˚˚Q R
$str
˚˚S e
)
˚˚e f
;
˚˚f g
File
¸¸ 
.
¸¸ 
AppendAllText
¸¸ "
(
¸¸" #
logFilePath
¸¸# .
,
¸¸. /
$"
¸¸0 2
$str
¸¸2 =
{
¸¸= >
ex
¸¸> @
}
¸¸@ A
$str
¸¸A C
"
¸¸C D
)
¸¸D E
;
¸¸E F
}
˝˝ 
catch
˛˛ 
(
˛˛ /
!EntityCommandCompilationException
˛˛ 4
ex
˛˛5 7
)
˛˛7 8
{
ˇˇ 
string
ÄÄ 
logFilePath
ÄÄ "
=
ÄÄ# $
Path
ÄÄ% )
.
ÄÄ) *
Combine
ÄÄ* 1
(
ÄÄ1 2
	Directory
ÄÄ2 ;
.
ÄÄ; <!
GetCurrentDirectory
ÄÄ< O
(
ÄÄO P
)
ÄÄP Q
,
ÄÄQ R
$str
ÄÄS e
)
ÄÄe f
;
ÄÄf g
File
ÅÅ 
.
ÅÅ 
AppendAllText
ÅÅ "
(
ÅÅ" #
logFilePath
ÅÅ# .
,
ÅÅ. /
$"
ÅÅ0 2
$str
ÅÅ2 =
{
ÅÅ= >
ex
ÅÅ> @
}
ÅÅ@ A
$str
ÅÅA C
"
ÅÅC D
)
ÅÅD E
;
ÅÅE F
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ -
EntityCommandExecutionException
ÉÉ 2
ex
ÉÉ3 5
)
ÉÉ5 6
{
ÑÑ 
string
ÖÖ 
logFilePath
ÖÖ "
=
ÖÖ# $
Path
ÖÖ% )
.
ÖÖ) *
Combine
ÖÖ* 1
(
ÖÖ1 2
	Directory
ÖÖ2 ;
.
ÖÖ; <!
GetCurrentDirectory
ÖÖ< O
(
ÖÖO P
)
ÖÖP Q
,
ÖÖQ R
$str
ÖÖS e
)
ÖÖe f
;
ÖÖf g
File
ÜÜ 
.
ÜÜ 
AppendAllText
ÜÜ "
(
ÜÜ" #
logFilePath
ÜÜ# .
,
ÜÜ. /
$"
ÜÜ0 2
$str
ÜÜ2 =
{
ÜÜ= >
ex
ÜÜ> @
}
ÜÜ@ A
$str
ÜÜA C
"
ÜÜC D
)
ÜÜD E
;
ÜÜE F
}
áá 
catch
àà 
(
àà #
SqlNullValueException
àà (
ex
àà) +
)
àà+ ,
{
ââ 
string
ää 
logFilePath
ää "
=
ää# $
Path
ää% )
.
ää) *
Combine
ää* 1
(
ää1 2
	Directory
ää2 ;
.
ää; <!
GetCurrentDirectory
ää< O
(
ääO P
)
ääP Q
,
ääQ R
$str
ääS e
)
ääe f
;
ääf g
File
ãã 
.
ãã 
AppendAllText
ãã "
(
ãã" #
logFilePath
ãã# .
,
ãã. /
$"
ãã0 2
$str
ãã2 =
{
ãã= >
ex
ãã> @
}
ãã@ A
$str
ããA C
"
ããC D
)
ããD E
;
ããE F
}
åå 
return
éé 
false
éé 
;
éé 
}
èè 	
public
ëë 
bool
ëë Z
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile
ëë `
(
ëë` a
long
ëëa e"
transmitterProfileID
ëëf z
,
ëëz {
longëë| Ä
senderProfileIDëëÅ ê
)ëëê ë
{
íí 	
try
ìì 
{
îî $
DatabaseModelContainer
ïï &$
databaseModelContainer
ïï' =
=
ïï> ?
new
ïï@ C$
DatabaseModelContainer
ïïD Z
(
ïïZ [
)
ïï[ \
;
ïï\ ]
FriendRequests
ññ 
friendRequests
ññ -
=
ññ. /$
databaseModelContainer
ññ0 F
.
ññF G
FriendRequestsSet
ññG X
.
ññX Y
Where
ññY ^
(
ññ^ _
fr
ññ_ a
=>
ññb d
fr
ññe g
.
ññg h
Profiles
ññh p
.
ññp q
	IDProfile
ññq z
==
ññ{ }
senderProfileIDññ~ ç
)ññç é
.
óó 
Where
óó 
(
óó 
fr
óó 
=>
óó  
fr
óó! #
.
óó# $
	Profiles1
óó$ -
.
óó- .
	IDProfile
óó. 7
==
óó8 :"
transmitterProfileID
óó; O
)
óóO P
.
òò 
Where
òò 
(
òò 
fr
òò 
=>
òò  
fr
òò! #
.
òò# $
AceptationStatus
òò$ 4
==
òò5 7-
FriendRequestAceptationStatuses
òò8 W
.
òòW X
Pendient
òòX `
.
òò` a
ToString
òòa i
(
òòi j
)
òòj k
)
òòk l
.
ôô 
Where
ôô 
(
ôô 
fr
ôô 
=>
ôô  
fr
ôô! #
.
ôô# $
SendingStatus
ôô$ 1
==
ôô2 4*
FriendRequestSendingStatuses
ôô5 Q
.
ôôQ R
Sent
ôôR V
.
ôôV W
ToString
ôôW _
(
ôô_ `
)
ôô` a
)
ôôa b
.
öö 
FirstOrDefault
öö #
(
öö# $
)
öö$ %
;
öö% &
if
õõ 
(
õõ 
friendRequests
õõ "
!=
õõ# %
null
õõ& *
)
õõ* +
{
úú 
return
ùù 
true
ùù 
;
ùù  
}
ûû 
}
üü 
catch
†† 
(
†† )
DbEntityValidationException
†† .
ex
††/ 1
)
††1 2
{
°° 
string
¢¢ 
logFilePath
¢¢ "
=
¢¢# $
Path
¢¢% )
.
¢¢) *
Combine
¢¢* 1
(
¢¢1 2
	Directory
¢¢2 ;
.
¢¢; <!
GetCurrentDirectory
¢¢< O
(
¢¢O P
)
¢¢P Q
,
¢¢Q R
$str
¢¢S e
)
¢¢e f
;
¢¢f g
File
££ 
.
££ 
AppendAllText
££ "
(
££" #
logFilePath
££# .
,
££. /
$"
££0 2
$str
££2 =
{
££= >
ex
££> @
}
££@ A
$str
££A C
"
££C D
)
££D E
;
££E F
}
§§ 
catch
•• 
(
•• 
DbUpdateException
•• $
ex
••% '
)
••' (
{
¶¶ 
string
ßß 
logFilePath
ßß "
=
ßß# $
Path
ßß% )
.
ßß) *
Combine
ßß* 1
(
ßß1 2
	Directory
ßß2 ;
.
ßß; <!
GetCurrentDirectory
ßß< O
(
ßßO P
)
ßßP Q
,
ßßQ R
$str
ßßS e
)
ßße f
;
ßßf g
File
®® 
.
®® 
AppendAllText
®® "
(
®®" #
logFilePath
®®# .
,
®®. /
$"
®®0 2
$str
®®2 =
{
®®= >
ex
®®> @
}
®®@ A
$str
®®A C
"
®®C D
)
®®D E
;
®®E F
}
©© 
catch
™™ 
(
™™ /
!EntityCommandCompilationException
™™ 4
ex
™™5 7
)
™™7 8
{
´´ 
string
¨¨ 
logFilePath
¨¨ "
=
¨¨# $
Path
¨¨% )
.
¨¨) *
Combine
¨¨* 1
(
¨¨1 2
	Directory
¨¨2 ;
.
¨¨; <!
GetCurrentDirectory
¨¨< O
(
¨¨O P
)
¨¨P Q
,
¨¨Q R
$str
¨¨S e
)
¨¨e f
;
¨¨f g
File
≠≠ 
.
≠≠ 
AppendAllText
≠≠ "
(
≠≠" #
logFilePath
≠≠# .
,
≠≠. /
$"
≠≠0 2
$str
≠≠2 =
{
≠≠= >
ex
≠≠> @
}
≠≠@ A
$str
≠≠A C
"
≠≠C D
)
≠≠D E
;
≠≠E F
}
ÆÆ 
catch
ØØ 
(
ØØ -
EntityCommandExecutionException
ØØ 2
ex
ØØ3 5
)
ØØ5 6
{
∞∞ 
string
±± 
logFilePath
±± "
=
±±# $
Path
±±% )
.
±±) *
Combine
±±* 1
(
±±1 2
	Directory
±±2 ;
.
±±; <!
GetCurrentDirectory
±±< O
(
±±O P
)
±±P Q
,
±±Q R
$str
±±S e
)
±±e f
;
±±f g
File
≤≤ 
.
≤≤ 
AppendAllText
≤≤ "
(
≤≤" #
logFilePath
≤≤# .
,
≤≤. /
$"
≤≤0 2
$str
≤≤2 =
{
≤≤= >
ex
≤≤> @
}
≤≤@ A
$str
≤≤A C
"
≤≤C D
)
≤≤D E
;
≤≤E F
}
≥≥ 
catch
¥¥ 
(
¥¥ #
SqlNullValueException
¥¥ (
ex
¥¥) +
)
¥¥+ ,
{
µµ 
string
∂∂ 
logFilePath
∂∂ "
=
∂∂# $
Path
∂∂% )
.
∂∂) *
Combine
∂∂* 1
(
∂∂1 2
	Directory
∂∂2 ;
.
∂∂; <!
GetCurrentDirectory
∂∂< O
(
∂∂O P
)
∂∂P Q
,
∂∂Q R
$str
∂∂S e
)
∂∂e f
;
∂∂f g
File
∑∑ 
.
∑∑ 
AppendAllText
∑∑ "
(
∑∑" #
logFilePath
∑∑# .
,
∑∑. /
$"
∑∑0 2
$str
∑∑2 =
{
∑∑= >
ex
∑∑> @
}
∑∑@ A
$str
∑∑A C
"
∑∑C D
)
∑∑D E
;
∑∑E F
}
∏∏ 
return
∫∫ 
false
∫∫ 
;
∫∫ 
}
ªª 	
public
øø 
void
øø 
AddFriendRequest
øø $
(
øø$ %
FriendRequests
øø% 3
friendRequests
øø4 B
)
øøB C
{
¿¿ 	
try
¡¡ 
{
¬¬ $
DatabaseModelContainer
√√ &$
databaseModelContainer
√√' =
=
√√> ?
new
√√@ C$
DatabaseModelContainer
√√D Z
(
√√Z [
)
√√[ \
;
√√\ ]$
databaseModelContainer
ƒƒ &
.
ƒƒ& '
Entry
ƒƒ' ,
(
ƒƒ, -
friendRequests
ƒƒ- ;
)
ƒƒ; <
.
ƒƒ< =
State
ƒƒ= B
=
ƒƒC D
EntityState
ƒƒE P
.
ƒƒP Q
	Unchanged
ƒƒQ Z
;
ƒƒZ [$
databaseModelContainer
≈≈ &
.
≈≈& '
FriendRequestsSet
≈≈' 8
.
≈≈8 9
Add
≈≈9 <
(
≈≈< =
friendRequests
≈≈= K
)
≈≈K L
;
≈≈L M$
databaseModelContainer
∆∆ &
.
∆∆& '
SaveChanges
∆∆' 2
(
∆∆2 3
)
∆∆3 4
;
∆∆4 54
&ServiceFriendRequestForCallbackMethods
…… 64
&serviceFriendRequestForCallbackMethods
……7 ]
=
……^ _
new
……` c5
&ServiceFriendRequestForCallbackMethods……d ä
(……ä ã
)……ã å
;……å ç4
&serviceFriendRequestForCallbackMethods
   6
.
  6 7<
.UpdateFriendRequestsListsToAllConnectedClients
  7 e
(
  e f
)
  f g
;
  g h
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ )
DbEntityValidationException
ÃÃ .
ex
ÃÃ/ 1
)
ÃÃ1 2
{
ÕÕ 
string
ŒŒ 
logFilePath
ŒŒ "
=
ŒŒ# $
Path
ŒŒ% )
.
ŒŒ) *
Combine
ŒŒ* 1
(
ŒŒ1 2
	Directory
ŒŒ2 ;
.
ŒŒ; <!
GetCurrentDirectory
ŒŒ< O
(
ŒŒO P
)
ŒŒP Q
,
ŒŒQ R
$str
ŒŒS e
)
ŒŒe f
;
ŒŒf g
File
œœ 
.
œœ 
AppendAllText
œœ "
(
œœ" #
logFilePath
œœ# .
,
œœ. /
$"
œœ0 2
$str
œœ2 =
{
œœ= >
ex
œœ> @
}
œœ@ A
$str
œœA C
"
œœC D
)
œœD E
;
œœE F
}
–– 
catch
—— 
(
—— 
DbUpdateException
—— $
ex
——% '
)
——' (
{
““ 
string
”” 
logFilePath
”” "
=
””# $
Path
””% )
.
””) *
Combine
””* 1
(
””1 2
	Directory
””2 ;
.
””; <!
GetCurrentDirectory
””< O
(
””O P
)
””P Q
,
””Q R
$str
””S e
)
””e f
;
””f g
File
‘‘ 
.
‘‘ 
AppendAllText
‘‘ "
(
‘‘" #
logFilePath
‘‘# .
,
‘‘. /
$"
‘‘0 2
$str
‘‘2 =
{
‘‘= >
ex
‘‘> @
}
‘‘@ A
$str
‘‘A C
"
‘‘C D
)
‘‘D E
;
‘‘E F
}
’’ 
catch
÷÷ 
(
÷÷ /
!EntityCommandCompilationException
÷÷ 4
ex
÷÷5 7
)
÷÷7 8
{
◊◊ 
string
ÿÿ 
logFilePath
ÿÿ "
=
ÿÿ# $
Path
ÿÿ% )
.
ÿÿ) *
Combine
ÿÿ* 1
(
ÿÿ1 2
	Directory
ÿÿ2 ;
.
ÿÿ; <!
GetCurrentDirectory
ÿÿ< O
(
ÿÿO P
)
ÿÿP Q
,
ÿÿQ R
$str
ÿÿS e
)
ÿÿe f
;
ÿÿf g
File
ŸŸ 
.
ŸŸ 
AppendAllText
ŸŸ "
(
ŸŸ" #
logFilePath
ŸŸ# .
,
ŸŸ. /
$"
ŸŸ0 2
$str
ŸŸ2 =
{
ŸŸ= >
ex
ŸŸ> @
}
ŸŸ@ A
$str
ŸŸA C
"
ŸŸC D
)
ŸŸD E
;
ŸŸE F
}
⁄⁄ 
catch
€€ 
(
€€ -
EntityCommandExecutionException
€€ 2
ex
€€3 5
)
€€5 6
{
‹‹ 
string
›› 
logFilePath
›› "
=
››# $
Path
››% )
.
››) *
Combine
››* 1
(
››1 2
	Directory
››2 ;
.
››; <!
GetCurrentDirectory
››< O
(
››O P
)
››P Q
,
››Q R
$str
››S e
)
››e f
;
››f g
File
ﬁﬁ 
.
ﬁﬁ 
AppendAllText
ﬁﬁ "
(
ﬁﬁ" #
logFilePath
ﬁﬁ# .
,
ﬁﬁ. /
$"
ﬁﬁ0 2
$str
ﬁﬁ2 =
{
ﬁﬁ= >
ex
ﬁﬁ> @
}
ﬁﬁ@ A
$str
ﬁﬁA C
"
ﬁﬁC D
)
ﬁﬁD E
;
ﬁﬁE F
}
ﬂﬂ 
}
‡‡ 	
public
‚‚ 
void
‚‚ !
AcceptFriendRequest
‚‚ '
(
‚‚' (
FriendRequests
‚‚( 6
friendRequests
‚‚7 E
)
‚‚E F
{
„„ 	
try
‰‰ 
{
ÂÂ $
DatabaseModelContainer
ÊÊ &$
databaseModelContainer
ÊÊ' =
=
ÊÊ> ?
new
ÊÊ@ C$
DatabaseModelContainer
ÊÊD Z
(
ÊÊZ [
)
ÊÊ[ \
;
ÊÊ\ ]
FriendRequests
ÁÁ $
friendRequestsToModify
ÁÁ 5
=
ÁÁ6 7$
databaseModelContainer
ÁÁ8 N
.
ÁÁN O
FriendRequestsSet
ÁÁO `
.
ÁÁ` a
Find
ÁÁa e
(
ÁÁe f
friendRequests
ÁÁf t
.
ÁÁt u
IDFriendRequestÁÁu Ñ
)ÁÁÑ Ö
;ÁÁÖ Ü
if
ËË 
(
ËË $
friendRequestsToModify
ËË *
!=
ËË+ -
null
ËË. 2
)
ËË2 3
{
ÈÈ $
friendRequestsToModify
ÍÍ *
.
ÍÍ* +
AceptationStatus
ÍÍ+ ;
=
ÍÍ< =
Enum
ÍÍ> B
.
ÍÍB C
GetName
ÍÍC J
(
ÍÍJ K
typeof
ÍÍK Q
(
ÍÍQ R-
FriendRequestAceptationStatuses
ÍÍR q
)
ÍÍq r
,
ÍÍr s.
FriendRequestAceptationStatusesÍÍt ì
.ÍÍì î
AcceptedÍÍî ú
)ÍÍú ù
;ÍÍù û$
databaseModelContainer
ÎÎ *
.
ÎÎ* +
SaveChanges
ÎÎ+ 6
(
ÎÎ6 7
)
ÎÎ7 8
;
ÎÎ8 91
#ServiceProfileForNonCallbackMethods
ÌÌ 71
#serviceProfileForNonCallbackMethods
ÌÌ8 [
=
ÌÌ\ ]
new
ÌÌ^ a2
#ServiceProfileForNonCallbackMethodsÌÌb Ö
(ÌÌÖ Ü
)ÌÌÜ á
;ÌÌá à1
#serviceProfileForNonCallbackMethods
ÓÓ 7
.
ÓÓ7 8
AddFriendship
ÓÓ8 E
(
ÓÓE F
friendRequests
ÓÓF T
.
ÓÓT U
Profiles
ÓÓU ]
,
ÓÓ] ^
friendRequests
ÓÓ_ m
.
ÓÓm n
	Profiles1
ÓÓn w
)
ÓÓw x
;
ÓÓx y4
&ServiceFriendRequestForCallbackMethods
 :4
&serviceFriendRequestForCallbackMethods
; a
=
b c
new
d g5
&ServiceFriendRequestForCallbackMethodsh é
(é è
)è ê
;ê ë4
&serviceFriendRequestForCallbackMethods
ÒÒ :
.
ÒÒ: ;<
.UpdateFriendRequestsListsToAllConnectedClients
ÒÒ; i
(
ÒÒi j
)
ÒÒj k
;
ÒÒk l
}
ÚÚ 
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ )
DbEntityValidationException
ÙÙ .
ex
ÙÙ/ 1
)
ÙÙ1 2
{
ıı 
string
ˆˆ 
logFilePath
ˆˆ "
=
ˆˆ# $
Path
ˆˆ% )
.
ˆˆ) *
Combine
ˆˆ* 1
(
ˆˆ1 2
	Directory
ˆˆ2 ;
.
ˆˆ; <!
GetCurrentDirectory
ˆˆ< O
(
ˆˆO P
)
ˆˆP Q
,
ˆˆQ R
$str
ˆˆS e
)
ˆˆe f
;
ˆˆf g
File
˜˜ 
.
˜˜ 
AppendAllText
˜˜ "
(
˜˜" #
logFilePath
˜˜# .
,
˜˜. /
$"
˜˜0 2
$str
˜˜2 =
{
˜˜= >
ex
˜˜> @
}
˜˜@ A
$str
˜˜A C
"
˜˜C D
)
˜˜D E
;
˜˜E F
}
¯¯ 
catch
˘˘ 
(
˘˘ 
DbUpdateException
˘˘ $
ex
˘˘% '
)
˘˘' (
{
˙˙ 
string
˚˚ 
logFilePath
˚˚ "
=
˚˚# $
Path
˚˚% )
.
˚˚) *
Combine
˚˚* 1
(
˚˚1 2
	Directory
˚˚2 ;
.
˚˚; <!
GetCurrentDirectory
˚˚< O
(
˚˚O P
)
˚˚P Q
,
˚˚Q R
$str
˚˚S e
)
˚˚e f
;
˚˚f g
File
¸¸ 
.
¸¸ 
AppendAllText
¸¸ "
(
¸¸" #
logFilePath
¸¸# .
,
¸¸. /
$"
¸¸0 2
$str
¸¸2 =
{
¸¸= >
ex
¸¸> @
}
¸¸@ A
$str
¸¸A C
"
¸¸C D
)
¸¸D E
;
¸¸E F
}
˝˝ 
catch
˛˛ 
(
˛˛ /
!EntityCommandCompilationException
˛˛ 4
ex
˛˛5 7
)
˛˛7 8
{
ˇˇ 
string
ÄÄ 
logFilePath
ÄÄ "
=
ÄÄ# $
Path
ÄÄ% )
.
ÄÄ) *
Combine
ÄÄ* 1
(
ÄÄ1 2
	Directory
ÄÄ2 ;
.
ÄÄ; <!
GetCurrentDirectory
ÄÄ< O
(
ÄÄO P
)
ÄÄP Q
,
ÄÄQ R
$str
ÄÄS e
)
ÄÄe f
;
ÄÄf g
File
ÅÅ 
.
ÅÅ 
AppendAllText
ÅÅ "
(
ÅÅ" #
logFilePath
ÅÅ# .
,
ÅÅ. /
$"
ÅÅ0 2
$str
ÅÅ2 =
{
ÅÅ= >
ex
ÅÅ> @
}
ÅÅ@ A
$str
ÅÅA C
"
ÅÅC D
)
ÅÅD E
;
ÅÅE F
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ -
EntityCommandExecutionException
ÉÉ 2
ex
ÉÉ3 5
)
ÉÉ5 6
{
ÑÑ 
string
ÖÖ 
logFilePath
ÖÖ "
=
ÖÖ# $
Path
ÖÖ% )
.
ÖÖ) *
Combine
ÖÖ* 1
(
ÖÖ1 2
	Directory
ÖÖ2 ;
.
ÖÖ; <!
GetCurrentDirectory
ÖÖ< O
(
ÖÖO P
)
ÖÖP Q
,
ÖÖQ R
$str
ÖÖS e
)
ÖÖe f
;
ÖÖf g
File
ÜÜ 
.
ÜÜ 
AppendAllText
ÜÜ "
(
ÜÜ" #
logFilePath
ÜÜ# .
,
ÜÜ. /
$"
ÜÜ0 2
$str
ÜÜ2 =
{
ÜÜ= >
ex
ÜÜ> @
}
ÜÜ@ A
$str
ÜÜA C
"
ÜÜC D
)
ÜÜD E
;
ÜÜE F
}
áá 
}
àà 	
public
ää 
void
ää !
CancelFriendRequest
ää '
(
ää' (
FriendRequests
ää( 6
friendRequests
ää7 E
)
ääE F
{
ãã 	
try
åå 
{
çç $
DatabaseModelContainer
éé &$
databaseModelContainer
éé' =
=
éé> ?
new
éé@ C$
DatabaseModelContainer
ééD Z
(
ééZ [
)
éé[ \
;
éé\ ]
FriendRequests
èè $
friendRequestsToModify
èè 5
=
èè6 7$
databaseModelContainer
èè8 N
.
èèN O
FriendRequestsSet
èèO `
.
èè` a
Find
èèa e
(
èèe f
friendRequests
èèf t
.
èèt u
IDFriendRequestèèu Ñ
)èèÑ Ö
;èèÖ Ü
if
êê 
(
êê $
friendRequestsToModify
êê *
!=
êê+ -
null
êê. 2
)
êê2 3
{
ëë $
friendRequestsToModify
íí *
.
íí* +
SendingStatus
íí+ 8
=
íí9 :
Enum
íí; ?
.
íí? @
GetName
íí@ G
(
ííG H
typeof
ííH N
(
ííN O*
FriendRequestSendingStatuses
ííO k
)
íík l
,
ííl m+
FriendRequestSendingStatusesíín ä
.ííä ã
Canceledííã ì
)ííì î
;ííî ï$
databaseModelContainer
ìì *
.
ìì* +
SaveChanges
ìì+ 6
(
ìì6 7
)
ìì7 8
;
ìì8 94
&ServiceFriendRequestForCallbackMethods
ññ :4
&serviceFriendRequestForCallbackMethods
ññ; a
=
ññb c
new
ññd g5
&ServiceFriendRequestForCallbackMethodsññh é
(ññé è
)ññè ê
;ññê ë4
&serviceFriendRequestForCallbackMethods
óó :
.
óó: ;<
.UpdateFriendRequestsListsToAllConnectedClients
óó; i
(
óói j
)
óój k
;
óók l
}
òò 
}
ôô 
catch
öö 
(
öö )
DbEntityValidationException
öö .
ex
öö/ 1
)
öö1 2
{
õõ 
string
úú 
logFilePath
úú "
=
úú# $
Path
úú% )
.
úú) *
Combine
úú* 1
(
úú1 2
	Directory
úú2 ;
.
úú; <!
GetCurrentDirectory
úú< O
(
úúO P
)
úúP Q
,
úúQ R
$str
úúS e
)
úúe f
;
úúf g
File
ùù 
.
ùù 
AppendAllText
ùù "
(
ùù" #
logFilePath
ùù# .
,
ùù. /
$"
ùù0 2
$str
ùù2 =
{
ùù= >
ex
ùù> @
}
ùù@ A
$str
ùùA C
"
ùùC D
)
ùùD E
;
ùùE F
}
ûû 
catch
üü 
(
üü 
DbUpdateException
üü $
ex
üü% '
)
üü' (
{
†† 
string
°° 
logFilePath
°° "
=
°°# $
Path
°°% )
.
°°) *
Combine
°°* 1
(
°°1 2
	Directory
°°2 ;
.
°°; <!
GetCurrentDirectory
°°< O
(
°°O P
)
°°P Q
,
°°Q R
$str
°°S e
)
°°e f
;
°°f g
File
¢¢ 
.
¢¢ 
AppendAllText
¢¢ "
(
¢¢" #
logFilePath
¢¢# .
,
¢¢. /
$"
¢¢0 2
$str
¢¢2 =
{
¢¢= >
ex
¢¢> @
}
¢¢@ A
$str
¢¢A C
"
¢¢C D
)
¢¢D E
;
¢¢E F
}
££ 
catch
§§ 
(
§§ /
!EntityCommandCompilationException
§§ 4
ex
§§5 7
)
§§7 8
{
•• 
string
¶¶ 
logFilePath
¶¶ "
=
¶¶# $
Path
¶¶% )
.
¶¶) *
Combine
¶¶* 1
(
¶¶1 2
	Directory
¶¶2 ;
.
¶¶; <!
GetCurrentDirectory
¶¶< O
(
¶¶O P
)
¶¶P Q
,
¶¶Q R
$str
¶¶S e
)
¶¶e f
;
¶¶f g
File
ßß 
.
ßß 
AppendAllText
ßß "
(
ßß" #
logFilePath
ßß# .
,
ßß. /
$"
ßß0 2
$str
ßß2 =
{
ßß= >
ex
ßß> @
}
ßß@ A
$str
ßßA C
"
ßßC D
)
ßßD E
;
ßßE F
}
®® 
catch
©© 
(
©© -
EntityCommandExecutionException
©© 2
ex
©©3 5
)
©©5 6
{
™™ 
string
´´ 
logFilePath
´´ "
=
´´# $
Path
´´% )
.
´´) *
Combine
´´* 1
(
´´1 2
	Directory
´´2 ;
.
´´; <!
GetCurrentDirectory
´´< O
(
´´O P
)
´´P Q
,
´´Q R
$str
´´S e
)
´´e f
;
´´f g
File
¨¨ 
.
¨¨ 
AppendAllText
¨¨ "
(
¨¨" #
logFilePath
¨¨# .
,
¨¨. /
$"
¨¨0 2
$str
¨¨2 =
{
¨¨= >
ex
¨¨> @
}
¨¨@ A
$str
¨¨A C
"
¨¨C D
)
¨¨D E
;
¨¨E F
}
≠≠ 
}
ÆÆ 	
public
∞∞ 
void
∞∞ !
RejectFriendRequest
∞∞ '
(
∞∞' (
FriendRequests
∞∞( 6
friendRequests
∞∞7 E
)
∞∞E F
{
±± 	
try
≤≤ 
{
≥≥ $
DatabaseModelContainer
¥¥ &$
databaseModelContainer
¥¥' =
=
¥¥> ?
new
¥¥@ C$
DatabaseModelContainer
¥¥D Z
(
¥¥Z [
)
¥¥[ \
;
¥¥\ ]
FriendRequests
µµ $
friendRequestsToModify
µµ 5
=
µµ6 7$
databaseModelContainer
µµ8 N
.
µµN O
FriendRequestsSet
µµO `
.
µµ` a
Find
µµa e
(
µµe f
friendRequests
µµf t
.
µµt u
IDFriendRequestµµu Ñ
)µµÑ Ö
;µµÖ Ü
if
∂∂ 
(
∂∂ $
friendRequestsToModify
∂∂ *
!=
∂∂+ -
null
∂∂. 2
)
∂∂2 3
{
∑∑ $
friendRequestsToModify
∏∏ *
.
∏∏* +
AceptationStatus
∏∏+ ;
=
∏∏< =-
FriendRequestAceptationStatuses
∏∏> ]
.
∏∏] ^
Rejected
∏∏^ f
.
∏∏f g
ToString
∏∏g o
(
∏∏o p
)
∏∏p q
;
∏∏q r$
databaseModelContainer
ππ *
.
ππ* +
SaveChanges
ππ+ 6
(
ππ6 7
)
ππ7 8
;
ππ8 94
&ServiceFriendRequestForCallbackMethods
ªª :4
&serviceFriendRequestForCallbackMethods
ªª; a
=
ªªb c
new
ªªd g5
&ServiceFriendRequestForCallbackMethodsªªh é
(ªªé è
)ªªè ê
;ªªê ë4
&serviceFriendRequestForCallbackMethods
ºº :
.
ºº: ;<
.UpdateFriendRequestsListsToAllConnectedClients
ºº; i
(
ººi j
)
ººj k
;
ººk l
}
ΩΩ 
}
ææ 
catch
øø 
(
øø )
DbEntityValidationException
øø .
ex
øø/ 1
)
øø1 2
{
¿¿ 
string
¡¡ 
logFilePath
¡¡ "
=
¡¡# $
Path
¡¡% )
.
¡¡) *
Combine
¡¡* 1
(
¡¡1 2
	Directory
¡¡2 ;
.
¡¡; <!
GetCurrentDirectory
¡¡< O
(
¡¡O P
)
¡¡P Q
,
¡¡Q R
$str
¡¡S e
)
¡¡e f
;
¡¡f g
File
¬¬ 
.
¬¬ 
AppendAllText
¬¬ "
(
¬¬" #
logFilePath
¬¬# .
,
¬¬. /
$"
¬¬0 2
$str
¬¬2 =
{
¬¬= >
ex
¬¬> @
}
¬¬@ A
$str
¬¬A C
"
¬¬C D
)
¬¬D E
;
¬¬E F
}
√√ 
catch
ƒƒ 
(
ƒƒ 
DbUpdateException
ƒƒ $
ex
ƒƒ% '
)
ƒƒ' (
{
≈≈ 
string
∆∆ 
logFilePath
∆∆ "
=
∆∆# $
Path
∆∆% )
.
∆∆) *
Combine
∆∆* 1
(
∆∆1 2
	Directory
∆∆2 ;
.
∆∆; <!
GetCurrentDirectory
∆∆< O
(
∆∆O P
)
∆∆P Q
,
∆∆Q R
$str
∆∆S e
)
∆∆e f
;
∆∆f g
File
«« 
.
«« 
AppendAllText
«« "
(
««" #
logFilePath
««# .
,
««. /
$"
««0 2
$str
««2 =
{
««= >
ex
««> @
}
««@ A
$str
««A C
"
««C D
)
««D E
;
««E F
}
»» 
catch
…… 
(
…… /
!EntityCommandCompilationException
…… 4
ex
……5 7
)
……7 8
{
   
string
ÀÀ 
logFilePath
ÀÀ "
=
ÀÀ# $
Path
ÀÀ% )
.
ÀÀ) *
Combine
ÀÀ* 1
(
ÀÀ1 2
	Directory
ÀÀ2 ;
.
ÀÀ; <!
GetCurrentDirectory
ÀÀ< O
(
ÀÀO P
)
ÀÀP Q
,
ÀÀQ R
$str
ÀÀS e
)
ÀÀe f
;
ÀÀf g
File
ÃÃ 
.
ÃÃ 
AppendAllText
ÃÃ "
(
ÃÃ" #
logFilePath
ÃÃ# .
,
ÃÃ. /
$"
ÃÃ0 2
$str
ÃÃ2 =
{
ÃÃ= >
ex
ÃÃ> @
}
ÃÃ@ A
$str
ÃÃA C
"
ÃÃC D
)
ÃÃD E
;
ÃÃE F
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ -
EntityCommandExecutionException
ŒŒ 2
ex
ŒŒ3 5
)
ŒŒ5 6
{
œœ 
string
–– 
logFilePath
–– "
=
––# $
Path
––% )
.
––) *
Combine
––* 1
(
––1 2
	Directory
––2 ;
.
––; <!
GetCurrentDirectory
––< O
(
––O P
)
––P Q
,
––Q R
$str
––S e
)
––e f
;
––f g
File
—— 
.
—— 
AppendAllText
—— "
(
——" #
logFilePath
——# .
,
——. /
$"
——0 2
$str
——2 =
{
——= >
ex
——> @
}
——@ A
$str
——A C
"
——C D
)
——D E
;
——E F
}
““ 
}
”” 	
}
‘‘ 
[
ÿÿ 
CallbackBehavior
ÿÿ 
(
ÿÿ 
ConcurrencyMode
ÿÿ %
=
ÿÿ& '
ConcurrencyMode
ÿÿ( 7
.
ÿÿ7 8
Multiple
ÿÿ8 @
,
ÿÿ@ A'
UseSynchronizationContext
ÿÿB [
=
ÿÿ\ ]
false
ÿÿ^ c
)
ÿÿc d
]
ÿÿd e
public
ŸŸ 

class
ŸŸ 4
&ServiceFriendRequestForCallbackMethods
ŸŸ 7
:
ŸŸ8 9+
IFriendRequestCallbackMethods
ŸŸ: W
{
⁄⁄ 
public
€€ 
static
€€ 

Dictionary
€€  
<
€€  !
string
€€! '
,
€€' ($
IFriendRequestCallback
€€) ?
>
€€? @
connectedProfiles
€€A R
=
€€S T
new
€€U X

Dictionary
€€Y c
<
€€c d
string
€€d j
,
€€j k%
IFriendRequestCallback€€l Ç
>€€Ç É
(€€É Ñ
)€€Ñ Ö
;€€Ö Ü
public
›› 
void
›› 
Connect
›› 
(
›› 
string
›› "
username
››# +
)
››+ ,
{
ﬁﬁ 	$
IFriendRequestCallback
ﬂﬂ "
callback
ﬂﬂ# +
=
ﬂﬂ, -
OperationContext
ﬂﬂ. >
.
ﬂﬂ> ?
Current
ﬂﬂ? F
.
ﬂﬂF G 
GetCallbackChannel
ﬂﬂG Y
<
ﬂﬂY Z$
IFriendRequestCallback
ﬂﬂZ p
>
ﬂﬂp q
(
ﬂﬂq r
)
ﬂﬂr s
;
ﬂﬂs t
if
·· 
(
·· 
!
·· 
connectedProfiles
·· "
.
··" #
ContainsKey
··# .
(
··. /
username
··/ 7
)
··7 8
)
··8 9
{
‚‚ 
connectedProfiles
„„ !
.
„„! "
Add
„„" %
(
„„% &
username
„„& .
,
„„. /
callback
„„0 8
)
„„8 9
;
„„9 :
}
‰‰ 
}
ÂÂ 	
public
ÁÁ 
void
ÁÁ 

Disconnect
ÁÁ 
(
ÁÁ 
string
ÁÁ %
username
ÁÁ& .
)
ÁÁ. /
{
ËË 	
if
ÈÈ 
(
ÈÈ 
connectedProfiles
ÈÈ !
.
ÈÈ! "
ContainsKey
ÈÈ" -
(
ÈÈ- .
username
ÈÈ. 6
)
ÈÈ6 7
)
ÈÈ7 8
{
ÍÍ 
connectedProfiles
ÎÎ !
.
ÎÎ! "
Remove
ÎÎ" (
(
ÎÎ( )
username
ÎÎ) 1
)
ÎÎ1 2
;
ÎÎ2 3
}
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
void
ÔÔ <
.UpdateFriendRequestsListsToAllConnectedClients
ÔÔ B
(
ÔÔB C
)
ÔÔC D
{
 	
foreach
ÒÒ 
(
ÒÒ 
var
ÒÒ #
friendRequestCallback
ÒÒ .
in
ÒÒ/ 1
connectedProfiles
ÒÒ2 C
.
ÒÒC D
Values
ÒÒD J
)
ÒÒJ K
{
ÚÚ #
friendRequestCallback
ÛÛ %
.
ÛÛ% &(
UpdateFriendsRequestsLists
ÛÛ& @
(
ÛÛ@ A
)
ÛÛA B
;
ÛÛB C
}
ÙÙ 
}
ıı 	
}
˜˜ 
}¯¯ ªã
XC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServicePlayer.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class 
ServicePlayer 
:  
IPlayer! (
{ 
public 
long 
	AddPlayer 
( 
Players %
player& ,
), -
{ 	
long 
generatedID 
= 
$num  
;  !
try 
{ 
player 
. 
Profiles 
=  !
new" %
Profiles& .
{ 
LoginStatus 
=  ! 
ProfileLoginStatuses" 6
.6 7
	NotLogged7 @
.@ A
ToStringA I
(I J
)J K
} 
; "
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]"
databaseModelContainer &
.& '

PlayersSet' 1
.1 2
Add2 5
(5 6
player6 <
)< =
;= >"
databaseModelContainer &
.& '
SaveChanges' 2
(2 3
)3 4
;4 5
generatedID 
= 
player $
.$ %
IDPlayer% -
;- .
}   
catch!! 
(!! '
DbEntityValidationException!! .
ex!!/ 1
)!!1 2
{"" 
string## 
logFilePath## "
=### $
Path##% )
.##) *
Combine##* 1
(##1 2
	Directory##2 ;
.##; <
GetCurrentDirectory##< O
(##O P
)##P Q
,##Q R
$str##S e
)##e f
;##f g
File$$ 
.$$ 
AppendAllText$$ "
($$" #
logFilePath$$# .
,$$. /
$"$$0 2
$str$$2 =
{$$= >
ex$$> @
}$$@ A
$str$$A C
"$$C D
)$$D E
;$$E F
}%% 
catch&& 
(&& 
DbUpdateException&& $
ex&&% '
)&&' (
{'' 
string(( 
logFilePath(( "
=((# $
Path((% )
.(() *
Combine((* 1
(((1 2
	Directory((2 ;
.((; <
GetCurrentDirectory((< O
(((O P
)((P Q
,((Q R
$str((S e
)((e f
;((f g
File)) 
.)) 
AppendAllText)) "
())" #
logFilePath))# .
,)). /
$"))0 2
$str))2 =
{))= >
ex))> @
}))@ A
$str))A C
"))C D
)))D E
;))E F
}** 
catch++ 
(++ -
!EntityCommandCompilationException++ 4
ex++5 7
)++7 8
{,, 
string-- 
logFilePath-- "
=--# $
Path--% )
.--) *
Combine--* 1
(--1 2
	Directory--2 ;
.--; <
GetCurrentDirectory--< O
(--O P
)--P Q
,--Q R
$str--S e
)--e f
;--f g
File.. 
... 
AppendAllText.. "
(.." #
logFilePath..# .
,... /
$"..0 2
$str..2 =
{..= >
ex..> @
}..@ A
$str..A C
"..C D
)..D E
;..E F
}// 
catch00 
(00 +
EntityCommandExecutionException00 2
ex003 5
)005 6
{11 
string22 
logFilePath22 "
=22# $
Path22% )
.22) *
Combine22* 1
(221 2
	Directory222 ;
.22; <
GetCurrentDirectory22< O
(22O P
)22P Q
,22Q R
$str22S e
)22e f
;22f g
File33 
.33 
AppendAllText33 "
(33" #
logFilePath33# .
,33. /
$"330 2
$str332 =
{33= >
ex33> @
}33@ A
$str33A C
"33C D
)33D E
;33E F
}44 
return66 
generatedID66 
;66 
}77 	
public99 
List99 
<99 
Players99 
>99 

GetPlayers99 '
(99' (
)99( )
{:: 	
List;; 
<;; 
Players;; 
>;; 
players;; !
=;;" #
null;;$ (
;;;( )
try== 
{>> "
DatabaseModelContainer?? &"
databaseModelContainer??' =
=??> ?
new??@ C"
DatabaseModelContainer??D Z
(??Z [
)??[ \
;??\ ]
players@@ 
=@@ "
databaseModelContainer@@ 0
.@@0 1

PlayersSet@@1 ;
.@@; <
ToList@@< B
(@@B C
)@@C D
;@@D E
}AA 
catchBB 
(BB '
DbEntityValidationExceptionBB .
exBB/ 1
)BB1 2
{CC 
stringDD 
logFilePathDD "
=DD# $
PathDD% )
.DD) *
CombineDD* 1
(DD1 2
	DirectoryDD2 ;
.DD; <
GetCurrentDirectoryDD< O
(DDO P
)DDP Q
,DDQ R
$strDDS e
)DDe f
;DDf g
FileEE 
.EE 
AppendAllTextEE "
(EE" #
logFilePathEE# .
,EE. /
$"EE0 2
$strEE2 =
{EE= >
exEE> @
}EE@ A
$strEEA C
"EEC D
)EED E
;EEE F
}FF 
catchGG 
(GG 
DbUpdateExceptionGG $
exGG% '
)GG' (
{HH 
stringII 
logFilePathII "
=II# $
PathII% )
.II) *
CombineII* 1
(II1 2
	DirectoryII2 ;
.II; <
GetCurrentDirectoryII< O
(IIO P
)IIP Q
,IIQ R
$strIIS e
)IIe f
;IIf g
FileJJ 
.JJ 
AppendAllTextJJ "
(JJ" #
logFilePathJJ# .
,JJ. /
$"JJ0 2
$strJJ2 =
{JJ= >
exJJ> @
}JJ@ A
$strJJA C
"JJC D
)JJD E
;JJE F
}KK 
catchLL 
(LL -
!EntityCommandCompilationExceptionLL 4
exLL5 7
)LL7 8
{MM 
stringNN 
logFilePathNN "
=NN# $
PathNN% )
.NN) *
CombineNN* 1
(NN1 2
	DirectoryNN2 ;
.NN; <
GetCurrentDirectoryNN< O
(NNO P
)NNP Q
,NNQ R
$strNNS e
)NNe f
;NNf g
FileOO 
.OO 
AppendAllTextOO "
(OO" #
logFilePathOO# .
,OO. /
$"OO0 2
$strOO2 =
{OO= >
exOO> @
}OO@ A
$strOOA C
"OOC D
)OOD E
;OOE F
}PP 
catchQQ 
(QQ +
EntityCommandExecutionExceptionQQ 2
exQQ3 5
)QQ5 6
{RR 
stringSS 
logFilePathSS "
=SS# $
PathSS% )
.SS) *
CombineSS* 1
(SS1 2
	DirectorySS2 ;
.SS; <
GetCurrentDirectorySS< O
(SSO P
)SSP Q
,SSQ R
$strSSS e
)SSe f
;SSf g
FileTT 
.TT 
AppendAllTextTT "
(TT" #
logFilePathTT# .
,TT. /
$"TT0 2
$strTT2 =
{TT= >
exTT> @
}TT@ A
$strTTA C
"TTC D
)TTD E
;TTE F
}UU 
catchVV 
(VV !
SqlNullValueExceptionVV (
exVV) +
)VV+ ,
{WW 
stringXX 
logFilePathXX "
=XX# $
PathXX% )
.XX) *
CombineXX* 1
(XX1 2
	DirectoryXX2 ;
.XX; <
GetCurrentDirectoryXX< O
(XXO P
)XXP Q
,XXQ R
$strXXS e
)XXe f
;XXf g
FileYY 
.YY 
AppendAllTextYY "
(YY" #
logFilePathYY# .
,YY. /
$"YY0 2
$strYY2 =
{YY= >
exYY> @
}YY@ A
$strYYA C
"YYC D
)YYD E
;YYE F
}ZZ 
return\\ 
players\\ 
;\\ 
}]] 	
public__ 
Player__ 
GetPlayerByID__ #
(__# $
long__$ (
ID__) +
)__+ ,
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
IDPlayerggI Q
==ggR T
IDggU W
)ggW X
.ggX Y
FirstOrDefaultggY g
(ggg h
)ggh i
;ggi j
ifii 
(ii 
playersii 
!=ii 
nullii #
)ii# $
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
}rr 
elsess 
{tt 
playeruu 
=uu 
nulluu !
;uu! "
}vv 
}xx 
catchyy 
(yy '
DbEntityValidationExceptionyy .
exyy/ 1
)yy1 2
{zz 
string{{ 
logFilePath{{ "
={{# $
Path{{% )
.{{) *
Combine{{* 1
({{1 2
	Directory{{2 ;
.{{; <
GetCurrentDirectory{{< O
({{O P
){{P Q
,{{Q R
$str{{S e
){{e f
;{{f g
File|| 
.|| 
AppendAllText|| "
(||" #
logFilePath||# .
,||. /
$"||0 2
$str||2 =
{||= >
ex||> @
}||@ A
$str||A C
"||C D
)||D E
;||E F
}}} 
catch~~ 
(~~ 
DbUpdateException~~ $
ex~~% '
)~~' (
{ 
string
ÄÄ 
logFilePath
ÄÄ "
=
ÄÄ# $
Path
ÄÄ% )
.
ÄÄ) *
Combine
ÄÄ* 1
(
ÄÄ1 2
	Directory
ÄÄ2 ;
.
ÄÄ; <!
GetCurrentDirectory
ÄÄ< O
(
ÄÄO P
)
ÄÄP Q
,
ÄÄQ R
$str
ÄÄS e
)
ÄÄe f
;
ÄÄf g
File
ÅÅ 
.
ÅÅ 
AppendAllText
ÅÅ "
(
ÅÅ" #
logFilePath
ÅÅ# .
,
ÅÅ. /
$"
ÅÅ0 2
$str
ÅÅ2 =
{
ÅÅ= >
ex
ÅÅ> @
}
ÅÅ@ A
$str
ÅÅA C
"
ÅÅC D
)
ÅÅD E
;
ÅÅE F
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ /
!EntityCommandCompilationException
ÉÉ 4
ex
ÉÉ5 7
)
ÉÉ7 8
{
ÑÑ 
string
ÖÖ 
logFilePath
ÖÖ "
=
ÖÖ# $
Path
ÖÖ% )
.
ÖÖ) *
Combine
ÖÖ* 1
(
ÖÖ1 2
	Directory
ÖÖ2 ;
.
ÖÖ; <!
GetCurrentDirectory
ÖÖ< O
(
ÖÖO P
)
ÖÖP Q
,
ÖÖQ R
$str
ÖÖS e
)
ÖÖe f
;
ÖÖf g
File
ÜÜ 
.
ÜÜ 
AppendAllText
ÜÜ "
(
ÜÜ" #
logFilePath
ÜÜ# .
,
ÜÜ. /
$"
ÜÜ0 2
$str
ÜÜ2 =
{
ÜÜ= >
ex
ÜÜ> @
}
ÜÜ@ A
$str
ÜÜA C
"
ÜÜC D
)
ÜÜD E
;
ÜÜE F
}
áá 
catch
àà 
(
àà -
EntityCommandExecutionException
àà 2
ex
àà3 5
)
àà5 6
{
ââ 
string
ää 
logFilePath
ää "
=
ää# $
Path
ää% )
.
ää) *
Combine
ää* 1
(
ää1 2
	Directory
ää2 ;
.
ää; <!
GetCurrentDirectory
ää< O
(
ääO P
)
ääP Q
,
ääQ R
$str
ääS e
)
ääe f
;
ääf g
File
ãã 
.
ãã 
AppendAllText
ãã "
(
ãã" #
logFilePath
ãã# .
,
ãã. /
$"
ãã0 2
$str
ãã2 =
{
ãã= >
ex
ãã> @
}
ãã@ A
$str
ããA C
"
ããC D
)
ããD E
;
ããE F
}
åå 
catch
çç 
(
çç #
SqlNullValueException
çç (
ex
çç) +
)
çç+ ,
{
éé 
string
èè 
logFilePath
èè "
=
èè# $
Path
èè% )
.
èè) *
Combine
èè* 1
(
èè1 2
	Directory
èè2 ;
.
èè; <!
GetCurrentDirectory
èè< O
(
èèO P
)
èèP Q
,
èèQ R
$str
èèS e
)
èèe f
;
èèf g
File
êê 
.
êê 
AppendAllText
êê "
(
êê" #
logFilePath
êê# .
,
êê. /
$"
êê0 2
$str
êê2 =
{
êê= >
ex
êê> @
}
êê@ A
$str
êêA C
"
êêC D
)
êêD E
;
êêE F
}
ëë 
return
ìì 
player
ìì 
;
ìì 
}
îî 	
public
ññ 
Player
ññ !
GetPlayerByNickname
ññ )
(
ññ) *
string
ññ* 0
nickname
ññ1 9
)
ññ9 :
{
óó 	
Player
òò 
player
òò 
=
òò 
new
òò 
Player
òò  &
(
òò& '
)
òò' (
;
òò( )
Players
ôô 
players
ôô 
=
ôô 
new
ôô !
Players
ôô" )
(
ôô) *
)
ôô* +
;
ôô+ ,
try
õõ 
{
úú $
DatabaseModelContainer
ùù &$
databaseModelContainer
ùù' =
=
ùù> ?
new
ùù@ C$
DatabaseModelContainer
ùùD Z
(
ùùZ [
)
ùù[ \
;
ùù\ ]
players
ûû 
=
ûû $
databaseModelContainer
ûû 0
.
ûû0 1

PlayersSet
ûû1 ;
.
ûû; <
Where
ûû< A
(
ûûA B
e
ûûB C
=>
ûûD F
e
ûûG H
.
ûûH I
NickName
ûûI Q
==
ûûR T
nickname
ûûU ]
)
ûû] ^
.
ûû^ _
FirstOrDefault
ûû_ m
(
ûûm n
)
ûûn o
;
ûûo p
if
†† 
(
†† 
players
†† 
!=
†† 
null
†† #
)
††# $
{
°° 
player
¢¢ 
.
¢¢ 
IDPlayer
¢¢ #
=
¢¢$ %
players
¢¢& -
.
¢¢- .
IDPlayer
¢¢. 6
;
¢¢6 7
player
££ 
.
££ 
Names
££  
=
££! "
players
££# *
.
££* +
Names
££+ 0
;
££0 1
player
§§ 
.
§§ 
Surnames
§§ #
=
§§$ %
players
§§& -
.
§§- .
Surnames
§§. 6
;
§§6 7
player
•• 
.
•• 
Email
••  
=
••! "
players
••# *
.
••* +
Email
••+ 0
;
••0 1
player
¶¶ 
.
¶¶ 
NickName
¶¶ #
=
¶¶$ %
players
¶¶& -
.
¶¶- .
NickName
¶¶. 6
;
¶¶6 7
player
ßß 
.
ßß 
	BirthDate
ßß $
=
ßß% &
players
ßß' .
.
ßß. /
	BirthDate
ßß/ 8
;
ßß8 9
player
®® 
.
®® 
Password
®® #
=
®®$ %
players
®®& -
.
®®- .
Password
®®. 6
;
®®6 7
}
©© 
else
™™ 
{
´´ 
player
¨¨ 
=
¨¨ 
null
¨¨ !
;
¨¨! "
}
≠≠ 
}
ØØ 
catch
∞∞ 
(
∞∞ )
DbEntityValidationException
∞∞ .
ex
∞∞/ 1
)
∞∞1 2
{
±± 
string
≤≤ 
logFilePath
≤≤ "
=
≤≤# $
Path
≤≤% )
.
≤≤) *
Combine
≤≤* 1
(
≤≤1 2
	Directory
≤≤2 ;
.
≤≤; <!
GetCurrentDirectory
≤≤< O
(
≤≤O P
)
≤≤P Q
,
≤≤Q R
$str
≤≤S e
)
≤≤e f
;
≤≤f g
File
≥≥ 
.
≥≥ 
AppendAllText
≥≥ "
(
≥≥" #
logFilePath
≥≥# .
,
≥≥. /
$"
≥≥0 2
$str
≥≥2 =
{
≥≥= >
ex
≥≥> @
}
≥≥@ A
$str
≥≥A C
"
≥≥C D
)
≥≥D E
;
≥≥E F
}
¥¥ 
catch
µµ 
(
µµ 
DbUpdateException
µµ $
ex
µµ% '
)
µµ' (
{
∂∂ 
string
∑∑ 
logFilePath
∑∑ "
=
∑∑# $
Path
∑∑% )
.
∑∑) *
Combine
∑∑* 1
(
∑∑1 2
	Directory
∑∑2 ;
.
∑∑; <!
GetCurrentDirectory
∑∑< O
(
∑∑O P
)
∑∑P Q
,
∑∑Q R
$str
∑∑S e
)
∑∑e f
;
∑∑f g
File
∏∏ 
.
∏∏ 
AppendAllText
∏∏ "
(
∏∏" #
logFilePath
∏∏# .
,
∏∏. /
$"
∏∏0 2
$str
∏∏2 =
{
∏∏= >
ex
∏∏> @
}
∏∏@ A
$str
∏∏A C
"
∏∏C D
)
∏∏D E
;
∏∏E F
}
ππ 
catch
∫∫ 
(
∫∫ /
!EntityCommandCompilationException
∫∫ 4
ex
∫∫5 7
)
∫∫7 8
{
ªª 
string
ºº 
logFilePath
ºº "
=
ºº# $
Path
ºº% )
.
ºº) *
Combine
ºº* 1
(
ºº1 2
	Directory
ºº2 ;
.
ºº; <!
GetCurrentDirectory
ºº< O
(
ººO P
)
ººP Q
,
ººQ R
$str
ººS e
)
ººe f
;
ººf g
File
ΩΩ 
.
ΩΩ 
AppendAllText
ΩΩ "
(
ΩΩ" #
logFilePath
ΩΩ# .
,
ΩΩ. /
$"
ΩΩ0 2
$str
ΩΩ2 =
{
ΩΩ= >
ex
ΩΩ> @
}
ΩΩ@ A
$str
ΩΩA C
"
ΩΩC D
)
ΩΩD E
;
ΩΩE F
}
ææ 
catch
øø 
(
øø -
EntityCommandExecutionException
øø 2
ex
øø3 5
)
øø5 6
{
¿¿ 
string
¡¡ 
logFilePath
¡¡ "
=
¡¡# $
Path
¡¡% )
.
¡¡) *
Combine
¡¡* 1
(
¡¡1 2
	Directory
¡¡2 ;
.
¡¡; <!
GetCurrentDirectory
¡¡< O
(
¡¡O P
)
¡¡P Q
,
¡¡Q R
$str
¡¡S e
)
¡¡e f
;
¡¡f g
File
¬¬ 
.
¬¬ 
AppendAllText
¬¬ "
(
¬¬" #
logFilePath
¬¬# .
,
¬¬. /
$"
¬¬0 2
$str
¬¬2 =
{
¬¬= >
ex
¬¬> @
}
¬¬@ A
$str
¬¬A C
"
¬¬C D
)
¬¬D E
;
¬¬E F
}
√√ 
catch
ƒƒ 
(
ƒƒ #
SqlNullValueException
ƒƒ (
ex
ƒƒ) +
)
ƒƒ+ ,
{
≈≈ 
string
∆∆ 
logFilePath
∆∆ "
=
∆∆# $
Path
∆∆% )
.
∆∆) *
Combine
∆∆* 1
(
∆∆1 2
	Directory
∆∆2 ;
.
∆∆; <!
GetCurrentDirectory
∆∆< O
(
∆∆O P
)
∆∆P Q
,
∆∆Q R
$str
∆∆S e
)
∆∆e f
;
∆∆f g
File
«« 
.
«« 
AppendAllText
«« "
(
««" #
logFilePath
««# .
,
««. /
$"
««0 2
$str
««2 =
{
««= >
ex
««> @
}
««@ A
$str
««A C
"
««C D
)
««D E
;
««E F
}
»» 
return
   
player
   
;
   
}
ÀÀ 	
public
ÕÕ 
List
ÕÕ 
<
ÕÕ 
Players
ÕÕ 
>
ÕÕ !
GetSpecifiedPlayers
ÕÕ 0
(
ÕÕ0 1
string
ÕÕ1 7
name
ÕÕ8 <
)
ÕÕ< =
{
ŒŒ 	
List
œœ 
<
œœ 
Players
œœ 
>
œœ 
players
œœ !
=
œœ" #
new
œœ$ '
List
œœ( ,
<
œœ, -
Players
œœ- 4
>
œœ4 5
(
œœ5 6
)
œœ6 7
;
œœ7 8
try
—— 
{
““ $
DatabaseModelContainer
”” &$
databaseModelContainer
””' =
=
””> ?
new
””@ C$
DatabaseModelContainer
””D Z
(
””Z [
)
””[ \
;
””\ ]
players
‘‘ 
=
‘‘ $
databaseModelContainer
‘‘ 0
.
‘‘0 1

PlayersSet
‘‘1 ;
.
‘‘; <
Where
‘‘< A
(
‘‘A B
e
‘‘B C
=>
‘‘D F
e
‘‘G H
.
‘‘H I
Names
‘‘I N
.
‘‘N O
Contains
‘‘O W
(
‘‘W X
name
‘‘X \
)
‘‘\ ]
)
‘‘] ^
.
‘‘^ _
ToList
‘‘_ e
(
‘‘e f
)
‘‘f g
;
‘‘g h
}
’’ 
catch
÷÷ 
(
÷÷ )
DbEntityValidationException
÷÷ .
ex
÷÷/ 1
)
÷÷1 2
{
◊◊ 
string
ÿÿ 
logFilePath
ÿÿ "
=
ÿÿ# $
Path
ÿÿ% )
.
ÿÿ) *
Combine
ÿÿ* 1
(
ÿÿ1 2
	Directory
ÿÿ2 ;
.
ÿÿ; <!
GetCurrentDirectory
ÿÿ< O
(
ÿÿO P
)
ÿÿP Q
,
ÿÿQ R
$str
ÿÿS e
)
ÿÿe f
;
ÿÿf g
File
ŸŸ 
.
ŸŸ 
AppendAllText
ŸŸ "
(
ŸŸ" #
logFilePath
ŸŸ# .
,
ŸŸ. /
$"
ŸŸ0 2
$str
ŸŸ2 =
{
ŸŸ= >
ex
ŸŸ> @
}
ŸŸ@ A
$str
ŸŸA C
"
ŸŸC D
)
ŸŸD E
;
ŸŸE F
}
⁄⁄ 
catch
€€ 
(
€€ 
DbUpdateException
€€ $
ex
€€% '
)
€€' (
{
‹‹ 
string
›› 
logFilePath
›› "
=
››# $
Path
››% )
.
››) *
Combine
››* 1
(
››1 2
	Directory
››2 ;
.
››; <!
GetCurrentDirectory
››< O
(
››O P
)
››P Q
,
››Q R
$str
››S e
)
››e f
;
››f g
File
ﬁﬁ 
.
ﬁﬁ 
AppendAllText
ﬁﬁ "
(
ﬁﬁ" #
logFilePath
ﬁﬁ# .
,
ﬁﬁ. /
$"
ﬁﬁ0 2
$str
ﬁﬁ2 =
{
ﬁﬁ= >
ex
ﬁﬁ> @
}
ﬁﬁ@ A
$str
ﬁﬁA C
"
ﬁﬁC D
)
ﬁﬁD E
;
ﬁﬁE F
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ /
!EntityCommandCompilationException
‡‡ 4
ex
‡‡5 7
)
‡‡7 8
{
·· 
string
‚‚ 
logFilePath
‚‚ "
=
‚‚# $
Path
‚‚% )
.
‚‚) *
Combine
‚‚* 1
(
‚‚1 2
	Directory
‚‚2 ;
.
‚‚; <!
GetCurrentDirectory
‚‚< O
(
‚‚O P
)
‚‚P Q
,
‚‚Q R
$str
‚‚S e
)
‚‚e f
;
‚‚f g
File
„„ 
.
„„ 
AppendAllText
„„ "
(
„„" #
logFilePath
„„# .
,
„„. /
$"
„„0 2
$str
„„2 =
{
„„= >
ex
„„> @
}
„„@ A
$str
„„A C
"
„„C D
)
„„D E
;
„„E F
}
‰‰ 
catch
ÂÂ 
(
ÂÂ -
EntityCommandExecutionException
ÂÂ 2
ex
ÂÂ3 5
)
ÂÂ5 6
{
ÊÊ 
string
ÁÁ 
logFilePath
ÁÁ "
=
ÁÁ# $
Path
ÁÁ% )
.
ÁÁ) *
Combine
ÁÁ* 1
(
ÁÁ1 2
	Directory
ÁÁ2 ;
.
ÁÁ; <!
GetCurrentDirectory
ÁÁ< O
(
ÁÁO P
)
ÁÁP Q
,
ÁÁQ R
$str
ÁÁS e
)
ÁÁe f
;
ÁÁf g
File
ËË 
.
ËË 
AppendAllText
ËË "
(
ËË" #
logFilePath
ËË# .
,
ËË. /
$"
ËË0 2
$str
ËË2 =
{
ËË= >
ex
ËË> @
}
ËË@ A
$str
ËËA C
"
ËËC D
)
ËËD E
;
ËËE F
}
ÈÈ 
catch
ÍÍ 
(
ÍÍ #
SqlNullValueException
ÍÍ (
ex
ÍÍ) +
)
ÍÍ+ ,
{
ÎÎ 
string
ÏÏ 
logFilePath
ÏÏ "
=
ÏÏ# $
Path
ÏÏ% )
.
ÏÏ) *
Combine
ÏÏ* 1
(
ÏÏ1 2
	Directory
ÏÏ2 ;
.
ÏÏ; <!
GetCurrentDirectory
ÏÏ< O
(
ÏÏO P
)
ÏÏP Q
,
ÏÏQ R
$str
ÏÏS e
)
ÏÏe f
;
ÏÏf g
File
ÌÌ 
.
ÌÌ 
AppendAllText
ÌÌ "
(
ÌÌ" #
logFilePath
ÌÌ# .
,
ÌÌ. /
$"
ÌÌ0 2
$str
ÌÌ2 =
{
ÌÌ= >
ex
ÌÌ> @
}
ÌÌ@ A
$str
ÌÌA C
"
ÌÌC D
)
ÌÌD E
;
ÌÌE F
}
ÓÓ 
return
 
players
 
;
 
}
ÚÚ 	
public
ÙÙ 
long
ÙÙ 
ModifyPlayer
ÙÙ  
(
ÙÙ  !
Players
ÙÙ! (
modifiedPlayer
ÙÙ) 7
)
ÙÙ7 8
{
ıı 	
long
ˆˆ 
generatedID
ˆˆ 
=
ˆˆ 
$num
ˆˆ  
;
ˆˆ  !
try
¯¯ 
{
˘˘ $
DatabaseModelContainer
˙˙ &$
databaseModelContainer
˙˙' =
=
˙˙> ?
new
˙˙@ C$
DatabaseModelContainer
˙˙D Z
(
˙˙Z [
)
˙˙[ \
;
˙˙\ ]
Players
˚˚ 
playerToModify
˚˚ &
=
˚˚' ($
databaseModelContainer
˚˚) ?
.
˚˚? @

PlayersSet
˚˚@ J
.
˚˚J K
Find
˚˚K O
(
˚˚O P
modifiedPlayer
˚˚P ^
.
˚˚^ _
IDPlayer
˚˚_ g
)
˚˚g h
;
˚˚h i
if
¸¸ 
(
¸¸ 
playerToModify
¸¸ "
!=
¸¸# %
null
¸¸& *
)
¸¸* +
{
˝˝ 
playerToModify
˛˛ "
.
˛˛" #
	BirthDate
˛˛# ,
=
˛˛- .
modifiedPlayer
˛˛/ =
.
˛˛= >
	BirthDate
˛˛> G
;
˛˛G H
playerToModify
ˇˇ "
.
ˇˇ" #
Surnames
ˇˇ# +
=
ˇˇ, -
modifiedPlayer
ˇˇ. <
.
ˇˇ< =
Surnames
ˇˇ= E
;
ˇˇE F
playerToModify
ÄÄ "
.
ÄÄ" #
Email
ÄÄ# (
=
ÄÄ) *
modifiedPlayer
ÄÄ+ 9
.
ÄÄ9 :
Email
ÄÄ: ?
;
ÄÄ? @
playerToModify
ÅÅ "
.
ÅÅ" #
Names
ÅÅ# (
=
ÅÅ) *
modifiedPlayer
ÅÅ+ 9
.
ÅÅ9 :
Names
ÅÅ: ?
;
ÅÅ? @
playerToModify
ÇÇ "
.
ÇÇ" #
NickName
ÇÇ# +
=
ÇÇ, -
modifiedPlayer
ÇÇ. <
.
ÇÇ< =
NickName
ÇÇ= E
;
ÇÇE F$
databaseModelContainer
ÉÉ *
.
ÉÉ* +
SaveChanges
ÉÉ+ 6
(
ÉÉ6 7
)
ÉÉ7 8
;
ÉÉ8 9
generatedID
ÑÑ 
=
ÑÑ  !
(
ÑÑ" #
int
ÑÑ# &
)
ÑÑ& '
playerToModify
ÑÑ' 5
.
ÑÑ5 6
IDPlayer
ÑÑ6 >
;
ÑÑ> ?
}
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá )
DbEntityValidationException
áá .
ex
áá/ 1
)
áá1 2
{
àà 
string
ââ 
logFilePath
ââ "
=
ââ# $
Path
ââ% )
.
ââ) *
Combine
ââ* 1
(
ââ1 2
	Directory
ââ2 ;
.
ââ; <!
GetCurrentDirectory
ââ< O
(
ââO P
)
ââP Q
,
ââQ R
$str
ââS e
)
ââe f
;
ââf g
File
ää 
.
ää 
AppendAllText
ää "
(
ää" #
logFilePath
ää# .
,
ää. /
$"
ää0 2
$str
ää2 =
{
ää= >
ex
ää> @
}
ää@ A
$str
ääA C
"
ääC D
)
ääD E
;
ääE F
}
ãã 
catch
åå 
(
åå 
DbUpdateException
åå $
ex
åå% '
)
åå' (
{
çç 
string
éé 
logFilePath
éé "
=
éé# $
Path
éé% )
.
éé) *
Combine
éé* 1
(
éé1 2
	Directory
éé2 ;
.
éé; <!
GetCurrentDirectory
éé< O
(
ééO P
)
ééP Q
,
ééQ R
$str
ééS e
)
éée f
;
ééf g
File
èè 
.
èè 
AppendAllText
èè "
(
èè" #
logFilePath
èè# .
,
èè. /
$"
èè0 2
$str
èè2 =
{
èè= >
ex
èè> @
}
èè@ A
$str
èèA C
"
èèC D
)
èèD E
;
èèE F
}
êê 
catch
ëë 
(
ëë /
!EntityCommandCompilationException
ëë 4
ex
ëë5 7
)
ëë7 8
{
íí 
string
ìì 
logFilePath
ìì "
=
ìì# $
Path
ìì% )
.
ìì) *
Combine
ìì* 1
(
ìì1 2
	Directory
ìì2 ;
.
ìì; <!
GetCurrentDirectory
ìì< O
(
ììO P
)
ììP Q
,
ììQ R
$str
ììS e
)
ììe f
;
ììf g
File
îî 
.
îî 
AppendAllText
îî "
(
îî" #
logFilePath
îî# .
,
îî. /
$"
îî0 2
$str
îî2 =
{
îî= >
ex
îî> @
}
îî@ A
$str
îîA C
"
îîC D
)
îîD E
;
îîE F
}
ïï 
catch
ññ 
(
ññ -
EntityCommandExecutionException
ññ 2
ex
ññ3 5
)
ññ5 6
{
óó 
string
òò 
logFilePath
òò "
=
òò# $
Path
òò% )
.
òò) *
Combine
òò* 1
(
òò1 2
	Directory
òò2 ;
.
òò; <!
GetCurrentDirectory
òò< O
(
òòO P
)
òòP Q
,
òòQ R
$str
òòS e
)
òòe f
;
òòf g
File
ôô 
.
ôô 
AppendAllText
ôô "
(
ôô" #
logFilePath
ôô# .
,
ôô. /
$"
ôô0 2
$str
ôô2 =
{
ôô= >
ex
ôô> @
}
ôô@ A
$str
ôôA C
"
ôôC D
)
ôôD E
;
ôôE F
}
öö 
return
úú 
generatedID
úú 
;
úú 
}
ùù 	
public
üü 
void
üü #
ModifyPasswordByEmail
üü )
(
üü) *
String
üü* 0
originalEmail
üü1 >
,
üü> ?
String
üü@ F
newPassword
üüG R
)
üüR S
{
†† 	
try
°° 
{
¢¢ $
DatabaseModelContainer
££ &$
databaseModelContainer
££' =
=
££> ?
new
££@ C$
DatabaseModelContainer
££D Z
(
££Z [
)
££[ \
;
££\ ]
Players
§§ 
playerToModify
§§ &
=
§§' ($
databaseModelContainer
§§) ?
.
§§? @

PlayersSet
§§@ J
.
§§J K
FirstOrDefault
§§K Y
(
§§Y Z
e
§§Z [
=>
§§\ ^
e
§§_ `
.
§§` a
Email
§§a f
==
§§g i
originalEmail
§§j w
)
§§w x
;
§§x y
if
¶¶ 
(
¶¶ 
playerToModify
¶¶ "
!=
¶¶# %
null
¶¶& *
)
¶¶* +
{
ßß 
playerToModify
®® "
.
®®" #
Password
®®# +
=
®®, -
newPassword
®®. 9
;
®®9 :
}
©© $
databaseModelContainer
´´ &
.
´´& '
SaveChanges
´´' 2
(
´´2 3
)
´´3 4
;
´´4 5
}
¨¨ 
catch
≠≠ 
(
≠≠ )
DbEntityValidationException
≠≠ .
ex
≠≠/ 1
)
≠≠1 2
{
ÆÆ 
string
ØØ 
logFilePath
ØØ "
=
ØØ# $
Path
ØØ% )
.
ØØ) *
Combine
ØØ* 1
(
ØØ1 2
	Directory
ØØ2 ;
.
ØØ; <!
GetCurrentDirectory
ØØ< O
(
ØØO P
)
ØØP Q
,
ØØQ R
$str
ØØS e
)
ØØe f
;
ØØf g
File
∞∞ 
.
∞∞ 
AppendAllText
∞∞ "
(
∞∞" #
logFilePath
∞∞# .
,
∞∞. /
$"
∞∞0 2
$str
∞∞2 =
{
∞∞= >
ex
∞∞> @
}
∞∞@ A
$str
∞∞A C
"
∞∞C D
)
∞∞D E
;
∞∞E F
}
±± 
catch
≤≤ 
(
≤≤ 
DbUpdateException
≤≤ $
ex
≤≤% '
)
≤≤' (
{
≥≥ 
string
¥¥ 
logFilePath
¥¥ "
=
¥¥# $
Path
¥¥% )
.
¥¥) *
Combine
¥¥* 1
(
¥¥1 2
	Directory
¥¥2 ;
.
¥¥; <!
GetCurrentDirectory
¥¥< O
(
¥¥O P
)
¥¥P Q
,
¥¥Q R
$str
¥¥S e
)
¥¥e f
;
¥¥f g
File
µµ 
.
µµ 
AppendAllText
µµ "
(
µµ" #
logFilePath
µµ# .
,
µµ. /
$"
µµ0 2
$str
µµ2 =
{
µµ= >
ex
µµ> @
}
µµ@ A
$str
µµA C
"
µµC D
)
µµD E
;
µµE F
}
∂∂ 
catch
∑∑ 
(
∑∑ /
!EntityCommandCompilationException
∑∑ 4
ex
∑∑5 7
)
∑∑7 8
{
∏∏ 
string
ππ 
logFilePath
ππ "
=
ππ# $
Path
ππ% )
.
ππ) *
Combine
ππ* 1
(
ππ1 2
	Directory
ππ2 ;
.
ππ; <!
GetCurrentDirectory
ππ< O
(
ππO P
)
ππP Q
,
ππQ R
$str
ππS e
)
ππe f
;
ππf g
File
∫∫ 
.
∫∫ 
AppendAllText
∫∫ "
(
∫∫" #
logFilePath
∫∫# .
,
∫∫. /
$"
∫∫0 2
$str
∫∫2 =
{
∫∫= >
ex
∫∫> @
}
∫∫@ A
$str
∫∫A C
"
∫∫C D
)
∫∫D E
;
∫∫E F
}
ªª 
catch
ºº 
(
ºº -
EntityCommandExecutionException
ºº 2
ex
ºº3 5
)
ºº5 6
{
ΩΩ 
string
ææ 
logFilePath
ææ "
=
ææ# $
Path
ææ% )
.
ææ) *
Combine
ææ* 1
(
ææ1 2
	Directory
ææ2 ;
.
ææ; <!
GetCurrentDirectory
ææ< O
(
ææO P
)
ææP Q
,
ææQ R
$str
ææS e
)
ææe f
;
ææf g
File
øø 
.
øø 
AppendAllText
øø "
(
øø" #
logFilePath
øø# .
,
øø. /
$"
øø0 2
$str
øø2 =
{
øø= >
ex
øø> @
}
øø@ A
$str
øøA C
"
øøC D
)
øøD E
;
øøE F
}
¿¿ 
}
¬¬ 	
public
ƒƒ 
bool
ƒƒ '
TheEmailIsAlreadyRegisted
ƒƒ -
(
ƒƒ- .
String
ƒƒ. 4
emailToSearch
ƒƒ5 B
)
ƒƒB C
{
≈≈ 	
try
∆∆ 
{
«« $
DatabaseModelContainer
»» &$
databaseModelContainer
»»' =
=
»»> ?
new
»»@ C$
DatabaseModelContainer
»»D Z
(
»»Z [
)
»»[ \
;
»»\ ]
List
…… 
<
…… 
String
…… 
>
…… 
emails
…… #
=
……$ %$
databaseModelContainer
……& <
.
……< =

PlayersSet
……= G
.
……G H
Select
……H N
(
……N O
row
……O R
=>
……S U
row
……V Y
.
……Y Z
Email
……Z _
)
……_ `
.
……` a
ToList
……a g
(
……g h
)
……h i
;
……i j
foreach
   
(
   
String
   
email
    %
in
  & (
emails
  ) /
)
  / 0
{
ÀÀ 
if
ÃÃ 
(
ÃÃ 
email
ÃÃ 
==
ÃÃ  
emailToSearch
ÃÃ! .
)
ÃÃ. /
{
ÕÕ 
return
ŒŒ 
true
ŒŒ #
;
ŒŒ# $
}
œœ 
}
–– 
}
—— 
catch
““ 
(
““ )
DbEntityValidationException
““ .
ex
““/ 1
)
““1 2
{
”” 
string
‘‘ 
logFilePath
‘‘ "
=
‘‘# $
Path
‘‘% )
.
‘‘) *
Combine
‘‘* 1
(
‘‘1 2
	Directory
‘‘2 ;
.
‘‘; <!
GetCurrentDirectory
‘‘< O
(
‘‘O P
)
‘‘P Q
,
‘‘Q R
$str
‘‘S e
)
‘‘e f
;
‘‘f g
File
’’ 
.
’’ 
AppendAllText
’’ "
(
’’" #
logFilePath
’’# .
,
’’. /
$"
’’0 2
$str
’’2 =
{
’’= >
ex
’’> @
}
’’@ A
$str
’’A C
"
’’C D
)
’’D E
;
’’E F
}
÷÷ 
catch
◊◊ 
(
◊◊ 
DbUpdateException
◊◊ $
ex
◊◊% '
)
◊◊' (
{
ÿÿ 
string
ŸŸ 
logFilePath
ŸŸ "
=
ŸŸ# $
Path
ŸŸ% )
.
ŸŸ) *
Combine
ŸŸ* 1
(
ŸŸ1 2
	Directory
ŸŸ2 ;
.
ŸŸ; <!
GetCurrentDirectory
ŸŸ< O
(
ŸŸO P
)
ŸŸP Q
,
ŸŸQ R
$str
ŸŸS e
)
ŸŸe f
;
ŸŸf g
File
⁄⁄ 
.
⁄⁄ 
AppendAllText
⁄⁄ "
(
⁄⁄" #
logFilePath
⁄⁄# .
,
⁄⁄. /
$"
⁄⁄0 2
$str
⁄⁄2 =
{
⁄⁄= >
ex
⁄⁄> @
}
⁄⁄@ A
$str
⁄⁄A C
"
⁄⁄C D
)
⁄⁄D E
;
⁄⁄E F
}
€€ 
catch
‹‹ 
(
‹‹ /
!EntityCommandCompilationException
‹‹ 4
ex
‹‹5 7
)
‹‹7 8
{
›› 
string
ﬁﬁ 
logFilePath
ﬁﬁ "
=
ﬁﬁ# $
Path
ﬁﬁ% )
.
ﬁﬁ) *
Combine
ﬁﬁ* 1
(
ﬁﬁ1 2
	Directory
ﬁﬁ2 ;
.
ﬁﬁ; <!
GetCurrentDirectory
ﬁﬁ< O
(
ﬁﬁO P
)
ﬁﬁP Q
,
ﬁﬁQ R
$str
ﬁﬁS e
)
ﬁﬁe f
;
ﬁﬁf g
File
ﬂﬂ 
.
ﬂﬂ 
AppendAllText
ﬂﬂ "
(
ﬂﬂ" #
logFilePath
ﬂﬂ# .
,
ﬂﬂ. /
$"
ﬂﬂ0 2
$str
ﬂﬂ2 =
{
ﬂﬂ= >
ex
ﬂﬂ> @
}
ﬂﬂ@ A
$str
ﬂﬂA C
"
ﬂﬂC D
)
ﬂﬂD E
;
ﬂﬂE F
}
‡‡ 
catch
·· 
(
·· -
EntityCommandExecutionException
·· 2
ex
··3 5
)
··5 6
{
‚‚ 
string
„„ 
logFilePath
„„ "
=
„„# $
Path
„„% )
.
„„) *
Combine
„„* 1
(
„„1 2
	Directory
„„2 ;
.
„„; <!
GetCurrentDirectory
„„< O
(
„„O P
)
„„P Q
,
„„Q R
$str
„„S e
)
„„e f
;
„„f g
File
‰‰ 
.
‰‰ 
AppendAllText
‰‰ "
(
‰‰" #
logFilePath
‰‰# .
,
‰‰. /
$"
‰‰0 2
$str
‰‰2 =
{
‰‰= >
ex
‰‰> @
}
‰‰@ A
$str
‰‰A C
"
‰‰C D
)
‰‰D E
;
‰‰E F
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ #
SqlNullValueException
ÊÊ (
ex
ÊÊ) +
)
ÊÊ+ ,
{
ÁÁ 
string
ËË 
logFilePath
ËË "
=
ËË# $
Path
ËË% )
.
ËË) *
Combine
ËË* 1
(
ËË1 2
	Directory
ËË2 ;
.
ËË; <!
GetCurrentDirectory
ËË< O
(
ËËO P
)
ËËP Q
,
ËËQ R
$str
ËËS e
)
ËËe f
;
ËËf g
File
ÈÈ 
.
ÈÈ 
AppendAllText
ÈÈ "
(
ÈÈ" #
logFilePath
ÈÈ# .
,
ÈÈ. /
$"
ÈÈ0 2
$str
ÈÈ2 =
{
ÈÈ= >
ex
ÈÈ> @
}
ÈÈ@ A
$str
ÈÈA C
"
ÈÈC D
)
ÈÈD E
;
ÈÈE F
}
ÍÍ 
return
ÏÏ 
false
ÏÏ 
;
ÏÏ 
}
ÌÌ 	
public
ÔÔ 
bool
ÔÔ *
TheNicknameIsAlreadyRegisted
ÔÔ 0
(
ÔÔ0 1
String
ÔÔ1 7
nicknameToSearch
ÔÔ8 H
)
ÔÔH I
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
ÛÛ\ ]
List
ÙÙ 
<
ÙÙ 
String
ÙÙ 
>
ÙÙ 
	nicknames
ÙÙ &
=
ÙÙ' ($
databaseModelContainer
ÙÙ) ?
.
ÙÙ? @

PlayersSet
ÙÙ@ J
.
ÙÙJ K
Select
ÙÙK Q
(
ÙÙQ R
row
ÙÙR U
=>
ÙÙV X
row
ÙÙY \
.
ÙÙ\ ]
NickName
ÙÙ] e
)
ÙÙe f
.
ÙÙf g
ToList
ÙÙg m
(
ÙÙm n
)
ÙÙn o
;
ÙÙo p
foreach
ıı 
(
ıı 
String
ıı 
nickname
ıı  (
in
ıı) +
	nicknames
ıı, 5
)
ıı5 6
{
ˆˆ 
if
˜˜ 
(
˜˜ 
nickname
˜˜  
==
˜˜! #
nicknameToSearch
˜˜$ 4
)
˜˜4 5
{
¯¯ 
return
˘˘ 
true
˘˘ #
;
˘˘# $
}
˙˙ 
}
˚˚ 
}
¸¸ 
catch
˝˝ 
(
˝˝ )
DbEntityValidationException
˝˝ .
ex
˝˝/ 1
)
˝˝1 2
{
˛˛ 
string
ˇˇ 
logFilePath
ˇˇ "
=
ˇˇ# $
Path
ˇˇ% )
.
ˇˇ) *
Combine
ˇˇ* 1
(
ˇˇ1 2
	Directory
ˇˇ2 ;
.
ˇˇ; <!
GetCurrentDirectory
ˇˇ< O
(
ˇˇO P
)
ˇˇP Q
,
ˇˇQ R
$str
ˇˇS e
)
ˇˇe f
;
ˇˇf g
File
ÄÄ 
.
ÄÄ 
AppendAllText
ÄÄ "
(
ÄÄ" #
logFilePath
ÄÄ# .
,
ÄÄ. /
$"
ÄÄ0 2
$str
ÄÄ2 =
{
ÄÄ= >
ex
ÄÄ> @
}
ÄÄ@ A
$str
ÄÄA C
"
ÄÄC D
)
ÄÄD E
;
ÄÄE F
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
DbUpdateException
ÇÇ $
ex
ÇÇ% '
)
ÇÇ' (
{
ÉÉ 
string
ÑÑ 
logFilePath
ÑÑ "
=
ÑÑ# $
Path
ÑÑ% )
.
ÑÑ) *
Combine
ÑÑ* 1
(
ÑÑ1 2
	Directory
ÑÑ2 ;
.
ÑÑ; <!
GetCurrentDirectory
ÑÑ< O
(
ÑÑO P
)
ÑÑP Q
,
ÑÑQ R
$str
ÑÑS e
)
ÑÑe f
;
ÑÑf g
File
ÖÖ 
.
ÖÖ 
AppendAllText
ÖÖ "
(
ÖÖ" #
logFilePath
ÖÖ# .
,
ÖÖ. /
$"
ÖÖ0 2
$str
ÖÖ2 =
{
ÖÖ= >
ex
ÖÖ> @
}
ÖÖ@ A
$str
ÖÖA C
"
ÖÖC D
)
ÖÖD E
;
ÖÖE F
}
ÜÜ 
catch
áá 
(
áá /
!EntityCommandCompilationException
áá 4
ex
áá5 7
)
áá7 8
{
àà 
string
ââ 
logFilePath
ââ "
=
ââ# $
Path
ââ% )
.
ââ) *
Combine
ââ* 1
(
ââ1 2
	Directory
ââ2 ;
.
ââ; <!
GetCurrentDirectory
ââ< O
(
ââO P
)
ââP Q
,
ââQ R
$str
ââS e
)
ââe f
;
ââf g
File
ää 
.
ää 
AppendAllText
ää "
(
ää" #
logFilePath
ää# .
,
ää. /
$"
ää0 2
$str
ää2 =
{
ää= >
ex
ää> @
}
ää@ A
$str
ääA C
"
ääC D
)
ääD E
;
ääE F
}
ãã 
catch
åå 
(
åå -
EntityCommandExecutionException
åå 2
ex
åå3 5
)
åå5 6
{
çç 
string
éé 
logFilePath
éé "
=
éé# $
Path
éé% )
.
éé) *
Combine
éé* 1
(
éé1 2
	Directory
éé2 ;
.
éé; <!
GetCurrentDirectory
éé< O
(
ééO P
)
ééP Q
,
ééQ R
$str
ééS e
)
éée f
;
ééf g
File
èè 
.
èè 
AppendAllText
èè "
(
èè" #
logFilePath
èè# .
,
èè. /
$"
èè0 2
$str
èè2 =
{
èè= >
ex
èè> @
}
èè@ A
$str
èèA C
"
èèC D
)
èèD E
;
èèE F
}
êê 
catch
ëë 
(
ëë #
SqlNullValueException
ëë (
ex
ëë) +
)
ëë+ ,
{
íí 
string
ìì 
logFilePath
ìì "
=
ìì# $
Path
ìì% )
.
ìì) *
Combine
ìì* 1
(
ìì1 2
	Directory
ìì2 ;
.
ìì; <!
GetCurrentDirectory
ìì< O
(
ììO P
)
ììP Q
,
ììQ R
$str
ììS e
)
ììe f
;
ììf g
File
îî 
.
îî 
AppendAllText
îî "
(
îî" #
logFilePath
îî# .
,
îî. /
$"
îî0 2
$str
îî2 =
{
îî= >
ex
îî> @
}
îî@ A
$str
îîA C
"
îîC D
)
îîD E
;
îîE F
}
ïï 
return
óó 
false
óó 
;
óó 
}
òò 	
public
úú 
void
úú 
DeletePlayer
úú  
(
úú  !
string
úú! '
playerNickname
úú( 6
)
úú6 7
{
ùù 	
try
ûû 
{
üü $
DatabaseModelContainer
†† &$
databaseModelContainer
††' =
=
††> ?
new
††@ C$
DatabaseModelContainer
††D Z
(
††Z [
)
††[ \
;
††\ ]
Players
°° 
playerToDelete
°° &
=
°°' ($
databaseModelContainer
°°) ?
.
°°? @

PlayersSet
°°@ J
.
°°J K
Where
°°K P
(
°°P Q
e
°°Q R
=>
°°S U
e
°°V W
.
°°W X
NickName
°°X `
.
°°` a
Contains
°°a i
(
°°i j
playerNickname
°°j x
)
°°x y
)
°°y z
.
°°z {
FirstOrDefault°°{ â
(°°â ä
)°°ä ã
;°°ã å$
databaseModelContainer
££ &
.
££& '

PlayersSet
££' 1
.
££1 2
Remove
££2 8
(
££8 9
playerToDelete
££9 G
)
££G H
;
££H I$
databaseModelContainer
§§ &
.
§§& '
SaveChanges
§§' 2
(
§§2 3
)
§§3 4
;
§§4 5
}
•• 
catch
¶¶ 
(
¶¶ )
DbEntityValidationException
¶¶ .
ex
¶¶/ 1
)
¶¶1 2
{
ßß 
string
®® 
logFilePath
®® "
=
®®# $
Path
®®% )
.
®®) *
Combine
®®* 1
(
®®1 2
	Directory
®®2 ;
.
®®; <!
GetCurrentDirectory
®®< O
(
®®O P
)
®®P Q
,
®®Q R
$str
®®S e
)
®®e f
;
®®f g
File
©© 
.
©© 
AppendAllText
©© "
(
©©" #
logFilePath
©©# .
,
©©. /
$"
©©0 2
$str
©©2 =
{
©©= >
ex
©©> @
}
©©@ A
$str
©©A C
"
©©C D
)
©©D E
;
©©E F
}
™™ 
catch
´´ 
(
´´ 
DbUpdateException
´´ $
ex
´´% '
)
´´' (
{
¨¨ 
string
≠≠ 
logFilePath
≠≠ "
=
≠≠# $
Path
≠≠% )
.
≠≠) *
Combine
≠≠* 1
(
≠≠1 2
	Directory
≠≠2 ;
.
≠≠; <!
GetCurrentDirectory
≠≠< O
(
≠≠O P
)
≠≠P Q
,
≠≠Q R
$str
≠≠S e
)
≠≠e f
;
≠≠f g
File
ÆÆ 
.
ÆÆ 
AppendAllText
ÆÆ "
(
ÆÆ" #
logFilePath
ÆÆ# .
,
ÆÆ. /
$"
ÆÆ0 2
$str
ÆÆ2 =
{
ÆÆ= >
ex
ÆÆ> @
}
ÆÆ@ A
$str
ÆÆA C
"
ÆÆC D
)
ÆÆD E
;
ÆÆE F
}
ØØ 
catch
∞∞ 
(
∞∞ /
!EntityCommandCompilationException
∞∞ 4
ex
∞∞5 7
)
∞∞7 8
{
±± 
string
≤≤ 
logFilePath
≤≤ "
=
≤≤# $
Path
≤≤% )
.
≤≤) *
Combine
≤≤* 1
(
≤≤1 2
	Directory
≤≤2 ;
.
≤≤; <!
GetCurrentDirectory
≤≤< O
(
≤≤O P
)
≤≤P Q
,
≤≤Q R
$str
≤≤S e
)
≤≤e f
;
≤≤f g
File
≥≥ 
.
≥≥ 
AppendAllText
≥≥ "
(
≥≥" #
logFilePath
≥≥# .
,
≥≥. /
$"
≥≥0 2
$str
≥≥2 =
{
≥≥= >
ex
≥≥> @
}
≥≥@ A
$str
≥≥A C
"
≥≥C D
)
≥≥D E
;
≥≥E F
}
¥¥ 
catch
µµ 
(
µµ -
EntityCommandExecutionException
µµ 2
ex
µµ3 5
)
µµ5 6
{
∂∂ 
string
∑∑ 
logFilePath
∑∑ "
=
∑∑# $
Path
∑∑% )
.
∑∑) *
Combine
∑∑* 1
(
∑∑1 2
	Directory
∑∑2 ;
.
∑∑; <!
GetCurrentDirectory
∑∑< O
(
∑∑O P
)
∑∑P Q
,
∑∑Q R
$str
∑∑S e
)
∑∑e f
;
∑∑f g
File
∏∏ 
.
∏∏ 
AppendAllText
∏∏ "
(
∏∏" #
logFilePath
∏∏# .
,
∏∏. /
$"
∏∏0 2
$str
∏∏2 =
{
∏∏= >
ex
∏∏> @
}
∏∏@ A
$str
∏∏A C
"
∏∏C D
)
∏∏D E
;
∏∏E F
}
ππ 
}
∫∫ 	
}
ªª 
}ºº Ó…
YC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\ServicesTCP\Services\ServiceProfile.cs
	namespace 	
ServicesTCP
 
. 
Services 
{ 
public 

class /
#ServiceProfileForNonCallbackMethods 4
:5 6&
IProfileNonCallbackMethods7 Q
{ 
public 
long 

AddProfile 
( 
Profiles '
profiles( 0
)0 1
{ 	
long 
generatedID 
= 
$num  
;  !
try 
{ "
DatabaseModelContainer &"
databaseModelContainer' =
=> ?
new@ C"
DatabaseModelContainerD Z
(Z [
)[ \
;\ ]"
databaseModelContainer &
.& '
ProfilesSet' 2
.2 3
Add3 6
(6 7
profiles7 ?
)? @
;@ A"
databaseModelContainer &
.& '
SaveChanges' 2
(2 3
)3 4
;4 5
generatedID 
= 
profiles &
.& '
	IDProfile' 0
;0 1
} 
catch 
( '
DbEntityValidationException .
ex/ 1
)1 2
{   
string!! 
logFilePath!! "
=!!# $
Path!!% )
.!!) *
Combine!!* 1
(!!1 2
	Directory!!2 ;
.!!; <
GetCurrentDirectory!!< O
(!!O P
)!!P Q
,!!Q R
$str!!S e
)!!e f
;!!f g
File"" 
."" 
AppendAllText"" "
(""" #
logFilePath""# .
,"". /
$"""0 2
$str""2 =
{""= >
ex""> @
}""@ A
$str""A C
"""C D
)""D E
;""E F
}## 
catch$$ 
($$ 
DbUpdateException$$ $
ex$$% '
)$$' (
{%% 
string&& 
logFilePath&& "
=&&# $
Path&&% )
.&&) *
Combine&&* 1
(&&1 2
	Directory&&2 ;
.&&; <
GetCurrentDirectory&&< O
(&&O P
)&&P Q
,&&Q R
$str&&S e
)&&e f
;&&f g
File'' 
.'' 
AppendAllText'' "
(''" #
logFilePath''# .
,''. /
$"''0 2
$str''2 =
{''= >
ex''> @
}''@ A
$str''A C
"''C D
)''D E
;''E F
}(( 
catch)) 
()) -
!EntityCommandCompilationException)) 4
ex))5 7
)))7 8
{** 
string++ 
logFilePath++ "
=++# $
Path++% )
.++) *
Combine++* 1
(++1 2
	Directory++2 ;
.++; <
GetCurrentDirectory++< O
(++O P
)++P Q
,++Q R
$str++S e
)++e f
;++f g
File,, 
.,, 
AppendAllText,, "
(,," #
logFilePath,,# .
,,,. /
$",,0 2
$str,,2 =
{,,= >
ex,,> @
},,@ A
$str,,A C
",,C D
),,D E
;,,E F
}-- 
catch.. 
(.. +
EntityCommandExecutionException.. 2
ex..3 5
)..5 6
{// 
string00 
logFilePath00 "
=00# $
Path00% )
.00) *
Combine00* 1
(001 2
	Directory002 ;
.00; <
GetCurrentDirectory00< O
(00O P
)00P Q
,00Q R
$str00S e
)00e f
;00f g
File11 
.11 
AppendAllText11 "
(11" #
logFilePath11# .
,11. /
$"110 2
$str112 =
{11= >
ex11> @
}11@ A
$str11A C
"11C D
)11D E
;11E F
}22 
return44 
generatedID44 
;44 
}55 	
public77 
void77 
ChangeLoginStatus77 %
(77% & 
ProfileLoginStatuses77& :
profileLoginStatus77; M
,77M N
long77O S
	profileID77T ]
)77] ^
{88 	
try99 
{:: "
DatabaseModelContainer;; &"
databaseModelContainer;;' =
=;;> ?
new;;@ C"
DatabaseModelContainer;;D Z
(;;Z [
);;[ \
;;;\ ]
Profiles<< 
profileToModify<< (
=<<) *"
databaseModelContainer<<+ A
.<<A B
ProfilesSet<<B M
.<<M N
Find<<N R
(<<R S
	profileID<<S \
)<<\ ]
;<<] ^
if== 
(== 
profileToModify== #
!===$ &
null==' +
)==+ ,
{>> 
profileToModify?? #
.??# $
LoginStatus??$ /
=??0 1
profileLoginStatus??2 D
.??D E
ToString??E M
(??M N
)??N O
;??O P"
databaseModelContainerAA *
.AA* +
SaveChangesAA+ 6
(AA6 7
)AA7 8
;AA8 9
}BB 
}CC 
catchDD 
(DD '
DbEntityValidationExceptionDD .
exDD/ 1
)DD1 2
{EE 
stringFF 
logFilePathFF "
=FF# $
PathFF% )
.FF) *
CombineFF* 1
(FF1 2
	DirectoryFF2 ;
.FF; <
GetCurrentDirectoryFF< O
(FFO P
)FFP Q
,FFQ R
$strFFS e
)FFe f
;FFf g
FileGG 
.GG 
AppendAllTextGG "
(GG" #
logFilePathGG# .
,GG. /
$"GG0 2
$strGG2 =
{GG= >
exGG> @
}GG@ A
$strGGA C
"GGC D
)GGD E
;GGE F
}HH 
catchII 
(II 
DbUpdateExceptionII $
exII% '
)II' (
{JJ 
stringKK 
logFilePathKK "
=KK# $
PathKK% )
.KK) *
CombineKK* 1
(KK1 2
	DirectoryKK2 ;
.KK; <
GetCurrentDirectoryKK< O
(KKO P
)KKP Q
,KKQ R
$strKKS e
)KKe f
;KKf g
FileLL 
.LL 
AppendAllTextLL "
(LL" #
logFilePathLL# .
,LL. /
$"LL0 2
$strLL2 =
{LL= >
exLL> @
}LL@ A
$strLLA C
"LLC D
)LLD E
;LLE F
}MM 
catchNN 
(NN -
!EntityCommandCompilationExceptionNN 4
exNN5 7
)NN7 8
{OO 
stringPP 
logFilePathPP "
=PP# $
PathPP% )
.PP) *
CombinePP* 1
(PP1 2
	DirectoryPP2 ;
.PP; <
GetCurrentDirectoryPP< O
(PPO P
)PPP Q
,PPQ R
$strPPS e
)PPe f
;PPf g
FileQQ 
.QQ 
AppendAllTextQQ "
(QQ" #
logFilePathQQ# .
,QQ. /
$"QQ0 2
$strQQ2 =
{QQ= >
exQQ> @
}QQ@ A
$strQQA C
"QQC D
)QQD E
;QQE F
}RR 
catchSS 
(SS +
EntityCommandExecutionExceptionSS 2
exSS3 5
)SS5 6
{TT 
stringUU 
logFilePathUU "
=UU# $
PathUU% )
.UU) *
CombineUU* 1
(UU1 2
	DirectoryUU2 ;
.UU; <
GetCurrentDirectoryUU< O
(UUO P
)UUP Q
,UUQ R
$strUUS e
)UUe f
;UUf g
FileVV 
.VV 
AppendAllTextVV "
(VV" #
logFilePathVV# .
,VV. /
$"VV0 2
$strVV2 =
{VV= >
exVV> @
}VV@ A
$strVVA C
"VVC D
)VVD E
;VVE F
}WW 
}XX 	
publicZZ 
ListZZ 
<ZZ 
ProfileZZ 
>ZZ 

GetFriendsZZ '
(ZZ' (
longZZ( ,
	profileIDZZ- 6
)ZZ6 7
{[[ 	
List\\ 
<\\ 
Profile\\ 
>\\ 
profileList\\ %
=\\& '
new\\( +
List\\, 0
<\\0 1
Profile\\1 8
>\\8 9
(\\9 :
)\\: ;
;\\; <
Profiles]] 
profiles]] 
=]] 
new]]  #
Profiles]]$ ,
(]], -
)]]- .
;]]. /
ICollection^^ 
<^^ 
Profiles^^  
>^^  !
profilesHasSet^^" 0
=^^1 2
new^^3 6
HashSet^^7 >
<^^> ?
Profiles^^? G
>^^G H
(^^H I
)^^I J
;^^J K
try`` 
{aa "
DatabaseModelContainerbb &"
databaseModelContainerbb' =
=bb> ?
newbb@ C"
DatabaseModelContainerbbD Z
(bbZ [
)bb[ \
;bb\ ]
profilescc 
=cc "
databaseModelContainercc 1
.cc1 2
ProfilesSetcc2 =
.cc= >
Wherecc> C
(ccC D
eccD E
=>ccF H
eccI J
.ccJ K
	IDProfileccK T
==ccU W
	profileIDccX a
)cca b
.ccb c
FirstOrDefaultccc q
(ccq r
)ccr s
;ccs t
ifee 
(ee 
profilesee 
!=ee 
nullee  $
)ee$ %
{ff 
profilesHasSetgg "
=gg# $
profilesgg% -
.gg- .
	Profiles2gg. 7
;gg7 8
foreachii 
(ii 
Profilesii %
pii& '
inii( *
profilesHasSetii+ 9
)ii9 :
{jj 
Playerkk 
profilePlayerkk ,
=kk- .
newkk/ 2
Playerkk3 9
{ll 
IDPlayermm $
=mm% &
pmm' (
.mm( )
Playersmm) 0
.mm0 1
IDPlayermm1 9
,mm9 :
Namesnn !
=nn" #
pnn$ %
.nn% &
Playersnn& -
.nn- .
Namesnn. 3
,nn3 4
Surnamesoo $
=oo% &
poo' (
.oo( )
Playersoo) 0
.oo0 1
Surnamesoo1 9
,oo9 :
Emailpp !
=pp" #
ppp$ %
.pp% &
Playerspp& -
.pp- .
Emailpp. 3
,pp3 4
NickNameqq $
=qq% &
pqq' (
.qq( )
Playersqq) 0
.qq0 1
NickNameqq1 9
,qq9 :
	BirthDaterr %
=rr& '
prr( )
.rr) *
Playersrr* 1
.rr1 2
	BirthDaterr2 ;
}ss 
;ss 
Profileuu 
profileuu  '
=uu( )
newuu* -
Profileuu. 5
{vv 
	IDProfileww %
=ww& '
pww( )
.ww) *
	IDProfileww* 3
,ww3 4
Coinsxx !
=xx" #
(xx$ %
longxx% )
)xx) *
pxx* +
.xx+ ,
Coinsxx, 1
,xx1 2
LoginStatusyy '
=yy( )
pyy* +
.yy+ ,
LoginStatusyy, 7
,yy7 8
Playerzz "
=zz# $
profilePlayerzz% 2
}{{ 
;{{ 
profileList}} #
.}}# $
Add}}$ '
(}}' (
profile}}( /
)}}/ 0
;}}0 1
}~~ 
} 
else
ÄÄ 
{
ÅÅ 
profileList
ÇÇ 
=
ÇÇ  !
null
ÇÇ" &
;
ÇÇ& '
}
ÉÉ 
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ )
DbEntityValidationException
ÜÜ .
ex
ÜÜ/ 1
)
ÜÜ1 2
{
áá 
string
àà 
logFilePath
àà "
=
àà# $
Path
àà% )
.
àà) *
Combine
àà* 1
(
àà1 2
	Directory
àà2 ;
.
àà; <!
GetCurrentDirectory
àà< O
(
ààO P
)
ààP Q
,
ààQ R
$str
ààS e
)
ààe f
;
ààf g
File
ââ 
.
ââ 
AppendAllText
ââ "
(
ââ" #
logFilePath
ââ# .
,
ââ. /
$"
ââ0 2
$str
ââ2 =
{
ââ= >
ex
ââ> @
}
ââ@ A
$str
ââA C
"
ââC D
)
ââD E
;
ââE F
}
ää 
catch
ãã 
(
ãã 
DbUpdateException
ãã $
ex
ãã% '
)
ãã' (
{
åå 
string
çç 
logFilePath
çç "
=
çç# $
Path
çç% )
.
çç) *
Combine
çç* 1
(
çç1 2
	Directory
çç2 ;
.
çç; <!
GetCurrentDirectory
çç< O
(
ççO P
)
ççP Q
,
ççQ R
$str
ççS e
)
ççe f
;
ççf g
File
éé 
.
éé 
AppendAllText
éé "
(
éé" #
logFilePath
éé# .
,
éé. /
$"
éé0 2
$str
éé2 =
{
éé= >
ex
éé> @
}
éé@ A
$str
ééA C
"
ééC D
)
ééD E
;
ééE F
}
èè 
catch
êê 
(
êê /
!EntityCommandCompilationException
êê 4
ex
êê5 7
)
êê7 8
{
ëë 
string
íí 
logFilePath
íí "
=
íí# $
Path
íí% )
.
íí) *
Combine
íí* 1
(
íí1 2
	Directory
íí2 ;
.
íí; <!
GetCurrentDirectory
íí< O
(
ííO P
)
ííP Q
,
ííQ R
$str
ííS e
)
ííe f
;
ííf g
File
ìì 
.
ìì 
AppendAllText
ìì "
(
ìì" #
logFilePath
ìì# .
,
ìì. /
$"
ìì0 2
$str
ìì2 =
{
ìì= >
ex
ìì> @
}
ìì@ A
$str
ììA C
"
ììC D
)
ììD E
;
ììE F
}
îî 
catch
ïï 
(
ïï -
EntityCommandExecutionException
ïï 2
ex
ïï3 5
)
ïï5 6
{
ññ 
string
óó 
logFilePath
óó "
=
óó# $
Path
óó% )
.
óó) *
Combine
óó* 1
(
óó1 2
	Directory
óó2 ;
.
óó; <!
GetCurrentDirectory
óó< O
(
óóO P
)
óóP Q
,
óóQ R
$str
óóS e
)
óóe f
;
óóf g
File
òò 
.
òò 
AppendAllText
òò "
(
òò" #
logFilePath
òò# .
,
òò. /
$"
òò0 2
$str
òò2 =
{
òò= >
ex
òò> @
}
òò@ A
$str
òòA C
"
òòC D
)
òòD E
;
òòE F
}
ôô 
catch
öö 
(
öö #
SqlNullValueException
öö (
ex
öö) +
)
öö+ ,
{
õõ 
string
úú 
logFilePath
úú "
=
úú# $
Path
úú% )
.
úú) *
Combine
úú* 1
(
úú1 2
	Directory
úú2 ;
.
úú; <!
GetCurrentDirectory
úú< O
(
úúO P
)
úúP Q
,
úúQ R
$str
úúS e
)
úúe f
;
úúf g
File
ùù 
.
ùù 
AppendAllText
ùù "
(
ùù" #
logFilePath
ùù# .
,
ùù. /
$"
ùù0 2
$str
ùù2 =
{
ùù= >
ex
ùù> @
}
ùù@ A
$str
ùùA C
"
ùùC D
)
ùùD E
;
ùùE F
}
ûû 
return
†† 
profileList
†† 
;
†† 
}
°° 	
public
££ 
byte
££ 
[
££ 
]
££ 
GetImage
££ 
(
££ 
string
££ %
fileName
££& .
)
££. /
{
§§ 	
try
•• 
{
¶¶ 
string
ßß 
serverFolderPath
ßß '
=
ßß( )
$str
ßß* u
;
ßßu v
string
®® 
filePath
®® 
=
®®  !
Path
®®" &
.
®®& '
Combine
®®' .
(
®®. /
serverFolderPath
®®/ ?
,
®®? @
fileName
®®A I
)
®®I J
;
®®J K
byte
©© 
[
©© 
]
©© 
	imageData
©©  
=
©©! "
File
©©# '
.
©©' (
ReadAllBytes
©©( 4
(
©©4 5
filePath
©©5 =
)
©©= >
;
©©> ?
return
´´ 
	imageData
´´  
;
´´  !
}
¨¨ 
catch
≠≠ 
(
≠≠ #
FileNotFoundException
≠≠ (
)
≠≠( )
{
ÆÆ 
return
ØØ 
null
ØØ 
;
ØØ 
}
∞∞ 
}
±± 	
public
≥≥ 
Profile
≥≥ 
GetProfileByID
≥≥ %
(
≥≥% &
long
≥≥& *
	profileID
≥≥+ 4
)
≥≥4 5
{
¥¥ 	
Profile
µµ 
profile
µµ 
=
µµ 
new
µµ !
Profile
µµ" )
(
µµ) *
)
µµ* +
;
µµ+ ,
Player
∂∂ 
player
∂∂ 
=
∂∂ 
new
∂∂ 
Player
∂∂  &
(
∂∂& '
)
∂∂' (
;
∂∂( )
Profiles
∑∑ 
profiles
∑∑ 
=
∑∑ 
new
∑∑  #
Profiles
∑∑$ ,
(
∑∑, -
)
∑∑- .
;
∑∑. /
try
ππ 
{
∫∫ $
DatabaseModelContainer
ªª &$
databaseModelContainer
ªª' =
=
ªª> ?
new
ªª@ C$
DatabaseModelContainer
ªªD Z
(
ªªZ [
)
ªª[ \
;
ªª\ ]
profiles
ºº 
=
ºº $
databaseModelContainer
ºº 1
.
ºº1 2
ProfilesSet
ºº2 =
.
ºº= >
Where
ºº> C
(
ººC D
e
ººD E
=>
ººF H
e
ººI J
.
ººJ K
	IDProfile
ººK T
==
ººU W
	profileID
ººX a
)
ººa b
.
ººb c
FirstOrDefault
ººc q
(
ººq r
)
ººr s
;
ººs t
if
ææ 
(
ææ 
profiles
ææ 
!=
ææ 
null
ææ  $
)
ææ$ %
{
øø 
player
¿¿ 
.
¿¿ 
IDPlayer
¿¿ #
=
¿¿$ %
profiles
¿¿& .
.
¿¿. /
Players
¿¿/ 6
.
¿¿6 7
IDPlayer
¿¿7 ?
;
¿¿? @
player
¡¡ 
.
¡¡ 
Names
¡¡  
=
¡¡! "
profiles
¡¡# +
.
¡¡+ ,
Players
¡¡, 3
.
¡¡3 4
Names
¡¡4 9
;
¡¡9 :
player
¬¬ 
.
¬¬ 
Surnames
¬¬ #
=
¬¬$ %
profiles
¬¬& .
.
¬¬. /
Players
¬¬/ 6
.
¬¬6 7
Surnames
¬¬7 ?
;
¬¬? @
player
√√ 
.
√√ 
Email
√√  
=
√√! "
profiles
√√# +
.
√√+ ,
Players
√√, 3
.
√√3 4
Email
√√4 9
;
√√9 :
player
ƒƒ 
.
ƒƒ 
NickName
ƒƒ #
=
ƒƒ$ %
profiles
ƒƒ& .
.
ƒƒ. /
Players
ƒƒ/ 6
.
ƒƒ6 7
NickName
ƒƒ7 ?
;
ƒƒ? @
player
≈≈ 
.
≈≈ 
	BirthDate
≈≈ $
=
≈≈% &
profiles
≈≈' /
.
≈≈/ 0
Players
≈≈0 7
.
≈≈7 8
	BirthDate
≈≈8 A
;
≈≈A B
player
∆∆ 
.
∆∆ 
Password
∆∆ #
=
∆∆$ %
profiles
∆∆& .
.
∆∆. /
Players
∆∆/ 6
.
∆∆6 7
Password
∆∆7 ?
;
∆∆? @
profile
»» 
.
»» 
	IDProfile
»» %
=
»»& '
profiles
»»( 0
.
»»0 1
	IDProfile
»»1 :
;
»»: ;
profile
…… 
.
…… 
Coins
…… !
=
……" #
(
……$ %
long
……% )
)
……) *
profiles
……* 2
.
……2 3
Coins
……3 8
;
……8 9
profile
   
.
   
LoginStatus
   '
=
  ( )
profiles
  * 2
.
  2 3
LoginStatus
  3 >
;
  > ?
profile
ÃÃ 
.
ÃÃ 
Player
ÃÃ "
=
ÃÃ# $
player
ÃÃ% +
;
ÃÃ+ ,
}
ÕÕ 
else
ŒŒ 
{
œœ 
profile
–– 
=
–– 
null
–– "
;
––" #
}
—— 
}
”” 
catch
‘‘ 
(
‘‘ )
DbEntityValidationException
‘‘ .
ex
‘‘/ 1
)
‘‘1 2
{
’’ 
string
÷÷ 
logFilePath
÷÷ "
=
÷÷# $
Path
÷÷% )
.
÷÷) *
Combine
÷÷* 1
(
÷÷1 2
	Directory
÷÷2 ;
.
÷÷; <!
GetCurrentDirectory
÷÷< O
(
÷÷O P
)
÷÷P Q
,
÷÷Q R
$str
÷÷S e
)
÷÷e f
;
÷÷f g
File
◊◊ 
.
◊◊ 
AppendAllText
◊◊ "
(
◊◊" #
logFilePath
◊◊# .
,
◊◊. /
$"
◊◊0 2
$str
◊◊2 =
{
◊◊= >
ex
◊◊> @
}
◊◊@ A
$str
◊◊A C
"
◊◊C D
)
◊◊D E
;
◊◊E F
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ 
DbUpdateException
ŸŸ $
ex
ŸŸ% '
)
ŸŸ' (
{
⁄⁄ 
string
€€ 
logFilePath
€€ "
=
€€# $
Path
€€% )
.
€€) *
Combine
€€* 1
(
€€1 2
	Directory
€€2 ;
.
€€; <!
GetCurrentDirectory
€€< O
(
€€O P
)
€€P Q
,
€€Q R
$str
€€S e
)
€€e f
;
€€f g
File
‹‹ 
.
‹‹ 
AppendAllText
‹‹ "
(
‹‹" #
logFilePath
‹‹# .
,
‹‹. /
$"
‹‹0 2
$str
‹‹2 =
{
‹‹= >
ex
‹‹> @
}
‹‹@ A
$str
‹‹A C
"
‹‹C D
)
‹‹D E
;
‹‹E F
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ /
!EntityCommandCompilationException
ﬁﬁ 4
ex
ﬁﬁ5 7
)
ﬁﬁ7 8
{
ﬂﬂ 
string
‡‡ 
logFilePath
‡‡ "
=
‡‡# $
Path
‡‡% )
.
‡‡) *
Combine
‡‡* 1
(
‡‡1 2
	Directory
‡‡2 ;
.
‡‡; <!
GetCurrentDirectory
‡‡< O
(
‡‡O P
)
‡‡P Q
,
‡‡Q R
$str
‡‡S e
)
‡‡e f
;
‡‡f g
File
·· 
.
·· 
AppendAllText
·· "
(
··" #
logFilePath
··# .
,
··. /
$"
··0 2
$str
··2 =
{
··= >
ex
··> @
}
··@ A
$str
··A C
"
··C D
)
··D E
;
··E F
}
‚‚ 
catch
„„ 
(
„„ -
EntityCommandExecutionException
„„ 2
ex
„„3 5
)
„„5 6
{
‰‰ 
string
ÂÂ 
logFilePath
ÂÂ "
=
ÂÂ# $
Path
ÂÂ% )
.
ÂÂ) *
Combine
ÂÂ* 1
(
ÂÂ1 2
	Directory
ÂÂ2 ;
.
ÂÂ; <!
GetCurrentDirectory
ÂÂ< O
(
ÂÂO P
)
ÂÂP Q
,
ÂÂQ R
$str
ÂÂS e
)
ÂÂe f
;
ÂÂf g
File
ÊÊ 
.
ÊÊ 
AppendAllText
ÊÊ "
(
ÊÊ" #
logFilePath
ÊÊ# .
,
ÊÊ. /
$"
ÊÊ0 2
$str
ÊÊ2 =
{
ÊÊ= >
ex
ÊÊ> @
}
ÊÊ@ A
$str
ÊÊA C
"
ÊÊC D
)
ÊÊD E
;
ÊÊE F
}
ÁÁ 
catch
ËË 
(
ËË #
SqlNullValueException
ËË (
ex
ËË) +
)
ËË+ ,
{
ÈÈ 
string
ÍÍ 
logFilePath
ÍÍ "
=
ÍÍ# $
Path
ÍÍ% )
.
ÍÍ) *
Combine
ÍÍ* 1
(
ÍÍ1 2
	Directory
ÍÍ2 ;
.
ÍÍ; <!
GetCurrentDirectory
ÍÍ< O
(
ÍÍO P
)
ÍÍP Q
,
ÍÍQ R
$str
ÍÍS e
)
ÍÍe f
;
ÍÍf g
File
ÎÎ 
.
ÎÎ 
AppendAllText
ÎÎ "
(
ÎÎ" #
logFilePath
ÎÎ# .
,
ÎÎ. /
$"
ÎÎ0 2
$str
ÎÎ2 =
{
ÎÎ= >
ex
ÎÎ> @
}
ÎÎ@ A
$str
ÎÎA C
"
ÎÎC D
)
ÎÎD E
;
ÎÎE F
}
ÏÏ 
return
ÓÓ 
profile
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
public
ÒÒ 
Profile
ÒÒ "
GetProfileByPlayerID
ÒÒ +
(
ÒÒ+ ,
long
ÒÒ, 0
playerID
ÒÒ1 9
)
ÒÒ9 :
{
ÚÚ 	
Profile
ÛÛ 
profile
ÛÛ 
=
ÛÛ 
new
ÛÛ !
Profile
ÛÛ" )
(
ÛÛ) *
)
ÛÛ* +
;
ÛÛ+ ,
Player
ÙÙ 
player
ÙÙ 
=
ÙÙ 
new
ÙÙ 
Player
ÙÙ  &
(
ÙÙ& '
)
ÙÙ' (
;
ÙÙ( )
Profiles
ıı 
profiles
ıı 
=
ıı 
new
ıı  #
Profiles
ıı$ ,
(
ıı, -
)
ıı- .
;
ıı. /
try
˜˜ 
{
¯¯ $
DatabaseModelContainer
˘˘ &$
databaseModelContainer
˘˘' =
=
˘˘> ?
new
˘˘@ C$
DatabaseModelContainer
˘˘D Z
(
˘˘Z [
)
˘˘[ \
;
˘˘\ ]
profiles
˙˙ 
=
˙˙ $
databaseModelContainer
˙˙ 1
.
˙˙1 2
ProfilesSet
˙˙2 =
.
˙˙= >
Where
˙˙> C
(
˙˙C D
e
˙˙D E
=>
˙˙F H
e
˙˙I J
.
˙˙J K
Players
˙˙K R
.
˙˙R S
IDPlayer
˙˙S [
==
˙˙\ ^
playerID
˙˙_ g
)
˙˙g h
.
˙˙h i
FirstOrDefault
˙˙i w
(
˙˙w x
)
˙˙x y
;
˙˙y z
if
¸¸ 
(
¸¸ 
profiles
¸¸ 
!=
¸¸ 
null
¸¸  $
)
¸¸$ %
{
˝˝ 
player
˛˛ 
.
˛˛ 
IDPlayer
˛˛ #
=
˛˛$ %
profiles
˛˛& .
.
˛˛. /
Players
˛˛/ 6
.
˛˛6 7
IDPlayer
˛˛7 ?
;
˛˛? @
player
ˇˇ 
.
ˇˇ 
Names
ˇˇ  
=
ˇˇ! "
profiles
ˇˇ# +
.
ˇˇ+ ,
Players
ˇˇ, 3
.
ˇˇ3 4
Names
ˇˇ4 9
;
ˇˇ9 :
player
ÄÄ 
.
ÄÄ 
Surnames
ÄÄ #
=
ÄÄ$ %
profiles
ÄÄ& .
.
ÄÄ. /
Players
ÄÄ/ 6
.
ÄÄ6 7
Surnames
ÄÄ7 ?
;
ÄÄ? @
player
ÅÅ 
.
ÅÅ 
Email
ÅÅ  
=
ÅÅ! "
profiles
ÅÅ# +
.
ÅÅ+ ,
Players
ÅÅ, 3
.
ÅÅ3 4
Email
ÅÅ4 9
;
ÅÅ9 :
player
ÇÇ 
.
ÇÇ 
NickName
ÇÇ #
=
ÇÇ$ %
profiles
ÇÇ& .
.
ÇÇ. /
Players
ÇÇ/ 6
.
ÇÇ6 7
NickName
ÇÇ7 ?
;
ÇÇ? @
player
ÉÉ 
.
ÉÉ 
	BirthDate
ÉÉ $
=
ÉÉ% &
profiles
ÉÉ' /
.
ÉÉ/ 0
Players
ÉÉ0 7
.
ÉÉ7 8
	BirthDate
ÉÉ8 A
;
ÉÉA B
player
ÑÑ 
.
ÑÑ 
Password
ÑÑ #
=
ÑÑ$ %
profiles
ÑÑ& .
.
ÑÑ. /
Players
ÑÑ/ 6
.
ÑÑ6 7
Password
ÑÑ7 ?
;
ÑÑ? @
profile
ÜÜ 
.
ÜÜ 
	IDProfile
ÜÜ %
=
ÜÜ& '
profiles
ÜÜ( 0
.
ÜÜ0 1
	IDProfile
ÜÜ1 :
;
ÜÜ: ;
profile
áá 
.
áá 
Coins
áá !
=
áá" #
(
áá$ %
long
áá% )
)
áá) *
profiles
áá* 2
.
áá2 3
Coins
áá3 8
;
áá8 9
profile
àà 
.
àà 
LoginStatus
àà '
=
àà( )
profiles
àà* 2
.
àà2 3
LoginStatus
àà3 >
;
àà> ?
profile
ää 
.
ää 
Player
ää "
=
ää# $
player
ää% +
;
ää+ ,
}
ãã 
else
åå 
{
çç 
profile
éé 
=
éé 
null
éé "
;
éé" #
}
èè 
}
ëë 
catch
íí 
(
íí )
DbEntityValidationException
íí .
ex
íí/ 1
)
íí1 2
{
ìì 
string
îî 
logFilePath
îî "
=
îî# $
Path
îî% )
.
îî) *
Combine
îî* 1
(
îî1 2
	Directory
îî2 ;
.
îî; <!
GetCurrentDirectory
îî< O
(
îîO P
)
îîP Q
,
îîQ R
$str
îîS e
)
îîe f
;
îîf g
File
ïï 
.
ïï 
AppendAllText
ïï "
(
ïï" #
logFilePath
ïï# .
,
ïï. /
$"
ïï0 2
$str
ïï2 =
{
ïï= >
ex
ïï> @
}
ïï@ A
$str
ïïA C
"
ïïC D
)
ïïD E
;
ïïE F
}
ññ 
catch
óó 
(
óó 
DbUpdateException
óó $
ex
óó% '
)
óó' (
{
òò 
string
ôô 
logFilePath
ôô "
=
ôô# $
Path
ôô% )
.
ôô) *
Combine
ôô* 1
(
ôô1 2
	Directory
ôô2 ;
.
ôô; <!
GetCurrentDirectory
ôô< O
(
ôôO P
)
ôôP Q
,
ôôQ R
$str
ôôS e
)
ôôe f
;
ôôf g
File
öö 
.
öö 
AppendAllText
öö "
(
öö" #
logFilePath
öö# .
,
öö. /
$"
öö0 2
$str
öö2 =
{
öö= >
ex
öö> @
}
öö@ A
$str
ööA C
"
ööC D
)
ööD E
;
ööE F
}
õõ 
catch
úú 
(
úú /
!EntityCommandCompilationException
úú 4
ex
úú5 7
)
úú7 8
{
ùù 
string
ûû 
logFilePath
ûû "
=
ûû# $
Path
ûû% )
.
ûû) *
Combine
ûû* 1
(
ûû1 2
	Directory
ûû2 ;
.
ûû; <!
GetCurrentDirectory
ûû< O
(
ûûO P
)
ûûP Q
,
ûûQ R
$str
ûûS e
)
ûûe f
;
ûûf g
File
üü 
.
üü 
AppendAllText
üü "
(
üü" #
logFilePath
üü# .
,
üü. /
$"
üü0 2
$str
üü2 =
{
üü= >
ex
üü> @
}
üü@ A
$str
üüA C
"
üüC D
)
üüD E
;
üüE F
}
†† 
catch
°° 
(
°° -
EntityCommandExecutionException
°° 2
ex
°°3 5
)
°°5 6
{
¢¢ 
string
££ 
logFilePath
££ "
=
££# $
Path
££% )
.
££) *
Combine
££* 1
(
££1 2
	Directory
££2 ;
.
££; <!
GetCurrentDirectory
££< O
(
££O P
)
££P Q
,
££Q R
$str
££S e
)
££e f
;
££f g
File
§§ 
.
§§ 
AppendAllText
§§ "
(
§§" #
logFilePath
§§# .
,
§§. /
$"
§§0 2
$str
§§2 =
{
§§= >
ex
§§> @
}
§§@ A
$str
§§A C
"
§§C D
)
§§D E
;
§§E F
}
•• 
catch
¶¶ 
(
¶¶ #
SqlNullValueException
¶¶ (
ex
¶¶) +
)
¶¶+ ,
{
ßß 
string
®® 
logFilePath
®® "
=
®®# $
Path
®®% )
.
®®) *
Combine
®®* 1
(
®®1 2
	Directory
®®2 ;
.
®®; <!
GetCurrentDirectory
®®< O
(
®®O P
)
®®P Q
,
®®Q R
$str
®®S e
)
®®e f
;
®®f g
File
©© 
.
©© 
AppendAllText
©© "
(
©©" #
logFilePath
©©# .
,
©©. /
$"
©©0 2
$str
©©2 =
{
©©= >
ex
©©> @
}
©©@ A
$str
©©A C
"
©©C D
)
©©D E
;
©©E F
}
™™ 
return
¨¨ 
profile
¨¨ 
;
¨¨ 
}
≠≠ 	
public
ØØ 
Profile
ØØ (
GetProfileByPlayerNickname
ØØ 1
(
ØØ1 2
string
ØØ2 8
nickname
ØØ9 A
)
ØØA B
{
∞∞ 	
Profile
±± 
profile
±± 
=
±± 
new
±± !
Profile
±±" )
(
±±) *
)
±±* +
;
±±+ ,
Player
≤≤ 
player
≤≤ 
=
≤≤ 
new
≤≤ 
Player
≤≤  &
(
≤≤& '
)
≤≤' (
;
≤≤( )
Profiles
≥≥ 
profiles
≥≥ 
=
≥≥ 
new
≥≥  #
Profiles
≥≥$ ,
(
≥≥, -
)
≥≥- .
;
≥≥. /
try
µµ 
{
∂∂ $
DatabaseModelContainer
∑∑ &$
databaseModelContainer
∑∑' =
=
∑∑> ?
new
∑∑@ C$
DatabaseModelContainer
∑∑D Z
(
∑∑Z [
)
∑∑[ \
;
∑∑\ ]
profiles
∏∏ 
=
∏∏ $
databaseModelContainer
∏∏ 1
.
∏∏1 2
ProfilesSet
∏∏2 =
.
∏∏= >
Where
∏∏> C
(
∏∏C D
e
∏∏D E
=>
∏∏F H
e
∏∏I J
.
∏∏J K
Players
∏∏K R
.
∏∏R S
NickName
∏∏S [
==
∏∏\ ^
nickname
∏∏_ g
)
∏∏g h
.
∏∏h i
FirstOrDefault
∏∏i w
(
∏∏w x
)
∏∏x y
;
∏∏y z
if
∫∫ 
(
∫∫ 
profiles
∫∫ 
!=
∫∫ 
null
∫∫  $
)
∫∫$ %
{
ªª 
player
ºº 
.
ºº 
IDPlayer
ºº #
=
ºº$ %
profiles
ºº& .
.
ºº. /
Players
ºº/ 6
.
ºº6 7
IDPlayer
ºº7 ?
;
ºº? @
player
ΩΩ 
.
ΩΩ 
Names
ΩΩ  
=
ΩΩ! "
profiles
ΩΩ# +
.
ΩΩ+ ,
Players
ΩΩ, 3
.
ΩΩ3 4
Names
ΩΩ4 9
;
ΩΩ9 :
player
ææ 
.
ææ 
Surnames
ææ #
=
ææ$ %
profiles
ææ& .
.
ææ. /
Players
ææ/ 6
.
ææ6 7
Surnames
ææ7 ?
;
ææ? @
player
øø 
.
øø 
Email
øø  
=
øø! "
profiles
øø# +
.
øø+ ,
Players
øø, 3
.
øø3 4
Email
øø4 9
;
øø9 :
player
¿¿ 
.
¿¿ 
NickName
¿¿ #
=
¿¿$ %
profiles
¿¿& .
.
¿¿. /
Players
¿¿/ 6
.
¿¿6 7
NickName
¿¿7 ?
;
¿¿? @
player
¡¡ 
.
¡¡ 
	BirthDate
¡¡ $
=
¡¡% &
profiles
¡¡' /
.
¡¡/ 0
Players
¡¡0 7
.
¡¡7 8
	BirthDate
¡¡8 A
;
¡¡A B
player
¬¬ 
.
¬¬ 
Password
¬¬ #
=
¬¬$ %
profiles
¬¬& .
.
¬¬. /
Players
¬¬/ 6
.
¬¬6 7
Password
¬¬7 ?
;
¬¬? @
profile
ƒƒ 
.
ƒƒ 
	IDProfile
ƒƒ %
=
ƒƒ& '
profiles
ƒƒ( 0
.
ƒƒ0 1
	IDProfile
ƒƒ1 :
;
ƒƒ: ;
profile
≈≈ 
.
≈≈ 
Coins
≈≈ !
=
≈≈" #
(
≈≈$ %
long
≈≈% )
)
≈≈) *
profiles
≈≈* 2
.
≈≈2 3
Coins
≈≈3 8
;
≈≈8 9
profile
∆∆ 
.
∆∆ 
LoginStatus
∆∆ '
=
∆∆( )
profiles
∆∆* 2
.
∆∆2 3
LoginStatus
∆∆3 >
;
∆∆> ?
profile
»» 
.
»» 
Player
»» "
=
»»# $
player
»»% +
;
»»+ ,
}
   
else
ÀÀ 
{
ÃÃ 
profile
ÕÕ 
=
ÕÕ 
null
ÕÕ "
;
ÕÕ" #
}
ŒŒ 
}
œœ 
catch
–– 
(
–– )
DbEntityValidationException
–– .
ex
––/ 1
)
––1 2
{
—— 
string
““ 
logFilePath
““ "
=
““# $
Path
““% )
.
““) *
Combine
““* 1
(
““1 2
	Directory
““2 ;
.
““; <!
GetCurrentDirectory
““< O
(
““O P
)
““P Q
,
““Q R
$str
““S e
)
““e f
;
““f g
File
”” 
.
”” 
AppendAllText
”” "
(
””" #
logFilePath
””# .
,
””. /
$"
””0 2
$str
””2 =
{
””= >
ex
””> @
}
””@ A
$str
””A C
"
””C D
)
””D E
;
””E F
}
‘‘ 
catch
’’ 
(
’’ 
DbUpdateException
’’ $
ex
’’% '
)
’’' (
{
÷÷ 
string
◊◊ 
logFilePath
◊◊ "
=
◊◊# $
Path
◊◊% )
.
◊◊) *
Combine
◊◊* 1
(
◊◊1 2
	Directory
◊◊2 ;
.
◊◊; <!
GetCurrentDirectory
◊◊< O
(
◊◊O P
)
◊◊P Q
,
◊◊Q R
$str
◊◊S e
)
◊◊e f
;
◊◊f g
File
ÿÿ 
.
ÿÿ 
AppendAllText
ÿÿ "
(
ÿÿ" #
logFilePath
ÿÿ# .
,
ÿÿ. /
$"
ÿÿ0 2
$str
ÿÿ2 =
{
ÿÿ= >
ex
ÿÿ> @
}
ÿÿ@ A
$str
ÿÿA C
"
ÿÿC D
)
ÿÿD E
;
ÿÿE F
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ /
!EntityCommandCompilationException
⁄⁄ 4
ex
⁄⁄5 7
)
⁄⁄7 8
{
€€ 
string
‹‹ 
logFilePath
‹‹ "
=
‹‹# $
Path
‹‹% )
.
‹‹) *
Combine
‹‹* 1
(
‹‹1 2
	Directory
‹‹2 ;
.
‹‹; <!
GetCurrentDirectory
‹‹< O
(
‹‹O P
)
‹‹P Q
,
‹‹Q R
$str
‹‹S e
)
‹‹e f
;
‹‹f g
File
›› 
.
›› 
AppendAllText
›› "
(
››" #
logFilePath
››# .
,
››. /
$"
››0 2
$str
››2 =
{
››= >
ex
››> @
}
››@ A
$str
››A C
"
››C D
)
››D E
;
››E F
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ -
EntityCommandExecutionException
ﬂﬂ 2
ex
ﬂﬂ3 5
)
ﬂﬂ5 6
{
‡‡ 
string
·· 
logFilePath
·· "
=
··# $
Path
··% )
.
··) *
Combine
··* 1
(
··1 2
	Directory
··2 ;
.
··; <!
GetCurrentDirectory
··< O
(
··O P
)
··P Q
,
··Q R
$str
··S e
)
··e f
;
··f g
File
‚‚ 
.
‚‚ 
AppendAllText
‚‚ "
(
‚‚" #
logFilePath
‚‚# .
,
‚‚. /
$"
‚‚0 2
$str
‚‚2 =
{
‚‚= >
ex
‚‚> @
}
‚‚@ A
$str
‚‚A C
"
‚‚C D
)
‚‚D E
;
‚‚E F
}
„„ 
catch
‰‰ 
(
‰‰ #
SqlNullValueException
‰‰ (
ex
‰‰) +
)
‰‰+ ,
{
ÂÂ 
string
ÊÊ 
logFilePath
ÊÊ "
=
ÊÊ# $
Path
ÊÊ% )
.
ÊÊ) *
Combine
ÊÊ* 1
(
ÊÊ1 2
	Directory
ÊÊ2 ;
.
ÊÊ; <!
GetCurrentDirectory
ÊÊ< O
(
ÊÊO P
)
ÊÊP Q
,
ÊÊQ R
$str
ÊÊS e
)
ÊÊe f
;
ÊÊf g
File
ÁÁ 
.
ÁÁ 
AppendAllText
ÁÁ "
(
ÁÁ" #
logFilePath
ÁÁ# .
,
ÁÁ. /
$"
ÁÁ0 2
$str
ÁÁ2 =
{
ÁÁ= >
ex
ÁÁ> @
}
ÁÁ@ A
$str
ÁÁA C
"
ÁÁC D
)
ÁÁD E
;
ÁÁE F
}
ËË 
return
ÍÍ 
profile
ÍÍ 
;
ÍÍ 
}
ÎÎ 	
public
ÌÌ 
bool
ÌÌ 
ModifyImageName
ÌÌ #
(
ÌÌ# $
string
ÌÌ$ *
fileName
ÌÌ+ 3
,
ÌÌ3 4
string
ÌÌ5 ;
newName
ÌÌ< C
)
ÌÌC D
{
ÓÓ 	
try
ÔÔ 
{
 
string
ÒÒ 
serverFolderPath
ÒÒ '
=
ÒÒ( )
$str
ÒÒ* u
;
ÒÒu v
var
ÚÚ 
matchingFiles
ÚÚ !
=
ÚÚ" #
	Directory
ÚÚ$ -
.
ÚÚ- .
GetFiles
ÚÚ. 6
(
ÚÚ6 7
serverFolderPath
ÚÚ7 G
,
ÚÚG H
$"
ÚÚI K
{
ÚÚK L
fileName
ÚÚL T
}
ÚÚT U
$str
ÚÚU W
"
ÚÚW X
)
ÚÚX Y
.
ÛÛ. /
ToList
ÛÛ/ 5
(
ÛÛ5 6
)
ÛÛ6 7
;
ÛÛ7 8
if
ıı 
(
ıı 
matchingFiles
ıı !
.
ıı! "
Count
ıı" '
>
ıı( )
$num
ıı* +
)
ıı+ ,
{
ˆˆ 
string
˜˜ 
	imagePath
˜˜ $
=
˜˜% &
matchingFiles
˜˜' 4
.
˜˜4 5
First
˜˜5 :
(
˜˜: ;
)
˜˜; <
;
˜˜< =
string
¯¯ 
newFileName
¯¯ &
=
¯¯' (
$"
¯¯) +
{
¯¯+ ,
newName
¯¯, 3
}
¯¯3 4
{
¯¯4 5
Path
¯¯5 9
.
¯¯9 :
GetExtension
¯¯: F
(
¯¯F G
	imagePath
¯¯G P
)
¯¯P Q
}
¯¯Q R
"
¯¯R S
;
¯¯S T
string
˘˘ 
newPath
˘˘ "
=
˘˘# $
Path
˘˘% )
.
˘˘) *
Combine
˘˘* 1
(
˘˘1 2
Path
˘˘2 6
.
˘˘6 7
GetDirectoryName
˘˘7 G
(
˘˘G H
	imagePath
˘˘H Q
)
˘˘Q R
,
˘˘R S
newFileName
˘˘T _
)
˘˘_ `
;
˘˘` a
File
˙˙ 
.
˙˙ 
Move
˙˙ 
(
˙˙ 
	imagePath
˙˙ '
,
˙˙' (
newPath
˙˙) 0
)
˙˙0 1
;
˙˙1 2
}
˚˚ 
}
¸¸ 
catch
˝˝ 
(
˝˝ )
DbEntityValidationException
˝˝ .
ex
˝˝/ 1
)
˝˝1 2
{
˛˛ 
string
ˇˇ 
logFilePath
ˇˇ "
=
ˇˇ# $
Path
ˇˇ% )
.
ˇˇ) *
Combine
ˇˇ* 1
(
ˇˇ1 2
	Directory
ˇˇ2 ;
.
ˇˇ; <!
GetCurrentDirectory
ˇˇ< O
(
ˇˇO P
)
ˇˇP Q
,
ˇˇQ R
$str
ˇˇS e
)
ˇˇe f
;
ˇˇf g
File
ÄÄ 
.
ÄÄ 
AppendAllText
ÄÄ "
(
ÄÄ" #
logFilePath
ÄÄ# .
,
ÄÄ. /
$"
ÄÄ0 2
$str
ÄÄ2 =
{
ÄÄ= >
ex
ÄÄ> @
}
ÄÄ@ A
$str
ÄÄA C
"
ÄÄC D
)
ÄÄD E
;
ÄÄE F
return
ÅÅ 
false
ÅÅ 
;
ÅÅ 
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
DbUpdateException
ÉÉ $
ex
ÉÉ% '
)
ÉÉ' (
{
ÑÑ 
string
ÖÖ 
logFilePath
ÖÖ "
=
ÖÖ# $
Path
ÖÖ% )
.
ÖÖ) *
Combine
ÖÖ* 1
(
ÖÖ1 2
	Directory
ÖÖ2 ;
.
ÖÖ; <!
GetCurrentDirectory
ÖÖ< O
(
ÖÖO P
)
ÖÖP Q
,
ÖÖQ R
$str
ÖÖS e
)
ÖÖe f
;
ÖÖf g
File
ÜÜ 
.
ÜÜ 
AppendAllText
ÜÜ "
(
ÜÜ" #
logFilePath
ÜÜ# .
,
ÜÜ. /
$"
ÜÜ0 2
$str
ÜÜ2 =
{
ÜÜ= >
ex
ÜÜ> @
}
ÜÜ@ A
$str
ÜÜA C
"
ÜÜC D
)
ÜÜD E
;
ÜÜE F
return
áá 
false
áá 
;
áá 
}
àà 
catch
ââ 
(
ââ /
!EntityCommandCompilationException
ââ 4
ex
ââ5 7
)
ââ7 8
{
ää 
string
ãã 
logFilePath
ãã "
=
ãã# $
Path
ãã% )
.
ãã) *
Combine
ãã* 1
(
ãã1 2
	Directory
ãã2 ;
.
ãã; <!
GetCurrentDirectory
ãã< O
(
ããO P
)
ããP Q
,
ããQ R
$str
ããS e
)
ããe f
;
ããf g
File
åå 
.
åå 
AppendAllText
åå "
(
åå" #
logFilePath
åå# .
,
åå. /
$"
åå0 2
$str
åå2 =
{
åå= >
ex
åå> @
}
åå@ A
$str
ååA C
"
ååC D
)
ååD E
;
ååE F
return
çç 
false
çç 
;
çç 
}
éé 
catch
èè 
(
èè -
EntityCommandExecutionException
èè 2
ex
èè3 5
)
èè5 6
{
êê 
string
ëë 
logFilePath
ëë "
=
ëë# $
Path
ëë% )
.
ëë) *
Combine
ëë* 1
(
ëë1 2
	Directory
ëë2 ;
.
ëë; <!
GetCurrentDirectory
ëë< O
(
ëëO P
)
ëëP Q
,
ëëQ R
$str
ëëS e
)
ëëe f
;
ëëf g
File
íí 
.
íí 
AppendAllText
íí "
(
íí" #
logFilePath
íí# .
,
íí. /
$"
íí0 2
$str
íí2 =
{
íí= >
ex
íí> @
}
íí@ A
$str
ííA C
"
ííC D
)
ííD E
;
ííE F
return
ìì 
false
ìì 
;
ìì 
}
îî 
return
ññ 
true
ññ 
;
ññ 
}
óó 	
public
ôô 
bool
ôô  
TheProfileIsLogged
ôô &
(
ôô& '
long
ôô' +
	profileID
ôô, 5
)
ôô5 6
{
öö 	
Profiles
õõ 
profiles
õõ 
=
õõ 
new
õõ  #
Profiles
õõ$ ,
(
õõ, -
)
õõ- .
;
õõ. /
try
ùù 
{
ûû $
DatabaseModelContainer
üü &$
databaseModelContainer
üü' =
=
üü> ?
new
üü@ C$
DatabaseModelContainer
üüD Z
(
üüZ [
)
üü[ \
;
üü\ ]
profiles
†† 
=
†† $
databaseModelContainer
†† 1
.
††1 2
ProfilesSet
††2 =
.
††= >
Where
††> C
(
††C D
e
††D E
=>
††F H
e
††I J
.
††J K
	IDProfile
††K T
==
††U W
	profileID
††X a
)
††a b
.
††b c
FirstOrDefault
††c q
(
††q r
)
††r s
;
††s t
if
¢¢ 
(
¢¢ 
profiles
¢¢ 
.
¢¢ 
LoginStatus
¢¢ (
==
¢¢) +
Enum
¢¢, 0
.
¢¢0 1
GetName
¢¢1 8
(
¢¢8 9
typeof
¢¢9 ?
(
¢¢? @"
ProfileLoginStatuses
¢¢@ T
)
¢¢T U
,
¢¢U V"
ProfileLoginStatuses
¢¢W k
.
¢¢k l
Logged
¢¢l r
)
¢¢r s
)
¢¢s t
{
££ 
return
§§ 
true
§§ 
;
§§  
}
•• 
}
¶¶ 
catch
ßß 
(
ßß )
DbEntityValidationException
ßß .
ex
ßß/ 1
)
ßß1 2
{
®® 
string
©© 
logFilePath
©© "
=
©©# $
Path
©©% )
.
©©) *
Combine
©©* 1
(
©©1 2
	Directory
©©2 ;
.
©©; <!
GetCurrentDirectory
©©< O
(
©©O P
)
©©P Q
,
©©Q R
$str
©©S e
)
©©e f
;
©©f g
File
™™ 
.
™™ 
AppendAllText
™™ "
(
™™" #
logFilePath
™™# .
,
™™. /
$"
™™0 2
$str
™™2 =
{
™™= >
ex
™™> @
}
™™@ A
$str
™™A C
"
™™C D
)
™™D E
;
™™E F
}
´´ 
catch
¨¨ 
(
¨¨ 
DbUpdateException
¨¨ $
ex
¨¨% '
)
¨¨' (
{
≠≠ 
string
ÆÆ 
logFilePath
ÆÆ "
=
ÆÆ# $
Path
ÆÆ% )
.
ÆÆ) *
Combine
ÆÆ* 1
(
ÆÆ1 2
	Directory
ÆÆ2 ;
.
ÆÆ; <!
GetCurrentDirectory
ÆÆ< O
(
ÆÆO P
)
ÆÆP Q
,
ÆÆQ R
$str
ÆÆS e
)
ÆÆe f
;
ÆÆf g
File
ØØ 
.
ØØ 
AppendAllText
ØØ "
(
ØØ" #
logFilePath
ØØ# .
,
ØØ. /
$"
ØØ0 2
$str
ØØ2 =
{
ØØ= >
ex
ØØ> @
}
ØØ@ A
$str
ØØA C
"
ØØC D
)
ØØD E
;
ØØE F
}
∞∞ 
catch
±± 
(
±± /
!EntityCommandCompilationException
±± 4
ex
±±5 7
)
±±7 8
{
≤≤ 
string
≥≥ 
logFilePath
≥≥ "
=
≥≥# $
Path
≥≥% )
.
≥≥) *
Combine
≥≥* 1
(
≥≥1 2
	Directory
≥≥2 ;
.
≥≥; <!
GetCurrentDirectory
≥≥< O
(
≥≥O P
)
≥≥P Q
,
≥≥Q R
$str
≥≥S e
)
≥≥e f
;
≥≥f g
File
¥¥ 
.
¥¥ 
AppendAllText
¥¥ "
(
¥¥" #
logFilePath
¥¥# .
,
¥¥. /
$"
¥¥0 2
$str
¥¥2 =
{
¥¥= >
ex
¥¥> @
}
¥¥@ A
$str
¥¥A C
"
¥¥C D
)
¥¥D E
;
¥¥E F
}
µµ 
catch
∂∂ 
(
∂∂ -
EntityCommandExecutionException
∂∂ 2
ex
∂∂3 5
)
∂∂5 6
{
∑∑ 
string
∏∏ 
logFilePath
∏∏ "
=
∏∏# $
Path
∏∏% )
.
∏∏) *
Combine
∏∏* 1
(
∏∏1 2
	Directory
∏∏2 ;
.
∏∏; <!
GetCurrentDirectory
∏∏< O
(
∏∏O P
)
∏∏P Q
,
∏∏Q R
$str
∏∏S e
)
∏∏e f
;
∏∏f g
File
ππ 
.
ππ 
AppendAllText
ππ "
(
ππ" #
logFilePath
ππ# .
,
ππ. /
$"
ππ0 2
$str
ππ2 =
{
ππ= >
ex
ππ> @
}
ππ@ A
$str
ππA C
"
ππC D
)
ππD E
;
ππE F
}
∫∫ 
catch
ªª 
(
ªª #
SqlNullValueException
ªª (
ex
ªª) +
)
ªª+ ,
{
ºº 
string
ΩΩ 
logFilePath
ΩΩ "
=
ΩΩ# $
Path
ΩΩ% )
.
ΩΩ) *
Combine
ΩΩ* 1
(
ΩΩ1 2
	Directory
ΩΩ2 ;
.
ΩΩ; <!
GetCurrentDirectory
ΩΩ< O
(
ΩΩO P
)
ΩΩP Q
,
ΩΩQ R
$str
ΩΩS e
)
ΩΩe f
;
ΩΩf g
File
ææ 
.
ææ 
AppendAllText
ææ "
(
ææ" #
logFilePath
ææ# .
,
ææ. /
$"
ææ0 2
$str
ææ2 =
{
ææ= >
ex
ææ> @
}
ææ@ A
$str
ææA C
"
ææC D
)
ææD E
;
ææE F
}
øø 
return
¡¡ 
false
¡¡ 
;
¡¡ 
}
¬¬ 	
public
ƒƒ 
bool
ƒƒ 
UploadImage
ƒƒ 
(
ƒƒ  
string
ƒƒ  &
fileName
ƒƒ' /
,
ƒƒ/ 0
byte
ƒƒ1 5
[
ƒƒ5 6
]
ƒƒ6 7
	imageData
ƒƒ8 A
)
ƒƒA B
{
≈≈ 	
try
∆∆ 
{
«« 
string
»» 
serverFolderPath
»» '
=
»»( )
$str
»»* u
;
»»u v
string
   
searchString
   #
=
  $ %
$str
  & )
;
  ) *
int
ÃÃ 
index
ÃÃ 
=
ÃÃ 
fileName
ÃÃ $
.
ÃÃ$ %
IndexOf
ÃÃ% ,
(
ÃÃ, -
searchString
ÃÃ- 9
)
ÃÃ9 :
;
ÃÃ: ;
string
ÕÕ .
 fileNameWithoutExtensionToDelete
ÕÕ 7
=
ÕÕ8 9
$str
ÕÕ: <
;
ÕÕ< =
if
œœ 
(
œœ 
index
œœ 
!=
œœ 
-
œœ 
$num
œœ 
)
œœ  
{
–– .
 fileNameWithoutExtensionToDelete
—— 4
=
——5 6
fileName
——7 ?
.
——? @
	Substring
——@ I
(
——I J
$num
——J K
,
——K L
index
——M R
)
——R S
;
——S T
}
““ 
DirectoryInfo
’’ 
directoryInfo
’’ +
=
’’, -
new
’’. 1
DirectoryInfo
’’2 ?
(
’’? @
serverFolderPath
’’@ P
)
’’P Q
;
’’Q R
if
◊◊ 
(
◊◊ 
directoryInfo
◊◊ !
.
◊◊! "
Exists
◊◊" (
)
◊◊( )
{
ÿÿ 
FileInfo
ŸŸ 
[
ŸŸ 
]
ŸŸ 
files
ŸŸ $
=
ŸŸ% &
directoryInfo
ŸŸ' 4
.
ŸŸ4 5
GetFiles
ŸŸ5 =
(
ŸŸ= >
)
ŸŸ> ?
;
ŸŸ? @
foreach
€€ 
(
€€ 
FileInfo
€€ %
file
€€& *
in
€€+ -
files
€€. 3
)
€€3 4
{
‹‹ 
string
›› &
fileNameWithoutExtension
›› 7
=
››8 9
Path
››: >
.
››> ?)
GetFileNameWithoutExtension
››? Z
(
››Z [
file
››[ _
.
››_ `
Name
››` d
)
››d e
;
››e f
if
ﬂﬂ 
(
ﬂﬂ 
string
ﬂﬂ "
.
ﬂﬂ" #
Equals
ﬂﬂ# )
(
ﬂﬂ) *&
fileNameWithoutExtension
ﬂﬂ* B
,
ﬂﬂB C.
 fileNameWithoutExtensionToDelete
ﬂﬂD d
,
ﬂﬂd e
StringComparison
ﬂﬂf v
.
ﬂﬂv w 
OrdinalIgnoreCaseﬂﬂw à
)ﬂﬂà â
)ﬂﬂâ ä
{
‡‡ 
file
··  
.
··  !
Delete
··! '
(
··' (
)
··( )
;
··) *
}
‚‚ 
}
„„ 
}
‰‰ 
string
ÁÁ 
filePath
ÁÁ 
=
ÁÁ  !
Path
ÁÁ" &
.
ÁÁ& '
Combine
ÁÁ' .
(
ÁÁ. /
serverFolderPath
ÁÁ/ ?
,
ÁÁ? @
fileName
ÁÁA I
)
ÁÁI J
;
ÁÁJ K
File
ËË 
.
ËË 
WriteAllBytes
ËË "
(
ËË" #
filePath
ËË# +
,
ËË+ ,
	imageData
ËË- 6
)
ËË6 7
;
ËË7 8
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ #
FileNotFoundException
ÎÎ (
ex
ÎÎ) +
)
ÎÎ+ ,
{
ÏÏ 
string
ÌÌ 
logFilePath
ÌÌ "
=
ÌÌ# $
Path
ÌÌ% )
.
ÌÌ) *
Combine
ÌÌ* 1
(
ÌÌ1 2
	Directory
ÌÌ2 ;
.
ÌÌ; <!
GetCurrentDirectory
ÌÌ< O
(
ÌÌO P
)
ÌÌP Q
,
ÌÌQ R
$str
ÌÌS e
)
ÌÌe f
;
ÌÌf g
File
ÓÓ 
.
ÓÓ 
AppendAllText
ÓÓ "
(
ÓÓ" #
logFilePath
ÓÓ# .
,
ÓÓ. /
$"
ÓÓ0 2
$str
ÓÓ2 =
{
ÓÓ= >
ex
ÓÓ> @
}
ÓÓ@ A
$str
ÓÓA C
"
ÓÓC D
)
ÓÓD E
;
ÓÓE F
return
ÔÔ 
false
ÔÔ 
;
ÔÔ 
}
 
return
ÚÚ 
true
ÚÚ 
;
ÚÚ 
}
ÛÛ 	
public
ˆˆ 
void
ˆˆ 
AddFriendship
ˆˆ !
(
ˆˆ! "
Profiles
ˆˆ" *
profiles
ˆˆ+ 3
,
ˆˆ3 4
Profiles
ˆˆ5 =
	profiles1
ˆˆ> G
)
ˆˆG H
{
˜˜ 	
try
¯¯ 
{
˘˘ $
DatabaseModelContainer
˙˙ &$
databaseModelContainer
˙˙' =
=
˙˙> ?
new
˙˙@ C$
DatabaseModelContainer
˙˙D Z
(
˙˙Z [
)
˙˙[ \
;
˙˙\ ]
string
¸¸ 
sqlQuery
¸¸ 
=
¸¸  !
$str¸¸" å
;¸¸å ç
var
˛˛ 

parameter1
˛˛ 
=
˛˛  
new
˛˛! $
SqlParameter
˛˛% 1
(
˛˛1 2
$str
˛˛2 =
,
˛˛= >
profiles
˛˛? G
.
˛˛G H
	IDProfile
˛˛H Q
)
˛˛Q R
;
˛˛R S
var
ˇˇ 

parameter2
ˇˇ 
=
ˇˇ  
new
ˇˇ! $
SqlParameter
ˇˇ% 1
(
ˇˇ1 2
$str
ˇˇ2 >
,
ˇˇ> ?
	profiles1
ˇˇ@ I
.
ˇˇI J
	IDProfile
ˇˇJ S
)
ˇˇS T
;
ˇˇT U$
databaseModelContainer
ÅÅ &
.
ÅÅ& '
Database
ÅÅ' /
.
ÅÅ/ 0
ExecuteSqlCommand
ÅÅ0 A
(
ÅÅA B
sqlQuery
ÅÅB J
,
ÅÅJ K

parameter1
ÅÅL V
,
ÅÅV W

parameter2
ÅÅX b
)
ÅÅb c
;
ÅÅc d$
databaseModelContainer
ÇÇ &
.
ÇÇ& '
SaveChanges
ÇÇ' 2
(
ÇÇ2 3
)
ÇÇ3 4
;
ÇÇ4 5

parameter1
ÑÑ 
=
ÑÑ 
new
ÑÑ  
SqlParameter
ÑÑ! -
(
ÑÑ- .
$str
ÑÑ. 9
,
ÑÑ9 :
	profiles1
ÑÑ; D
.
ÑÑD E
	IDProfile
ÑÑE N
)
ÑÑN O
;
ÑÑO P

parameter2
ÖÖ 
=
ÖÖ 
new
ÖÖ  
SqlParameter
ÖÖ! -
(
ÖÖ- .
$str
ÖÖ. :
,
ÖÖ: ;
profiles
ÖÖ< D
.
ÖÖD E
	IDProfile
ÖÖE N
)
ÖÖN O
;
ÖÖO P$
databaseModelContainer
áá &
.
áá& '
Database
áá' /
.
áá/ 0
ExecuteSqlCommand
áá0 A
(
ááA B
sqlQuery
ááB J
,
ááJ K

parameter1
ááL V
,
ááV W

parameter2
ááX b
)
ááb c
;
áác d$
databaseModelContainer
àà &
.
àà& '
SaveChanges
àà' 2
(
àà2 3
)
àà3 4
;
àà4 5.
 ServiceProfileForCallbackMethods
ää 0.
 serviceProfileForCallbackMethods
ää1 Q
=
ääR S
new
ääT W.
 ServiceProfileForCallbackMethods
ääX x
(
ääx y
)
ääy z
;
ääz {.
 serviceProfileForCallbackMethods
ãã 0
.
ãã0 15
'UpdateFriendsListsToAllConnectedClients
ãã1 X
(
ããX Y
)
ããY Z
;
ããZ [
}
åå 
catch
çç 
(
çç )
DbEntityValidationException
çç .
ex
çç/ 1
)
çç1 2
{
éé 
string
èè 
logFilePath
èè "
=
èè# $
Path
èè% )
.
èè) *
Combine
èè* 1
(
èè1 2
	Directory
èè2 ;
.
èè; <!
GetCurrentDirectory
èè< O
(
èèO P
)
èèP Q
,
èèQ R
$str
èèS e
)
èèe f
;
èèf g
File
êê 
.
êê 
AppendAllText
êê "
(
êê" #
logFilePath
êê# .
,
êê. /
$"
êê0 2
$str
êê2 =
{
êê= >
ex
êê> @
}
êê@ A
$str
êêA C
"
êêC D
)
êêD E
;
êêE F
}
ëë 
catch
íí 
(
íí 
DbUpdateException
íí $
ex
íí% '
)
íí' (
{
ìì 
string
îî 
logFilePath
îî "
=
îî# $
Path
îî% )
.
îî) *
Combine
îî* 1
(
îî1 2
	Directory
îî2 ;
.
îî; <!
GetCurrentDirectory
îî< O
(
îîO P
)
îîP Q
,
îîQ R
$str
îîS e
)
îîe f
;
îîf g
File
ïï 
.
ïï 
AppendAllText
ïï "
(
ïï" #
logFilePath
ïï# .
,
ïï. /
$"
ïï0 2
$str
ïï2 =
{
ïï= >
ex
ïï> @
}
ïï@ A
$str
ïïA C
"
ïïC D
)
ïïD E
;
ïïE F
}
ññ 
catch
óó 
(
óó /
!EntityCommandCompilationException
óó 4
ex
óó5 7
)
óó7 8
{
òò 
string
ôô 
logFilePath
ôô "
=
ôô# $
Path
ôô% )
.
ôô) *
Combine
ôô* 1
(
ôô1 2
	Directory
ôô2 ;
.
ôô; <!
GetCurrentDirectory
ôô< O
(
ôôO P
)
ôôP Q
,
ôôQ R
$str
ôôS e
)
ôôe f
;
ôôf g
File
öö 
.
öö 
AppendAllText
öö "
(
öö" #
logFilePath
öö# .
,
öö. /
$"
öö0 2
$str
öö2 =
{
öö= >
ex
öö> @
}
öö@ A
$str
ööA C
"
ööC D
)
ööD E
;
ööE F
}
õõ 
catch
úú 
(
úú -
EntityCommandExecutionException
úú 2
ex
úú3 5
)
úú5 6
{
ùù 
string
ûû 
logFilePath
ûû "
=
ûû# $
Path
ûû% )
.
ûû) *
Combine
ûû* 1
(
ûû1 2
	Directory
ûû2 ;
.
ûû; <!
GetCurrentDirectory
ûû< O
(
ûûO P
)
ûûP Q
,
ûûQ R
$str
ûûS e
)
ûûe f
;
ûûf g
File
üü 
.
üü 
AppendAllText
üü "
(
üü" #
logFilePath
üü# .
,
üü. /
$"
üü0 2
$str
üü2 =
{
üü= >
ex
üü> @
}
üü@ A
$str
üüA C
"
üüC D
)
üüD E
;
üüE F
}
†† 
}
°° 	
public
££ 
void
££ 
CancelFriendship
££ $
(
££$ %
Profiles
££% -
profiles
££. 6
,
££6 7
Profiles
££8 @
	profiles1
££A J
)
££J K
{
§§ 	
try
•• 
{
¶¶ $
DatabaseModelContainer
ßß &$
databaseModelContainer
ßß' =
=
ßß> ?
new
ßß@ C$
DatabaseModelContainer
ßßD Z
(
ßßZ [
)
ßß[ \
;
ßß\ ]
string
©© 
sqlQuery
©© 
=
©©  !
$str©©" ç
;©©ç é
var
´´ 

parameter1
´´ 
=
´´  
new
´´! $
SqlParameter
´´% 1
(
´´1 2
$str
´´2 =
,
´´= >
profiles
´´? G
.
´´G H
	IDProfile
´´H Q
)
´´Q R
;
´´R S
var
¨¨ 

parameter2
¨¨ 
=
¨¨  
new
¨¨! $
SqlParameter
¨¨% 1
(
¨¨1 2
$str
¨¨2 >
,
¨¨> ?
	profiles1
¨¨@ I
.
¨¨I J
	IDProfile
¨¨J S
)
¨¨S T
;
¨¨T U$
databaseModelContainer
ÆÆ &
.
ÆÆ& '
Database
ÆÆ' /
.
ÆÆ/ 0
ExecuteSqlCommand
ÆÆ0 A
(
ÆÆA B
sqlQuery
ÆÆB J
,
ÆÆJ K

parameter1
ÆÆL V
,
ÆÆV W

parameter2
ÆÆX b
)
ÆÆb c
;
ÆÆc d$
databaseModelContainer
ØØ &
.
ØØ& '
SaveChanges
ØØ' 2
(
ØØ2 3
)
ØØ3 4
;
ØØ4 5

parameter1
±± 
=
±± 
new
±±  
SqlParameter
±±! -
(
±±- .
$str
±±. 9
,
±±9 :
	profiles1
±±; D
.
±±D E
	IDProfile
±±E N
)
±±N O
;
±±O P

parameter2
≤≤ 
=
≤≤ 
new
≤≤  
SqlParameter
≤≤! -
(
≤≤- .
$str
≤≤. :
,
≤≤: ;
profiles
≤≤< D
.
≤≤D E
	IDProfile
≤≤E N
)
≤≤N O
;
≤≤O P$
databaseModelContainer
¥¥ &
.
¥¥& '
Database
¥¥' /
.
¥¥/ 0
ExecuteSqlCommand
¥¥0 A
(
¥¥A B
sqlQuery
¥¥B J
,
¥¥J K

parameter1
¥¥L V
,
¥¥V W

parameter2
¥¥X b
)
¥¥b c
;
¥¥c d$
databaseModelContainer
µµ &
.
µµ& '
SaveChanges
µµ' 2
(
µµ2 3
)
µµ3 4
;
µµ4 5.
 ServiceProfileForCallbackMethods
∏∏ 0.
 serviceProfileForCallbackMethods
∏∏1 Q
=
∏∏R S
new
∏∏T W.
 ServiceProfileForCallbackMethods
∏∏X x
(
∏∏x y
)
∏∏y z
;
∏∏z {.
 serviceProfileForCallbackMethods
ππ 0
.
ππ0 15
'UpdateFriendsListsToAllConnectedClients
ππ1 X
(
ππX Y
)
ππY Z
;
ππZ [
}
∫∫ 
catch
ªª 
(
ªª )
DbEntityValidationException
ªª .
ex
ªª/ 1
)
ªª1 2
{
ºº 
string
ΩΩ 
logFilePath
ΩΩ "
=
ΩΩ# $
Path
ΩΩ% )
.
ΩΩ) *
Combine
ΩΩ* 1
(
ΩΩ1 2
	Directory
ΩΩ2 ;
.
ΩΩ; <!
GetCurrentDirectory
ΩΩ< O
(
ΩΩO P
)
ΩΩP Q
,
ΩΩQ R
$str
ΩΩS e
)
ΩΩe f
;
ΩΩf g
File
ææ 
.
ææ 
AppendAllText
ææ "
(
ææ" #
logFilePath
ææ# .
,
ææ. /
$"
ææ0 2
$str
ææ2 =
{
ææ= >
ex
ææ> @
}
ææ@ A
$str
ææA C
"
ææC D
)
ææD E
;
ææE F
}
øø 
catch
¿¿ 
(
¿¿ 
DbUpdateException
¿¿ $
ex
¿¿% '
)
¿¿' (
{
¡¡ 
string
¬¬ 
logFilePath
¬¬ "
=
¬¬# $
Path
¬¬% )
.
¬¬) *
Combine
¬¬* 1
(
¬¬1 2
	Directory
¬¬2 ;
.
¬¬; <!
GetCurrentDirectory
¬¬< O
(
¬¬O P
)
¬¬P Q
,
¬¬Q R
$str
¬¬S e
)
¬¬e f
;
¬¬f g
File
√√ 
.
√√ 
AppendAllText
√√ "
(
√√" #
logFilePath
√√# .
,
√√. /
$"
√√0 2
$str
√√2 =
{
√√= >
ex
√√> @
}
√√@ A
$str
√√A C
"
√√C D
)
√√D E
;
√√E F
}
ƒƒ 
catch
≈≈ 
(
≈≈ /
!EntityCommandCompilationException
≈≈ 4
ex
≈≈5 7
)
≈≈7 8
{
∆∆ 
string
«« 
logFilePath
«« "
=
««# $
Path
««% )
.
««) *
Combine
««* 1
(
««1 2
	Directory
««2 ;
.
««; <!
GetCurrentDirectory
««< O
(
««O P
)
««P Q
,
««Q R
$str
««S e
)
««e f
;
««f g
File
»» 
.
»» 
AppendAllText
»» "
(
»»" #
logFilePath
»»# .
,
»». /
$"
»»0 2
$str
»»2 =
{
»»= >
ex
»»> @
}
»»@ A
$str
»»A C
"
»»C D
)
»»D E
;
»»E F
}
…… 
catch
   
(
   -
EntityCommandExecutionException
   2
ex
  3 5
)
  5 6
{
ÀÀ 
string
ÃÃ 
logFilePath
ÃÃ "
=
ÃÃ# $
Path
ÃÃ% )
.
ÃÃ) *
Combine
ÃÃ* 1
(
ÃÃ1 2
	Directory
ÃÃ2 ;
.
ÃÃ; <!
GetCurrentDirectory
ÃÃ< O
(
ÃÃO P
)
ÃÃP Q
,
ÃÃQ R
$str
ÃÃS e
)
ÃÃe f
;
ÃÃf g
File
ÕÕ 
.
ÕÕ 
AppendAllText
ÕÕ "
(
ÕÕ" #
logFilePath
ÕÕ# .
,
ÕÕ. /
$"
ÕÕ0 2
$str
ÕÕ2 =
{
ÕÕ= >
ex
ÕÕ> @
}
ÕÕ@ A
$str
ÕÕA C
"
ÕÕC D
)
ÕÕD E
;
ÕÕE F
}
ŒŒ 
}
œœ 	
public
”” 
void
”” 
DeleteProfile
”” !
(
””! "
long
””" &
playerID
””' /
)
””/ 0
{
‘‘ 	
try
’’ 
{
÷÷ $
DatabaseModelContainer
◊◊ &$
databaseModelContainer
◊◊' =
=
◊◊> ?
new
◊◊@ C$
DatabaseModelContainer
◊◊D Z
(
◊◊Z [
)
◊◊[ \
;
◊◊\ ]
Profiles
ÿÿ 
playerToDelete
ÿÿ '
=
ÿÿ( )$
databaseModelContainer
ÿÿ* @
.
ÿÿ@ A
ProfilesSet
ÿÿA L
.
ÿÿL M
Where
ÿÿM R
(
ÿÿR S
e
ÿÿS T
=>
ÿÿU W
e
ÿÿX Y
.
ÿÿY Z
	IDProfile
ÿÿZ c
==
ÿÿd f
playerID
ÿÿg o
)
ÿÿo p
.
ÿÿp q
FirstOrDefault
ÿÿq 
(ÿÿ Ä
)ÿÿÄ Å
;ÿÿÅ Ç$
databaseModelContainer
⁄⁄ &
.
⁄⁄& '
ProfilesSet
⁄⁄' 2
.
⁄⁄2 3
Remove
⁄⁄3 9
(
⁄⁄9 :
playerToDelete
⁄⁄: H
)
⁄⁄H I
;
⁄⁄I J$
databaseModelContainer
€€ &
.
€€& '
SaveChanges
€€' 2
(
€€2 3
)
€€3 4
;
€€4 5
}
‹‹ 
catch
›› 
(
›› )
DbEntityValidationException
›› .
ex
››/ 1
)
››1 2
{
ﬁﬁ 
string
ﬂﬂ 
logFilePath
ﬂﬂ "
=
ﬂﬂ# $
Path
ﬂﬂ% )
.
ﬂﬂ) *
Combine
ﬂﬂ* 1
(
ﬂﬂ1 2
	Directory
ﬂﬂ2 ;
.
ﬂﬂ; <!
GetCurrentDirectory
ﬂﬂ< O
(
ﬂﬂO P
)
ﬂﬂP Q
,
ﬂﬂQ R
$str
ﬂﬂS e
)
ﬂﬂe f
;
ﬂﬂf g
File
‡‡ 
.
‡‡ 
AppendAllText
‡‡ "
(
‡‡" #
logFilePath
‡‡# .
,
‡‡. /
$"
‡‡0 2
$str
‡‡2 =
{
‡‡= >
ex
‡‡> @
}
‡‡@ A
$str
‡‡A C
"
‡‡C D
)
‡‡D E
;
‡‡E F
}
·· 
catch
‚‚ 
(
‚‚ 
DbUpdateException
‚‚ $
ex
‚‚% '
)
‚‚' (
{
„„ 
string
‰‰ 
logFilePath
‰‰ "
=
‰‰# $
Path
‰‰% )
.
‰‰) *
Combine
‰‰* 1
(
‰‰1 2
	Directory
‰‰2 ;
.
‰‰; <!
GetCurrentDirectory
‰‰< O
(
‰‰O P
)
‰‰P Q
,
‰‰Q R
$str
‰‰S e
)
‰‰e f
;
‰‰f g
File
ÂÂ 
.
ÂÂ 
AppendAllText
ÂÂ "
(
ÂÂ" #
logFilePath
ÂÂ# .
,
ÂÂ. /
$"
ÂÂ0 2
$str
ÂÂ2 =
{
ÂÂ= >
ex
ÂÂ> @
}
ÂÂ@ A
$str
ÂÂA C
"
ÂÂC D
)
ÂÂD E
;
ÂÂE F
}
ÊÊ 
catch
ÁÁ 
(
ÁÁ /
!EntityCommandCompilationException
ÁÁ 4
ex
ÁÁ5 7
)
ÁÁ7 8
{
ËË 
string
ÈÈ 
logFilePath
ÈÈ "
=
ÈÈ# $
Path
ÈÈ% )
.
ÈÈ) *
Combine
ÈÈ* 1
(
ÈÈ1 2
	Directory
ÈÈ2 ;
.
ÈÈ; <!
GetCurrentDirectory
ÈÈ< O
(
ÈÈO P
)
ÈÈP Q
,
ÈÈQ R
$str
ÈÈS e
)
ÈÈe f
;
ÈÈf g
File
ÍÍ 
.
ÍÍ 
AppendAllText
ÍÍ "
(
ÍÍ" #
logFilePath
ÍÍ# .
,
ÍÍ. /
$"
ÍÍ0 2
$str
ÍÍ2 =
{
ÍÍ= >
ex
ÍÍ> @
}
ÍÍ@ A
$str
ÍÍA C
"
ÍÍC D
)
ÍÍD E
;
ÍÍE F
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ -
EntityCommandExecutionException
ÏÏ 2
ex
ÏÏ3 5
)
ÏÏ5 6
{
ÌÌ 
string
ÓÓ 
logFilePath
ÓÓ "
=
ÓÓ# $
Path
ÓÓ% )
.
ÓÓ) *
Combine
ÓÓ* 1
(
ÓÓ1 2
	Directory
ÓÓ2 ;
.
ÓÓ; <!
GetCurrentDirectory
ÓÓ< O
(
ÓÓO P
)
ÓÓP Q
,
ÓÓQ R
$str
ÓÓS e
)
ÓÓe f
;
ÓÓf g
File
ÔÔ 
.
ÔÔ 
AppendAllText
ÔÔ "
(
ÔÔ" #
logFilePath
ÔÔ# .
,
ÔÔ. /
$"
ÔÔ0 2
$str
ÔÔ2 =
{
ÔÔ= >
ex
ÔÔ> @
}
ÔÔ@ A
$str
ÔÔA C
"
ÔÔC D
)
ÔÔD E
;
ÔÔE F
}
 
}
ÒÒ 	
}
ÚÚ 
public
ˆˆ 

partial
ˆˆ 
class
ˆˆ .
 ServiceProfileForCallbackMethods
ˆˆ 9
:
ˆˆ: ;%
IProfileCallbackMethods
ˆˆ< S
{
˜˜ 
public
¯¯ 
static
¯¯ 

Dictionary
¯¯  
<
¯¯  !
string
¯¯! '
,
¯¯' (
IProfileCallback
¯¯) 9
>
¯¯9 :
connectedProfiles
¯¯; L
=
¯¯M N
new
¯¯O R

Dictionary
¯¯S ]
<
¯¯] ^
string
¯¯^ d
,
¯¯d e
IProfileCallback
¯¯f v
>
¯¯v w
(
¯¯w x
)
¯¯x y
;
¯¯y z
public
¸¸ 
void
¸¸ 
Connect
¸¸ 
(
¸¸ 
string
¸¸ "
username
¸¸# +
)
¸¸+ ,
{
˝˝ 	
IProfileCallback
˛˛ 
callback
˛˛ %
=
˛˛& '
OperationContext
˛˛( 8
.
˛˛8 9
Current
˛˛9 @
.
˛˛@ A 
GetCallbackChannel
˛˛A S
<
˛˛S T
IProfileCallback
˛˛T d
>
˛˛d e
(
˛˛e f
)
˛˛f g
;
˛˛g h
if
ÄÄ 
(
ÄÄ 
!
ÄÄ 
connectedProfiles
ÄÄ "
.
ÄÄ" #
ContainsKey
ÄÄ# .
(
ÄÄ. /
username
ÄÄ/ 7
)
ÄÄ7 8
)
ÄÄ8 9
{
ÅÅ 
connectedProfiles
ÇÇ !
.
ÇÇ! "
Add
ÇÇ" %
(
ÇÇ% &
username
ÇÇ& .
,
ÇÇ. /
callback
ÇÇ0 8
)
ÇÇ8 9
;
ÇÇ9 :5
'UpdateFriendsListsToAllConnectedClients
ÉÉ 7
(
ÉÉ7 8
)
ÉÉ8 9
;
ÉÉ9 :
}
ÑÑ 
}
ÖÖ 	
public
áá 
void
áá 

Disconnect
áá 
(
áá 
string
áá %
username
áá& .
)
áá. /
{
àà 	
if
ââ 
(
ââ 
connectedProfiles
ââ !
.
ââ! "
ContainsKey
ââ" -
(
ââ- .
username
ââ. 6
)
ââ6 7
)
ââ7 8
{
ää 
connectedProfiles
ãã !
.
ãã! "
Remove
ãã" (
(
ãã( )
username
ãã) 1
)
ãã1 2
;
ãã2 3
new
åå +
ServiceChatForCallbackMethods
åå 1
(
åå1 2
)
åå2 3
.
åå3 4
	LeaveChat
åå4 =
(
åå= >
username
åå> F
)
ååF G
;
ååG H
new
çç 4
&ServiceFriendRequestForCallbackMethods
çç :
(
çç: ;
)
çç; <
.
çç< =

Disconnect
çç= G
(
ççG H
username
ççH P
)
ççP Q
;
ççQ R
new
éé ,
ServiceLobbyForCallbackMethods
éé 2
(
éé2 3
)
éé3 4
.
éé4 5

Disconnect
éé5 ?
(
éé? @
username
éé@ H
)
ééH I
;
ééI J
new
èè ;
-ServiceMultiplayerCrosswordForCallbackMethods
èè A
(
èèA B
)
èèB C
.
èèC D

Disconnect
èèD N
(
èèN O
username
èèO W
)
èèW X
;
èèX Y5
'UpdateFriendsListsToAllConnectedClients
ëë 7
(
ëë7 8
)
ëë8 9
;
ëë9 :
}
íí 
}
ìì 	
public
ïï 
void
ïï $
InviteFriendToTheLobby
ïï *
(
ïï* +
string
ïï+ 1
friendNickname
ïï2 @
)
ïï@ A
{
ññ 	
if
óó 
(
óó 
connectedProfiles
óó !
.
óó! "
ContainsKey
óó" -
(
óó- .
friendNickname
óó. <
)
óó< =
)
óó= >
{
òò 
connectedProfiles
ôô  
[
ôô  !
friendNickname
ôô! /
]
ôô/ 0
.
ôô0 1&
OpenPaneForEnterTheLobby
ôô1 I
(
ôôI J
)
ôôJ K
;
ôôK L
}
öö 
}
õõ 	
public
ùù 
void
ùù 5
'UpdateFriendsListsToAllConnectedClients
ùù ;
(
ùù; <
)
ùù< =
{
ûû 	
foreach
üü 
(
üü 
var
üü 
friend
üü 
in
üü  "
connectedProfiles
üü# 4
)
üü4 5
{
†† 
friend
°° 
.
°° 
Value
°° 
.
°°  
UpdateFriendsLists
°° /
(
°°/ 0
)
°°0 1
;
°°1 2
friend
¢¢ 
.
¢¢ 
Value
¢¢ 
.
¢¢ )
UpdateFriendsForInviteLists
¢¢ 8
(
¢¢8 9
)
¢¢9 :
;
¢¢: ;
}
££ 
}
§§ 	
}
´´ 
}≠≠ 