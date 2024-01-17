�
mC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\AuxiliaryDataContracts\KeyValueDataContract.cs
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
}11 �
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
}FF �V
hC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\ServiceContracts\IMultiplayerCrossword.cs
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
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� ,
ShowTheSelectedCrosswordBorder
�� +
(
��+ ,
)
��, -
;
��- .
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� !
UpdateGameCountdown
��  
(
��  !
int
��! $
seconds
��% ,
)
��, -
;
��- .
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� #
UpdateGlobalCountdown
�� "
(
��" #
int
��# &
seconds
��' .
)
��. /
;
��/ 0
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� 
UpdateCrossword
�� 
(
�� 
string
�� #
word
��$ (
,
��( )
string
��* 0
answer
��1 7
)
��7 8
;
��8 9
[
�� 	
OperationContract
��	 
(
�� 
IsOneWay
�� #
=
��$ %
true
��& *
)
��* +
]
��+ ,
void
�� "
UpdateProfilesPoints
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}�� �
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
}22 �+
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
}SS �5
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
}�� ��
fC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceMultiplayerCrossword.cs
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
IMultiplayerCrosswordCallback	^^} �
>
^^� �
(
^^� �
)
^^� �
;
^^� �
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
(	 �
)
� �
;
� �
if
�� 
(
�� 
!
�� 
connectedProfiles
�� "
.
��" #
ContainsKey
��# .
(
��. /
username
��/ 7
)
��7 8
)
��8 9
{
�� 
connectedProfiles
�� !
.
��! "
Add
��" %
(
��% &
username
��& .
,
��. /
callback
��0 8
)
��8 9
;
��9 :"
profilesAndItsPoints
�� $
.
��$ %
Add
��% (
(
��( )
username
��) 1
,
��1 2
$num
��3 4
)
��4 5
;
��5 6
}
�� 
}
�� 	
public
�� 
void
�� 

Disconnect
�� 
(
�� 
string
�� %
username
��& .
)
��. /
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
username
��. 6
)
��6 7
)
��7 8
{
�� 
connectedProfiles
�� !
.
��! "
Remove
��" (
(
��( )
username
��) 1
)
��1 2
;
��2 3"
profilesAndItsPoints
�� $
.
��$ %
Remove
��% +
(
��+ ,
username
��, 4
)
��4 5
;
��5 6
}
�� >
0UpdateProfilesPointsListsForAllConnectedProfiles
�� <
(
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
connectedProfiles
�� !
.
��! "
Count
��" '
==
��( *
$num
��+ ,
||
��- /"
profilesAndItsPoints
��0 D
.
��D E
Count
��E J
==
��K M
$num
��N O
)
��O P
{
�� 2
$ExpeltProfileForTheGameForBeingAlone
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
�� 
connectedProfiles
�� !
.
��! "
Count
��" '
==
��( *
$num
��+ ,
||
��- /"
profilesAndItsPoints
��0 D
.
��D E
Count
��E J
==
��K M
$num
��N O
)
��O P
{
�� /
!ServiceLobbyForNonCallbackMethods
�� 1/
!serviceLobbyForNonCallbackMethods
��2 S
=
��T U
new
��V Y/
!ServiceLobbyForNonCallbackMethods
��Z {
(
��{ |
)
��| }
;
��} ~/
!serviceLobbyForNonCallbackMethods
�� 1
.
��1 2'
SetThePlayersAreNotInGame
��2 K
(
��K L
)
��L M
;
��M N
}
�� 
}
�� 	
public
�� 
void
�� 
EndGame
�� 
(
�� 
)
�� 
{
�� 	
List
�� 
<
�� 
string
�� 
>
�� 
keysCopy
�� !
=
��" #
new
��$ '
List
��( ,
<
��, -
string
��- 3
>
��3 4
(
��4 5"
profilesAndItsPoints
��5 I
.
��I J
Keys
��J N
)
��N O
;
��O P
foreach
�� 
(
�� 
string
�� 
key
�� 
in
��  "
keysCopy
��# +
)
��+ ,
{
�� "
profilesAndItsPoints
�� $
[
��$ %
key
��% (
]
��( )
=
��* +
$num
��, -
;
��- .
}
�� 
Array
�� 
.
�� 
Clear
�� 
(
�� %
crosswordsPlayedNumbers
�� /
,
��/ 0
$num
��1 2
,
��2 3%
crosswordsPlayedNumbers
��4 K
.
��K L
Length
��L R
)
��R S
;
��S T
crosswordsPlayed
�� 
=
�� 
$num
��  
;
��  !%
crosswordNumberSelected
�� #
=
��$ %
-
��& '
$num
��' (
;
��( )
}
�� 	
public
�� 
void
�� 2
$ExpeltProfileForTheGameForBeingAlone
�� 8
(
��8 9
)
��9 :
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� 6
(ExpeltProfileToTheLobbyViewForBeingAlone
�� @
(
��@ A
)
��A B
;
��B C
}
�� /
!ServiceLobbyForNonCallbackMethods
�� -/
!serviceLobbyForNonCallbackMethods
��. O
=
��P Q
new
��R U/
!ServiceLobbyForNonCallbackMethods
��V w
(
��w x
)
��x y
;
��y z/
!serviceLobbyForNonCallbackMethods
�� -
.
��- .'
SetThePlayersAreNotInGame
��. G
(
��G H
)
��H I
;
��I J
}
�� 	
public
�� 
void
�� 4
&OpenTheLobbyViewToAllConnectedProfiles
�� :
(
��: ;
)
��; <
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� 
OpenLobbyView
�� %
(
��% &
)
��& '
;
��' (
}
�� 
}
�� 	
public
�� 
void
�� ?
1OpenTheMultiplayerCrosswordViewToConnectedClients
�� E
(
��E F
)
��F G
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� *
OpenMultiplayerCrosswordView
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
public
�� 
void
�� i
[OpenTheRandomMultiplayerCrosswordGeneratorViewToConnectedClientsViaLobbyViewOrItsChildPages
�� o
(
��o p
)
��p q
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
)
��5 6
{
�� 
profile
�� 
.
�� 
Value
�� 
.
�� W
IOpenRandomMultiplayerCrosswordGeneratorViewInTheCurrentLobbyViewChildPage
�� g
(
��g h
)
��h i
;
��i j
}
�� 
}
�� 	
public
�� 
void
�� V
HShowBlackScreenAnimationOnLobbyViewOrItsChildPagesToAllConnectedProfiles
�� \
(
��\ ]
)
��] ^
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
)
��5 6
{
�� 
profile
�� 
.
�� 
Value
�� 
.
�� @
2ShowBlackScreenAnimationOnLobbyViewOrItsChildPages
�� P
(
��P Q
)
��Q R
;
��R S
}
�� 
Thread
�� 
.
�� 
Sleep
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� >
0ShowTheSelectedCrosswordBorderToConnectedClients
�� D
(
��D E
)
��E F
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� ,
ShowTheSelectedCrosswordBorder
�� 6
(
��6 7
)
��7 8
;
��8 9
}
�� 
Thread
�� 
.
�� 
Sleep
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
�� 	
public
�� 
void
�� 1
#StartTheCrosswordSelectionAlgorythm
�� 7
(
��7 8
)
��8 9
{
�� 	
while
�� 
(
�� 
true
�� 
)
�� 
{
�� %
crosswordNumberSelected
�� '
=
��( )
new
��* -
Random
��. 4
(
��4 5
)
��5 6
.
��6 7
Next
��7 ;
(
��; <
$num
��< =
,
��= >
$num
��? @
)
��@ A
;
��A B
if
�� 
(
�� 
Array
�� 
.
�� 
IndexOf
�� !
(
��! "%
crosswordsPlayedNumbers
��" 9
,
��9 :%
crosswordNumberSelected
��; R
)
��R S
==
��T V
-
��W X
$num
��X Y
)
��Y Z
{
�� %
crosswordsPlayedNumbers
�� +
[
��+ ,
crosswordsPlayed
��, <
]
��< =
=
��> ?%
crosswordNumberSelected
��@ W
;
��W X
break
�� 
;
�� 
}
�� 
}
�� 
crosswordsPlayed
�� 
++
�� 
;
�� 
}
�� 	
public
�� 
void
��  
StartGameCountdown
�� &
(
��& '
int
��' *
totalSeconds
��+ 7
)
��7 8
{
�� 	%
cancellationTokenSource
�� #
=
��$ %
new
��& )%
CancellationTokenSource
��* A
(
��A B
)
��B C
;
��C D
Task
�� 
.
�� 
Run
�� 
(
�� 
async
�� 
(
�� 
)
�� 
=>
��  
await
��! &
CountdownAsync
��' 5
(
��5 6
totalSeconds
��6 B
,
��B C%
cancellationTokenSource
��D [
.
��[ \
Token
��\ a
)
��a b
)
��b c
;
��c d
}
�� 	
public
�� 
void
�� "
StartGlobalCountdown
�� (
(
��( )
int
��) ,
totalSeconds
��- 9
)
��9 :
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
totalSeconds
�� %
;
��% &
i
��' (
>=
��) +
$num
��, -
;
��- .
i
��/ 0
--
��0 2
)
��2 3
{
�� :
,UpdateGlobalCountdownForAllConnectedProfiles
�� <
(
��< =
i
��= >
)
��> ?
;
��? @
Thread
�� 
.
�� 
Sleep
�� 
(
�� 
$num
�� !
)
��! "
;
��" #
}
�� .
 ShowGoTextToAllConnectedProfiles
�� ,
(
��, -
)
��- .
;
��. /J
<ShowTheSelectedCrosswordAndItsQustionsToAllConnectedProfiles
�� H
(
��H I
)
��I J
;
��J K
}
�� 	
private
�� 
async
�� 
Task
�� 
CountdownAsync
�� )
(
��) *
int
��* -
totalSeconds
��. :
,
��: ;
CancellationToken
��< M
cancellationToken
��N _
)
��_ `
{
�� 	
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
totalSeconds
�� %
;
��% &
i
��' (
>=
��) +
$num
��, -
;
��- .
i
��/ 0
--
��0 2
)
��2 3
{
�� 
if
�� 
(
�� 
cancellationToken
�� %
.
��% &%
IsCancellationRequested
��& =
)
��= >
{
�� 
break
�� 
;
�� 
}
�� 8
*UpdateGameCountdownForAllConnectedProfiles
�� :
(
��: ;
i
��; <
)
��< =
;
��= >
await
�� 
Task
�� 
.
�� 
Delay
��  
(
��  !
$num
��! %
)
��% &
;
��& '
if
�� 
(
�� (
selectedCrosswordCompleted
�� .
)
��. /
{
�� 
break
�� 
;
�� 
}
�� 
if
�� 
(
�� 
i
�� 
==
�� 
$num
�� 
)
�� 
{
�� (
selectedCrosswordCompleted
�� .
=
��/ 0
true
��1 5
;
��5 63
%ShowTimesUpTextToAllConnectedProfiles
�� 9
(
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 
if
�� 
(
�� 
crosswordsPlayed
��  
==
��! #
$num
��$ %
)
��% &
{
�� 3
%OpenWinnersViewToAllConnectedProfiles
�� 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� O
AOpenRandomMultiplayerCrosswordGeneratorViewToAllConnectedProfiles
�� Q
(
��Q R
)
��R S
;
��S T
}
�� 
}
�� 	
private
�� 
void
�� O
AOpenRandomMultiplayerCrosswordGeneratorViewToAllConnectedProfiles
�� V
(
��V W
)
��W X
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� 9
+OpenRandomMultiplayerCrosswordGeneratorView
�� C
(
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
private
�� 
void
�� 3
%OpenWinnersViewToAllConnectedProfiles
�� :
(
��: ;
)
��; <
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� 
OpenWinnersView
�� '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 	
private
�� 
void
�� .
 ShowGoTextToAllConnectedProfiles
�� 5
(
��5 6
)
��6 7
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� 

ShowGoText
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
Thread
�� 
.
�� 
Sleep
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� J
<ShowTheSelectedCrosswordAndItsQustionsToAllConnectedProfiles
�� Q
(
��Q R
)
��R S
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� 4
&ShowTheSelectedCrosswordAndItsQustions
�� >
(
��> ?
)
��? @
;
��@ A
}
�� 
}
�� 	
private
�� 
void
�� 3
%ShowTimesUpTextToAllConnectedProfiles
�� :
(
��: ;
)
��; <
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� 
ShowTimesUpText
�� '
(
��' (
)
��( )
;
��) *
}
�� 
Thread
�� 
.
�� 
Sleep
�� 
(
�� 
$num
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 8
*UpdateGameCountdownForAllConnectedProfiles
�� ?
(
��? @
int
��@ C
seconds
��D K
)
��K L
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� !
UpdateGameCountdown
�� +
(
��+ ,
seconds
��, 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
private
�� 
void
�� :
,UpdateGlobalCountdownForAllConnectedProfiles
�� A
(
��A B
int
��B E
seconds
��F M
)
��M N
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� #
UpdateGlobalCountdown
�� -
(
��- .
seconds
��. 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
void
�� >
0UpdateProfilesPointsListsForAllConnectedProfiles
�� E
(
��E F
)
��F G
{
�� 	
foreach
�� 
(
�� 
var
�� 
profile
��  
in
��! #
connectedProfiles
��$ 5
.
��5 6
Values
��6 <
)
��< =
{
�� 
profile
�� 
.
�� "
UpdateProfilesPoints
�� ,
(
��, -
)
��- .
;
��. /
}
�� 
}
�� 	
internal
�� 
void
�� $
ClearAnsweredWordsList
�� ,
(
��, -
)
��- .
{
�� 	1
#answeredWordsOfTheSelectedCrossword
�� /
.
��/ 0
Clear
��0 5
(
��5 6
)
��6 7
;
��7 8
}
�� 	
internal
�� 
string
�� 
GetAdmin
��  
(
��  !
)
��! "
{
�� 	
return
�� 
admin
�� 
;
�� 
}
�� 	
internal
�� 
List
�� 
<
�� 
String
�� 
>
�� "
GetConnectedProfiles
�� 2
(
��2 3
)
��3 4
{
�� 	
List
�� 
<
�� 
String
�� 
>
�� #
connectedProfilesList
�� .
=
��/ 0
new
��1 4
List
��5 9
<
��9 :
string
��: @
>
��@ A
(
��A B
)
��B C
;
��C D
foreach
�� 
(
�� 
var
�� 
connectedProfile
�� )
in
��* ,
connectedProfiles
��- >
.
��> ?
Keys
��? C
)
��C D
{
�� #
connectedProfilesList
�� %
.
��% &
Add
��& )
(
��) *
connectedProfile
��* :
)
��: ;
;
��; <
}
�� 
return
�� #
connectedProfilesList
�� (
;
��( )
}
�� 	
internal
�� 
List
�� 
<
�� Z
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
�� b
>
��b c(
GetAllProfilesAndItsPoints
��d ~
(
��~ 
)�� �
{
�� 	
List
�� 
<
�� Z
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
�� ]
>
��] ^.
 profilesAndItsPointsForTransport
��_ 
=��� �
new��� �
List��� �
<��� �\
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword��� �
>��� �
(��� �
)��� �
;��� �
foreach
�� 
(
�� 
var
�� !
profileAndItsPoints
�� ,
in
��- /"
profilesAndItsPoints
��0 D
)
��D E
{
�� Z
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword
�� \

dictionary
��] g
=
��h i
new
��j m[
LDictionaryForGetConnectedProfilesAndItsPointsFromServiceMultiplayerCrossword��n �
{
�� 
Key
�� 
=
�� !
profileAndItsPoints
�� -
.
��- .
Key
��. 1
,
��1 2
Value
�� 
=
�� !
profileAndItsPoints
�� /
.
��/ 0
Value
��0 5
}
�� 
;
�� .
 profilesAndItsPointsForTransport
�� 0
.
��0 1
Add
��1 4
(
��4 5

dictionary
��5 ?
)
��? @
;
��@ A
}
�� 
return
�� .
 profilesAndItsPointsForTransport
�� 3
;
��3 4
}
�� 	
internal
�� 
int
�� (
GetCrosswordNumberSelected
�� /
(
��/ 0
)
��0 1
{
�� 	
return
�� %
crosswordNumberSelected
�� *
;
��* +
}
�� 	
internal
�� 
int
�� !
GetCrosswordsPlayed
�� (
(
��( )
)
��) *
{
�� 	
return
�� 
crosswordsPlayed
�� #
;
��# $
}
�� 	
internal
�� 
int
�� #
GetPointsFromAProfile
�� *
(
��* +
string
��+ 1
nickname
��2 :
)
��: ;
{
�� 	
return
�� "
profilesAndItsPoints
�� '
[
��' (
nickname
��( 0
]
��0 1
;
��1 2
}
�� 	
internal
�� 
void
�� 
SetAdmin
�� 
(
�� 
string
�� %
username
��& .
)
��. /
{
�� 	
admin
�� 
=
�� 
username
�� 
;
�� 
}
�� 	
internal
�� 
void
�� '
SetTheCrosswordIsComplete
�� /
(
��/ 0
)
��0 1
{
�� 	(
selectedCrosswordCompleted
�� &
=
��' (
true
��) -
;
��- .
}
�� 	
internal
�� 
void
�� *
SetTheCrosswordIsNotComplete
�� 2
(
��2 3
)
��3 4
{
�� 	(
selectedCrosswordCompleted
�� &
=
��' (
false
��) .
;
��. /
}
�� 	
internal
�� 
bool
�� 
TheWordIsAnswered
�� '
(
��' (
string
��( .
word
��/ 3
)
��3 4
{
�� 	
return
�� 1
#answeredWordsOfTheSelectedCrossword
�� 6
.
��6 7
Contains
��7 ?
(
��? @
word
��@ D
)
��D E
;
��E F
}
�� 	
}
�� 
}�� �s
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
}�� ��
_C:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceFriendRequest.cs
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
)	kk �
;
kk� �
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
��  
=
��! "
friendRequests
��# 1
.
��1 2
	Profiles1
��2 ;
.
��; <
Players
��< C
.
��C D
NickName
��D L
,
��L M
	BirthDate
�� !
=
��" #
friendRequests
��$ 2
.
��2 3
	Profiles1
��3 <
.
��< =
Players
��= D
.
��D E
	BirthDate
��E N
}
�� 
;
�� 
Profile
�� 
profile
�� #
=
��$ %
new
��& )
Profile
��* 1
{
�� 
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
,
��E F
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
,
��C D
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
,
��I J
Player
�� 
=
��  
playerProfile
��! .
}
�� 
;
�� 
Profile
�� 
profile1
�� $
=
��% &
new
��' *
Profile
��+ 2
{
�� 
	IDProfile
�� !
=
��" #
friendRequests
��$ 2
.
��2 3
	Profiles1
��3 <
.
��< =
	IDProfile
��= F
,
��F G
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
��4 5
	Profiles1
��5 >
.
��> ?
Coins
��? D
,
��D E
LoginStatus
�� #
=
��$ %
friendRequests
��& 4
.
��4 5
	Profiles1
��5 >
.
��> ?
LoginStatus
��? J
,
��J K
Player
�� 
=
��  
playerProfile1
��! /
}
�� 
;
�� 
friendRequest
�� !
.
��! "
IDFriendRequest
��" 1
=
��2 3
friendRequests
��4 B
.
��B C
IDFriendRequest
��C R
;
��R S
friendRequest
�� !
.
��! "
CreationDate
��" .
=
��/ 0
friendRequests
��1 ?
.
��? @
CreationDate
��@ L
;
��L M
friendRequest
�� !
.
��! "
Message
��" )
=
��* +
friendRequests
��, :
.
��: ;
Message
��; B
;
��B C
friendRequest
�� !
.
��! "
AceptationStatus
��" 2
=
��3 4
friendRequests
��5 C
.
��C D
AceptationStatus
��D T
;
��T U
friendRequest
�� !
.
��! "
SendingStatus
��" /
=
��0 1
friendRequests
��2 @
.
��@ A
SendingStatus
��A N
;
��N O
friendRequest
�� !
.
��! "
Profile
��" )
=
��* +
profile
��, 3
;
��3 4
friendRequest
�� !
.
��! "
Profile1
��" *
=
��+ ,
profile1
��- 5
;
��5 6
}
�� 
else
�� 
{
�� 
friendRequest
�� !
=
��" #
null
��$ (
;
��( )
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
friendRequest
��  
;
��  !
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
��! "B
4GetPendientsForAceptationFriendsRequestsByProfile1ID
��# W
(
��W X
long
��X \

IDProfile1
��] g
)
��g h
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
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
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
�� 
(
��  
friendRequestsList
�� &
!=
��' )
null
��* .
)
��. /
{
�� 
friendRequestList
�� %
=
��& '<
.FriendRequestsListToFriendRequestListConverter
��( V
(
��V W 
friendRequestsList
��W i
)
��i j
;
��j k
}
�� 
else
�� 
{
�� 
friendRequestList
�� %
=
��& '
null
��( ,
;
��, -
}
�� 
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
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
friendRequestList
�� $
;
��$ %
}
�� 	
private
�� 
List
�� 
<
�� 
FriendRequest
�� "
>
��" #<
.FriendRequestsListToFriendRequestListConverter
��$ R
(
��R S
List
��S W
<
��W X
FriendRequests
��X f
>
��f g 
friendRequestsList
��h z
)
��z {
{
�� 	
List
�� 
<
�� 
FriendRequest
�� 
>
�� 
friendRequestList
��  1
=
��2 3
new
��4 7
List
��8 <
<
��< =
FriendRequest
��= J
>
��J K
(
��K L
)
��L M
;
��M N
foreach
�� 
(
�� 
FriendRequests
�� #
friendRequests
��$ 2
in
��3 5 
friendRequestsList
��6 H
)
��H I
{
�� 
Player
�� 
playerProfile
�� $
=
��% &
new
��' *
Player
��+ 1
{
�� 
IDPlayer
�� 
=
�� 
friendRequests
�� -
.
��- .
Profiles
��. 6
.
��6 7
Players
��7 >
.
��> ?
IDPlayer
��? G
,
��G H
Names
�� 
=
�� 
friendRequests
�� *
.
��* +
Profiles
��+ 3
.
��3 4
Players
��4 ;
.
��; <
Names
��< A
,
��A B
Surnames
�� 
=
�� 
friendRequests
�� -
.
��- .
Profiles
��. 6
.
��6 7
Players
��7 >
.
��> ?
Surnames
��? G
,
��G H
Email
�� 
=
�� 
friendRequests
�� *
.
��* +
Profiles
��+ 3
.
��3 4
Players
��4 ;
.
��; <
Email
��< A
,
��A B
NickName
�� 
=
�� 
friendRequests
�� -
.
��- .
Profiles
��. 6
.
��6 7
Players
��7 >
.
��> ?
NickName
��? G
,
��G H
	BirthDate
�� 
=
�� 
friendRequests
��  .
.
��. /
Profiles
��/ 7
.
��7 8
Players
��8 ?
.
��? @
	BirthDate
��@ I
}
�� 
;
�� 
Player
�� 
playerProfile1
�� %
=
��& '
new
��( +
Player
��, 2
{
�� 
IDPlayer
�� 
=
�� 
friendRequests
�� -
.
��- .
	Profiles1
��. 7
.
��7 8
Players
��8 ?
.
��? @
IDPlayer
��@ H
,
��H I
Names
�� 
=
�� 
friendRequests
�� *
.
��* +
	Profiles1
��+ 4
.
��4 5
Players
��5 <
.
��< =
Names
��= B
,
��B C
Surnames
�� 
=
�� 
friendRequests
�� -
.
��- .
	Profiles1
��. 7
.
��7 8
Players
��8 ?
.
��? @
Surnames
��@ H
,
��H I
Email
�� 
=
�� 
friendRequests
�� *
.
��* +
	Profiles1
��+ 4
.
��4 5
Players
��5 <
.
��< =
Email
��= B
,
��B C
NickName
�� 
=
�� 
friendRequests
�� -
.
��- .
	Profiles1
��. 7
.
��7 8
Players
��8 ?
.
��? @
NickName
��@ H
,
��H I
	BirthDate
�� 
=
�� 
friendRequests
��  .
.
��. /
	Profiles1
��/ 8
.
��8 9
Players
��9 @
.
��@ A
	BirthDate
��A J
}
�� 
;
�� 
Profile
�� 
profile
�� 
=
��  !
new
��" %
Profile
��& -
{
�� 
	IDProfile
�� 
=
�� 
friendRequests
��  .
.
��. /
Profiles
��/ 7
.
��7 8
	IDProfile
��8 A
,
��A B
Coins
�� 
=
�� 
(
�� 
long
�� !
)
��! "
friendRequests
��" 0
.
��0 1
Profiles
��1 9
.
��9 :
Coins
��: ?
,
��? @
LoginStatus
�� 
=
��  !
friendRequests
��" 0
.
��0 1
Profiles
��1 9
.
��9 :
LoginStatus
��: E
,
��E F
Player
�� 
=
�� 
playerProfile
�� *
}
�� 
;
�� 
Profile
�� 
profile1
��  
=
��! "
new
��# &
Profile
��' .
{
�� 
	IDProfile
�� 
=
�� 
friendRequests
��  .
.
��. /
	Profiles1
��/ 8
.
��8 9
	IDProfile
��9 B
,
��B C
Coins
�� 
=
�� 
(
�� 
long
�� !
)
��! "
friendRequests
��" 0
.
��0 1
	Profiles1
��1 :
.
��: ;
Coins
��; @
,
��@ A
LoginStatus
�� 
=
��  !
friendRequests
��" 0
.
��0 1
	Profiles1
��1 :
.
��: ;
LoginStatus
��; F
,
��F G
Player
�� 
=
�� 
playerProfile1
�� +
}
�� 
;
�� 
FriendRequest
�� 
friendRequest
�� +
=
��, -
new
��. 1
FriendRequest
��2 ?
{
�� 
IDFriendRequest
�� #
=
��$ %
friendRequests
��& 4
.
��4 5
IDFriendRequest
��5 D
,
��D E
CreationDate
��  
=
��! "
friendRequests
��# 1
.
��1 2
CreationDate
��2 >
,
��> ?
Message
�� 
=
�� 
friendRequests
�� ,
.
��, -
Message
��- 4
,
��4 5
AceptationStatus
�� $
=
��% &
friendRequests
��' 5
.
��5 6
AceptationStatus
��6 F
,
��F G
SendingStatus
�� !
=
��" #
friendRequests
��$ 2
.
��2 3
SendingStatus
��3 @
,
��@ A
Profile
�� 
=
�� 
profile
�� %
,
��% &
Profile1
�� 
=
�� 
profile1
�� '
}
�� 
;
�� 
friendRequestList
�� !
.
��! "
Add
��" %
(
��% &
friendRequest
��& 3
)
��3 4
;
��4 5
}
�� 
return
�� 
friendRequestList
�� $
;
��$ %
}
�� 	
public
�� 
bool
�� T
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile
�� Z
(
��Z [
long
��[ _"
transmitterProfileID
��` t
,
��t u
long
��v z 
receiverProfileID��{ �
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
��{ }#
transmitterProfileID��~ �
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
��8 :
receiverProfileID
��; L
)
��L M
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
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
bool
�� Z
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile
�� `
(
��` a
long
��a e"
transmitterProfileID
��f z
,
��z {
long��| �
senderProfileID��� �
)��� �
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� 
friendRequests
�� -
=
��. /$
databaseModelContainer
��0 F
.
��F G
FriendRequestsSet
��G X
.
��X Y
Where
��Y ^
(
��^ _
fr
��_ a
=>
��b d
fr
��e g
.
��g h
Profiles
��h p
.
��p q
	IDProfile
��q z
==
��{ }
senderProfileID��~ �
)��� �
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
	Profiles1
��$ -
.
��- .
	IDProfile
��. 7
==
��8 :"
transmitterProfileID
��; O
)
��O P
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
AceptationStatus
��$ 4
==
��5 7-
FriendRequestAceptationStatuses
��8 W
.
��W X
Pendient
��X `
.
��` a
ToString
��a i
(
��i j
)
��j k
)
��k l
.
�� 
Where
�� 
(
�� 
fr
�� 
=>
��  
fr
��! #
.
��# $
SendingStatus
��$ 1
==
��2 4*
FriendRequestSendingStatuses
��5 Q
.
��Q R
Sent
��R V
.
��V W
ToString
��W _
(
��_ `
)
��` a
)
��a b
.
�� 
FirstOrDefault
�� #
(
��# $
)
��$ %
;
��% &
if
�� 
(
�� 
friendRequests
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
AddFriendRequest
�� $
(
��$ %
FriendRequests
��% 3
friendRequests
��4 B
)
��B C
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]$
databaseModelContainer
�� &
.
��& '
Entry
��' ,
(
��, -
friendRequests
��- ;
)
��; <
.
��< =
State
��= B
=
��C D
EntityState
��E P
.
��P Q
	Unchanged
��Q Z
;
��Z [$
databaseModelContainer
�� &
.
��& '
FriendRequestsSet
��' 8
.
��8 9
Add
��9 <
(
��< =
friendRequests
��= K
)
��K L
;
��L M$
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
��4 54
&ServiceFriendRequestForCallbackMethods
�� 64
&serviceFriendRequestForCallbackMethods
��7 ]
=
��^ _
new
��` c5
&ServiceFriendRequestForCallbackMethods��d �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� 6
.
��6 7<
.UpdateFriendRequestsListsToAllConnectedClients
��7 e
(
��e f
)
��f g
;
��g h
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
void
�� !
AcceptFriendRequest
�� '
(
��' (
FriendRequests
��( 6
friendRequests
��7 E
)
��E F
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� $
friendRequestsToModify
�� 5
=
��6 7$
databaseModelContainer
��8 N
.
��N O
FriendRequestsSet
��O `
.
��` a
Find
��a e
(
��e f
friendRequests
��f t
.
��t u
IDFriendRequest��u �
)��� �
;��� �
if
�� 
(
�� $
friendRequestsToModify
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� $
friendRequestsToModify
�� *
.
��* +
AceptationStatus
��+ ;
=
��< =
Enum
��> B
.
��B C
GetName
��C J
(
��J K
typeof
��K Q
(
��Q R-
FriendRequestAceptationStatuses
��R q
)
��q r
,
��r s.
FriendRequestAceptationStatuses��t �
.��� �
Accepted��� �
)��� �
;��� �$
databaseModelContainer
�� *
.
��* +
SaveChanges
��+ 6
(
��6 7
)
��7 8
;
��8 91
#ServiceProfileForNonCallbackMethods
�� 71
#serviceProfileForNonCallbackMethods
��8 [
=
��\ ]
new
��^ a2
#ServiceProfileForNonCallbackMethods��b �
(��� �
)��� �
;��� �1
#serviceProfileForNonCallbackMethods
�� 7
.
��7 8
AddFriendship
��8 E
(
��E F
friendRequests
��F T
.
��T U
Profiles
��U ]
,
��] ^
friendRequests
��_ m
.
��m n
	Profiles1
��n w
)
��w x
;
��x y4
&ServiceFriendRequestForCallbackMethods
�� :4
&serviceFriendRequestForCallbackMethods
��; a
=
��b c
new
��d g5
&ServiceFriendRequestForCallbackMethods��h �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� :
.
��: ;<
.UpdateFriendRequestsListsToAllConnectedClients
��; i
(
��i j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
void
�� !
CancelFriendRequest
�� '
(
��' (
FriendRequests
��( 6
friendRequests
��7 E
)
��E F
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� $
friendRequestsToModify
�� 5
=
��6 7$
databaseModelContainer
��8 N
.
��N O
FriendRequestsSet
��O `
.
��` a
Find
��a e
(
��e f
friendRequests
��f t
.
��t u
IDFriendRequest��u �
)��� �
;��� �
if
�� 
(
�� $
friendRequestsToModify
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� $
friendRequestsToModify
�� *
.
��* +
SendingStatus
��+ 8
=
��9 :
Enum
��; ?
.
��? @
GetName
��@ G
(
��G H
typeof
��H N
(
��N O*
FriendRequestSendingStatuses
��O k
)
��k l
,
��l m+
FriendRequestSendingStatuses��n �
.��� �
Canceled��� �
)��� �
;��� �$
databaseModelContainer
�� *
.
��* +
SaveChanges
��+ 6
(
��6 7
)
��7 8
;
��8 94
&ServiceFriendRequestForCallbackMethods
�� :4
&serviceFriendRequestForCallbackMethods
��; a
=
��b c
new
��d g5
&ServiceFriendRequestForCallbackMethods��h �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� :
.
��: ;<
.UpdateFriendRequestsListsToAllConnectedClients
��; i
(
��i j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
void
�� !
RejectFriendRequest
�� '
(
��' (
FriendRequests
��( 6
friendRequests
��7 E
)
��E F
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
FriendRequests
�� $
friendRequestsToModify
�� 5
=
��6 7$
databaseModelContainer
��8 N
.
��N O
FriendRequestsSet
��O `
.
��` a
Find
��a e
(
��e f
friendRequests
��f t
.
��t u
IDFriendRequest��u �
)��� �
;��� �
if
�� 
(
�� $
friendRequestsToModify
�� *
!=
��+ -
null
��. 2
)
��2 3
{
�� $
friendRequestsToModify
�� *
.
��* +
AceptationStatus
��+ ;
=
��< =-
FriendRequestAceptationStatuses
��> ]
.
��] ^
Rejected
��^ f
.
��f g
ToString
��g o
(
��o p
)
��p q
;
��q r$
databaseModelContainer
�� *
.
��* +
SaveChanges
��+ 6
(
��6 7
)
��7 8
;
��8 94
&ServiceFriendRequestForCallbackMethods
�� :4
&serviceFriendRequestForCallbackMethods
��; a
=
��b c
new
��d g5
&ServiceFriendRequestForCallbackMethods��h �
(��� �
)��� �
;��� �4
&serviceFriendRequestForCallbackMethods
�� :
.
��: ;<
.UpdateFriendRequestsListsToAllConnectedClients
��; i
(
��i j
)
��j k
;
��k l
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
}
�� 
[
�� 
CallbackBehavior
�� 
(
�� 
ConcurrencyMode
�� %
=
��& '
ConcurrencyMode
��( 7
.
��7 8
Multiple
��8 @
,
��@ A'
UseSynchronizationContext
��B [
=
��\ ]
false
��^ c
)
��c d
]
��d e
public
�� 

class
�� 4
&ServiceFriendRequestForCallbackMethods
�� 7
:
��8 9+
IFriendRequestCallbackMethods
��: W
{
�� 
public
�� 
static
�� 

Dictionary
��  
<
��  !
string
��! '
,
��' ($
IFriendRequestCallback
��) ?
>
��? @
connectedProfiles
��A R
=
��S T
new
��U X

Dictionary
��Y c
<
��c d
string
��d j
,
��j k%
IFriendRequestCallback��l �
>��� �
(��� �
)��� �
;��� �
public
�� 
void
�� 
Connect
�� 
(
�� 
string
�� "
username
��# +
)
��+ ,
{
�� 	$
IFriendRequestCallback
�� "
callback
��# +
=
��, -
OperationContext
��. >
.
��> ?
Current
��? F
.
��F G 
GetCallbackChannel
��G Y
<
��Y Z$
IFriendRequestCallback
��Z p
>
��p q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
!
�� 
connectedProfiles
�� "
.
��" #
ContainsKey
��# .
(
��. /
username
��/ 7
)
��7 8
)
��8 9
{
�� 
connectedProfiles
�� !
.
��! "
Add
��" %
(
��% &
username
��& .
,
��. /
callback
��0 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
public
�� 
void
�� 

Disconnect
�� 
(
�� 
string
�� %
username
��& .
)
��. /
{
�� 	
if
�� 
(
�� 
connectedProfiles
�� !
.
��! "
ContainsKey
��" -
(
��- .
username
��. 6
)
��6 7
)
��7 8
{
�� 
connectedProfiles
�� !
.
��! "
Remove
��" (
(
��( )
username
��) 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
void
�� <
.UpdateFriendRequestsListsToAllConnectedClients
�� B
(
��B C
)
��C D
{
�� 	
foreach
�� 
(
�� 
var
�� #
friendRequestCallback
�� .
in
��/ 1
connectedProfiles
��2 C
.
��C D
Values
��D J
)
��J K
{
�� #
friendRequestCallback
�� %
.
��% &(
UpdateFriendsRequestsLists
��& @
(
��@ A
)
��A B
;
��B C
}
�� 
}
�� 	
}
�� 
}�� ��
XC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServicePlayer.cs
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
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
player
�� 
;
�� 
}
�� 	
public
�� 
Player
�� !
GetPlayerByNickname
�� )
(
��) *
string
��* 0
nickname
��1 9
)
��9 :
{
�� 	
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
��( )
Players
�� 
players
�� 
=
�� 
new
�� !
Players
��" )
(
��) *
)
��* +
;
��+ ,
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
��H I
NickName
��I Q
==
��R T
nickname
��U ]
)
��] ^
.
��^ _
FirstOrDefault
��_ m
(
��m n
)
��n o
;
��o p
if
�� 
(
�� 
players
�� 
!=
�� 
null
�� #
)
��# $
{
�� 
player
�� 
.
�� 
IDPlayer
�� #
=
��$ %
players
��& -
.
��- .
IDPlayer
��. 6
;
��6 7
player
�� 
.
�� 
Names
��  
=
��! "
players
��# *
.
��* +
Names
��+ 0
;
��0 1
player
�� 
.
�� 
Surnames
�� #
=
��$ %
players
��& -
.
��- .
Surnames
��. 6
;
��6 7
player
�� 
.
�� 
Email
��  
=
��! "
players
��# *
.
��* +
Email
��+ 0
;
��0 1
player
�� 
.
�� 
NickName
�� #
=
��$ %
players
��& -
.
��- .
NickName
��. 6
;
��6 7
player
�� 
.
�� 
	BirthDate
�� $
=
��% &
players
��' .
.
��. /
	BirthDate
��/ 8
;
��8 9
player
�� 
.
�� 
Password
�� #
=
��$ %
players
��& -
.
��- .
Password
��. 6
;
��6 7
}
�� 
else
�� 
{
�� 
player
�� 
=
�� 
null
�� !
;
��! "
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
player
�� 
;
�� 
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
��" #
new
��$ '
List
��( ,
<
��, -
Players
��- 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
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
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
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
�� "
.
��" #
Email
��# (
=
��) *
modifiedPlayer
��+ 9
.
��9 :
Email
��: ?
;
��? @
playerToModify
�� "
.
��" #
Names
��# (
=
��) *
modifiedPlayer
��+ 9
.
��9 :
Names
��: ?
;
��? @
playerToModify
�� "
.
��" #
NickName
��# +
=
��, -
modifiedPlayer
��. <
.
��< =
NickName
��= E
;
��E F$
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
��8 9
generatedID
�� 
=
��  !
(
��" #
int
��# &
)
��& '
playerToModify
��' 5
.
��5 6
IDPlayer
��6 >
;
��> ?
}
�� 
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
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
generatedID
�� 
;
�� 
}
�� 	
public
�� 
void
�� #
ModifyPasswordByEmail
�� )
(
��) *
String
��* 0
originalEmail
��1 >
,
��> ?
String
��@ F
newPassword
��G R
)
��R S
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
��\ ]
Players
�� 
playerToModify
�� &
=
��' ($
databaseModelContainer
��) ?
.
��? @

PlayersSet
��@ J
.
��J K
FirstOrDefault
��K Y
(
��Y Z
e
��Z [
=>
��\ ^
e
��_ `
.
��` a
Email
��a f
==
��g i
originalEmail
��j w
)
��w x
;
��x y
if
�� 
(
�� 
playerToModify
�� "
!=
��# %
null
��& *
)
��* +
{
�� 
playerToModify
�� "
.
��" #
Password
��# +
=
��, -
newPassword
��. 9
;
��9 :
}
�� $
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
��4 5
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
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
bool
�� '
TheEmailIsAlreadyRegisted
�� -
(
��- .
String
��. 4
emailToSearch
��5 B
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
��\ ]
List
�� 
<
�� 
String
�� 
>
�� 
emails
�� #
=
��$ %$
databaseModelContainer
��& <
.
��< =

PlayersSet
��= G
.
��G H
Select
��H N
(
��N O
row
��O R
=>
��S U
row
��V Y
.
��Y Z
Email
��Z _
)
��_ `
.
��` a
ToList
��a g
(
��g h
)
��h i
;
��i j
foreach
�� 
(
�� 
String
�� 
email
��  %
in
��& (
emails
��) /
)
��/ 0
{
�� 
if
�� 
(
�� 
email
�� 
==
��  
emailToSearch
��! .
)
��. /
{
�� 
return
�� 
true
�� #
;
��# $
}
�� 
}
�� 
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
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
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
�� *
TheNicknameIsAlreadyRegisted
�� 0
(
��0 1
String
��1 7
nicknameToSearch
��8 H
)
��H I
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
��\ ]
List
�� 
<
�� 
String
�� 
>
�� 
	nicknames
�� &
=
��' ($
databaseModelContainer
��) ?
.
��? @

PlayersSet
��@ J
.
��J K
Select
��K Q
(
��Q R
row
��R U
=>
��V X
row
��Y \
.
��\ ]
NickName
��] e
)
��e f
.
��f g
ToList
��g m
(
��m n
)
��n o
;
��o p
foreach
�� 
(
�� 
String
�� 
nickname
��  (
in
��) +
	nicknames
��, 5
)
��5 6
{
�� 
if
�� 
(
�� 
nickname
��  
==
��! #
nicknameToSearch
��$ 4
)
��4 5
{
�� 
return
�� 
true
�� #
;
��# $
}
�� 
}
�� 
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
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
DeletePlayer
��  
(
��  !
string
��! '
playerNickname
��( 6
)
��6 7
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
Players
�� 
playerToDelete
�� &
=
��' ($
databaseModelContainer
��) ?
.
��? @

PlayersSet
��@ J
.
��J K
Where
��K P
(
��P Q
e
��Q R
=>
��S U
e
��V W
.
��W X
NickName
��X `
.
��` a
Contains
��a i
(
��i j
playerNickname
��j x
)
��x y
)
��y z
.
��z {
FirstOrDefault��{ �
(��� �
)��� �
;��� �$
databaseModelContainer
�� &
.
��& '

PlayersSet
��' 1
.
��1 2
Remove
��2 8
(
��8 9
playerToDelete
��9 G
)
��G H
;
��H I$
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
��4 5
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
}
�� 
}�� ��
YC:\Users\wmike\OneDrive\Documentos\Renovación LIS\ServicesTCP\Services\ServiceProfile.cs
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
�� 
{
�� 
profileList
�� 
=
��  !
null
��" &
;
��& '
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
profileList
�� 
;
�� 
}
�� 	
public
�� 
byte
�� 
[
�� 
]
�� 
GetImage
�� 
(
�� 
string
�� %
fileName
��& .
)
��. /
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
��u v
string
�� 
filePath
�� 
=
��  !
Path
��" &
.
��& '
Combine
��' .
(
��. /
serverFolderPath
��/ ?
,
��? @
fileName
��A I
)
��I J
;
��J K
byte
�� 
[
�� 
]
�� 
	imageData
��  
=
��! "
File
��# '
.
��' (
ReadAllBytes
��( 4
(
��4 5
filePath
��5 =
)
��= >
;
��> ?
return
�� 
	imageData
��  
;
��  !
}
�� 
catch
�� 
(
�� #
FileNotFoundException
�� (
)
��( )
{
�� 
return
�� 
null
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
Profile
�� 
GetProfileByID
�� %
(
��% &
long
��& *
	profileID
��+ 4
)
��4 5
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
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
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
�� 
.
�� 
Surnames
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Surnames
��7 ?
;
��? @
player
�� 
.
�� 
Email
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Email
��4 9
;
��9 :
player
�� 
.
�� 
NickName
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
NickName
��7 ?
;
��? @
player
�� 
.
�� 
	BirthDate
�� $
=
��% &
profiles
��' /
.
��/ 0
Players
��0 7
.
��7 8
	BirthDate
��8 A
;
��A B
player
�� 
.
�� 
Password
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Password
��7 ?
;
��? @
profile
�� 
.
�� 
	IDProfile
�� %
=
��& '
profiles
��( 0
.
��0 1
	IDProfile
��1 :
;
��: ;
profile
�� 
.
�� 
Coins
�� !
=
��" #
(
��$ %
long
��% )
)
��) *
profiles
��* 2
.
��2 3
Coins
��3 8
;
��8 9
profile
�� 
.
�� 
LoginStatus
�� '
=
��( )
profiles
��* 2
.
��2 3
LoginStatus
��3 >
;
��> ?
profile
�� 
.
�� 
Player
�� "
=
��# $
player
��% +
;
��+ ,
}
�� 
else
�� 
{
�� 
profile
�� 
=
�� 
null
�� "
;
��" #
}
�� 
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
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
profile
�� 
;
�� 
}
�� 	
public
�� 
Profile
�� (
GetProfileByPlayerNickname
�� 1
(
��1 2
string
��2 8
nickname
��9 A
)
��A B
{
�� 	
Profile
�� 
profile
�� 
=
�� 
new
�� !
Profile
��" )
(
��) *
)
��* +
;
��+ ,
Player
�� 
player
�� 
=
�� 
new
�� 
Player
��  &
(
��& '
)
��' (
;
��( )
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
��J K
Players
��K R
.
��R S
NickName
��S [
==
��\ ^
nickname
��_ g
)
��g h
.
��h i
FirstOrDefault
��i w
(
��w x
)
��x y
;
��y z
if
�� 
(
�� 
profiles
�� 
!=
�� 
null
��  $
)
��$ %
{
�� 
player
�� 
.
�� 
IDPlayer
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
IDPlayer
��7 ?
;
��? @
player
�� 
.
�� 
Names
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Names
��4 9
;
��9 :
player
�� 
.
�� 
Surnames
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Surnames
��7 ?
;
��? @
player
�� 
.
�� 
Email
��  
=
��! "
profiles
��# +
.
��+ ,
Players
��, 3
.
��3 4
Email
��4 9
;
��9 :
player
�� 
.
�� 
NickName
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
NickName
��7 ?
;
��? @
player
�� 
.
�� 
	BirthDate
�� $
=
��% &
profiles
��' /
.
��/ 0
Players
��0 7
.
��7 8
	BirthDate
��8 A
;
��A B
player
�� 
.
�� 
Password
�� #
=
��$ %
profiles
��& .
.
��. /
Players
��/ 6
.
��6 7
Password
��7 ?
;
��? @
profile
�� 
.
�� 
	IDProfile
�� %
=
��& '
profiles
��( 0
.
��0 1
	IDProfile
��1 :
;
��: ;
profile
�� 
.
�� 
Coins
�� !
=
��" #
(
��$ %
long
��% )
)
��) *
profiles
��* 2
.
��2 3
Coins
��3 8
;
��8 9
profile
�� 
.
�� 
LoginStatus
�� '
=
��( )
profiles
��* 2
.
��2 3
LoginStatus
��3 >
;
��> ?
profile
�� 
.
�� 
Player
�� "
=
��# $
player
��% +
;
��+ ,
}
�� 
else
�� 
{
�� 
profile
�� 
=
�� 
null
�� "
;
��" #
}
�� 
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
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
profile
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
ModifyImageName
�� #
(
��# $
string
��$ *
fileName
��+ 3
,
��3 4
string
��5 ;
newName
��< C
)
��C D
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
��u v
var
�� 
matchingFiles
�� !
=
��" #
	Directory
��$ -
.
��- .
GetFiles
��. 6
(
��6 7
serverFolderPath
��7 G
,
��G H
$"
��I K
{
��K L
fileName
��L T
}
��T U
$str
��U W
"
��W X
)
��X Y
.
��. /
ToList
��/ 5
(
��5 6
)
��6 7
;
��7 8
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
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
return
�� 
false
�� 
;
�� 
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
bool
��  
TheProfileIsLogged
�� &
(
��& '
long
��' +
	profileID
��, 5
)
��5 6
{
�� 	
Profiles
�� 
profiles
�� 
=
�� 
new
��  #
Profiles
��$ ,
(
��, -
)
��- .
;
��. /
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
profiles
�� 
=
�� $
databaseModelContainer
�� 1
.
��1 2
ProfilesSet
��2 =
.
��= >
Where
��> C
(
��C D
e
��D E
=>
��F H
e
��I J
.
��J K
	IDProfile
��K T
==
��U W
	profileID
��X a
)
��a b
.
��b c
FirstOrDefault
��c q
(
��q r
)
��r s
;
��s t
if
�� 
(
�� 
profiles
�� 
.
�� 
LoginStatus
�� (
==
��) +
Enum
��, 0
.
��0 1
GetName
��1 8
(
��8 9
typeof
��9 ?
(
��? @"
ProfileLoginStatuses
��@ T
)
��T U
,
��U V"
ProfileLoginStatuses
��W k
.
��k l
Logged
��l r
)
��r s
)
��s t
{
�� 
return
�� 
true
�� 
;
��  
}
�� 
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� #
SqlNullValueException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
UploadImage
�� 
(
��  
string
��  &
fileName
��' /
,
��/ 0
byte
��1 5
[
��5 6
]
��6 7
	imageData
��8 A
)
��A B
{
�� 	
try
�� 
{
�� 
string
�� 
serverFolderPath
�� '
=
��( )
$str
��* u
;
��u v
string
�� 
searchString
�� #
=
��$ %
$str
��& )
;
��) *
int
�� 
index
�� 
=
�� 
fileName
�� $
.
��$ %
IndexOf
��% ,
(
��, -
searchString
��- 9
)
��9 :
;
��: ;
string
�� .
 fileNameWithoutExtensionToDelete
�� 7
=
��8 9
$str
��: <
;
��< =
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� .
 fileNameWithoutExtensionToDelete
�� 4
=
��5 6
fileName
��7 ?
.
��? @
	Substring
��@ I
(
��I J
$num
��J K
,
��K L
index
��M R
)
��R S
;
��S T
}
�� 
DirectoryInfo
�� 
directoryInfo
�� +
=
��, -
new
��. 1
DirectoryInfo
��2 ?
(
��? @
serverFolderPath
��@ P
)
��P Q
;
��Q R
if
�� 
(
�� 
directoryInfo
�� !
.
��! "
Exists
��" (
)
��( )
{
�� 
FileInfo
�� 
[
�� 
]
�� 
files
�� $
=
��% &
directoryInfo
��' 4
.
��4 5
GetFiles
��5 =
(
��= >
)
��> ?
;
��? @
foreach
�� 
(
�� 
FileInfo
�� %
file
��& *
in
��+ -
files
��. 3
)
��3 4
{
�� 
string
�� &
fileNameWithoutExtension
�� 7
=
��8 9
Path
��: >
.
��> ?)
GetFileNameWithoutExtension
��? Z
(
��Z [
file
��[ _
.
��_ `
Name
��` d
)
��d e
;
��e f
if
�� 
(
�� 
string
�� "
.
��" #
Equals
��# )
(
��) *&
fileNameWithoutExtension
��* B
,
��B C.
 fileNameWithoutExtensionToDelete
��D d
,
��d e
StringComparison
��f v
.
��v w 
OrdinalIgnoreCase��w �
)��� �
)��� �
{
�� 
file
��  
.
��  !
Delete
��! '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 
}
�� 
string
�� 
filePath
�� 
=
��  !
Path
��" &
.
��& '
Combine
��' .
(
��. /
serverFolderPath
��/ ?
,
��? @
fileName
��A I
)
��I J
;
��J K
File
�� 
.
�� 
WriteAllBytes
�� "
(
��" #
filePath
��# +
,
��+ ,
	imageData
��- 6
)
��6 7
;
��7 8
}
�� 
catch
�� 
(
�� #
FileNotFoundException
�� (
ex
��) +
)
��+ ,
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
return
�� 
false
�� 
;
�� 
}
�� 
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
AddFriendship
�� !
(
��! "
Profiles
��" *
profiles
��+ 3
,
��3 4
Profiles
��5 =
	profiles1
��> G
)
��G H
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
string
�� 
sqlQuery
�� 
=
��  !
$str��" �
;��� �
var
�� 

parameter1
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 =
,
��= >
profiles
��? G
.
��G H
	IDProfile
��H Q
)
��Q R
;
��R S
var
�� 

parameter2
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 >
,
��> ?
	profiles1
��@ I
.
��I J
	IDProfile
��J S
)
��S T
;
��T U$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5

parameter1
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. 9
,
��9 :
	profiles1
��; D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P

parameter2
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. :
,
��: ;
profiles
��< D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5.
 ServiceProfileForCallbackMethods
�� 0.
 serviceProfileForCallbackMethods
��1 Q
=
��R S
new
��T W.
 ServiceProfileForCallbackMethods
��X x
(
��x y
)
��y z
;
��z {.
 serviceProfileForCallbackMethods
�� 0
.
��0 15
'UpdateFriendsListsToAllConnectedClients
��1 X
(
��X Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
void
�� 
CancelFriendship
�� $
(
��$ %
Profiles
��% -
profiles
��. 6
,
��6 7
Profiles
��8 @
	profiles1
��A J
)
��J K
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
string
�� 
sqlQuery
�� 
=
��  !
$str��" �
;��� �
var
�� 

parameter1
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 =
,
��= >
profiles
��? G
.
��G H
	IDProfile
��H Q
)
��Q R
;
��R S
var
�� 

parameter2
�� 
=
��  
new
��! $
SqlParameter
��% 1
(
��1 2
$str
��2 >
,
��> ?
	profiles1
��@ I
.
��I J
	IDProfile
��J S
)
��S T
;
��T U$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5

parameter1
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. 9
,
��9 :
	profiles1
��; D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P

parameter2
�� 
=
�� 
new
��  
SqlParameter
��! -
(
��- .
$str
��. :
,
��: ;
profiles
��< D
.
��D E
	IDProfile
��E N
)
��N O
;
��O P$
databaseModelContainer
�� &
.
��& '
Database
��' /
.
��/ 0
ExecuteSqlCommand
��0 A
(
��A B
sqlQuery
��B J
,
��J K

parameter1
��L V
,
��V W

parameter2
��X b
)
��b c
;
��c d$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5.
 ServiceProfileForCallbackMethods
�� 0.
 serviceProfileForCallbackMethods
��1 Q
=
��R S
new
��T W.
 ServiceProfileForCallbackMethods
��X x
(
��x y
)
��y z
;
��z {.
 serviceProfileForCallbackMethods
�� 0
.
��0 15
'UpdateFriendsListsToAllConnectedClients
��1 X
(
��X Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
public
�� 
void
�� 
DeleteProfile
�� !
(
��! "
long
��" &
playerID
��' /
)
��/ 0
{
�� 	
try
�� 
{
�� $
DatabaseModelContainer
�� &$
databaseModelContainer
��' =
=
��> ?
new
��@ C$
DatabaseModelContainer
��D Z
(
��Z [
)
��[ \
;
��\ ]
Profiles
�� 
playerToDelete
�� '
=
��( )$
databaseModelContainer
��* @
.
��@ A
ProfilesSet
��A L
.
��L M
Where
��M R
(
��R S
e
��S T
=>
��U W
e
��X Y
.
��Y Z
	IDProfile
��Z c
==
��d f
playerID
��g o
)
��o p
.
��p q
FirstOrDefault
��q 
(�� �
)��� �
;��� �$
databaseModelContainer
�� &
.
��& '
ProfilesSet
��' 2
.
��2 3
Remove
��3 9
(
��9 :
playerToDelete
��: H
)
��H I
;
��I J$
databaseModelContainer
�� &
.
��& '
SaveChanges
��' 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
catch
�� 
(
�� )
DbEntityValidationException
�� .
ex
��/ 1
)
��1 2
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� 
DbUpdateException
�� $
ex
��% '
)
��' (
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� /
!EntityCommandCompilationException
�� 4
ex
��5 7
)
��7 8
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
catch
�� 
(
�� -
EntityCommandExecutionException
�� 2
ex
��3 5
)
��5 6
{
�� 
string
�� 
logFilePath
�� "
=
��# $
Path
��% )
.
��) *
Combine
��* 1
(
��1 2
	Directory
��2 ;
.
��; <!
GetCurrentDirectory
��< O
(
��O P
)
��P Q
,
��Q R
$str
��S e
)
��e f
;
��f g
File
�� 
.
�� 
AppendAllText
�� "
(
��" #
logFilePath
��# .
,
��. /
$"
��0 2
$str
��2 =
{
��= >
ex
��> @
}
��@ A
$str
��A C
"
��C D
)
��D E
;
��E F
}
�� 
}
�� 	
}
�� 
public
�� 

partial
�� 
class
�� .
 ServiceProfileForCallbackMethods
�� 9
:
��: ;%
IProfileCallbackMethods
��< S
{
�� 
public
�� 
static
�� 

Dictionary
��  
<
��  !
string
��! '
,
��' (
IProfileCallback
��) 9
>
��9 :
connectedProfiles
��; L
=
��M N
new
��O R

Dictionary
��S ]
<
��] ^
string
��^ d
,
��d e
IProfileCallback
��f v
>
��v w
(
��w x
)
��x y
;
��y z
public
�� 
void
�� 
Connect
�� 
(
�� 
string
�� "
username
��# +
)
��+ ,
{
�� 	
IProfileCallback
�� 
callback
�� %
=
��& '
OperationContext
��( 8
.
��8 9
Current
��9 @
.
��@ A 
GetCallbackChannel
��A S
<
��S T
IProfileCallback
��T d
>
��d e
(
��e f
)
��f g
;
��g h
if
�� 
(
�� 
!
�� 
connectedProfiles
�� "
.
��" #
ContainsKey
��# .
(
��. /
username
��/ 7
)
��7 8
)
��8 9
{
�� 
connectedProfiles
�� !
.
��! "
Add
��" %
(
��% &
username
��& .
,
��. /
callback
��0 8
)
��8 9
;
��9 :5
'UpdateFriendsListsToAllConnectedClients
�� 7
(
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
public
�� 
void
�� 

Disconnect
�� 
(
�� 
string
�� %
username
��& .
)
��. /
{
�� 	
if
�� 
(
�� 
connectedProfiles
�� !
.
��! "
ContainsKey
��" -
(
��- .
username
��. 6
)
��6 7
)
��7 8
{
�� 
connectedProfiles
�� !
.
��! "
Remove
��" (
(
��( )
username
��) 1
)
��1 2
;
��2 3
new
�� +
ServiceChatForCallbackMethods
�� 1
(
��1 2
)
��2 3
.
��3 4
	LeaveChat
��4 =
(
��= >
username
��> F
)
��F G
;
��G H
new
�� 4
&ServiceFriendRequestForCallbackMethods
�� :
(
��: ;
)
��; <
.
��< =

Disconnect
��= G
(
��G H
username
��H P
)
��P Q
;
��Q R
new
�� ,
ServiceLobbyForCallbackMethods
�� 2
(
��2 3
)
��3 4
.
��4 5

Disconnect
��5 ?
(
��? @
username
��@ H
)
��H I
;
��I J
new
�� ;
-ServiceMultiplayerCrosswordForCallbackMethods
�� A
(
��A B
)
��B C
.
��C D

Disconnect
��D N
(
��N O
username
��O W
)
��W X
;
��X Y5
'UpdateFriendsListsToAllConnectedClients
�� 7
(
��7 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
public
�� 
void
�� $
InviteFriendToTheLobby
�� *
(
��* +
string
��+ 1
friendNickname
��2 @
)
��@ A
{
�� 	
if
�� 
(
�� 
connectedProfiles
�� !
.
��! "
ContainsKey
��" -
(
��- .
friendNickname
��. <
)
��< =
)
��= >
{
�� 
connectedProfiles
��  
[
��  !
friendNickname
��! /
]
��/ 0
.
��0 1&
OpenPaneForEnterTheLobby
��1 I
(
��I J
)
��J K
;
��K L
}
�� 
}
�� 	
public
�� 
void
�� 5
'UpdateFriendsListsToAllConnectedClients
�� ;
(
��; <
)
��< =
{
�� 	
foreach
�� 
(
�� 
var
�� 
friend
�� 
in
��  "
connectedProfiles
��# 4
)
��4 5
{
�� 
friend
�� 
.
�� 
Value
�� 
.
��  
UpdateFriendsLists
�� /
(
��/ 0
)
��0 1
;
��1 2
friend
�� 
.
�� 
Value
�� 
.
�� )
UpdateFriendsForInviteLists
�� 8
(
��8 9
)
��9 :
;
��: ;
}
�� 
}
�� 	
}
�� 
}�� 