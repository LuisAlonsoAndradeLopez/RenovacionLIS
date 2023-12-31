М)
ИC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\AuxiliaryClasses\AlertPopUpGenerator.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
AuxiliaryClasses  0
{ 
public 

class 
AlertPopUpGenerator $
{		 
private

 
CultureInfo

 
cultureInfo

 '
;

' (
private 
ResourceManager 
resourceManager  /
;/ 0
public 
AlertPopUpGenerator "
(" #
)# $
{ 	
cultureInfo 
= 
CultureInfo %
.% &
CurrentUICulture& 6
;6 7
resourceManager 
= 
new !
ResourceManager" 1
(1 2
$str2 ^
,^ _
typeof` f
(f g

MainWindowg q
)q r
.r s
Assemblys {
){ |
;| }
} 	
public 
void 
OpenErrorPopUp "
(" #
String# )
header* 0
,0 1
String2 8
message9 @
)@ A
{ 	

MessageBox 
. 
Show 
( 
message 
, 
header 
, 
MessageBoxButton  
.  !
OK! #
,# $
MessageBoxImage 
.  
Error  %
) 
; 
} 	
public 
bool .
"OpenInternationalizedDesicionPopUp 6
(6 7
String7 =
header> D
,D E
StringF L
messageM T
)T U
{ 	
MessageBoxResult   
result   #
=  $ %

MessageBox  & 0
.  0 1
Show  1 5
(  5 6
resourceManager!! 
.!!  
	GetString!!  )
(!!) *
message!!* 1
,!!1 2
cultureInfo!!3 >
)!!> ?
,!!? @
resourceManager"" 
.""  
	GetString""  )
("") *
header""* 0
,""0 1
cultureInfo""2 =
)""= >
,""> ?
MessageBoxButton##  
.##  !
YesNo##! &
,##& '
MessageBoxImage$$ 
.$$  
Question$$  (
)%% 
;%% 
if'' 
('' 
result'' 
=='' 
MessageBoxResult'' *
.''* +
Yes''+ .
)''. /
{(( 
return)) 
true)) 
;)) 
}** 
return,, 
false,, 
;,, 
}-- 	
public// 
void// +
OpenInternationalizedErrorPopUp// 3
(//3 4
String//4 :
header//; A
,//A B
String//C I
message//J Q
)//Q R
{00 	

MessageBox11 
.11 
Show11 
(11 
resourceManager22 
.22  
	GetString22  )
(22) *
message22* 1
,221 2
cultureInfo223 >
)22> ?
,22? @
resourceManager33 
.33  
	GetString33  )
(33) *
header33* 0
,330 1
cultureInfo332 =
)33= >
,33> ?
MessageBoxButton44  
.44  !
OK44! #
,44# $
MessageBoxImage55 
.55  
Error55  %
)66 
;66 
}77 	
public99 
void99 -
!OpenInternationalizedSuccessPopUp99 5
(995 6
String996 <
header99= C
,99C D
String99E K
message99L S
)99S T
{:: 	

MessageBox;; 
.;; 
Show;; 
(;; 
resourceManager<< 
.<<  
	GetString<<  )
(<<) *
message<<* 1
,<<1 2
cultureInfo<<3 >
)<<> ?
,<<? @
resourceManager== 
.==  
	GetString==  )
(==) *
header==* 0
,==0 1
cultureInfo==2 =
)=== >
,==> ?
MessageBoxButton>>  
.>>  !
OK>>! #
,>># $
MessageBoxImage?? 
.??  
None??  $
)@@ 
;@@ 
}AA 	
publicCC 
voidCC -
!OpenInternationalizedWarningPopUpCC 5
(CC5 6
StringCC6 <
headerCC= C
,CCC D
StringCCE K
messageCCL S
)CCS T
{DD 	

MessageBoxEE 
.EE 
ShowEE 
(EE 
resourceManagerFF 
.FF  
	GetStringFF  )
(FF) *
messageFF* 1
,FF1 2
cultureInfoFF3 >
)FF> ?
,FF? @
resourceManagerGG 
.GG  
	GetStringGG  )
(GG) *
headerGG* 0
,GG0 1
cultureInfoGG2 =
)GG= >
,GG> ?
MessageBoxButtonHH  
.HH  !
OKHH! #
,HH# $
MessageBoxImageII 
.II  
WarningII  '
)JJ 
;JJ 
}KK 	
}LL 
}MM ╖
АC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\AuxiliaryClasses\ImageLoader.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
AuxiliaryClasses  0
{ 
public 

class 
ImageLoader 
{ 
public 
BitmapImage $
GetImageByPlayerNickname 3
(3 4
string4 :
profileNickname; J
)J K
{ 	
ProfileClient 
profileClient '
=( )
new* -
ProfileClient. ;
(; <
)< =
;= >
string 
fileName 
= 
profileNickname -
+. /
$str0 6
;6 7
byte 
[ 
] 
	imageData 
= 
profileClient ,
., -
GetImage- 5
(5 6
fileName6 >
)> ?
;? @
if 
( 
	imageData 
== 
null !
)! "
{ 
fileName 
= 
profileNickname *
++ ,
$str- 3
;3 4
	imageData 
= 
profileClient )
.) *
GetImage* 2
(2 3
fileName3 ;
); <
;< =
} 
if 
( 
	imageData 
== 
null !
)! "
{ 
fileName 
= 
profileNickname *
++ ,
$str- 4
;4 5
	imageData 
= 
profileClient )
.) *
GetImage* 2
(2 3
fileName3 ;
); <
;< =
} 
profileClient!! 
.!! 
Close!! 
(!!  
)!!  !
;!!! "
BitmapImage## 
imageSource## #
=##$ %
new##& )
BitmapImage##* 5
(##5 6
)##6 7
;##7 8
if%% 
(%% 
	imageData%% 
!=%% 
null%% !
)%%! "
{&& 
imageSource'' 
.'' 
	BeginInit'' %
(''% &
)''& '
;''' (
imageSource(( 
.(( 
StreamSource(( (
=(() *
new((+ .
MemoryStream((/ ;
(((; <
	imageData((< E
)((E F
;((F G
imageSource)) 
.)) 
EndInit)) #
())# $
)))$ %
;))% &
}** 
return,, 
imageSource,, 
;,, 
}-- 	
}.. 
}// ╩
uC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\Properties\Class1.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  

Properties  *
{ 
public		 

class		 
Class1		 
{

 
} 
} ▐\
C:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\BannedPlayersView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
BannedPlayersView *
:+ ,
Page- 1
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 

ChatClient #

chatClient$ .
;. /
private 
readonly 
Profile  
loggedProfile! .
;. /
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
private 
readonly !
MultiplayerGameClient .!
multiplayerGameClient/ D
;D E
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
public 
BannedPlayersView  
(  !

MainWindow! +

mainWindow, 6
,6 7
Profile8 ?
loggedProfile@ M
,M N+
ProfileForCallbackMethodsClientO n,
profileForCallbackMethodsClient	o О
,
О П

ChatClient
Р Ъ

chatClient
Ы е
,
е ж#
MultiplayerGameClient
з ╝#
multiplayerGameClient
╜ ╥
)
╥ ╙
{ 	
InitializeComponent 
(  
)  !
;! "
this 
. 

mainWindow 
= 

mainWindow (
;( )
this   
.   
loggedProfile   
=    
loggedProfile  ! .
;  . /
this!! 
.!! +
profileForCallbackMethodsClient!! 0
=!!1 2+
profileForCallbackMethodsClient!!3 R
;!!R S
cultureInfo## 
=## 
CultureInfo## %
.##% &
CurrentUICulture##& 6
;##6 7
resourceManager$$ 
=$$ 
new$$ !
ResourceManager$$" 1
($$1 2
$str$$2 ^
,$$^ _
typeof$$` f
($$f g

MainWindow$$g q
)$$q r
.$$r s
Assembly$$s {
)$${ |
;$$| }
PageStateManager%% 
.%% 
CurrentPage%% (
=%%) *
this%%+ /
;%%/ 0
this'' 
.'' 

chatClient'' 
='' 

chatClient'' (
;''( )
this(( 
.(( !
multiplayerGameClient(( &
=((' (!
multiplayerGameClient(() >
;((> ?
ShowBannedPlayers)) 
()) 
))) 
;))  
}** 	
private,, 
void,, 
ExitButtonOnClick,, &
(,,& '
object,,' -
sender,,. 4
,,,4 5
RoutedEventArgs,,6 E
e,,F G
),,G H
{-- 	
NavigationService.. 
navigationService.. /
=..0 1
NavigationService..2 C
...C D 
GetNavigationService..D X
(..X Y
this..Y ]
)..] ^
;..^ _
navigationService// 
.// 
Navigate// &
(//& '
new//' *
	LobbyView//+ 4
(//4 5

mainWindow//5 ?
,//? @
loggedProfile//A N
,//N O+
profileForCallbackMethodsClient//P o
,//o p

chatClient//q {
,//{ |"
multiplayerGameClient	//} Т
)
//Т У
)
//У Ф
;
//Ф Х
}00 	
private22 
void22 $
UnbanPlayerButtonOnClick22 -
(22- .
object22. 4
sender225 ;
,22; <
RoutedEventArgs22= L
e22M N
)22N O
{33 	
if44 
(44 
sender44 
is44 
Button44 
button44  &
)44& '
{55 
if66 
(66 
new66 
AlertPopUpGenerator66 +
(66+ ,
)66, -
.66- ..
"OpenInternationalizedDesicionPopUp66. P
(66P Q
$str66Q `
,66` a
$str	66b Е
)
66Е Ж
)
66Ж З
{77 

StackPanel88 
buttonParent88 +
=88, -
VisualTreeHelper88. >
.88> ?
	GetParent88? H
(88H I
button88I O
)88O P
as88Q S

StackPanel88T ^
;88^ _
Label99 
playerNickname99 (
=99) *
(99+ ,
Label99, 1
)991 2
VisualTreeHelper992 B
.99B C
GetChild99C K
(99K L
buttonParent99L X
,99X Y
$num99Z [
)99[ \
;99\ ]!
multiplayerGameClient;; )
.;;) *
UnbanPlayer;;* 5
(;;5 6
playerNickname;;6 D
.;;D E
Content;;E L
.;;L M
ToString;;M U
(;;U V
);;V W
);;W X
;;;X Y
new== 
AlertPopUpGenerator== +
(==+ ,
)==, -
.==- .-
!OpenInternationalizedSuccessPopUp==. O
(==O P
$str==P Y
,==Y Z
$str==[ m
)==m n
;==n o
}>> 
}?? 
}@@ 	
publicBB 
voidBB 
ShowBannedPlayersBB %
(BB% &
)BB& '
{CC 	#
BannedPlayersStackPanelDD #
.DD# $
ChildrenDD$ ,
.DD, -
ClearDD- 2
(DD2 3
)DD3 4
;DD4 5
foreachEE 
(EE 
stringEE 
profileEE #
inEE$ &!
multiplayerGameClientEE' <
.EE< =
GetBannedProfilesEE= N
(EEN O
)EEO P
)EEP Q
{FF 
BorderGG 
bannedPlayerBorderGG )
=GG* +
newGG, /
BorderGG0 6
{HH 
CornerRadiusII  
=II! "
newII# &
CornerRadiusII' 3
(II3 4
$numII4 6
)II6 7
,II7 8
HeightJJ 
=JJ 
$numJJ 
,JJ  
MarginKK 
=KK 
newKK  
	ThicknessKK! *
(KK* +
$numKK+ -
,KK- .
$numKK/ 1
,KK1 2
$numKK3 5
,KK5 6
$numKK7 8
)KK8 9
,KK9 :

BackgroundLL 
=LL  
newLL! $
SolidColorBrushLL% 4
(LL4 5
ColorsLL5 ;
.LL; <
BlackLL< A
)LLA B
}MM 
;MM 
bannedPlayerBorderNN "
.NN" #

BackgroundNN# -
.NN- .
OpacityNN. 5
=NN6 7
$numNN8 ;
;NN; <

StackPanelPP "
bannedPlayerStackPanelPP 1
=PP2 3
newPP4 7

StackPanelPP8 B
{QQ 
OrientationRR 
=RR  !
OrientationRR" -
.RR- .

HorizontalRR. 8
}SS 
;SS 
ImageUU 
bannedPlayerImageUU '
=UU( )
newUU* -
ImageUU. 3
{VV 
SourceWW 
=WW 
newWW  
ImageLoaderWW! ,
(WW, -
)WW- .
.WW. /$
GetImageByPlayerNicknameWW/ G
(WWG H
profileWWH O
)WWO P
,WWP Q
MarginXX 
=XX 
newXX  
	ThicknessXX! *
(XX* +
$numXX+ -
,XX- .
$numXX/ 0
,XX0 1
$numXX2 3
,XX3 4
$numXX5 6
)XX6 7
,XX7 8
HeightYY 
=YY 
$numYY 
,YY  
WidthZZ 
=ZZ 
$numZZ 
}[[ 
;[[ "
bannedPlayerStackPanel\\ &
.\\& '
Children\\' /
.\\/ 0
Add\\0 3
(\\3 4
bannedPlayerImage\\4 E
)\\E F
;\\F G
Label^^  
bannedPlayerNickname^^ *
=^^+ ,
new^^- 0
Label^^1 6
{__ 
Content`` 
=`` 
profile`` %
,``% &

Foregroundaa 
=aa  
newaa! $
SolidColorBrushaa% 4
(aa4 5
Colorsaa5 ;
.aa; <
Whiteaa< A
)aaA B
,aaB C
FontSizebb 
=bb 
$numbb !
,bb! "
Margincc 
=cc 
newcc  
	Thicknesscc! *
(cc* +
$numcc+ -
,cc- .
$numcc/ 1
,cc1 2
$numcc3 4
,cc4 5
$numcc6 7
)cc7 8
,cc8 9
Widthdd 
=dd 
$numdd 
}ee 
;ee "
bannedPlayerStackPanelff &
.ff& '
Childrenff' /
.ff/ 0
Addff0 3
(ff3 4 
bannedPlayerNicknameff4 H
)ffH I
;ffI J
ifhh 
(hh !
multiplayerGameClienthh )
.hh) *
IsAdminhh* 1
(hh1 2
loggedProfilehh2 ?
.hh? @
Playerhh@ F
.hhF G
NickNamehhG O
)hhO P
)hhP Q
{ii 
Buttonjj #
unbanBannedPlayerButtonjj 2
=jj3 4
newjj5 8
Buttonjj9 ?
{kk 
Contentll 
=ll  !
resourceManagerll" 1
.ll1 2
	GetStringll2 ;
(ll; <
$strll< C
,llC D
cultureInfollE P
)llP Q
,llQ R
Stylemm 
=mm 
(mm  !
Stylemm! &
)mm& '
FindResourcemm' 3
(mm3 4
$strmm4 A
)mmA B
,mmB C
Heightnn 
=nn  
$numnn! #
,nn# $
Widthoo 
=oo 
$numoo  "
}pp 
;pp #
unbanBannedPlayerButtonqq +
.qq+ ,
Clickqq, 1
+=qq2 4$
UnbanPlayerButtonOnClickqq5 M
;qqM N"
bannedPlayerStackPanelrr *
.rr* +
Childrenrr+ 3
.rr3 4
Addrr4 7
(rr7 8#
unbanBannedPlayerButtonrr8 O
)rrO P
;rrP Q
}ss 
bannedPlayerBorderuu "
.uu" #
Childuu# (
=uu) *"
bannedPlayerStackPaneluu+ A
;uuA B#
BannedPlayersStackPanelvv '
.vv' (
Childrenvv( 0
.vv0 1
Addvv1 4
(vv4 5
bannedPlayerBordervv5 G
)vvG H
;vvH I
}ww 
}xx 	
public{{ 
void{{ 7
+ExitFromThisPageForBeingExpeltFromLobbyView{{ ?
({{? @
){{@ A
{|| 	

chatClient}} 
.}} 
	LeaveChat}}  
(}}  !
loggedProfile}}! .
.}}. /
Player}}/ 5
.}}5 6
NickName}}6 >
)}}> ?
;}}? @
NavigationService~~ 
navigationService~~ /
=~~0 1
NavigationService~~2 C
.~~C D 
GetNavigationService~~D X
(~~X Y
this~~Y ]
)~~] ^
;~~^ _
navigationService 
. 
Navigate &
(& '
new' *
MenuView+ 3
(3 4

mainWindow4 >
,> ?
loggedProfile@ M
,M N+
profileForCallbackMethodsClientO n
)n o
)o p
;p q
new
АА !
AlertPopUpGenerator
АА #
(
АА# $
)
АА$ %
.
АА% &/
!OpenInternationalizedWarningPopUp
АА& G
(
ААG H
$str
ААH P
,
ААP Q
$str
ААR m
)
ААm n
;
ААn o
}
ББ 	
}
ВВ 
}ГГ ╔Щ
vC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\ChatView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
ChatView !
:" #
Page$ (
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 

ChatClient #

chatClient$ .
;. /
private 
readonly !
MultiplayerGameClient .!
multiplayerGameClient/ D
;D E
private 
readonly 
Profile  
loggedProfile! .
=/ 0
new1 4
Profile5 <
(< =
)= >
;> ?
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
public 
ChatView 
( 

MainWindow "

mainWindow# -
,- .
Profile/ 6
loggedProfile7 D
,D E+
ProfileForCallbackMethodsClientF e,
profileForCallbackMethodsClient	f Е
,
Е Ж

ChatClient
З С

chatClient
Т Ь
,
Ь Э#
MultiplayerGameClient
Ю │#
multiplayerGameClient
┤ ╔
)
╔ ╩
{ 	
InitializeComponent   
(    
)    !
;  ! "
this!! 
.!! 

mainWindow!! 
=!! 

mainWindow!! (
;!!( )
this"" 
."" 
loggedProfile"" 
=""  
loggedProfile""! .
;"". /
this## 
.## +
profileForCallbackMethodsClient## 0
=##1 2+
profileForCallbackMethodsClient##3 R
;##R S
cultureInfo%% 
=%% 
CultureInfo%% %
.%%% &
CurrentUICulture%%& 6
;%%6 7
resourceManager&& 
=&& 
new&& !
ResourceManager&&" 1
(&&1 2
$str&&2 ^
,&&^ _
typeof&&` f
(&&f g

MainWindow&&g q
)&&q r
.&&r s
Assembly&&s {
)&&{ |
;&&| }
PageStateManager(( 
.(( 
CurrentPage(( (
=(() *
this((+ /
;((/ 0
this)) 
.)) 

chatClient)) 
=)) 

chatClient)) (
;))( )
this** 
.** !
multiplayerGameClient** &
=**' (!
multiplayerGameClient**) >
;**> ?
ShowUpdatedChat,, 
(,, 
),, 
;,, 
}-- 	
private.. 
void.. 
ExitButtonOnClick.. &
(..& '
object..' -
sender... 4
,..4 5
RoutedEventArgs..6 E
e..F G
)..G H
{// 	
NavigationService00 
navigationService00 /
=000 1
NavigationService002 C
.00C D 
GetNavigationService00D X
(00X Y
this00Y ]
)00] ^
;00^ _
navigationService11 
.11 
Navigate11 &
(11& '
new11' *
	LobbyView11+ 4
(114 5

mainWindow115 ?
,11? @
loggedProfile11A N
,11N O+
profileForCallbackMethodsClient11P o
,11o p

chatClient11q {
,11{ |"
multiplayerGameClient	11} Т
)
11Т У
)
11У Ф
;
11Ф Х
}22 	
private44 
void44 $
SendMessageButtonOnClick44 -
(44- .
object44. 4
sender445 ;
,44; <
RoutedEventArgs44= L
e44M N
)44N O
{55 	
if66 
(66 
!66 
String66 
.66 
IsNullOrWhiteSpace66 *
(66* +
MessageTextBox66+ 9
.669 :
Text66: >
)66> ?
)66? @
{77 
if88 
(88 
MessageTextBox88 "
.88" #
Text88# '
.88' (
Length88( .
<=88/ 1
$num882 5
)885 6
{99 

chatClient:: 
.:: 
SendMessage:: *
(::* +
loggedProfile::+ 8
.::8 9
Player::9 ?
.::? @
NickName::@ H
,::H I
MessageTextBox::J X
.::X Y
Text::Y ]
)::] ^
;::^ _
MessageTextBox;; "
.;;" #
Clear;;# (
(;;( )
);;) *
;;;* +
}<< 
else== 
{>> 
new?? 
AlertPopUpGenerator?? +
(??+ ,
)??, -
.??- .+
OpenInternationalizedErrorPopUp??. M
(??M N
$str??N Z
,??Z [
$str	??\ С
)
??С Т
;
??Т У
}@@ 
}AA 
}BB 	
publicDD 
voidDD 
ShowUpdatedChatDD #
(DD# $
)DD$ %
{EE 	
MessagesStackPanelFF 
.FF 
ChildrenFF '
.FF' (
ClearFF( -
(FF- .
)FF. /
;FF/ 0
foreachHH 
(HH 
varHH 
profileAndMessageHH *
inHH+ -

chatClientHH. 8
.HH8 90
$GetConnectedProfilesAndTheirMessagesHH9 ]
(HH] ^
)HH^ _
)HH_ `
{II 
ifJJ 
(JJ 
profileAndMessageJJ $
.JJ$ %
KeyJJ% (
==JJ) +
$strJJ, 9
)JJ9 :
{KK 
stringLL 
messageLL "
=LL# $
profileAndMessageLL% 6
.LL6 7
ValueLL7 <
;LL< =
ifNN 
(NN 
messageNN 
.NN  
ContainsNN  (
(NN( )
$strNN) A
)NNA B
)NNB C
{OO 
messagePP 
=PP  !
$"PP" $
{PP$ %
profileAndMessagePP% 6
.PP6 7
ValuePP7 <
.PP< =
ReplacePP= D
(PPD E
$strPPE ]
,PP] ^
$strPP_ a
)PPa b
}PPb c
"PPc d
+PPe f
resourceManagerPPg v
.PPv w
	GetString	PPw А
(
PPА Б
$str
PPБ Щ
,
PPЩ Ъ
cultureInfo
PPЫ ж
)
PPж з
;
PPз и
}QQ 
ifSS 
(SS 
messageSS 
.SS  
ContainsSS  (
(SS( )
$strSS) 8
)SS8 9
)SS9 :
{TT 
messageUU 
=UU  !
$"UU" $
{UU$ %
profileAndMessageUU% 6
.UU6 7
ValueUU7 <
.UU< =
ReplaceUU= D
(UUD E
$strUUE T
,UUT U
$strUUV X
)UUX Y
}UUY Z
"UUZ [
+UU\ ]
resourceManagerUU^ m
.UUm n
	GetStringUUn w
(UUw x
$str	UUx З
,
UUЗ И
cultureInfo
UUЙ Ф
)
UUФ Х
;
UUХ Ц
}VV 
BorderYY $
serviceChatMessageBorderYY 3
=YY4 5
newYY6 9
BorderYY: @
{ZZ 
HorizontalAlignment[[ +
=[[, -
HorizontalAlignment[[. A
.[[A B
Center[[B H
,[[H I
Height\\ 
=\\  
$num\\! #
,\\# $
MaxWidth]]  
=]]! "
$num]]# '
,]]' (
Margin^^ 
=^^  
new^^! $
	Thickness^^% .
(^^. /
$num^^/ 0
,^^0 1
$num^^2 3
,^^3 4
$num^^5 6
,^^6 7
$num^^8 9
)^^9 :
,^^: ;
CornerRadius__ $
=__% &
new__' *
CornerRadius__+ 7
(__7 8
$num__8 :
)__: ;
,__; <

Background`` "
=``# $
new``% (
SolidColorBrush``) 8
(``8 9
(``9 :
Color``: ?
)``? @
ColorConverter``@ N
.``N O
ConvertFromString``O `
(``` a
$str``a l
)``l m
)``m n
,``n o
Opacityaa 
=aa  !
$numaa" %
}bb 
;bb 
Labeldd #
serviceChatMessageLabeldd 1
=dd2 3
newdd4 7
Labeldd8 =
{ee 

Foregroundff "
=ff# $
newff% (
SolidColorBrushff) 8
(ff8 9
Colorsff9 ?
.ff? @
Whiteff@ E
)ffE F
,ffF G
HorizontalAlignmentgg +
=gg, -
HorizontalAlignmentgg. A
.ggA B
LeftggB F
,ggF G
FontSizehh  
=hh! "
$numhh# %
,hh% &
Marginii 
=ii  
newii! $
	Thicknessii% .
(ii. /
$numii/ 1
,ii1 2
$numii3 5
,ii5 6
$numii7 9
,ii9 :
$numii; =
)ii= >
,ii> ?
Contentjj 
=jj  !
messagejj" )
}kk 
;kk $
serviceChatMessageBordermm ,
.mm, -
Childmm- 2
=mm3 4#
serviceChatMessageLabelmm5 L
;mmL M
MessagesStackPanelnn &
.nn& '
Childrennn' /
.nn/ 0
Addnn0 3
(nn3 4$
serviceChatMessageBordernn4 L
)nnL M
;nnM N
continuepp 
;pp 
}qq 
ifss 
(ss 
profileAndMessagess %
.ss% &
Keyss& )
!=ss* ,
loggedProfiless- :
.ss: ;
Playerss; A
.ssA B
NickNamessB J
&&ssK M
profileAndMessagessN _
.ss_ `
Keyss` c
!=ssd f
$strssg t
)sst u
{tt 
Borderuu 
friendMessageBorderuu .
=uu/ 0
newuu1 4
Borderuu5 ;
{vv 
HorizontalAlignmentww +
=ww, -
HorizontalAlignmentww. A
.wwA B
LeftwwB F
,wwF G
Heightxx 
=xx  
$numxx! #
,xx# $
MaxWidthyy  
=yy! "
$numyy# '
,yy' (
Marginzz 
=zz  
newzz! $
	Thicknesszz% .
(zz. /
$numzz/ 1
,zz1 2
$numzz3 4
,zz4 5
$numzz6 7
,zz7 8
$numzz9 :
)zz: ;
,zz; <
CornerRadius{{ $
={{% &
new{{' *
CornerRadius{{+ 7
({{7 8
$num{{8 :
){{: ;
,{{; <

Background|| "
=||# $
new||% (
SolidColorBrush||) 8
(||8 9
Colors||9 ?
.||? @
Black||@ E
)||E F
,||F G
Opacity}} 
=}}  !
$num}}" %
}~~ 
;~~ 

StackPanel
АА +
friendBorderContentStackPanel
АА <
=
АА= >
new
АА? B

StackPanel
ААC M
{
ББ 
Orientation
ВВ #
=
ВВ$ %
Orientation
ВВ& 1
.
ВВ1 2

Horizontal
ВВ2 <
}
ГГ 
;
ГГ 
Image
ЕЕ  
friendProfileImage
ЕЕ ,
=
ЕЕ- .
new
ЕЕ/ 2
Image
ЕЕ3 8
{
ЖЖ 
Source
ЗЗ 
=
ЗЗ  
new
ЗЗ! $
ImageLoader
ЗЗ% 0
(
ЗЗ0 1
)
ЗЗ1 2
.
ЗЗ2 3&
GetImageByPlayerNickname
ЗЗ3 K
(
ЗЗK L
profileAndMessage
ЗЗL ]
.
ЗЗ] ^
Key
ЗЗ^ a
)
ЗЗa b
,
ЗЗb c
Width
ИИ 
=
ИИ 
$num
ИИ  "
,
ИИ" #
Margin
ЙЙ 
=
ЙЙ  
new
ЙЙ! $
	Thickness
ЙЙ% .
(
ЙЙ. /
$num
ЙЙ/ 1
,
ЙЙ1 2
$num
ЙЙ3 5
,
ЙЙ5 6
$num
ЙЙ7 8
,
ЙЙ8 9
$num
ЙЙ: <
)
ЙЙ< =
}
КК 
;
КК 

StackPanel
ММ 0
"friendNicknameAndMessageStackPanel
ММ A
=
ММB C
new
ММD G

StackPanel
ММH R
(
ММR S
)
ММS T
;
ММT U
Label
ОО !
friendNicknameLabel
ОО -
=
ОО. /
new
ОО0 3
Label
ОО4 9
{
ПП 

Foreground
РР "
=
РР# $
new
РР% (
SolidColorBrush
РР) 8
(
РР8 9
Colors
РР9 ?
.
РР? @
White
РР@ E
)
РРE F
,
РРF G!
HorizontalAlignment
СС +
=
СС, -!
HorizontalAlignment
СС. A
.
ССA B
Left
ССB F
,
ССF G
FontSize
ТТ  
=
ТТ! "
$num
ТТ# %
,
ТТ% &
Margin
УУ 
=
УУ  
new
УУ! $
	Thickness
УУ% .
(
УУ. /
$num
УУ/ 0
,
УУ0 1
$num
УУ2 3
,
УУ3 4
$num
УУ5 7
,
УУ7 8
$num
УУ9 :
)
УУ: ;
,
УУ; <
Content
ФФ 
=
ФФ  !
profileAndMessage
ФФ" 3
.
ФФ3 4
Key
ФФ4 7
}
ХХ 
;
ХХ 
Label
ЧЧ  
friendMessageLabel
ЧЧ ,
=
ЧЧ- .
new
ЧЧ/ 2
Label
ЧЧ3 8
{
ШШ 

Foreground
ЩЩ "
=
ЩЩ# $
new
ЩЩ% (
SolidColorBrush
ЩЩ) 8
(
ЩЩ8 9
Colors
ЩЩ9 ?
.
ЩЩ? @
White
ЩЩ@ E
)
ЩЩE F
,
ЩЩF G!
HorizontalAlignment
ЪЪ +
=
ЪЪ, -!
HorizontalAlignment
ЪЪ. A
.
ЪЪA B
Left
ЪЪB F
,
ЪЪF G
FontSize
ЫЫ  
=
ЫЫ! "
$num
ЫЫ# %
,
ЫЫ% &
Margin
ЬЬ 
=
ЬЬ  
new
ЬЬ! $
	Thickness
ЬЬ% .
(
ЬЬ. /
$num
ЬЬ/ 0
,
ЬЬ0 1
$num
ЬЬ2 3
,
ЬЬ3 4
$num
ЬЬ5 7
,
ЬЬ7 8
$num
ЬЬ9 :
)
ЬЬ: ;
,
ЬЬ; <
Content
ЭЭ 
=
ЭЭ  !
profileAndMessage
ЭЭ" 3
.
ЭЭ3 4
Value
ЭЭ4 9
}
ЮЮ 
;
ЮЮ 0
"friendNicknameAndMessageStackPanel
аа 6
.
аа6 7
Children
аа7 ?
.
аа? @
Add
аа@ C
(
ааC D!
friendNicknameLabel
ааD W
)
ааW X
;
ааX Y0
"friendNicknameAndMessageStackPanel
бб 6
.
бб6 7
Children
бб7 ?
.
бб? @
Add
бб@ C
(
ббC D 
friendMessageLabel
ббD V
)
ббV W
;
ббW X+
friendBorderContentStackPanel
гг 1
.
гг1 2
Children
гг2 :
.
гг: ;
Add
гг; >
(
гг> ? 
friendProfileImage
гг? Q
)
ггQ R
;
ггR S+
friendBorderContentStackPanel
дд 1
.
дд1 2
Children
дд2 :
.
дд: ;
Add
дд; >
(
дд> ?0
"friendNicknameAndMessageStackPanel
дд? a
)
ддa b
;
ддb c!
friendMessageBorder
жж '
.
жж' (
Child
жж( -
=
жж. /+
friendBorderContentStackPanel
жж0 M
;
жжM N 
MessagesStackPanel
ии &
.
ии& '
Children
ии' /
.
ии/ 0
Add
ии0 3
(
ии3 4!
friendMessageBorder
ии4 G
)
ииG H
;
ииH I
continue
кк 
;
кк 
}
лл 
if
нн 
(
нн 
profileAndMessage
нн %
.
нн% &
Key
нн& )
==
нн* ,
loggedProfile
нн- :
.
нн: ;
Player
нн; A
.
ннA B
NickName
ннB J
)
ннJ K
{
оо 
Border
пп '
loggedPlayerMessageBorder
пп 4
=
пп5 6
new
пп7 :
Border
пп; A
{
░░ !
HorizontalAlignment
▒▒ +
=
▒▒, -!
HorizontalAlignment
▒▒. A
.
▒▒A B
Right
▒▒B G
,
▒▒G H
Height
▓▓ 
=
▓▓  
$num
▓▓! #
,
▓▓# $
MaxWidth
││  
=
││! "
$num
││# '
,
││' (
Margin
┤┤ 
=
┤┤  
new
┤┤! $
	Thickness
┤┤% .
(
┤┤. /
$num
┤┤/ 0
,
┤┤0 1
$num
┤┤2 3
,
┤┤3 4
$num
┤┤5 7
,
┤┤7 8
$num
┤┤9 :
)
┤┤: ;
,
┤┤; <
CornerRadius
╡╡ $
=
╡╡% &
new
╡╡' *
CornerRadius
╡╡+ 7
(
╡╡7 8
$num
╡╡8 :
)
╡╡: ;
,
╡╡; <

Background
╢╢ "
=
╢╢# $
new
╢╢% (
SolidColorBrush
╢╢) 8
(
╢╢8 9
Colors
╢╢9 ?
.
╢╢? @
Black
╢╢@ E
)
╢╢E F
,
╢╢F G
Opacity
╖╖ 
=
╖╖  !
$num
╖╖" %
}
╕╕ 
;
╕╕ 
Label
║║ &
loggedPlayerMessageLabel
║║ 2
=
║║3 4
new
║║5 8
Label
║║9 >
{
╗╗ 

Foreground
╝╝ "
=
╝╝# $
new
╝╝% (
SolidColorBrush
╝╝) 8
(
╝╝8 9
Colors
╝╝9 ?
.
╝╝? @
White
╝╝@ E
)
╝╝E F
,
╝╝F G!
HorizontalAlignment
╜╜ +
=
╜╜, -!
HorizontalAlignment
╜╜. A
.
╜╜A B
Left
╜╜B F
,
╜╜F G
FontSize
╛╛  
=
╛╛! "
$num
╛╛# %
,
╛╛% &
Margin
┐┐ 
=
┐┐  
new
┐┐! $
	Thickness
┐┐% .
(
┐┐. /
$num
┐┐/ 1
,
┐┐1 2
$num
┐┐3 5
,
┐┐5 6
$num
┐┐7 9
,
┐┐9 :
$num
┐┐; =
)
┐┐= >
,
┐┐> ?
Content
└└ 
=
└└  !
profileAndMessage
└└" 3
.
└└3 4
Value
└└4 9
}
┴┴ 
;
┴┴ '
loggedPlayerMessageBorder
├├ -
.
├├- .
Child
├├. 3
=
├├4 5&
loggedPlayerMessageLabel
├├6 N
;
├├N O 
MessagesStackPanel
── &
.
──& '
Children
──' /
.
──/ 0
Add
──0 3
(
──3 4'
loggedPlayerMessageBorder
──4 M
)
──M N
;
──N O
}
┼┼ 
}
╟╟ 
}
╚╚ 	
public
╦╦ 
void
╦╦ 9
+ExitFromThisPageForBeingExpeltFromLobbyView
╦╦ ?
(
╦╦? @
)
╦╦@ A
{
╠╠ 	

chatClient
══ 
.
══ 
	LeaveChat
══  
(
══  !
loggedProfile
══! .
.
══. /
Player
══/ 5
.
══5 6
NickName
══6 >
)
══> ?
;
══? @
NavigationService
╬╬ 
navigationService
╬╬ /
=
╬╬0 1
NavigationService
╬╬2 C
.
╬╬C D"
GetNavigationService
╬╬D X
(
╬╬X Y
this
╬╬Y ]
)
╬╬] ^
;
╬╬^ _
navigationService
╧╧ 
.
╧╧ 
Navigate
╧╧ &
(
╧╧& '
new
╧╧' *
MenuView
╧╧+ 3
(
╧╧3 4

mainWindow
╧╧4 >
,
╧╧> ?
loggedProfile
╧╧@ M
,
╧╧M N-
profileForCallbackMethodsClient
╧╧O n
)
╧╧n o
)
╧╧o p
;
╧╧p q
new
╨╨ !
AlertPopUpGenerator
╨╨ #
(
╨╨# $
)
╨╨$ %
.
╨╨% &/
!OpenInternationalizedWarningPopUp
╨╨& G
(
╨╨G H
$str
╨╨H P
,
╨╨P Q
$str
╨╨R m
)
╨╨m n
;
╨╨n o
}
╤╤ 	
}
╥╥ 
}╙╙ Р
C:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\ConfigurationView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
ConfigurationView *
:+ ,
Page- 1
{ 
public 
ConfigurationView  
(  !
)! "
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
ApplyChangesButton '
(' (
object( .
sender/ 5
,5 6
RoutedEventArgs7 F
eG H
)H I
{ 	
} 	
private!! 
void!! 

ExitButton!! 
(!!  
object!!  &
sender!!' -
,!!- .
RoutedEventArgs!!/ >
e!!? @
)!!@ A
{"" 	
}$$ 	
}%% 
}&& т╕
C:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\CreateAccountView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
CreateAccountView *
:+ ,
Page- 1
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
public 
CreateAccountView  
(  !

MainWindow! +

mainWindow, 6
,6 7+
ProfileForCallbackMethodsClient8 W+
profileForCallbackMethodsClientX w
)w x
{ 	
InitializeComponent 
(  
)  !
;! "
this   
.   

mainWindow   
=   

mainWindow   (
;  ( )
cultureInfo!! 
=!! 
CultureInfo!! %
.!!% &
CurrentUICulture!!& 6
;!!6 7
resourceManager"" 
="" 
new"" !
ResourceManager""" 1
(""1 2
$str""2 ^
,""^ _
typeof""` f
(""f g

MainWindow""g q
)""q r
.""r s
Assembly""s {
)""{ |
;""| }
this$$ 
.$$ +
profileForCallbackMethodsClient$$ 0
=$$1 2+
profileForCallbackMethodsClient$$3 R
;$$R S
}%% 	
private'' 
void'' 
CreateAccountButton'' (
(''( )
object'') /
sender''0 6
,''6 7
RoutedEventArgs''8 G
e''H I
)''I J
{(( 	
if)) 
()) 2
&InvalidValuesInTextFieldsTextGenerator)) 6
())6 7
)))7 8
==))9 ;
$str))< >
)))> ?
{** 
if++ 
(++ 
BirthdayDatePicker++ &
.++& '
SelectedDate++' 3
<=++4 6
DateTime++7 ?
.++? @
Now++@ C
)++C D
{,, 
SecureString--  
securePassword--! /
=--0 1
PasswordPasswordBox--2 E
.--E F
SecurePassword--F T
;--T U
string.. 
Password.. #
=..$ %
new..& )
System..* 0
...0 1
Net..1 4
...4 5
NetworkCredential..5 F
(..F G
string..G M
...M N
Empty..N S
,..S T
securePassword..U c
)..c d
...d e
Password..e m
;..m n
SecureString00  !
secureConfirmPassword00! 6
=007 8&
ConfirmPasswordPasswordBox009 S
.00S T
SecurePassword00T b
;00b c
string11 
ConfirmPassword11 *
=11+ ,
new11- 0
System111 7
.117 8
Net118 ;
.11; <
NetworkCredential11< M
(11M N
string11N T
.11T U
Empty11U Z
,11Z [!
secureConfirmPassword11\ q
)11q r
.11r s
Password11s {
;11{ |
if33 
(33 
Password33  
==33! #
ConfirmPassword33$ 3
)333 4
{44 
ProfileClient55 %
profileClient55& 3
=554 5
new556 9
ProfileClient55: G
(55G H
)55H I
;55I J
PlayerClient66 $
playerClient66% 1
=662 3
new664 7
PlayerClient668 D
(66D E
)66E F
;66F G
if77 
(77 
!77 
playerClient77 )
.77) *%
TheEmailIsAlreadyRegisted77* C
(77C D
EmailTextBox77D P
.77P Q
Text77Q U
)77U V
)77V W
{88 
if99 
(99  
!99  !
playerClient99! -
.99- .(
TheNicknameIsAlreadyRegisted99. J
(99J K
NickNameTextBox99K Z
.99Z [
Text99[ _
)99_ `
)99` a
{:: #
ServiceProfileReference;;  7
.;;7 8
Players;;8 ?
players;;@ G
=;;H I
new;;J M#
ServiceProfileReference;;N e
.;;e f
Players;;f m
{<<  !
Names==$ )
===* +
NamesTextBox==, 8
.==8 9
Text==9 =
,=== >
Surnames>>$ ,
=>>- .
SurnamesTextBox>>/ >
.>>> ?
Text>>? C
,>>C D
Email??$ )
=??* +
EmailTextBox??, 8
.??8 9
Text??9 =
,??= >
NickName@@$ ,
=@@- .
NickNameTextBox@@/ >
.@@> ?
Text@@? C
,@@C D
	BirthDateAA$ -
=AA. /
(AA0 1
DateTimeAA1 9
)AA9 :
BirthdayDatePickerAA: L
.AAL M
SelectedDateAAM Y
}BB  !
;BB! "#
ServiceProfileReferenceDD  7
.DD7 8
ProfilesDD8 @
profilesDDA I
=DDJ K
newDDL O#
ServiceProfileReferenceDDP g
.DDg h
ProfilesDDh p
{EE  !
LoginStatusFF$ /
=FF0 1 
ProfileLoginStatusesFF2 F
.FFF G
	NotLoggedFFG P
.FFP Q
ToStringFFQ Y
(FFY Z
)FFZ [
,FF[ \
CoinsGG$ )
=GG* +
$numGG, -
,GG- .
PlayersHH$ +
=HH, -
playersHH. 5
}II  !
;II! "
stringKK  &
saltKK' +
=KK, -
BCryptKK. 4
.KK4 5
NetKK5 8
.KK8 9
BCryptKK9 ?
.KK? @
GenerateSaltKK@ L
(KKL M
)KKM N
;KKN O
stringLL  &
hashedPasswordLL' 5
=LL6 7
BCryptLL8 >
.LL> ?
NetLL? B
.LLB C
BCryptLLC I
.LLI J
HashPasswordLLJ V
(LLV W
PasswordLLW _
,LL_ `
saltLLa e
)LLe f
;LLf g
playersMM  '
.MM' (
PasswordMM( 0
=MM1 2
hashedPasswordMM3 A
;MMA B
tryOO  #
{PP  !
profileClientQQ$ 1
.QQ1 2

AddProfileQQ2 <
(QQ< =
profilesQQ= E
)QQE F
;QQF G
}RR  !
catchSS  %
(SS& '
	ExceptionSS' 0
exSS1 3
)SS3 4
{TT  !
ConsoleUU$ +
.UU+ ,
	WriteLineUU, 5
(UU5 6
exUU6 8
.UU8 9

StackTraceUU9 C
)UUC D
;UUD E
}VV  !
newXX  #
AlertPopUpGeneratorXX$ 7
(XX7 8
)XX8 9
.XX9 :-
!OpenInternationalizedSuccessPopUpXX: [
(XX[ \
$strXX\ h
,XXh i
$str	XXj Е
)
XXЕ Ж
;
XXЖ З
NavigationServiceZZ  1
navigationServiceZZ2 C
=ZZD E
NavigationServiceZZF W
.ZZW X 
GetNavigationServiceZZX l
(ZZl m
thisZZm q
)ZZq r
;ZZr s
navigationService[[  1
.[[1 2
Navigate[[2 :
([[: ;
new[[; >
	LoginView[[? H
([[H I

mainWindow[[I S
,[[S T+
profileForCallbackMethodsClient[[U t
)[[t u
)[[u v
;[[v w
}\\ 
else]]  
{^^ 
new__  #
AlertPopUpGenerator__$ 7
(__7 8
)__8 9
.__9 :+
OpenInternationalizedErrorPopUp__: Y
(__Y Z
$str__Z f
,__f g
$str	__h Б
)
__Б В
;
__В Г
}`` 
}aa 
elsebb 
{cc 
newdd 
AlertPopUpGeneratordd  3
(dd3 4
)dd4 5
.dd5 6+
OpenInternationalizedErrorPopUpdd6 U
(ddU V
$strddV b
,ddb c
$strddd z
)ddz {
;dd{ |
}ee 
profileClientgg %
.gg% &
Closegg& +
(gg+ ,
)gg, -
;gg- .
playerClienthh $
.hh$ %
Closehh% *
(hh* +
)hh+ ,
;hh, -
}ii 
elsejj 
{kk 
newll 
AlertPopUpGeneratorll /
(ll/ 0
)ll0 1
.ll1 2+
OpenInternationalizedErrorPopUpll2 Q
(llQ R
$strllR ^
,ll^ _
$strll` 
)	ll А
;
llА Б
}mm 
}nn 
elseoo 
{pp 
newqq 
AlertPopUpGeneratorqq +
(qq+ ,
)qq, -
.qq- .+
OpenInternationalizedErrorPopUpqq. M
(qqM N
$strqqN Z
,qqZ [
$str	qq\ О
)
qqО П
;
qqП Р
}rr 
}ss 
elsett 
{uu 
newvv 
AlertPopUpGeneratorvv '
(vv' (
)vv( )
.vv) *
OpenErrorPopUpvv* 8
(vv8 9
$strvv9 E
,vvE F2
&InvalidValuesInTextFieldsTextGeneratorvvG m
(vvm n
)vvn o
)vvo p
;vvp q
}ww 
}xx 	
private{{ 
void{{ 
GoLoginButton{{ "
({{" #
object{{# )
sender{{* 0
,{{0 1 
MouseButtonEventArgs{{2 F
e{{G H
){{H I
{|| 	
NavigationService}} 
navigationService}} /
=}}0 1
NavigationService}}2 C
.}}C D 
GetNavigationService}}D X
(}}X Y
this}}Y ]
)}}] ^
;}}^ _
navigationService~~ 
.~~ 
Navigate~~ &
(~~& '
new~~' *
	LoginView~~+ 4
(~~4 5

mainWindow~~5 ?
,~~? @+
profileForCallbackMethodsClient~~A `
)~~` a
)~~a b
;~~b c
} 	
private
ББ 
string
ББ 4
&InvalidValuesInTextFieldsTextGenerator
ББ =
(
ББ= >
)
ББ> ?
{
ВВ 	
int
ГГ +
textFieldsWithIncorrectValues
ГГ -
=
ГГ. /
$num
ГГ0 1
;
ГГ1 2
string
ЕЕ 
	finalText
ЕЕ 
=
ЕЕ 
$str
ЕЕ !
;
ЕЕ! "
string
ЗЗ 
namesPattern
ЗЗ 
=
ЗЗ  !
$str
ЗЗ" C
;
ЗЗC D
string
ИИ 
surnamesPattern
ИИ "
=
ИИ# $
$str
ИИ% F
;
ИИF G
string
ЙЙ 
emailPattern
ЙЙ 
=
ЙЙ  !
$str
ЙЙ" A
;
ЙЙA B
string
КК 
nickNamePattern
КК "
=
КК# $
$str
КК% ?
;
КК? @
string
ЛЛ 
passwordPattern
ЛЛ "
=
ЛЛ# $
$str
ЛЛ% g
;
ЛЛg h
string
ММ $
confirmPasswordPattern
ММ )
=
ММ* +
$str
ММ, n
;
ММn o
Regex
ОО 

namesRegex
ОО 
=
ОО 
new
ОО "
Regex
ОО# (
(
ОО( )
namesPattern
ОО) 5
)
ОО5 6
;
ОО6 7
Regex
ПП 
surnamesRegex
ПП 
=
ПП  !
new
ПП" %
Regex
ПП& +
(
ПП+ ,
surnamesPattern
ПП, ;
)
ПП; <
;
ПП< =
Regex
РР 

emailRegex
РР 
=
РР 
new
РР "
Regex
РР# (
(
РР( )
emailPattern
РР) 5
)
РР5 6
;
РР6 7
Regex
СС 
nickNameRegex
СС 
=
СС  !
new
СС" %
Regex
СС& +
(
СС+ ,
nickNamePattern
СС, ;
)
СС; <
;
СС< =
Regex
ТТ 
passwordRegex
ТТ 
=
ТТ  !
new
ТТ" %
Regex
ТТ& +
(
ТТ+ ,
passwordPattern
ТТ, ;
)
ТТ; <
;
ТТ< =
Regex
УУ %
confirmNewPasswordRegex
УУ )
=
УУ* +
new
УУ, /
Regex
УУ0 5
(
УУ5 6$
confirmPasswordPattern
УУ6 L
)
УУL M
;
УУM N
Match
ХХ 

namesMatch
ХХ 
=
ХХ 

namesRegex
ХХ )
.
ХХ) *
Match
ХХ* /
(
ХХ/ 0
NamesTextBox
ХХ0 <
.
ХХ< =
Text
ХХ= A
)
ХХA B
;
ХХB C
Match
ЦЦ 
surnamesMatch
ЦЦ 
=
ЦЦ  !
surnamesRegex
ЦЦ" /
.
ЦЦ/ 0
Match
ЦЦ0 5
(
ЦЦ5 6
SurnamesTextBox
ЦЦ6 E
.
ЦЦE F
Text
ЦЦF J
)
ЦЦJ K
;
ЦЦK L
Match
ЧЧ 

emailMatch
ЧЧ 
=
ЧЧ 

emailRegex
ЧЧ )
.
ЧЧ) *
Match
ЧЧ* /
(
ЧЧ/ 0
EmailTextBox
ЧЧ0 <
.
ЧЧ< =
Text
ЧЧ= A
)
ЧЧA B
;
ЧЧB C
Match
ШШ 
nickNameMatch
ШШ 
=
ШШ  !
nickNameRegex
ШШ" /
.
ШШ/ 0
Match
ШШ0 5
(
ШШ5 6
NickNameTextBox
ШШ6 E
.
ШШE F
Text
ШШF J
)
ШШJ K
;
ШШK L
SecureString
ЪЪ $
passwordSecurePassword
ЪЪ /
=
ЪЪ0 1!
PasswordPasswordBox
ЪЪ2 E
.
ЪЪE F
SecurePassword
ЪЪF T
;
ЪЪT U
string
ЫЫ 
password
ЫЫ 
=
ЫЫ 
new
ЫЫ !
System
ЫЫ" (
.
ЫЫ( )
Net
ЫЫ) ,
.
ЫЫ, -
NetworkCredential
ЫЫ- >
(
ЫЫ> ?
string
ЫЫ? E
.
ЫЫE F
Empty
ЫЫF K
,
ЫЫK L$
passwordSecurePassword
ЫЫM c
)
ЫЫc d
.
ЫЫd e
Password
ЫЫe m
;
ЫЫm n
SecureString
ЭЭ +
confirmPasswordSecurePassword
ЭЭ 6
=
ЭЭ7 8(
ConfirmPasswordPasswordBox
ЭЭ9 S
.
ЭЭS T
SecurePassword
ЭЭT b
;
ЭЭb c
string
ЮЮ 
confirmPassword
ЮЮ "
=
ЮЮ# $
new
ЮЮ% (
System
ЮЮ) /
.
ЮЮ/ 0
Net
ЮЮ0 3
.
ЮЮ3 4
NetworkCredential
ЮЮ4 E
(
ЮЮE F
string
ЮЮF L
.
ЮЮL M
Empty
ЮЮM R
,
ЮЮR S+
confirmPasswordSecurePassword
ЮЮT q
)
ЮЮq r
.
ЮЮr s
Password
ЮЮs {
;
ЮЮ{ |
Match
аа 
passwordMatch
аа 
=
аа  !
passwordRegex
аа" /
.
аа/ 0
Match
аа0 5
(
аа5 6
password
аа6 >
)
аа> ?
;
аа? @
Match
бб "
confirmPasswordMatch
бб &
=
бб' (%
confirmNewPasswordRegex
бб) @
.
бб@ A
Match
ббA F
(
ббF G
confirmPassword
ббG V
)
ббV W
;
ббW X
if
гг 
(
гг 
!
гг 

namesMatch
гг 
.
гг 
Success
гг #
||
гг$ &
!
гг' (
surnamesMatch
гг( 5
.
гг5 6
Success
гг6 =
||
гг> @
!
ггA B

emailMatch
ггB L
.
ггL M
Success
ггM T
||
ггU W
!
дд 
nickNameMatch
дд 
.
дд 
Success
дд &
||
дд' )
!
дд* +
passwordMatch
дд+ 8
.
дд8 9
Success
дд9 @
||
ддA C
!
ддD E"
confirmPasswordMatch
ддE Y
.
ддY Z
Success
ддZ a
)
ддa b
{
ее 
	finalText
жж 
=
жж 
	finalText
жж %
+
жж& '
resourceManager
жж( 7
.
жж7 8
	GetString
жж8 A
(
жжA B
$str
жжB k
,
жжk l
cultureInfo
жжm x
)
жжx y
;
жжy z
}
зз 
if
йй 
(
йй 
!
йй 

namesMatch
йй 
.
йй 
Success
йй #
)
йй# $
{
кк 
	finalText
лл 
=
лл 
	finalText
лл %
+
лл& '
resourceManager
лл( 7
.
лл7 8
	GetString
лл8 A
(
ллA B
$str
ллB K
,
ллK L
cultureInfo
ллM X
)
ллX Y
+
ллZ [
$str
лл\ _
;
лл_ `+
textFieldsWithIncorrectValues
мм -
++
мм- /
;
мм/ 0
}
нн 
if
пп 
(
пп 
!
пп 
surnamesMatch
пп 
.
пп 
Success
пп &
)
пп& '
{
░░ 
if
▒▒ 
(
▒▒ +
textFieldsWithIncorrectValues
▒▒ 1
>=
▒▒2 4
$num
▒▒5 6
)
▒▒6 7
{
▓▓ 
	finalText
││ 
=
││ 
	finalText
││  )
.
││) *
	Substring
││* 3
(
││3 4
$num
││4 5
,
││5 6
	finalText
││7 @
.
││@ A
Length
││A G
-
││H I
$num
││J K
)
││K L
;
││L M
	finalText
┤┤ 
=
┤┤ 
	finalText
┤┤  )
+
┤┤* +
$str
┤┤, 0
+
┤┤1 2
resourceManager
┤┤3 B
.
┤┤B C
	GetString
┤┤C L
(
┤┤L M
$str
┤┤M Y
,
┤┤Y Z
cultureInfo
┤┤[ f
)
┤┤f g
+
┤┤h i
$str
┤┤j m
;
┤┤m n
}
╡╡ 
else
╢╢ 
{
╖╖ 
	finalText
╕╕ 
=
╕╕ 
	finalText
╕╕  )
+
╕╕* +
resourceManager
╕╕, ;
.
╕╕; <
	GetString
╕╕< E
(
╕╕E F
$str
╕╕F R
,
╕╕R S
cultureInfo
╕╕T _
)
╕╕_ `
+
╕╕a b
$str
╕╕c f
;
╕╕f g
}
╣╣ +
textFieldsWithIncorrectValues
╗╗ -
++
╗╗- /
;
╗╗/ 0
}
╝╝ 
if
╛╛ 
(
╛╛ 
!
╛╛ 

emailMatch
╛╛ 
.
╛╛ 
Success
╛╛ #
)
╛╛# $
{
┐┐ 
if
└└ 
(
└└ +
textFieldsWithIncorrectValues
└└ 1
>=
└└2 4
$num
└└5 6
)
└└6 7
{
┴┴ 
	finalText
┬┬ 
=
┬┬ 
	finalText
┬┬  )
.
┬┬) *
	Substring
┬┬* 3
(
┬┬3 4
$num
┬┬4 5
,
┬┬5 6
	finalText
┬┬7 @
.
┬┬@ A
Length
┬┬A G
-
┬┬H I
$num
┬┬J K
)
┬┬K L
;
┬┬L M
	finalText
├├ 
=
├├ 
	finalText
├├  )
+
├├* +
$str
├├, 0
+
├├1 2
resourceManager
├├3 B
.
├├B C
	GetString
├├C L
(
├├L M
$str
├├M T
,
├├T U
cultureInfo
├├V a
)
├├a b
+
├├c d
$str
├├e h
;
├├h i
}
── 
else
┼┼ 
{
╞╞ 
	finalText
╟╟ 
=
╟╟ 
	finalText
╟╟  )
+
╟╟* +
resourceManager
╟╟, ;
.
╟╟; <
	GetString
╟╟< E
(
╟╟E F
$str
╟╟F M
,
╟╟M N
cultureInfo
╟╟O Z
)
╟╟Z [
+
╟╟\ ]
$str
╟╟^ a
;
╟╟a b
}
╚╚ +
textFieldsWithIncorrectValues
╩╩ -
++
╩╩- /
;
╩╩/ 0
}
╦╦ 
if
══ 
(
══ 
!
══ 
nickNameMatch
══ 
.
══ 
Success
══ &
)
══& '
{
╬╬ 
if
╧╧ 
(
╧╧ +
textFieldsWithIncorrectValues
╧╧ 1
>=
╧╧2 4
$num
╧╧5 6
)
╧╧6 7
{
╨╨ 
	finalText
╤╤ 
=
╤╤ 
	finalText
╤╤  )
.
╤╤) *
	Substring
╤╤* 3
(
╤╤3 4
$num
╤╤4 5
,
╤╤5 6
	finalText
╤╤7 @
.
╤╤@ A
Length
╤╤A G
-
╤╤H I
$num
╤╤J K
)
╤╤K L
;
╤╤L M
	finalText
╥╥ 
=
╥╥ 
	finalText
╥╥  )
+
╥╥* +
$str
╥╥, 0
+
╥╥1 2
resourceManager
╥╥3 B
.
╥╥B C
	GetString
╥╥C L
(
╥╥L M
$str
╥╥M W
,
╥╥W X
cultureInfo
╥╥Y d
)
╥╥d e
+
╥╥f g
$str
╥╥h k
;
╥╥k l
}
╙╙ 
else
╘╘ 
{
╒╒ 
	finalText
╓╓ 
=
╓╓ 
	finalText
╓╓  )
+
╓╓* +
resourceManager
╓╓, ;
.
╓╓; <
	GetString
╓╓< E
(
╓╓E F
$str
╓╓F P
,
╓╓P Q
cultureInfo
╓╓R ]
)
╓╓] ^
+
╓╓_ `
$str
╓╓a d
;
╓╓d e
}
╫╫ +
textFieldsWithIncorrectValues
┘┘ -
++
┘┘- /
;
┘┘/ 0
}
┌┌ 
if
▄▄ 
(
▄▄ 
!
▄▄ 
passwordMatch
▄▄ 
.
▄▄ 
Success
▄▄ &
)
▄▄& '
{
▌▌ 
if
▐▐ 
(
▐▐ +
textFieldsWithIncorrectValues
▐▐ 1
>=
▐▐2 4
$num
▐▐5 6
)
▐▐6 7
{
▀▀ 
	finalText
рр 
=
рр 
	finalText
рр  )
.
рр) *
	Substring
рр* 3
(
рр3 4
$num
рр4 5
,
рр5 6
	finalText
рр7 @
.
рр@ A
Length
ррA G
-
ррH I
$num
ррJ K
)
ррK L
;
ррL M
	finalText
сс 
=
сс 
	finalText
сс  )
+
сс* +
$str
сс, 0
+
сс1 2
resourceManager
сс3 B
.
ссB C
	GetString
ссC L
(
ссL M
$str
ссM W
,
ссW X
cultureInfo
ссY d
)
ссd e
+
ссf g
$str
ссh k
;
ссk l
}
тт 
else
уу 
{
фф 
	finalText
хх 
=
хх 
	finalText
хх  )
+
хх* +
resourceManager
хх, ;
.
хх; <
	GetString
хх< E
(
ххE F
$str
ххF P
,
ххP Q
cultureInfo
ххR ]
)
хх] ^
+
хх_ `
$str
ххa d
;
ххd e
}
цц +
textFieldsWithIncorrectValues
шш -
++
шш- /
;
шш/ 0
}
щщ 
if
ыы 
(
ыы 
!
ыы "
confirmPasswordMatch
ыы %
.
ыы% &
Success
ыы& -
)
ыы- .
{
ьь 
if
ээ 
(
ээ +
textFieldsWithIncorrectValues
ээ 1
>=
ээ2 4
$num
ээ5 6
)
ээ6 7
{
юю 
	finalText
яя 
=
яя 
	finalText
яя  )
.
яя) *
	Substring
яя* 3
(
яя3 4
$num
яя4 5
,
яя5 6
	finalText
яя7 @
.
яя@ A
Length
яяA G
-
яяH I
$num
яяJ K
)
яяK L
;
яяL M
	finalText
ЁЁ 
=
ЁЁ 
	finalText
ЁЁ  )
+
ЁЁ* +
$str
ЁЁ, 0
+
ЁЁ1 2
resourceManager
ЁЁ3 B
.
ЁЁB C
	GetString
ЁЁC L
(
ЁЁL M
$str
ЁЁM _
,
ЁЁ_ `
cultureInfo
ЁЁa l
)
ЁЁl m
+
ЁЁn o
$str
ЁЁp s
;
ЁЁs t
}
ёё 
else
ЄЄ 
{
єє 
	finalText
ЇЇ 
=
ЇЇ 
	finalText
ЇЇ  )
+
ЇЇ* +
resourceManager
ЇЇ, ;
.
ЇЇ; <
	GetString
ЇЇ< E
(
ЇЇE F
$str
ЇЇF X
,
ЇЇX Y
cultureInfo
ЇЇZ e
)
ЇЇe f
+
ЇЇg h
$str
ЇЇi l
;
ЇЇl m
}
її 
}
ЎЎ 
return
°° 
	finalText
°° 
;
°° 
}
∙∙ 	
}
·· 
}№№ ▀Ъ
|C:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\ForgotPassword.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
ForgotPassword '
:( )
Page* .
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
Random 
random  &
=' (
new) ,
Random- 3
(3 4
)4 5
;5 6
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
private 
int 
verificationCode $
;$ %
public 
ForgotPassword 
( 

MainWindow (

mainWindow) 3
,3 4+
ProfileForCallbackMethodsClient5 T+
profileForCallbackMethodsClientU t
)t u
{ 	
InitializeComponent   
(    
)    !
;  ! "
this"" 
."" 

mainWindow"" 
="" 

mainWindow"" (
;""( )
cultureInfo## 
=## 
CultureInfo## %
.##% &
CurrentUICulture##& 6
;##6 7
resourceManager$$ 
=$$ 
new$$ !
ResourceManager$$" 1
($$1 2
$str$$2 ^
,$$^ _
typeof$$` f
($$f g

MainWindow$$g q
)$$q r
.$$r s
Assembly$$s {
)$${ |
;$$| }
this%% 
.%% +
profileForCallbackMethodsClient%% 0
=%%1 2+
profileForCallbackMethodsClient%%3 R
;%%R S
verificationCode'' 
='' 
random'' %
.''% &
Next''& *
(''* +
$num''+ 1
,''1 2
$num''3 :
)'': ;
;''; <
}(( 	
private** 
void** 
CancelButton1** "
(**" #
object**# )
sender*** 0
,**0 1
RoutedEventArgs**2 A
e**B C
)**C D
{++ 	
NavigationService,, 
navigationService,, /
=,,0 1
NavigationService,,2 C
.,,C D 
GetNavigationService,,D X
(,,X Y
this,,Y ]
),,] ^
;,,^ _
navigationService-- 
.-- 
Navigate-- &
(--& '
new--' *
	LoginView--+ 4
(--4 5

mainWindow--5 ?
,--? @+
profileForCallbackMethodsClient--A `
)--` a
)--a b
;--b c
}.. 	
private00 
void00 
CancelButton200 "
(00" #
object00# )
sender00* 0
,000 1
RoutedEventArgs002 A
e00B C
)00C D
{11 	
IntroduceDataBorder22 
.22  

Visibility22  *
=22+ ,

Visibility22- 7
.227 8
Visible228 ?
;22? @
IntroduceCodeBorder33 
.33  

Visibility33  *
=33+ ,

Visibility33- 7
.337 8
Hidden338 >
;33> ?
EmailTextField44 
.44 
Text44 
=44  !
string44" (
.44( )
Empty44) .
;44. /"
NewPasswordPasswordBox55 "
.55" #
Clear55# (
(55( )
)55) *
;55* +)
ConfirmNewPasswordPasswordBox66 )
.66) *
Clear66* /
(66/ 0
)660 1
;661 2
verificationCode77 
=77 
random77 %
.77% &
Next77& *
(77* +
$num77+ 1
,771 2
$num773 :
)77: ;
;77; <
}88 	
private:: 
void::  
ChangePasswordButton:: )
(::) *
object::* 0
sender::1 7
,::7 8
RoutedEventArgs::9 H
e::I J
)::J K
{;; 	
if<< 
(<< "
IntroduceCodeTextField<< %
.<<% &
Text<<& *
==<<+ -
verificationCode<<. >
.<<> ?
ToString<<? G
(<<G H
)<<H I
)<<I J
{== 
PlayerClient>> 
playerClient>> )
=>>* +
new>>, /
PlayerClient>>0 <
(>>< =
)>>= >
;>>> ?
SecureString?? %
newPasswordSecurePassword?? 6
=??7 8"
NewPasswordPasswordBox??9 O
.??O P
SecurePassword??P ^
;??^ _
string@@ 
newPassword@@ "
=@@# $
new@@% (
System@@) /
.@@/ 0
Net@@0 3
.@@3 4
NetworkCredential@@4 E
(@@E F
string@@F L
.@@L M
Empty@@M R
,@@R S%
newPasswordSecurePassword@@T m
)@@m n
.@@n o
Password@@o w
;@@w x
stringBB 
saltBB 
=BB 
BCryptBB $
.BB$ %
NetBB% (
.BB( )
BCryptBB) /
.BB/ 0
GenerateSaltBB0 <
(BB< =
)BB= >
;BB> ?
stringCC 
hashedPasswordCC %
=CC& '
BCryptCC( .
.CC. /
NetCC/ 2
.CC2 3
BCryptCC3 9
.CC9 :
HashPasswordCC: F
(CCF G
newPasswordCCG R
,CCR S
saltCCT X
)CCX Y
;CCY Z
playerClientEE 
.EE !
ModifyPasswordByEmailEE 2
(EE2 3
EmailTextFieldEE3 A
.EEA B
TextEEB F
,EEF G
hashedPasswordEEH V
)EEV W
;EEW X
newGG 
AlertPopUpGeneratorGG '
(GG' (
)GG( )
.GG) *-
!OpenInternationalizedSuccessPopUpGG* K
(GGK L
$strGGL X
,GGX Y
$strGGZ {
)GG{ |
;GG| }
NavigationServiceII !
navigationServiceII" 3
=II4 5
NavigationServiceII6 G
.IIG H 
GetNavigationServiceIIH \
(II\ ]
thisII] a
)IIa b
;IIb c
navigationServiceJJ !
.JJ! "
NavigateJJ" *
(JJ* +
newJJ+ .
	LoginViewJJ/ 8
(JJ8 9

mainWindowJJ9 C
,JJC D+
profileForCallbackMethodsClientJJE d
)JJd e
)JJe f
;JJf g
playerClientLL 
.LL 
CloseLL "
(LL" #
)LL# $
;LL$ %
}MM 
elseNN 
{OO 
newPP 
AlertPopUpGeneratorPP '
(PP' (
)PP( )
.PP) *+
OpenInternationalizedErrorPopUpPP* I
(PPI J
$strPPJ V
,PPV W
$strPPX f
)PPf g
;PPg h
}QQ 
}RR 	
privateTT 
voidTT 
SendCodeButtonTT #
(TT$ %
objectTT% +
senderTT, 2
,TT2 3
RoutedEventArgsTT4 C
eTTD E
)TTE F
{UU 	
ifVV 
(VV 2
&InvalidValuesInTextFieldsTextGeneratorVV 6
(VV6 7
)VV7 8
==VV9 ;
$strVV< >
)VV> ?
{WW 
PlayerClientXX 
playerClientXX )
=XX* +
newXX, /
PlayerClientXX0 <
(XX< =
)XX= >
;XX> ?
SecureStringZZ %
newPasswordSecurePasswordZZ 6
=ZZ7 8"
NewPasswordPasswordBoxZZ9 O
.ZZO P
SecurePasswordZZP ^
;ZZ^ _
string[[ 
newPassword[[ "
=[[# $
new[[% (
System[[) /
.[[/ 0
Net[[0 3
.[[3 4
NetworkCredential[[4 E
([[E F
string[[F L
.[[L M
Empty[[M R
,[[R S%
newPasswordSecurePassword[[T m
)[[m n
.[[n o
Password[[o w
;[[w x
SecureString]] ,
 confirmNewPasswordSecurePassword]] =
=]]> ?)
ConfirmNewPasswordPasswordBox]]@ ]
.]]] ^
SecurePassword]]^ l
;]]l m
string^^ 
confirmNewPassword^^ )
=^^* +
new^^, /
System^^0 6
.^^6 7
Net^^7 :
.^^: ;
NetworkCredential^^; L
(^^L M
string^^M S
.^^S T
Empty^^T Y
,^^Y Z,
 confirmNewPasswordSecurePassword^^[ {
)^^{ |
.^^| }
Password	^^} Е
;
^^Е Ж
if`` 
(`` 
newPassword`` 
==``  "
confirmNewPassword``# 5
)``5 6
{aa 
ifbb 
(bb 
playerClientbb $
.bb$ %%
TheEmailIsAlreadyRegistedbb% >
(bb> ?
EmailTextFieldbb? M
.bbM N
TextbbN R
)bbR S
)bbS T
{cc 
IntroduceDataBorderdd +
.dd+ ,

Visibilitydd, 6
=dd7 8

Visibilitydd9 C
.ddC D
HiddenddD J
;ddJ K
IntroduceCodeBorderee +
.ee+ ,

Visibilityee, 6
=ee7 8

Visibilityee9 C
.eeC D
VisibleeeD K
;eeK L

SmtpClientgg "

smtpClientgg# -
=gg. /
newgg0 3

SmtpClientgg4 >
(gg> ?
$strgg? O
)ggO P
{hh 
Portii  
=ii! "
$numii# &
,ii& '
Credentialsjj '
=jj( )
newjj* -
NetworkCredentialjj. ?
(jj? @
$strjj@ \
,jj\ ]
$strjj^ s
)jjs t
,jjt u
	EnableSslkk %
=kk& '
truekk( ,
}ll 
;ll 
MailMessagenn #
mailnn$ (
=nn) *
newnn+ .
MailMessagenn/ :
{oo 
Frompp  
=pp! "
newpp# &
MailAddresspp' 2
(pp2 3
$strpp3 O
)ppO P
}qq 
;qq 
mailrr 
.rr 
Torr 
.rr  
Addrr  #
(rr# $
newrr$ '
MailAddressrr( 3
(rr3 4
EmailTextFieldrr4 B
.rrB C
TextrrC G
)rrG H
)rrH I
;rrI J
mailss 
.ss 
Subjectss $
=ss% &
resourceManagerss' 6
.ss6 7
	GetStringss7 @
(ss@ A
$strssA `
,ss` a
cultureInfossb m
)ssm n
;ssn o
mailtt 
.tt 
Bodytt !
=tt" #
resourceManagertt$ 3
.tt3 4
	GetStringtt4 =
(tt= >
$strtt> l
,ttl m
cultureInfottn y
)tty z
+tt{ |
verificationCode	tt} Н
;
ttН О
tryvv 
{ww 

smtpClientxx &
.xx& '
Sendxx' +
(xx+ ,
mailxx, 0
)xx0 1
;xx1 2
}yy 
catchzz 
(zz 
	Exceptionzz (
)zz( )
{{{ 
}}} 
}~~ 
else 
{
АА 
new
ББ !
AlertPopUpGenerator
ББ /
(
ББ/ 0
)
ББ0 1
.
ББ1 2-
OpenInternationalizedErrorPopUp
ББ2 Q
(
ББQ R
$str
ББR ^
,
ББ^ _
$str
ББ` q
)
ББq r
;
ББr s
}
ВВ 
}
ГГ 
else
ДД 
{
ЕЕ 
new
ЖЖ !
AlertPopUpGenerator
ЖЖ +
(
ЖЖ+ ,
)
ЖЖ, -
.
ЖЖ- .-
OpenInternationalizedErrorPopUp
ЖЖ. M
(
ЖЖM N
$str
ЖЖN Z
,
ЖЖZ [
$str
ЖЖ\ {
)
ЖЖ{ |
;
ЖЖ| }
}
ЗЗ 
playerClient
ЙЙ 
.
ЙЙ 
Close
ЙЙ "
(
ЙЙ" #
)
ЙЙ# $
;
ЙЙ$ %
}
КК 
else
ЛЛ 
{
ММ 
new
НН !
AlertPopUpGenerator
НН '
(
НН' (
)
НН( )
.
НН) *
OpenErrorPopUp
НН* 8
(
НН8 9
$str
НН9 E
,
ННE F4
&InvalidValuesInTextFieldsTextGenerator
ННG m
(
ННm n
)
ННn o
)
ННo p
;
ННp q
}
ОО 
}
ПП 	
private
СС 
String
СС 4
&InvalidValuesInTextFieldsTextGenerator
СС =
(
СС= >
)
СС> ?
{
ТТ 	
int
УУ +
textFieldsWithIncorrectValues
УУ -
=
УУ. /
$num
УУ0 1
;
УУ1 2
string
ХХ 
	finalText
ХХ 
=
ХХ 
$str
ХХ !
;
ХХ! "
string
ЧЧ 
emailPattern
ЧЧ 
=
ЧЧ  !
$str
ЧЧ" A
;
ЧЧA B
string
ШШ  
newPasswordPattern
ШШ %
=
ШШ& '
$str
ШШ( j
;
ШШj k
string
ЩЩ '
confirmNewPasswordPattern
ЩЩ ,
=
ЩЩ- .
$str
ЩЩ/ q
;
ЩЩq r
Regex
ЫЫ 

emailRegex
ЫЫ 
=
ЫЫ 
new
ЫЫ "
Regex
ЫЫ# (
(
ЫЫ( )
emailPattern
ЫЫ) 5
)
ЫЫ5 6
;
ЫЫ6 7
Regex
ЬЬ 
newPasswordRegex
ЬЬ "
=
ЬЬ# $
new
ЬЬ% (
Regex
ЬЬ) .
(
ЬЬ. / 
newPasswordPattern
ЬЬ/ A
)
ЬЬA B
;
ЬЬB C
Regex
ЭЭ %
confirmNewPasswordRegex
ЭЭ )
=
ЭЭ* +
new
ЭЭ, /
Regex
ЭЭ0 5
(
ЭЭ5 6'
confirmNewPasswordPattern
ЭЭ6 O
)
ЭЭO P
;
ЭЭP Q
Match
ЯЯ 

emailMatch
ЯЯ 
=
ЯЯ 

emailRegex
ЯЯ )
.
ЯЯ) *
Match
ЯЯ* /
(
ЯЯ/ 0
EmailTextField
ЯЯ0 >
.
ЯЯ> ?
Text
ЯЯ? C
)
ЯЯC D
;
ЯЯD E
SecureString
бб '
newPasswordSecurePassword
бб 2
=
бб3 4$
NewPasswordPasswordBox
бб5 K
.
ббK L
SecurePassword
ббL Z
;
ббZ [
string
вв 
newPassword
вв 
=
вв  
new
вв! $
System
вв% +
.
вв+ ,
Net
вв, /
.
вв/ 0
NetworkCredential
вв0 A
(
ввA B
string
ввB H
.
ввH I
Empty
ввI N
,
ввN O'
newPasswordSecurePassword
ввP i
)
ввi j
.
ввj k
Password
ввk s
;
ввs t
SecureString
дд .
 confirmNewPasswordSecurePassword
дд 9
=
дд: ;+
ConfirmNewPasswordPasswordBox
дд< Y
.
ддY Z
SecurePassword
ддZ h
;
ддh i
string
ее  
confirmNewPassword
ее %
=
ее& '
new
ее( +
System
ее, 2
.
ее2 3
Net
ее3 6
.
ее6 7
NetworkCredential
ее7 H
(
ееH I
string
ееI O
.
ееO P
Empty
ееP U
,
ееU V.
 confirmNewPasswordSecurePassword
ееW w
)
ееw x
.
ееx y
Passwordееy Б
;ееБ В
Match
зз 
newPasswordMatch
зз "
=
зз# $
newPasswordRegex
зз% 5
.
зз5 6
Match
зз6 ;
(
зз; <
newPassword
зз< G
)
ззG H
;
ззH I
Match
ии %
confirmNewPasswordMatch
ии )
=
ии* +%
confirmNewPasswordRegex
ии, C
.
ииC D
Match
ииD I
(
ииI J 
confirmNewPassword
ииJ \
)
ии\ ]
;
ии] ^
if
кк 
(
кк 
!
кк 

emailMatch
кк 
.
кк 
Success
кк #
||
кк$ &
!
кк' (
newPasswordMatch
кк( 8
.
кк8 9
Success
кк9 @
||
ккA C
!
ккD E%
confirmNewPasswordMatch
ккE \
.
кк\ ]
Success
кк] d
)
ккd e
{
лл 
	finalText
мм 
+=
мм 
resourceManager
мм ,
.
мм, -
	GetString
мм- 6
(
мм6 7
$str
мм7 `
,
мм` a
cultureInfo
ммb m
)
ммm n
;
ммn o
}
нн 
if
пп 
(
пп 
!
пп 

emailMatch
пп 
.
пп 
Success
пп #
)
пп# $
{
░░ 
	finalText
▒▒ 
=
▒▒ 
	finalText
▒▒ %
+
▒▒& '
resourceManager
▒▒( 7
.
▒▒7 8
	GetString
▒▒8 A
(
▒▒A B
$str
▒▒B I
,
▒▒I J
cultureInfo
▒▒K V
)
▒▒V W
+
▒▒X Y
$str
▒▒Z ]
;
▒▒] ^+
textFieldsWithIncorrectValues
▓▓ -
++
▓▓- /
;
▓▓/ 0
}
││ 
if
╡╡ 
(
╡╡ 
!
╡╡ 
newPasswordMatch
╡╡ !
.
╡╡! "
Success
╡╡" )
)
╡╡) *
{
╢╢ 
if
╖╖ 
(
╖╖ +
textFieldsWithIncorrectValues
╖╖ 1
>=
╖╖2 4
$num
╖╖5 6
)
╖╖6 7
{
╕╕ 
	finalText
╣╣ 
=
╣╣ 
	finalText
╣╣  )
.
╣╣) *
	Substring
╣╣* 3
(
╣╣3 4
$num
╣╣4 5
,
╣╣5 6
	finalText
╣╣7 @
.
╣╣@ A
Length
╣╣A G
-
╣╣H I
$num
╣╣J K
)
╣╣K L
;
╣╣L M
	finalText
║║ 
=
║║ 
	finalText
║║  )
+
║║* +
$str
║║, /
+
║║0 1
resourceManager
║║2 A
.
║║A B
	GetString
║║B K
(
║║K L
$str
║║L Z
,
║║Z [
cultureInfo
║║\ g
)
║║g h
+
║║i j
$str
║║k n
;
║║n o
}
╗╗ 
else
╝╝ 
{
╜╜ 
	finalText
╛╛ 
=
╛╛ 
	finalText
╛╛  )
+
╛╛* +
resourceManager
╛╛, ;
.
╛╛; <
	GetString
╛╛< E
(
╛╛E F
$str
╛╛F T
,
╛╛T U
cultureInfo
╛╛V a
)
╛╛a b
+
╛╛c d
$str
╛╛e h
;
╛╛h i
}
┐┐ +
textFieldsWithIncorrectValues
┴┴ -
++
┴┴- /
;
┴┴/ 0
}
┬┬ 
if
── 
(
── 
!
── %
confirmNewPasswordMatch
── (
.
──( )
Success
──) 0
)
──0 1
{
┼┼ 
if
╞╞ 
(
╞╞ +
textFieldsWithIncorrectValues
╞╞ 1
>=
╞╞2 4
$num
╞╞5 6
)
╞╞6 7
{
╟╟ 
	finalText
╚╚ 
=
╚╚ 
	finalText
╚╚  )
.
╚╚) *
	Substring
╚╚* 3
(
╚╚3 4
$num
╚╚4 5
,
╚╚5 6
	finalText
╚╚7 @
.
╚╚@ A
Length
╚╚A G
-
╚╚H I
$num
╚╚J K
)
╚╚K L
;
╚╚L M
	finalText
╔╔ 
=
╔╔ 
	finalText
╔╔  )
+
╔╔* +
$str
╔╔, /
+
╔╔0 1
resourceManager
╔╔2 A
.
╔╔A B
	GetString
╔╔B K
(
╔╔K L
$str
╔╔L ^
,
╔╔^ _
cultureInfo
╔╔` k
)
╔╔k l
+
╔╔m n
$str
╔╔o r
;
╔╔r s
}
╩╩ 
else
╦╦ 
{
╠╠ 
	finalText
══ 
=
══ 
	finalText
══  )
+
══* +
resourceManager
══, ;
.
══; <
	GetString
══< E
(
══E F
$str
══F X
,
══X Y
cultureInfo
══Z e
)
══e f
+
══g h
$str
══i l
;
══l m
}
╬╬ 
}
╧╧ 
return
╤╤ 
	finalText
╤╤ 
;
╤╤ 
}
╥╥ 	
}
╙╙ 
}╘╘ ў├
yC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\FriendsView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
FriendsView $
:% &
Page' +
,+ ,4
(IFriendRequestForCallbackMethodsCallback- U
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
Profile  
loggedProfile! .
;. /
private   
readonly   

ChatClient   #

chatClient  $ .
;  . /
private!! 
readonly!! +
ProfileForCallbackMethodsClient!! 8+
profileForCallbackMethodsClient!!9 X
;!!X Y
private"" 
readonly"" 1
%FriendRequestForCallbackMethodsClient"" >1
%friendRequestForCallbackMethodsClient""? d
;""d e
private## 
readonly## !
MultiplayerGameClient## .!
multiplayerGameClient##/ D
;##D E
private$$ 
readonly$$ 
CultureInfo$$ $
cultureInfo$$% 0
;$$0 1
private%% 
readonly%% 
ResourceManager%% (
resourceManager%%) 8
;%%8 9
private&& 
readonly&& 
bool&& '
entryToThisPageViaLobbyView&& 9
;&&9 :
public)) 
FriendsView)) 
()) 

MainWindow)) %

mainWindow))& 0
,))0 1
Profile))2 9
loggedProfile)): G
,))G H+
ProfileForCallbackMethodsClient))I h,
profileForCallbackMethodsClient	))i И
)
))И Й
{** 	
InitializeComponent++ 
(++  
)++  !
;++! "
this,, 
.,, 

mainWindow,, 
=,, 

mainWindow,, (
;,,( )
this-- 
.-- 
loggedProfile-- 
=--  
loggedProfile--! .
;--. /
this.. 
... +
profileForCallbackMethodsClient.. 0
=..1 2+
profileForCallbackMethodsClient..3 R
;..R S
cultureInfo00 
=00 
CultureInfo00 %
.00% &
CurrentUICulture00& 6
;006 7
resourceManager11 
=11 
new11 !
ResourceManager11" 1
(111 2
$str112 ^
,11^ _
typeof11` f
(11f g

MainWindow11g q
)11q r
.11r s
Assembly11s {
)11{ |
;11| }
PageStateManager33 
.33 
CurrentPage33 (
=33) *
this33+ /
;33/ 0'
entryToThisPageViaLobbyView44 '
=44( )
false44* /
;44/ 01
%friendRequestForCallbackMethodsClient66 1
=662 3
new664 71
%FriendRequestForCallbackMethodsClient668 ]
(66] ^
new66^ a
InstanceContext66b q
(66q r
this66r v
)66v w
)66w x
;66x y1
%friendRequestForCallbackMethodsClient77 1
.771 2
Connect772 9
(779 :
loggedProfile77: G
.77G H
Player77H N
.77N O
NickName77O W
)77W X
;77X Y"
ShowUpdatedFriendsList99 "
(99" #
)99# $
;99$ %
}:: 	
public<< 
FriendsView<< 
(<< 

MainWindow<< %

mainWindow<<& 0
,<<0 1
Profile<<2 9
loggedProfile<<: G
,<<G H+
ProfileForCallbackMethodsClient<<I h,
profileForCallbackMethodsClient	<<i И
,
<<И Й

ChatClient
<<К Ф

chatClient
<<Х Я
,
<<Я а#
MultiplayerGameClient
<<б ╢#
multiplayerGameClient
<<╖ ╠
)
<<╠ ═
{== 	
InitializeComponent>> 
(>>  
)>>  !
;>>! "
this?? 
.?? 

mainWindow?? 
=?? 

mainWindow?? (
;??( )
this@@ 
.@@ 
loggedProfile@@ 
=@@  
loggedProfile@@! .
;@@. /
thisAA 
.AA +
profileForCallbackMethodsClientAA 0
=AA1 2+
profileForCallbackMethodsClientAA3 R
;AAR S
cultureInfoCC 
=CC 
CultureInfoCC %
.CC% &
CurrentUICultureCC& 6
;CC6 7
resourceManagerDD 
=DD 
newDD !
ResourceManagerDD" 1
(DD1 2
$strDD2 ^
,DD^ _
typeofDD` f
(DDf g

MainWindowDDg q
)DDq r
.DDr s
AssemblyDDs {
)DD{ |
;DD| }
PageStateManagerFF 
.FF 
CurrentPageFF (
=FF) *
thisFF+ /
;FF/ 0'
entryToThisPageViaLobbyViewGG '
=GG( )
trueGG* .
;GG. /1
%friendRequestForCallbackMethodsClientII 1
=II2 3
newII4 71
%FriendRequestForCallbackMethodsClientII8 ]
(II] ^
newII^ a
InstanceContextIIb q
(IIq r
thisIIr v
)IIv w
)IIw x
;IIx y1
%friendRequestForCallbackMethodsClientJJ 1
.JJ1 2
ConnectJJ2 9
(JJ9 :
loggedProfileJJ: G
.JJG H
PlayerJJH N
.JJN O
NickNameJJO W
)JJW X
;JJX Y
thisLL 
.LL 

chatClientLL 
=LL 

chatClientLL (
;LL( )
thisMM 
.MM !
multiplayerGameClientMM &
=MM' (!
multiplayerGameClientMM) >
;MM> ?
FriendsBorderOO 
.OO 

VisibilityOO $
=OO% &

VisibilityOO' 1
.OO1 2
HiddenOO2 8
;OO8 9+
ConnectedFriendsForInviteBorderPP +
.PP+ ,

VisibilityPP, 6
=PP7 8

VisibilityPP9 C
.PPC D
VisiblePPD K
;PPK L4
(ShowConnectedFriendsListForInviteToLobbyQQ 4
(QQ4 5
)QQ5 6
;QQ6 7
}RR 	
privateVV 
voidVV )
CancelFriendshipButtonOnClickVV 2
(VV2 3
objectVV3 9
senderVV: @
,VV@ A
RoutedEventArgsVVB Q
eVVR S
)VVS T
{WW 	
ifXX 
(XX 
senderXX 
isXX 
ButtonXX  
buttonXX! '
)XX' (
{YY 
ifZZ 
(ZZ 
newZZ 
AlertPopUpGeneratorZZ +
(ZZ+ ,
)ZZ, -
.ZZ- ..
"OpenInternationalizedDesicionPopUpZZ. P
(ZZP Q
$strZZQ `
,ZZ` a
$str	ZZb У
)
ZZУ Ф
)
ZZФ Х
{[[ #
ServiceProfileReference\\ +
.\\+ ,
Players\\, 3
players\\4 ;
=\\< =
new\\> A#
ServiceProfileReference\\B Y
.\\Y Z
Players\\Z a
{]] 
IDPlayer^^  
=^^! "
loggedProfile^^# 0
.^^0 1
Player^^1 7
.^^7 8
IDPlayer^^8 @
,^^@ A
Names__ 
=__ 
loggedProfile__  -
.__- .
Player__. 4
.__4 5
Names__5 :
,__: ;
Surnames``  
=``! "
loggedProfile``# 0
.``0 1
Player``1 7
.``7 8
Surnames``8 @
,``@ A
Emailaa 
=aa 
loggedProfileaa  -
.aa- .
Playeraa. 4
.aa4 5
Emailaa5 :
,aa: ;
NickNamebb  
=bb! "
loggedProfilebb# 0
.bb0 1
Playerbb1 7
.bb7 8
NickNamebb8 @
,bb@ A
	BirthDatecc !
=cc" #
(cc$ %
DateTimecc% -
)cc- .
loggedProfilecc. ;
.cc; <
Playercc< B
.ccB C
	BirthDateccC L
,ccL M
Passworddd  
=dd! "
loggedProfiledd# 0
.dd0 1
Playerdd1 7
.dd7 8
Passworddd8 @
}ee 
;ee #
ServiceProfileReferencegg +
.gg+ ,
Profilesgg, 4
profilesgg5 =
=gg> ?
newgg@ C#
ServiceProfileReferenceggD [
.gg[ \
Profilesgg\ d
{hh 
	IDProfileii !
=ii" #
loggedProfileii$ 1
.ii1 2
	IDProfileii2 ;
,ii; <
Coinsjj 
=jj 
loggedProfilejj  -
.jj- .
Coinsjj. 3
,jj3 4
LoginStatuskk #
=kk$ %
loggedProfilekk& 3
.kk3 4
LoginStatuskk4 ?
,kk? @
Playersll 
=ll  !
playersll" )
}mm 
;mm 
ProfileClientoo !
profileClientoo" /
=oo0 1
newoo2 5
ProfileClientoo6 C
(ooC D
)ooD E
;ooE F

StackPanelpp 
parentpp %
=pp& '
VisualTreeHelperpp( 8
.pp8 9
	GetParentpp9 B
(ppB C
buttonppC I
)ppI J
asppK M

StackPanelppN X
;ppX Y
	TextBlockqq 
IDTextBlockqq )
=qq* +
(qq, -
	TextBlockqq- 6
)qq6 7
VisualTreeHelperqq7 G
.qqG H
GetChildqqH P
(qqP Q
parentqqQ W
,qqW X
$numqqY Z
)qqZ [
;qq[ \
Profilerr 
profile1rr $
=rr% &
profileClientrr' 4
.rr4 5 
GetProfileByPlayerIDrr5 I
(rrI J
longrrJ N
.rrN O
ParserrO T
(rrT U
IDTextBlockrrU `
.rr` a
Textrra e
)rre f
)rrf g
;rrg h#
ServiceProfileReferencett +
.tt+ ,
Playerstt, 3
players1tt4 <
=tt= >
newtt? B#
ServiceProfileReferencettC Z
.ttZ [
Playerstt[ b
{uu 
IDPlayervv  
=vv! "
profile1vv# +
.vv+ ,
Playervv, 2
.vv2 3
IDPlayervv3 ;
,vv; <
Namesww 
=ww 
profile1ww  (
.ww( )
Playerww) /
.ww/ 0
Namesww0 5
,ww5 6
Surnamesxx  
=xx! "
profile1xx# +
.xx+ ,
Playerxx, 2
.xx2 3
Surnamesxx3 ;
,xx; <
Emailyy 
=yy 
profile1yy  (
.yy( )
Playeryy) /
.yy/ 0
Emailyy0 5
,yy5 6
NickNamezz  
=zz! "
profile1zz# +
.zz+ ,
Playerzz, 2
.zz2 3
NickNamezz3 ;
,zz; <
	BirthDate{{ !
={{" #
({{$ %
DateTime{{% -
){{- .
profile1{{. 6
.{{6 7
Player{{7 =
.{{= >
	BirthDate{{> G
,{{G H
Password||  
=||! "
profile1||# +
.||+ ,
Player||, 2
.||2 3
Password||3 ;
}}} 
;}} #
ServiceProfileReference +
.+ ,
Profiles, 4
	profiles15 >
=? @
newA D#
ServiceProfileReferenceE \
.\ ]
Profiles] e
{
АА 
	IDProfile
ББ !
=
ББ" #
profile1
ББ$ ,
.
ББ, -
	IDProfile
ББ- 6
,
ББ6 7
Coins
ВВ 
=
ВВ 
profile1
ВВ  (
.
ВВ( )
Coins
ВВ) .
,
ВВ. /
LoginStatus
ГГ #
=
ГГ$ %
profile1
ГГ& .
.
ГГ. /
LoginStatus
ГГ/ :
,
ГГ: ;
Players
ДД 
=
ДД  !
players1
ДД" *
}
ЕЕ 
;
ЕЕ 
profileClient
ЗЗ !
.
ЗЗ! "
CancelFriendship
ЗЗ" 2
(
ЗЗ2 3
profiles
ИИ  
,
ИИ  !
	profiles1
ЙЙ !
)
КК 
;
КК 
new
ММ !
AlertPopUpGenerator
ММ +
(
ММ+ ,
)
ММ, -
.
ММ- ./
!OpenInternationalizedSuccessPopUp
ММ. O
(
ММO P
$str
ММP \
,
ММ\ ]
$strММ^ Й
)ММЙ К
;ММК Л
profileClient
ОО !
.
ОО! "
Close
ОО" '
(
ОО' (
)
ОО( )
;
ОО) *
}
ПП 
}
РР 
}
СС 	
private
УУ 
void
УУ 
ExitButtonOnClick
УУ &
(
УУ& '
object
УУ' -
sender
УУ. 4
,
УУ4 5
RoutedEventArgs
УУ6 E
e
УУF G
)
УУG H
{
ФФ 	3
%friendRequestForCallbackMethodsClient
ХХ 1
.
ХХ1 2

Disconnect
ХХ2 <
(
ХХ< =
loggedProfile
ХХ= J
.
ХХJ K
Player
ХХK Q
.
ХХQ R
NickName
ХХR Z
)
ХХZ [
;
ХХ[ \
NavigationService
ЧЧ 
navigationService
ЧЧ /
=
ЧЧ0 1
NavigationService
ЧЧ2 C
.
ЧЧC D"
GetNavigationService
ЧЧD X
(
ЧЧX Y
this
ЧЧY ]
)
ЧЧ] ^
;
ЧЧ^ _
navigationService
ШШ 
.
ШШ 
Navigate
ШШ &
(
ШШ& '
new
ШШ' *
MenuView
ШШ+ 3
(
ШШ3 4

mainWindow
ШШ4 >
,
ШШ> ?
loggedProfile
ШШ@ M
,
ШШM N-
profileForCallbackMethodsClient
ШШO n
)
ШШn o
)
ШШo p
;
ШШp q
}
ЩЩ 	
private
ЫЫ 
void
ЫЫ '
InviteFriendButtonOnClick
ЫЫ .
(
ЫЫ. /
object
ЫЫ/ 5
sender
ЫЫ6 <
,
ЫЫ< =
RoutedEventArgs
ЫЫ> M
e
ЫЫN O
)
ЫЫO P
{
ЬЬ 	
FriendsBorder
ЭЭ 
.
ЭЭ 

Visibility
ЭЭ $
=
ЭЭ% &

Visibility
ЭЭ' 1
.
ЭЭ1 2
Hidden
ЭЭ2 8
;
ЭЭ8 9%
SendFriendRequestBorder
ЮЮ #
.
ЮЮ# $

Visibility
ЮЮ$ .
=
ЮЮ/ 0

Visibility
ЮЮ1 ;
.
ЮЮ; <
Visible
ЮЮ< C
;
ЮЮC D
}
ЯЯ 	
private
бб 
void
бб ,
SeeFriendsRequestButtonOnClick
бб 3
(
бб3 4
object
бб4 :
sender
бб; A
,
ббA B
RoutedEventArgs
ббC R
e
ббS T
)
ббT U
{
вв 	+
ShowUpdatedFriendRequestsList
гг )
(
гг) *
)
гг* +
;
гг+ ,
FriendsBorder
дд 
.
дд 

Visibility
дд $
=
дд% &

Visibility
дд' 1
.
дд1 2
Hidden
дд2 8
;
дд8 9#
FriendsRequestsBorder
ее !
.
ее! "

Visibility
ее" ,
=
ее- .

Visibility
ее/ 9
.
ее9 :
Visible
ее: A
;
ееA B
}
жж 	
public
ии 
void
ии $
ShowUpdatedFriendsList
ии *
(
ии* +
)
ии+ ,
{
йй 	%
OnlineFriendsStackPanel
кк #
.
кк# $
Children
кк$ ,
.
кк, -
Clear
кк- 2
(
кк2 3
)
кк3 4
;
кк4 5&
OfflineFriendsStackPanel
лл $
.
лл$ %
Children
лл% -
.
лл- .
Clear
лл. 3
(
лл3 4
)
лл4 5
;
лл5 6
ProfileClient
нн 
profileClient
нн '
=
нн( )
new
нн* -
ProfileClient
нн. ;
(
нн; <
)
нн< =
;
нн= >
foreach
оо 
(
оо 
Profile
оо 
profile
оо $
in
оо% '
profileClient
оо( 5
.
оо5 6

GetFriends
оо6 @
(
оо@ A
loggedProfile
ооA N
.
ооN O
Player
ооO U
.
ооU V
IDPlayer
ооV ^
)
оо^ _
)
оо_ `
{
пп 
Border
░░ 
friendBorder
░░ #
=
░░$ %
new
░░& )
Border
░░* 0
{
▒▒ 
Height
▓▓ 
=
▓▓ 
$num
▓▓ 
,
▓▓  
Margin
││ 
=
││ 
new
││  
	Thickness
││! *
(
││* +
$num
││+ -
,
││- .
$num
││/ 1
,
││1 2
$num
││3 5
,
││5 6
$num
││7 8
)
││8 9
,
││9 :
CornerRadius
┤┤  
=
┤┤! "
new
┤┤# &
CornerRadius
┤┤' 3
(
┤┤3 4
$num
┤┤4 6
)
┤┤6 7
,
┤┤7 8

Background
╡╡ 
=
╡╡  
new
╡╡! $
SolidColorBrush
╡╡% 4
(
╡╡4 5
Colors
╡╡5 ;
.
╡╡; <
Black
╡╡< A
)
╡╡A B
}
╢╢ 
;
╢╢ 

StackPanel
╕╕ &
textAndButtonsStackPanel
╕╕ 3
=
╕╕4 5
new
╕╕6 9

StackPanel
╕╕: D
{
╣╣ 
Orientation
║║ 
=
║║  !
Orientation
║║" -
.
║║- .

Horizontal
║║. 8
}
╗╗ 
;
╗╗ 
	TextBlock
╜╜ 
idTextBlock
╜╜ %
=
╜╜& '
new
╜╜( +
	TextBlock
╜╜, 5
{
╛╛ 

Visibility
┐┐ 
=
┐┐  

Visibility
┐┐! +
.
┐┐+ ,
	Collapsed
┐┐, 5
,
┐┐5 6
Text
└└ 
=
└└ 
profile
└└ "
.
└└" #
	IDProfile
└└# ,
.
└└, -
ToString
└└- 5
(
└└5 6
)
└└6 7
}
┴┴ 
;
┴┴ 
Image
├├  
friendProfileImage
├├ (
=
├├) *
new
├├+ .
Image
├├/ 4
{
── 
Width
┼┼ 
=
┼┼ 
$num
┼┼ 
,
┼┼ 
Height
╞╞ 
=
╞╞ 
$num
╞╞ 
,
╞╞  
Margin
╟╟ 
=
╟╟ 
new
╟╟  
	Thickness
╟╟! *
(
╟╟* +
$num
╟╟+ -
,
╟╟- .
$num
╟╟/ 0
,
╟╟0 1
$num
╟╟2 3
,
╟╟3 4
$num
╟╟5 6
)
╟╟6 7
,
╟╟7 8
Source
╚╚ 
=
╚╚ 
new
╚╚  
ImageLoader
╚╚! ,
(
╚╚, -
)
╚╚- .
.
╚╚. /&
GetImageByPlayerNickname
╚╚/ G
(
╚╚G H
profile
╚╚H O
.
╚╚O P
Player
╚╚P V
.
╚╚V W
NickName
╚╚W _
)
╚╚_ `
}
╔╔ 
;
╔╔ 
	TextBlock
╦╦ 
nicknameTextBlock
╦╦ +
=
╦╦, -
new
╦╦. 1
	TextBlock
╦╦2 ;
{
╠╠ 

Foreground
══ 
=
══  
new
══! $
SolidColorBrush
══% 4
(
══4 5
Colors
══5 ;
.
══; <
White
══< A
)
══A B
,
══B C
Margin
╬╬ 
=
╬╬ 
new
╬╬  
	Thickness
╬╬! *
(
╬╬* +
$num
╬╬+ -
,
╬╬- .
$num
╬╬/ 0
,
╬╬0 1
$num
╬╬2 3
,
╬╬3 4
$num
╬╬5 6
)
╬╬6 7
,
╬╬7 8
Width
╧╧ 
=
╧╧ 
$num
╧╧ 
,
╧╧  
TextWrapping
╨╨  
=
╨╨! "
TextWrapping
╨╨# /
.
╨╨/ 0
Wrap
╨╨0 4
,
╨╨4 5
FontSize
╤╤ 
=
╤╤ 
$num
╤╤ !
,
╤╤! "
VerticalAlignment
╥╥ %
=
╥╥& '
VerticalAlignment
╥╥( 9
.
╥╥9 :
Center
╥╥: @
,
╥╥@ A
Text
╙╙ 
=
╙╙ 
profile
╙╙ "
.
╙╙" #
Player
╙╙# )
.
╙╙) *
NickName
╙╙* 2
}
╘╘ 
;
╘╘ 
Button
╓╓ $
cancelFriendshipButton
╓╓ -
=
╓╓. /
new
╓╓0 3
Button
╓╓4 :
{
╫╫ 
Style
╪╪ 
=
╪╪ 
(
╪╪ 
Style
╪╪ "
)
╪╪" #
FindResource
╪╪# /
(
╪╪/ 0
$str
╪╪0 ;
)
╪╪; <
,
╪╪< =
Height
┘┘ 
=
┘┘ 
$num
┘┘ 
,
┘┘  
Width
┌┌ 
=
┌┌ 
$num
┌┌ 
,
┌┌  !
HorizontalAlignment
██ '
=
██( )!
HorizontalAlignment
██* =
.
██= >
Right
██> C
,
██C D
Content
▄▄ 
=
▄▄ 
resourceManager
▄▄ -
.
▄▄- .
	GetString
▄▄. 7
(
▄▄7 8
$str
▄▄8 K
,
▄▄K L
cultureInfo
▄▄M X
)
▄▄X Y
,
▄▄Y Z
FontSize
▌▌ 
=
▌▌ 
$num
▌▌ !
,
▌▌! "
}
▐▐ 
;
▐▐ $
cancelFriendshipButton
рр &
.
рр& '
Click
рр' ,
+=
рр- /+
CancelFriendshipButtonOnClick
рр0 M
;
ррM N&
textAndButtonsStackPanel
тт (
.
тт( )
Children
тт) 1
.
тт1 2
Add
тт2 5
(
тт5 6
idTextBlock
тт6 A
)
ттA B
;
ттB C&
textAndButtonsStackPanel
уу (
.
уу( )
Children
уу) 1
.
уу1 2
Add
уу2 5
(
уу5 6 
friendProfileImage
уу6 H
)
ууH I
;
ууI J&
textAndButtonsStackPanel
фф (
.
фф( )
Children
фф) 1
.
фф1 2
Add
фф2 5
(
фф5 6
nicknameTextBlock
фф6 G
)
ффG H
;
ффH I&
textAndButtonsStackPanel
хх (
.
хх( )
Children
хх) 1
.
хх1 2
Add
хх2 5
(
хх5 6$
cancelFriendshipButton
хх6 L
)
ххL M
;
ххM N
friendBorder
чч 
.
чч 
Child
чч "
=
чч# $&
textAndButtonsStackPanel
чч% =
;
чч= >
if
щщ 
(
щщ 
profile
щщ 
.
щщ 
LoginStatus
щщ '
==
щщ( *
Enum
щщ+ /
.
щщ/ 0
GetName
щщ0 7
(
щщ7 8
typeof
щщ8 >
(
щщ> ?"
ProfileLoginStatuses
щщ? S
)
щщS T
,
щщT U"
ProfileLoginStatuses
щщV j
.
щщj k
Logged
щщk q
)
щщq r
)
щщr s
{
ъъ %
OnlineFriendsStackPanel
ыы +
.
ыы+ ,
Children
ыы, 4
.
ыы4 5
Add
ыы5 8
(
ыы8 9
friendBorder
ыы9 E
)
ыыE F
;
ыыF G
}
ьь 
if
юю 
(
юю 
profile
юю 
.
юю 
LoginStatus
юю '
==
юю( *
Enum
юю+ /
.
юю/ 0
GetName
юю0 7
(
юю7 8
typeof
юю8 >
(
юю> ?"
ProfileLoginStatuses
юю? S
)
ююS T
,
ююT U"
ProfileLoginStatuses
ююV j
.
ююj k
	NotLogged
ююk t
)
ююt u
)
ююu v
{
яя &
OfflineFriendsStackPanel
ЁЁ ,
.
ЁЁ, -
Children
ЁЁ- 5
.
ЁЁ5 6
Add
ЁЁ6 9
(
ЁЁ9 :
friendBorder
ЁЁ: F
)
ЁЁF G
;
ЁЁG H
}
ёё 
}
єє 
profileClient
її 
.
її 
Close
її 
(
її  
)
її  !
;
її! "
}
ЎЎ 	
private
√√ 
void
√√ !
CancelButtonOnClick
√√ (
(
√√( )
object
√√) /
sender
√√0 6
,
√√6 7
RoutedEventArgs
√√8 G
e
√√H I
)
√√I J
{
№№ 	$
ShowUpdatedFriendsList
¤¤ "
(
¤¤" #
)
¤¤# $
;
¤¤$ %%
SendFriendRequestBorder
■■ #
.
■■# $

Visibility
■■$ .
=
■■/ 0

Visibility
■■1 ;
.
■■; <
Hidden
■■< B
;
■■B C
FriendsBorder
   
.
   

Visibility
   $
=
  % &

Visibility
  ' 1
.
  1 2
Visible
  2 9
;
  9 :
}
АА 	
private
ВВ 
void
ВВ ,
SendFriendRequestButtonOnClick
ВВ 3
(
ВВ3 4
object
ВВ4 :
sender
ВВ; A
,
ВВA B
RoutedEventArgs
ВВC R
e
ВВS T
)
ВВT U
{
ГГ 	
if
ДД 
(
ДД G
9InvalidNicknameInSendFriendRequestTextFieldsTextGenerator
ДД I
(
ДДI J
)
ДДJ K
==
ДДL N
$str
ДДO Q
)
ДДQ R
{
ЕЕ 
if
ЖЖ 
(
ЖЖ 
new
ЖЖ 
	TextRange
ЖЖ !
(
ЖЖ! " 
MessageRichTextBox
ЖЖ" 4
.
ЖЖ4 5
Document
ЖЖ5 =
.
ЖЖ= >
ContentStart
ЖЖ> J
,
ЖЖJ K 
MessageRichTextBox
ЖЖL ^
.
ЖЖ^ _
Document
ЖЖ_ g
.
ЖЖg h

ContentEnd
ЖЖh r
)
ЖЖr s
.
ЖЖs t
Text
ЖЖt x
.
ЖЖx y
Length
ЖЖy 
<=ЖЖА В
$numЖЖГ Ж
)ЖЖЖ З
{
ЗЗ 
ProfileClient
ИИ !
profileClient
ИИ" /
=
ИИ0 1
new
ИИ2 5
ProfileClient
ИИ6 C
(
ИИC D
)
ИИD E
;
ИИE F
if
КК 
(
КК 
profileClient
КК %
.
КК% &(
GetProfileByPlayerNickname
КК& @
(
КК@ A
NicknameTextBox
ККA P
.
ККP Q
Text
ККQ U
)
ККU V
!=
ККW Y
null
ККZ ^
)
КК^ _
{
ЛЛ 
if
ММ 
(
ММ 
NicknameTextBox
ММ +
.
ММ+ ,
Text
ММ, 0
!=
ММ1 3
loggedProfile
ММ4 A
.
ММA B
Player
ММB H
.
ММH I
NickName
ММI Q
)
ММQ R
{
НН !
FriendRequestClient
ОО /!
friendRequestClient
ОО0 C
=
ООD E
new
ООF I!
FriendRequestClient
ООJ ]
(
ОО] ^
)
ОО^ _
;
ОО_ `
if
РР 
(
РР  
!
РР  !!
friendRequestClient
РР! 4
.
РР4 5T
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile
РР5 {
(
РР{ |
loggedProfile
СС  -
.
СС- .
	IDProfile
СС. 7
,
СС7 8
profileClient
ТТ  -
.
ТТ- .(
GetProfileByPlayerNickname
ТТ. H
(
ТТH I
NicknameTextBox
ТТI X
.
ТТX Y
Text
ТТY ]
)
ТТ] ^
.
ТТ^ _
	IDProfile
ТТ_ h
)
УУ  !
)
УУ! "
{
ФФ 
bool
ХХ  $M
?theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile
ХХ% d
=
ХХe f
false
ХХg l
;
ХХl m
foreach
ЦЦ  '
(
ЦЦ( )
Profile
ЦЦ) 0
p
ЦЦ1 2
in
ЦЦ3 5
profileClient
ЦЦ6 C
.
ЦЦC D

GetFriends
ЦЦD N
(
ЦЦN O
loggedProfile
ЦЦO \
.
ЦЦ\ ]
	IDProfile
ЦЦ] f
)
ЦЦf g
)
ЦЦg h
{
ЧЧ  !
if
ШШ$ &
(
ШШ' (
profileClient
ШШ( 5
.
ШШ5 6(
GetProfileByPlayerNickname
ШШ6 P
(
ШШP Q
NicknameTextBox
ШШQ `
.
ШШ` a
Text
ШШa e
)
ШШe f
.
ШШf g
Player
ШШg m
.
ШШm n
NickName
ШШn v
==
ШШw y
p
ШШz {
.
ШШ{ |
PlayerШШ| В
.ШШВ Г
NickNameШШГ Л
)ШШЛ М
{
ЩЩ$ %M
?theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile
ЪЪ( g
=
ЪЪh i
true
ЪЪj n
;
ЪЪn o
break
ЫЫ( -
;
ЫЫ- .
}
ЬЬ$ %
}
ЭЭ  !
if
ЯЯ  "
(
ЯЯ# $
!
ЯЯ$ %M
?theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile
ЯЯ% d
)
ЯЯd e
{
аа  !
if
бб$ &
(
бб' (
!
бб( )!
friendRequestClient
бб) <
.
бб< =[
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfileбб= Й
(ббЙ К
loggedProfile
вв( 5
.
вв5 6
	IDProfile
вв6 ?
,
вв? @
profileClient
гг( 5
.
гг5 6(
GetProfileByPlayerNickname
гг6 P
(
ггP Q
NicknameTextBox
ггQ `
.
гг` a
Text
ггa e
)
ггe f
.
ггf g
	IDProfile
ггg p
)
дд( )
)
дд) *
{
ее$ %+
ServiceFriendRequestReference
жж( E
.
жжE F
FriendRequests
жжF T
friendRequests
жжU c
=
жжd e
new
жжf i,
ServiceFriendRequestReferenceжжj З
.жжЗ И
FriendRequestsжжИ Ц
{
зз( )
Message
ии, 3
=
ии4 5
new
ии6 9
	TextRange
ии: C
(
ииC D 
MessageRichTextBox
ииD V
.
ииV W
Document
ииW _
.
ии_ `
ContentStart
ии` l
,
ииl m!
MessageRichTextBoxииn А
.ииА Б
DocumentииБ Й
.ииЙ К

ContentEndииК Ф
)ииФ Х
.ииХ Ц
TextииЦ Ъ
,ииЪ Ы
CreationDate
йй, 8
=
йй9 :
DateTime
йй; C
.
ййC D
Now
ййD G
,
ййG H
AceptationStatus
кк, <
=
кк= >
Enum
кк? C
.
ккC D
GetName
ккD K
(
ккK L
typeof
ккL R
(
ккR S-
FriendRequestAceptationStatuses
ккS r
)
ккr s
,
ккs t.
FriendRequestAceptationStatusesккu Ф
.ккФ Х
PendientккХ Э
)ккЭ Ю
,ккЮ Я
SendingStatus
лл, 9
=
лл: ;
Enum
лл< @
.
лл@ A
GetName
ллA H
(
ллH I
typeof
ллI O
(
ллO P*
FriendRequestSendingStatuses
ллP l
)
ллl m
,
ллm n+
FriendRequestSendingStatusesллo Л
.ллЛ М
SentллМ Р
)ллР С
}
мм( )
;
мм) *+
ServiceFriendRequestReference
оо( E
.
ооE F
Players
ооF M
players
ооN U
=
ооV W
new
ооX [+
ServiceFriendRequestReference
оо\ y
.
ооy z
Playersооz Б
{
пп( )
IDPlayer
░░, 4
=
░░5 6
loggedProfile
░░7 D
.
░░D E
Player
░░E K
.
░░K L
IDPlayer
░░L T
,
░░T U
Names
▒▒, 1
=
▒▒2 3
loggedProfile
▒▒4 A
.
▒▒A B
Player
▒▒B H
.
▒▒H I
Names
▒▒I N
,
▒▒N O
Surnames
▓▓, 4
=
▓▓5 6
loggedProfile
▓▓7 D
.
▓▓D E
Player
▓▓E K
.
▓▓K L
Surnames
▓▓L T
,
▓▓T U
Email
││, 1
=
││2 3
loggedProfile
││4 A
.
││A B
Player
││B H
.
││H I
Email
││I N
,
││N O
NickName
┤┤, 4
=
┤┤5 6
loggedProfile
┤┤7 D
.
┤┤D E
Player
┤┤E K
.
┤┤K L
NickName
┤┤L T
,
┤┤T U
	BirthDate
╡╡, 5
=
╡╡6 7
(
╡╡8 9
DateTime
╡╡9 A
)
╡╡A B
loggedProfile
╡╡B O
.
╡╡O P
Player
╡╡P V
.
╡╡V W
	BirthDate
╡╡W `
,
╡╡` a
Password
╢╢, 4
=
╢╢5 6
loggedProfile
╢╢7 D
.
╢╢D E
Player
╢╢E K
.
╢╢K L
Password
╢╢L T
}
╖╖( )
;
╖╖) *+
ServiceFriendRequestReference
╣╣( E
.
╣╣E F
Profiles
╣╣F N
profiles
╣╣O W
=
╣╣X Y
new
╣╣Z ]+
ServiceFriendRequestReference
╣╣^ {
.
╣╣{ |
Profiles╣╣| Д
{
║║( )
	IDProfile
╗╗, 5
=
╗╗6 7
loggedProfile
╗╗8 E
.
╗╗E F
	IDProfile
╗╗F O
,
╗╗O P
Coins
╝╝, 1
=
╝╝2 3
loggedProfile
╝╝4 A
.
╝╝A B
Coins
╝╝B G
,
╝╝G H
LoginStatus
╜╜, 7
=
╜╜8 9
loggedProfile
╜╜: G
.
╜╜G H
LoginStatus
╜╜H S
,
╜╜S T
Players
╛╛, 3
=
╛╛4 5
players
╛╛6 =
}
┐┐( )
;
┐┐) *
Profile
┴┴( /
profile1
┴┴0 8
=
┴┴9 :
profileClient
┴┴; H
.
┴┴H I(
GetProfileByPlayerNickname
┴┴I c
(
┴┴c d
NicknameTextBox
┴┴d s
.
┴┴s t
Text
┴┴t x
)
┴┴x y
;
┴┴y z+
ServiceFriendRequestReference
├├( E
.
├├E F
Players
├├F M
players1
├├N V
=
├├W X
new
├├Y \+
ServiceFriendRequestReference
├├] z
.
├├z {
Players├├{ В
{
──( )
IDPlayer
┼┼, 4
=
┼┼5 6
profile1
┼┼7 ?
.
┼┼? @
Player
┼┼@ F
.
┼┼F G
IDPlayer
┼┼G O
,
┼┼O P
Names
╞╞, 1
=
╞╞2 3
profile1
╞╞4 <
.
╞╞< =
Player
╞╞= C
.
╞╞C D
Names
╞╞D I
,
╞╞I J
Surnames
╟╟, 4
=
╟╟5 6
profile1
╟╟7 ?
.
╟╟? @
Player
╟╟@ F
.
╟╟F G
Surnames
╟╟G O
,
╟╟O P
Email
╚╚, 1
=
╚╚2 3
profile1
╚╚4 <
.
╚╚< =
Player
╚╚= C
.
╚╚C D
Email
╚╚D I
,
╚╚I J
NickName
╔╔, 4
=
╔╔5 6
profile1
╔╔7 ?
.
╔╔? @
Player
╔╔@ F
.
╔╔F G
NickName
╔╔G O
,
╔╔O P
	BirthDate
╩╩, 5
=
╩╩6 7
(
╩╩8 9
DateTime
╩╩9 A
)
╩╩A B
profile1
╩╩B J
.
╩╩J K
Player
╩╩K Q
.
╩╩Q R
	BirthDate
╩╩R [
,
╩╩[ \
Password
╦╦, 4
=
╦╦5 6
profile1
╦╦7 ?
.
╦╦? @
Player
╦╦@ F
.
╦╦F G
Password
╦╦G O
}
╠╠( )
;
╠╠) *+
ServiceFriendRequestReference
╬╬( E
.
╬╬E F
Profiles
╬╬F N
	profiles1
╬╬O X
=
╬╬Y Z
new
╬╬[ ^+
ServiceFriendRequestReference
╬╬_ |
.
╬╬| }
Profiles╬╬} Е
{
╧╧( )
	IDProfile
╨╨, 5
=
╨╨6 7
profile1
╨╨8 @
.
╨╨@ A
	IDProfile
╨╨A J
,
╨╨J K
Coins
╤╤, 1
=
╤╤2 3
profile1
╤╤4 <
.
╤╤< =
Coins
╤╤= B
,
╤╤B C
LoginStatus
╥╥, 7
=
╥╥8 9
profile1
╥╥: B
.
╥╥B C
LoginStatus
╥╥C N
,
╥╥N O
Players
╙╙, 3
=
╙╙4 5
players1
╙╙6 >
}
╘╘( )
;
╘╘) *
friendRequests
╓╓( 6
.
╓╓6 7
Profiles
╓╓7 ?
=
╓╓@ A
profiles
╓╓B J
;
╓╓J K
friendRequests
╫╫( 6
.
╫╫6 7
	Profiles1
╫╫7 @
=
╫╫A B
	profiles1
╫╫C L
;
╫╫L M!
friendRequestClient
┘┘( ;
.
┘┘; <
AddFriendRequest
┘┘< L
(
┘┘L M
friendRequests
┘┘M [
)
┘┘[ \
;
┘┘\ ]
new
██( +!
AlertPopUpGenerator
██, ?
(
██? @
)
██@ A
.
██A B/
!OpenInternationalizedSuccessPopUp
██B c
(
██c d
$str
██d p
,
██p q
$str██r У
)██У Ф
;██Ф Х$
ShowUpdatedFriendsList
▌▌( >
(
▌▌> ?
)
▌▌? @
;
▌▌@ A%
SendFriendRequestBorder
▐▐( ?
.
▐▐? @

Visibility
▐▐@ J
=
▐▐K L

Visibility
▐▐M W
.
▐▐W X
Hidden
▐▐X ^
;
▐▐^ _
FriendsBorder
▀▀( 5
.
▀▀5 6

Visibility
▀▀6 @
=
▀▀A B

Visibility
▀▀C M
.
▀▀M N
Visible
▀▀N U
;
▀▀U V
}
сс$ %
else
тт$ (
{
уу$ %
new
фф( +!
AlertPopUpGenerator
фф, ?
(
фф? @
)
фф@ A
.
ффA B-
OpenInternationalizedErrorPopUp
ффB a
(
ффa b
$str
ффb n
,
ффn o
$strффp ├
)фф├ ─
;фф─ ┼
}
хх$ %
}
цц  !
else
чч  $
{
шш  !
new
щщ$ '!
AlertPopUpGenerator
щщ( ;
(
щщ; <
)
щщ< =
.
щщ= >-
OpenInternationalizedErrorPopUp
щщ> ]
(
щщ] ^
$str
щщ^ j
,
щщj k
$strщщl ║
)щщ║ ╗
;щщ╗ ╝
}
ъъ  !
}
ыы 
else
ьь  
{
ээ 
new
юю  #!
AlertPopUpGenerator
юю$ 7
(
юю7 8
)
юю8 9
.
юю9 :-
OpenInternationalizedErrorPopUp
юю: Y
(
ююY Z
$str
ююZ f
,
ююf g
$strююh Ь
)ююЬ Э
;ююЭ Ю
}
яя !
friendRequestClient
ЁЁ /
.
ЁЁ/ 0
Close
ЁЁ0 5
(
ЁЁ5 6
)
ЁЁ6 7
;
ЁЁ7 8
}
ЄЄ 
else
єє 
{
ЇЇ 
new
її !
AlertPopUpGenerator
її  3
(
її3 4
)
її4 5
.
її5 6-
OpenInternationalizedErrorPopUp
її6 U
(
їїU V
$str
їїV b
,
їїb c
$strїїd С
)їїС Т
;їїТ У
}
ЎЎ 
}
°° 
else
∙∙ 
{
·· 
new
√√ !
AlertPopUpGenerator
√√ /
(
√√/ 0
)
√√0 1
.
√√1 2-
OpenInternationalizedErrorPopUp
√√2 Q
(
√√Q R
$str
√√R ^
,
√√^ _
$str√√` Ы
)√√Ы Ь
;√√Ь Э
}
№№ 
profileClient
■■ !
.
■■! "
Close
■■" '
(
■■' (
)
■■( )
;
■■) *
}
АА 
else
ББ 
{
ВВ 
new
ГГ !
AlertPopUpGenerator
ГГ +
(
ГГ+ ,
)
ГГ, -
.
ГГ- .-
OpenInternationalizedErrorPopUp
ГГ. M
(
ГГM N
$str
ГГN Z
,
ГГZ [
$strГГ\ С
)ГГС Т
;ГГТ У
}
ДД 
}
ЕЕ 
else
ЖЖ 
{
ЗЗ 
new
ИИ !
AlertPopUpGenerator
ИИ '
(
ИИ' (
)
ИИ( )
.
ИИ) *
OpenErrorPopUp
ИИ* 8
(
ИИ8 9
$str
ИИ9 E
,
ИИE FH
9InvalidNicknameInSendFriendRequestTextFieldsTextGeneratorИИG А
(ИИА Б
)ИИБ В
)ИИВ Г
;ИИГ Д
}
ЙЙ 
}
ЛЛ 	
private
РР 
void
РР 
BackButtonOnClick
РР &
(
РР& '
object
РР' -
sender
РР. 4
,
РР4 5
RoutedEventArgs
РР6 E
e
РРF G
)
РРG H
{
СС 	$
ShowUpdatedFriendsList
ТТ "
(
ТТ" #
)
ТТ# $
;
ТТ$ %#
FriendsRequestsBorder
УУ !
.
УУ! "

Visibility
УУ" ,
=
УУ- .

Visibility
УУ/ 9
.
УУ9 :
Hidden
УУ: @
;
УУ@ A
FriendsBorder
ФФ 
.
ФФ 

Visibility
ФФ $
=
ФФ% &

Visibility
ФФ' 1
.
ФФ1 2
Visible
ФФ2 9
;
ФФ9 :
}
ХХ 	
private
ЧЧ 
void
ЧЧ "
DetailsButtonOnClick
ЧЧ )
(
ЧЧ) *
object
ЧЧ* 0
sender
ЧЧ1 7
,
ЧЧ7 8
RoutedEventArgs
ЧЧ9 H
e
ЧЧI J
)
ЧЧJ K
{
ШШ 	#
FriendsRequestsBorder
ЩЩ !
.
ЩЩ! "

Visibility
ЩЩ" ,
=
ЩЩ- .

Visibility
ЩЩ/ 9
.
ЩЩ9 :
Hidden
ЩЩ: @
;
ЩЩ@ A(
FriendRequestDetailsBorder
ЪЪ &
.
ЪЪ& '

Visibility
ЪЪ' 1
=
ЪЪ2 3

Visibility
ЪЪ4 >
.
ЪЪ> ?
Visible
ЪЪ? F
;
ЪЪF G
if
ЬЬ 
(
ЬЬ 
sender
ЬЬ 
is
ЬЬ 
Button
ЬЬ  
button
ЬЬ! '
)
ЬЬ' (
{
ЭЭ 

StackPanel
ЮЮ 
parent
ЮЮ !
=
ЮЮ" #
VisualTreeHelper
ЮЮ$ 4
.
ЮЮ4 5
	GetParent
ЮЮ5 >
(
ЮЮ> ?
button
ЮЮ? E
)
ЮЮE F
as
ЮЮG I

StackPanel
ЮЮJ T
;
ЮЮT U
	TextBlock
аа 
IDTextBlock
аа %
=
аа& '
(
аа( )
	TextBlock
аа) 2
)
аа2 3
VisualTreeHelper
аа3 C
.
ааC D
GetChild
ааD L
(
ааL M
parent
ааM S
,
ааS T
$num
ааU V
)
ааV W
;
ааW X!
FriendRequestClient
вв #!
friendRequestClient
вв$ 7
=
вв8 9
new
вв: =!
FriendRequestClient
вв> Q
(
ввQ R
)
ввR S
;
ввS T
FriendRequest
дд 
friendRequest
дд +
=
дд, -!
friendRequestClient
дд. A
.
ддA B"
GetFriendRequestByID
ддB V
(
ддV W
long
ддW [
.
дд[ \
Parse
дд\ a
(
ддa b
IDTextBlock
ддb m
.
ддm n
Text
ддn r
)
ддr s
)
ддs t
;
ддt u
NicknameLabel
жж 
.
жж 
Content
жж %
=
жж& '
friendRequest
жж( 5
.
жж5 6
Profile
жж6 =
.
жж= >
Player
жж> D
.
жжD E
NickName
жжE M
;
жжM N
CreationDateLabel
зз !
.
зз! "
Content
зз" )
=
зз* +
friendRequest
зз, 9
.
зз9 :
CreationDate
зз: F
;
ззF G
MessageTextBlock
ии  
.
ии  !
Text
ии! %
=
ии& '
friendRequest
ии( 5
.
ии5 6
Message
ии6 =
;
ии= >"
IDFriendRequestLabel
йй $
.
йй$ %
Content
йй% ,
=
йй- .
friendRequest
йй/ <
.
йй< =
IDFriendRequest
йй= L
;
ййL M
bool
лл (
theButtonsAreShowAndHidden
лл /
=
лл0 1
false
лл2 7
;
лл7 8
foreach
мм 
(
мм 
var
мм )
receivedFriendRequestBorder
мм 8
in
мм9 ;/
!ReceivedFriendsRequestsStackPanel
мм< ]
.
мм] ^
Children
мм^ f
)
ммf g
{
нн 
if
оо 
(
оо )
receivedFriendRequestBorder
оо 3
is
оо4 6
FrameworkElement
оо7 G
frameworkElement
ооH X
)
ооX Y
{
пп 
if
░░ 
(
░░ 
frameworkElement
░░ ,
is
░░- /
Border
░░0 6
border
░░7 =
)
░░= >
{
▒▒ 

StackPanel
▓▓ &
borderStackPanel
▓▓' 7
=
▓▓8 9
(
▓▓: ;

StackPanel
▓▓; E
)
▓▓E F
border
▓▓F L
.
▓▓L M
Child
▓▓M R
;
▓▓R S
	TextBlock
││ %4
&textBlockOfSelectedFriendRequestBorder
││& L
=
││M N
(
││O P
	TextBlock
││P Y
)
││Y Z
VisualTreeHelper
││Z j
.
││j k
GetChild
││k s
(
││s t
borderStackPanel││t Д
,││Д Е
$num││Ж З
)││З И
;││И Й
if
╡╡ 
(
╡╡  
long
╡╡  $
.
╡╡$ %
Parse
╡╡% *
(
╡╡* +4
&textBlockOfSelectedFriendRequestBorder
╡╡+ Q
.
╡╡Q R
Text
╡╡R V
)
╡╡V W
==
╡╡X Z
long
╡╡[ _
.
╡╡_ `
Parse
╡╡` e
(
╡╡e f
IDTextBlock
╡╡f q
.
╡╡q r
Text
╡╡r v
)
╡╡v w
)
╡╡w x
{
╢╢ '
AcceptFriendRequestButton
╖╖  9
.
╖╖9 :

Visibility
╖╖: D
=
╖╖E F

Visibility
╖╖G Q
.
╖╖Q R
Visible
╖╖R Y
;
╖╖Y Z'
CancelFriendRequestButton
╕╕  9
.
╕╕9 :

Visibility
╕╕: D
=
╕╕E F

Visibility
╕╕G Q
.
╕╕Q R
	Collapsed
╕╕R [
;
╕╕[ \'
RejectFriendRequestButton
╣╣  9
.
╣╣9 :

Visibility
╣╣: D
=
╣╣E F

Visibility
╣╣G Q
.
╣╣Q R
Visible
╣╣R Y
;
╣╣Y Z
BackButton1
║║  +
.
║║+ ,

Visibility
║║, 6
=
║║7 8

Visibility
║║9 C
.
║║C D
Visible
║║D K
;
║║K L(
theButtonsAreShowAndHidden
╗╗  :
=
╗╗; <
true
╗╗= A
;
╗╗A B
break
╝╝  %
;
╝╝% &
}
╜╜ 
}
╛╛ 
}
┐┐ 
}
└└ 
if
┬┬ 
(
┬┬ 
!
┬┬ (
theButtonsAreShowAndHidden
┬┬ /
)
┬┬/ 0
{
├├ 
foreach
── 
(
── 
var
──  %
sentFriendRequestBorder
──! 8
in
──9 ;+
SentFriendsRequestsStackPanel
──< Y
.
──Y Z
Children
──Z b
)
──b c
{
┼┼ 
if
╞╞ 
(
╞╞ %
sentFriendRequestBorder
╞╞ 3
is
╞╞4 6
FrameworkElement
╞╞7 G
frameworkElement
╞╞H X
)
╞╞X Y
{
╟╟ 
if
╚╚ 
(
╚╚  
frameworkElement
╚╚  0
is
╚╚1 3
Border
╚╚4 :
border
╚╚; A
)
╚╚A B
{
╔╔ 

StackPanel
╩╩  *
borderStackPanel
╩╩+ ;
=
╩╩< =
(
╩╩> ?

StackPanel
╩╩? I
)
╩╩I J
border
╩╩J P
.
╩╩P Q
Child
╩╩Q V
;
╩╩V W
	TextBlock
╦╦  )4
&textBlockOfSelectedFriendRequestBorder
╦╦* P
=
╦╦Q R
(
╦╦S T
	TextBlock
╦╦T ]
)
╦╦] ^
VisualTreeHelper
╦╦^ n
.
╦╦n o
GetChild
╦╦o w
(
╦╦w x
borderStackPanel╦╦x И
,╦╦И Й
$num╦╦К Л
)╦╦Л М
;╦╦М Н
if
══  "
(
══# $
long
══$ (
.
══( )
Parse
══) .
(
══. /4
&textBlockOfSelectedFriendRequestBorder
══/ U
.
══U V
Text
══V Z
)
══Z [
==
══\ ^
long
══_ c
.
══c d
Parse
══d i
(
══i j
IDTextBlock
══j u
.
══u v
Text
══v z
)
══z {
)
══{ |
{
╬╬  !'
AcceptFriendRequestButton
╧╧$ =
.
╧╧= >

Visibility
╧╧> H
=
╧╧I J

Visibility
╧╧K U
.
╧╧U V
	Collapsed
╧╧V _
;
╧╧_ `'
CancelFriendRequestButton
╨╨$ =
.
╨╨= >

Visibility
╨╨> H
=
╨╨I J

Visibility
╨╨K U
.
╨╨U V
Visible
╨╨V ]
;
╨╨] ^'
RejectFriendRequestButton
╤╤$ =
.
╤╤= >

Visibility
╤╤> H
=
╤╤I J

Visibility
╤╤K U
.
╤╤U V
	Collapsed
╤╤V _
;
╤╤_ `
BackButton1
╥╥$ /
.
╥╥/ 0

Visibility
╥╥0 :
=
╥╥; <

Visibility
╥╥= G
.
╥╥G H
Visible
╥╥H O
;
╥╥O P(
theButtonsAreShowAndHidden
╙╙$ >
=
╙╙? @
true
╙╙A E
;
╙╙E F
break
╘╘$ )
;
╘╘) *
}
╒╒  !
}
╓╓ 
}
╫╫ 
}
╪╪ 
}
┘┘ !
friendRequestClient
██ #
.
██# $
Close
██$ )
(
██) *
)
██* +
;
██+ ,
}
▄▄ 
}
▌▌ 	
public
▀▀ 
void
▀▀ +
ShowUpdatedFriendRequestsList
▀▀ 1
(
▀▀1 2
)
▀▀2 3
{
рр 	/
!ReceivedFriendsRequestsStackPanel
сс -
.
сс- .
Children
сс. 6
.
сс6 7
Clear
сс7 <
(
сс< =
)
сс= >
;
сс> ?+
SentFriendsRequestsStackPanel
тт )
.
тт) *
Children
тт* 2
.
тт2 3
Clear
тт3 8
(
тт8 9
)
тт9 :
;
тт: ;!
FriendRequestClient
фф !
friendRequestClient
фф  3
=
фф4 5
new
фф6 9!
FriendRequestClient
фф: M
(
ффM N
)
ффN O
;
ффO P3
%FriendRequestForCallbackMethodsClient
хх 13
%friendRequestForCallbackMethodsClient
хх2 W
=
ххX Y
new
ххZ ]4
%FriendRequestForCallbackMethodsClientхх^ Г
(ххГ Д
newххД З
InstanceContextххИ Ч
(ххЧ Ш
thisххШ Ь
)ххЬ Э
)ххЭ Ю
;ххЮ Я
foreach
цц 
(
цц 
FriendRequest
цц "
friendRequest
цц# 0
in
цц1 3!
friendRequestClient
цц4 G
.
ццG HB
4GetPendientsForAceptationFriendsRequestsByProfile1ID
ццH |
(
цц| }
loggedProfileцц} К
.ццК Л
	IDProfileццЛ Ф
)ццФ Х
)ццХ Ц
{
чч 
Border
шш )
receivedFriendRequestBorder
шш 2
=
шш3 4
new
шш5 8
Border
шш9 ?
{
щщ 
Height
ъъ 
=
ъъ 
$num
ъъ 
,
ъъ  
Margin
ыы 
=
ыы 
new
ыы  
	Thickness
ыы! *
(
ыы* +
$num
ыы+ -
,
ыы- .
$num
ыы/ 1
,
ыы1 2
$num
ыы3 5
,
ыы5 6
$num
ыы7 8
)
ыы8 9
,
ыы9 :
CornerRadius
ьь  
=
ьь! "
new
ьь# &
CornerRadius
ьь' 3
(
ьь3 4
$num
ьь4 6
)
ьь6 7
,
ьь7 8

Background
ээ 
=
ээ  
new
ээ! $
SolidColorBrush
ээ% 4
(
ээ4 5
Colors
ээ5 ;
.
ээ; <
Black
ээ< A
)
ээA B
}
юю 
;
юю 

StackPanel
ЁЁ &
textAndButtonsStackPanel
ЁЁ 3
=
ЁЁ4 5
new
ЁЁ6 9

StackPanel
ЁЁ: D
{
ёё 
Orientation
ЄЄ 
=
ЄЄ  !
Orientation
ЄЄ" -
.
ЄЄ- .

Horizontal
ЄЄ. 8
}
єє 
;
єє 
	TextBlock
її 
idTextBlock
її %
=
її& '
new
її( +
	TextBlock
її, 5
{
ЎЎ 

Visibility
ўў 
=
ўў  

Visibility
ўў! +
.
ўў+ ,
	Collapsed
ўў, 5
,
ўў5 6
Text
°° 
=
°° 
friendRequest
°° (
.
°°( )
IDFriendRequest
°°) 8
.
°°8 9
ToString
°°9 A
(
°°A B
)
°°B C
}
∙∙ 
;
∙∙ 
	TextBlock
√√ 
fromTextBlock
√√ '
=
√√( )
new
√√* -
	TextBlock
√√. 7
{
№№ 

Foreground
¤¤ 
=
¤¤  
new
¤¤! $
SolidColorBrush
¤¤% 4
(
¤¤4 5
Colors
¤¤5 ;
.
¤¤; <
White
¤¤< A
)
¤¤A B
,
¤¤B C
Margin
■■ 
=
■■ 
new
■■  
	Thickness
■■! *
(
■■* +
$num
■■+ -
,
■■- .
$num
■■/ 0
,
■■0 1
$num
■■2 3
,
■■3 4
$num
■■5 6
)
■■6 7
,
■■7 8
Width
   
=
   
$num
   
,
    
TextWrapping
АА  
=
АА! "
TextWrapping
АА# /
.
АА/ 0
Wrap
АА0 4
,
АА4 5
FontSize
ББ 
=
ББ 
$num
ББ !
,
ББ! "
VerticalAlignment
ВВ %
=
ВВ& '
VerticalAlignment
ВВ( 9
.
ВВ9 :
Center
ВВ: @
,
ВВ@ A
Text
ГГ 
=
ГГ 
resourceManager
ГГ *
.
ГГ* +
	GetString
ГГ+ 4
(
ГГ4 5
$str
ГГ5 ;
,
ГГ; <
cultureInfo
ГГ= H
)
ГГH I
+
ГГJ K
$str
ГГL P
+
ГГQ R
friendRequest
ГГS `
.
ГГ` a
Profile
ГГa h
.
ГГh i
Player
ГГi o
.
ГГo p
NickName
ГГp x
}
ДД 
;
ДД 
	TextBlock
ЖЖ 
dateTextBlock
ЖЖ '
=
ЖЖ( )
new
ЖЖ* -
	TextBlock
ЖЖ. 7
{
ЗЗ 

Foreground
ИИ 
=
ИИ  
new
ИИ! $
SolidColorBrush
ИИ% 4
(
ИИ4 5
Colors
ИИ5 ;
.
ИИ; <
White
ИИ< A
)
ИИA B
,
ИИB C
Margin
ЙЙ 
=
ЙЙ 
new
ЙЙ  
	Thickness
ЙЙ! *
(
ЙЙ* +
$num
ЙЙ+ -
,
ЙЙ- .
$num
ЙЙ/ 0
,
ЙЙ0 1
$num
ЙЙ2 3
,
ЙЙ3 4
$num
ЙЙ5 6
)
ЙЙ6 7
,
ЙЙ7 8
Width
КК 
=
КК 
$num
КК 
,
КК  
TextWrapping
ЛЛ  
=
ЛЛ! "
TextWrapping
ЛЛ# /
.
ЛЛ/ 0
Wrap
ЛЛ0 4
,
ЛЛ4 5
FontSize
ММ 
=
ММ 
$num
ММ !
,
ММ! "
VerticalAlignment
НН %
=
НН& '
VerticalAlignment
НН( 9
.
НН9 :
Center
НН: @
,
НН@ A
Text
ОО 
=
ОО 
resourceManager
ОО *
.
ОО* +
	GetString
ОО+ 4
(
ОО4 5
$str
ОО5 ;
,
ОО; <
cultureInfo
ОО= H
)
ООH I
+
ООJ K
$str
ООL P
+
ООQ R
friendRequest
ООS `
.
ОО` a
CreationDate
ООa m
.
ООm n
ToString
ООn v
(
ООv w
)
ООw x
}
ПП 
;
ПП 
Button
СС 
detailsButton
СС $
=
СС% &
new
СС' *
Button
СС+ 1
{
ТТ 
Style
УУ 
=
УУ 
(
УУ 
Style
УУ "
)
УУ" #
FindResource
УУ# /
(
УУ/ 0
$str
УУ0 <
)
УУ< =
,
УУ= >
Height
ФФ 
=
ФФ 
$num
ФФ 
,
ФФ  
Width
ХХ 
=
ХХ 
$num
ХХ 
,
ХХ 

Background
ЦЦ 
=
ЦЦ  
new
ЦЦ! $
SolidColorBrush
ЦЦ% 4
(
ЦЦ4 5
(
ЦЦ5 6
Color
ЦЦ6 ;
)
ЦЦ; <
ColorConverter
ЦЦ< J
.
ЦЦJ K
ConvertFromString
ЦЦK \
(
ЦЦ\ ]
$str
ЦЦ] h
)
ЦЦh i
)
ЦЦi j
,
ЦЦj k
Margin
ЧЧ 
=
ЧЧ 
new
ЧЧ  
	Thickness
ЧЧ! *
(
ЧЧ* +
$num
ЧЧ+ -
,
ЧЧ- .
$num
ЧЧ/ 0
,
ЧЧ0 1
$num
ЧЧ2 3
,
ЧЧ3 4
$num
ЧЧ5 6
)
ЧЧ6 7
,
ЧЧ7 8
Content
ШШ 
=
ШШ 
resourceManager
ШШ -
.
ШШ- .
	GetString
ШШ. 7
(
ШШ7 8
$str
ШШ8 A
,
ШШA B
cultureInfo
ШШC N
)
ШШN O
,
ШШO P
FontSize
ЩЩ 
=
ЩЩ 
$num
ЩЩ !
}
ЪЪ 
;
ЪЪ 
detailsButton
ЬЬ 
.
ЬЬ 
Click
ЬЬ #
+=
ЬЬ$ &"
DetailsButtonOnClick
ЬЬ' ;
;
ЬЬ; <&
textAndButtonsStackPanel
ЮЮ (
.
ЮЮ( )
Children
ЮЮ) 1
.
ЮЮ1 2
Add
ЮЮ2 5
(
ЮЮ5 6
idTextBlock
ЮЮ6 A
)
ЮЮA B
;
ЮЮB C&
textAndButtonsStackPanel
ЯЯ (
.
ЯЯ( )
Children
ЯЯ) 1
.
ЯЯ1 2
Add
ЯЯ2 5
(
ЯЯ5 6
fromTextBlock
ЯЯ6 C
)
ЯЯC D
;
ЯЯD E&
textAndButtonsStackPanel
аа (
.
аа( )
Children
аа) 1
.
аа1 2
Add
аа2 5
(
аа5 6
dateTextBlock
аа6 C
)
ааC D
;
ааD E&
textAndButtonsStackPanel
бб (
.
бб( )
Children
бб) 1
.
бб1 2
Add
бб2 5
(
бб5 6
detailsButton
бб6 C
)
ббC D
;
ббD E)
receivedFriendRequestBorder
гг +
.
гг+ ,
Child
гг, 1
=
гг2 3&
textAndButtonsStackPanel
гг4 L
;
ггL M/
!ReceivedFriendsRequestsStackPanel
ее 1
.
ее1 2
Children
ее2 :
.
ее: ;
Add
ее; >
(
ее> ?)
receivedFriendRequestBorder
ее? Z
)
ееZ [
;
ее[ \
}
жж 
foreach
йй 
(
йй 
FriendRequest
йй "
friendRequest
йй# 0
in
йй1 3!
friendRequestClient
йй4 G
.
ййG HI
:GetSentAndPendientsForAceptationFriendsRequestsByProfileIDййH В
(ййВ Г
loggedProfileййГ Р
.ййР С
	IDProfileййС Ъ
)ййЪ Ы
)ййЫ Ь
{
кк 
Border
лл %
sentFriendRequestBorder
лл .
=
лл/ 0
new
лл1 4
Border
лл5 ;
{
мм 
Height
нн 
=
нн 
$num
нн 
,
нн  
Margin
оо 
=
оо 
new
оо  
	Thickness
оо! *
(
оо* +
$num
оо+ -
,
оо- .
$num
оо/ 1
,
оо1 2
$num
оо3 5
,
оо5 6
$num
оо7 8
)
оо8 9
,
оо9 :
CornerRadius
пп  
=
пп! "
new
пп# &
CornerRadius
пп' 3
(
пп3 4
$num
пп4 6
)
пп6 7
,
пп7 8

Background
░░ 
=
░░  
new
░░! $
SolidColorBrush
░░% 4
(
░░4 5
Colors
░░5 ;
.
░░; <
Black
░░< A
)
░░A B
}
▒▒ 
;
▒▒ 

StackPanel
││ &
textAndButtonsStackPanel
││ 3
=
││4 5
new
││6 9

StackPanel
││: D
{
┤┤ 
Orientation
╡╡ 
=
╡╡  !
Orientation
╡╡" -
.
╡╡- .

Horizontal
╡╡. 8
}
╢╢ 
;
╢╢ 
	TextBlock
╕╕ 
idTextBlock
╕╕ %
=
╕╕& '
new
╕╕( +
	TextBlock
╕╕, 5
{
╣╣ 

Visibility
║║ 
=
║║  

Visibility
║║! +
.
║║+ ,
	Collapsed
║║, 5
,
║║5 6
Text
╗╗ 
=
╗╗ 
friendRequest
╗╗ (
.
╗╗( )
IDFriendRequest
╗╗) 8
.
╗╗8 9
ToString
╗╗9 A
(
╗╗A B
)
╗╗B C
}
╝╝ 
;
╝╝ 
	TextBlock
╛╛ 
forTextBlock
╛╛ &
=
╛╛' (
new
╛╛) ,
	TextBlock
╛╛- 6
{
┐┐ 

Foreground
└└ 
=
└└  
new
└└! $
SolidColorBrush
└└% 4
(
└└4 5
Colors
└└5 ;
.
└└; <
White
└└< A
)
└└A B
,
└└B C
Margin
┴┴ 
=
┴┴ 
new
┴┴  
	Thickness
┴┴! *
(
┴┴* +
$num
┴┴+ -
,
┴┴- .
$num
┴┴/ 0
,
┴┴0 1
$num
┴┴2 3
,
┴┴3 4
$num
┴┴5 6
)
┴┴6 7
,
┴┴7 8
Width
┬┬ 
=
┬┬ 
$num
┬┬ 
,
┬┬  
TextWrapping
├├  
=
├├! "
TextWrapping
├├# /
.
├├/ 0
Wrap
├├0 4
,
├├4 5
FontSize
── 
=
── 
$num
── !
,
──! "
VerticalAlignment
┼┼ %
=
┼┼& '
VerticalAlignment
┼┼( 9
.
┼┼9 :
Center
┼┼: @
,
┼┼@ A
Text
╞╞ 
=
╞╞ 
resourceManager
╞╞ *
.
╞╞* +
	GetString
╞╞+ 4
(
╞╞4 5
$str
╞╞5 :
,
╞╞: ;
cultureInfo
╞╞< G
)
╞╞G H
+
╞╞I J
$str
╞╞K O
+
╞╞P Q
friendRequest
╞╞R _
.
╞╞_ `
Profile1
╞╞` h
.
╞╞h i
Player
╞╞i o
.
╞╞o p
NickName
╞╞p x
}
╟╟ 
;
╟╟ 
	TextBlock
╔╔ 
dateTextBlock
╔╔ '
=
╔╔( )
new
╔╔* -
	TextBlock
╔╔. 7
{
╩╩ 

Foreground
╦╦ 
=
╦╦  
new
╦╦! $
SolidColorBrush
╦╦% 4
(
╦╦4 5
Colors
╦╦5 ;
.
╦╦; <
White
╦╦< A
)
╦╦A B
,
╦╦B C
Margin
╠╠ 
=
╠╠ 
new
╠╠  
	Thickness
╠╠! *
(
╠╠* +
$num
╠╠+ -
,
╠╠- .
$num
╠╠/ 0
,
╠╠0 1
$num
╠╠2 3
,
╠╠3 4
$num
╠╠5 6
)
╠╠6 7
,
╠╠7 8
Width
══ 
=
══ 
$num
══ 
,
══  
TextWrapping
╬╬  
=
╬╬! "
TextWrapping
╬╬# /
.
╬╬/ 0
Wrap
╬╬0 4
,
╬╬4 5
FontSize
╧╧ 
=
╧╧ 
$num
╧╧ !
,
╧╧! "
VerticalAlignment
╨╨ %
=
╨╨& '
VerticalAlignment
╨╨( 9
.
╨╨9 :
Center
╨╨: @
,
╨╨@ A
Text
╤╤ 
=
╤╤ 
resourceManager
╤╤ *
.
╤╤* +
	GetString
╤╤+ 4
(
╤╤4 5
$str
╤╤5 ;
,
╤╤; <
cultureInfo
╤╤= H
)
╤╤H I
+
╤╤J K
$str
╤╤L P
+
╤╤Q R
friendRequest
╤╤S `
.
╤╤` a
CreationDate
╤╤a m
.
╤╤m n
ToString
╤╤n v
(
╤╤v w
)
╤╤w x
}
╥╥ 
;
╥╥ 
Button
╘╘ 
detailsButton
╘╘ $
=
╘╘% &
new
╘╘' *
Button
╘╘+ 1
{
╒╒ 
Style
╓╓ 
=
╓╓ 
(
╓╓ 
Style
╓╓ "
)
╓╓" #
FindResource
╓╓# /
(
╓╓/ 0
$str
╓╓0 <
)
╓╓< =
,
╓╓= >
Height
╫╫ 
=
╫╫ 
$num
╫╫ 
,
╫╫  
Width
╪╪ 
=
╪╪ 
$num
╪╪ 
,
╪╪ 
Margin
┘┘ 
=
┘┘ 
new
┘┘  
	Thickness
┘┘! *
(
┘┘* +
$num
┘┘+ -
,
┘┘- .
$num
┘┘/ 0
,
┘┘0 1
$num
┘┘2 3
,
┘┘3 4
$num
┘┘5 6
)
┘┘6 7
,
┘┘7 8
Content
┌┌ 
=
┌┌ 
resourceManager
┌┌ -
.
┌┌- .
	GetString
┌┌. 7
(
┌┌7 8
$str
┌┌8 A
,
┌┌A B
cultureInfo
┌┌C N
)
┌┌N O
,
┌┌O P
FontSize
██ 
=
██ 
$num
██ !
}
▄▄ 
;
▄▄ 
detailsButton
▐▐ 
.
▐▐ 
Click
▐▐ #
+=
▐▐$ &"
DetailsButtonOnClick
▐▐' ;
;
▐▐; <&
textAndButtonsStackPanel
рр (
.
рр( )
Children
рр) 1
.
рр1 2
Add
рр2 5
(
рр5 6
idTextBlock
рр6 A
)
ррA B
;
ррB C&
textAndButtonsStackPanel
сс (
.
сс( )
Children
сс) 1
.
сс1 2
Add
сс2 5
(
сс5 6
forTextBlock
сс6 B
)
ссB C
;
ссC D&
textAndButtonsStackPanel
тт (
.
тт( )
Children
тт) 1
.
тт1 2
Add
тт2 5
(
тт5 6
dateTextBlock
тт6 C
)
ттC D
;
ттD E&
textAndButtonsStackPanel
уу (
.
уу( )
Children
уу) 1
.
уу1 2
Add
уу2 5
(
уу5 6
detailsButton
уу6 C
)
ууC D
;
ууD E%
sentFriendRequestBorder
хх '
.
хх' (
Child
хх( -
=
хх. /&
textAndButtonsStackPanel
хх0 H
;
ххH I+
SentFriendsRequestsStackPanel
чч -
.
чч- .
Children
чч. 6
.
чч6 7
Add
чч7 :
(
чч: ;%
sentFriendRequestBorder
чч; R
)
ччR S
;
ччS T
}
шш !
friendRequestClient
ъъ 
.
ъъ  
Close
ъъ  %
(
ъъ% &
)
ъъ& '
;
ъъ' (
}
ыы 	
private
ЁЁ 
void
ЁЁ .
 AcceptFriendRequestButtonOnClick
ЁЁ 5
(
ЁЁ5 6
object
ЁЁ6 <
sender
ЁЁ= C
,
ЁЁC D
RoutedEventArgs
ЁЁE T
e
ЁЁU V
)
ЁЁV W
{
ёё 	
if
ЄЄ 
(
ЄЄ 
new
ЄЄ !
AlertPopUpGenerator
ЄЄ '
(
ЄЄ' (
)
ЄЄ( )
.
ЄЄ) *0
"OpenInternationalizedDesicionPopUp
ЄЄ* L
(
ЄЄL M
$str
ЄЄM \
,
ЄЄ\ ]
$strЄЄ^ У
)ЄЄУ Ф
)ЄЄФ Х
{
єє !
FriendRequestClient
ЇЇ #!
friendRequestClient
ЇЇ$ 7
=
ЇЇ8 9
new
ЇЇ: =!
FriendRequestClient
ЇЇ> Q
(
ЇЇQ R
)
ЇЇR S
;
ЇЇS T!
friendRequestClient
її #
.
її# $!
AcceptFriendRequest
її$ 7
(
її7 84
&FriendRequestToFriendRequestsConverter
її8 ^
(
її^ _!
friendRequestClient
її_ r
.
їїr s#
GetFriendRequestByIDїїs З
(їїЗ И
intїїИ Л
.їїЛ М
ParseїїМ С
(їїС Т$
IDFriendRequestLabelїїТ ж
.їїж з
Contentїїз о
.їїо п
ToStringїїп ╖
(її╖ ╕
)її╕ ╣
)її╣ ║
)її║ ╗
)її╗ ╝
)її╝ ╜
;її╜ ╛
new
ўў !
AlertPopUpGenerator
ўў '
(
ўў' (
)
ўў( )
.
ўў) */
!OpenInternationalizedSuccessPopUp
ўў* K
(
ўўK L
$str
ўўL X
,
ўўX Y
$strўўZ А
)ўўА Б
;ўўБ В(
FriendRequestDetailsBorder
∙∙ *
.
∙∙* +

Visibility
∙∙+ 5
=
∙∙6 7

Visibility
∙∙8 B
.
∙∙B C
Hidden
∙∙C I
;
∙∙I J#
FriendsRequestsBorder
·· %
.
··% &

Visibility
··& 0
=
··1 2

Visibility
··3 =
.
··= >
Visible
··> E
;
··E F!
friendRequestClient
√√ #
.
√√# $
Close
√√$ )
(
√√) *
)
√√* +
;
√√+ ,
}
№№ 
}
¤¤ 	
private
   
void
    
BackButton1OnClick
   '
(
  ' (
object
  ( .
sender
  / 5
,
  5 6
RoutedEventArgs
  7 F
e
  G H
)
  H I
{
АА 	+
ShowUpdatedFriendRequestsList
ББ )
(
ББ) *
)
ББ* +
;
ББ+ ,(
FriendRequestDetailsBorder
ВВ &
.
ВВ& '

Visibility
ВВ' 1
=
ВВ2 3

Visibility
ВВ4 >
.
ВВ> ?
Hidden
ВВ? E
;
ВВE F#
FriendsRequestsBorder
ГГ !
.
ГГ! "

Visibility
ГГ" ,
=
ГГ- .

Visibility
ГГ/ 9
.
ГГ9 :
Visible
ГГ: A
;
ГГA B
}
ДД 	
private
ЖЖ 
void
ЖЖ .
 CancelFriendRequestButtonOnClick
ЖЖ 5
(
ЖЖ5 6
object
ЖЖ6 <
sender
ЖЖ= C
,
ЖЖC D
RoutedEventArgs
ЖЖE T
e
ЖЖU V
)
ЖЖV W
{
ЗЗ 	
if
ИИ 
(
ИИ 
new
ИИ !
AlertPopUpGenerator
ИИ '
(
ИИ' (
)
ИИ( )
.
ИИ) *0
"OpenInternationalizedDesicionPopUp
ИИ* L
(
ИИL M
$str
ИИM \
,
ИИ\ ]
$strИИ^ Ы
)ИИЫ Ь
)ИИЬ Э
{
ЙЙ !
FriendRequestClient
КК #!
friendRequestClient
КК$ 7
=
КК8 9
new
КК: =!
FriendRequestClient
КК> Q
(
ККQ R
)
ККR S
;
ККS T!
friendRequestClient
ЛЛ #
.
ЛЛ# $!
CancelFriendRequest
ЛЛ$ 7
(
ЛЛ7 84
&FriendRequestToFriendRequestsConverter
ЛЛ8 ^
(
ЛЛ^ _!
friendRequestClient
ЛЛ_ r
.
ЛЛr s#
GetFriendRequestByIDЛЛs З
(ЛЛЗ И
longЛЛИ М
.ЛЛМ Н
ParseЛЛН Т
(ЛЛТ У$
IDFriendRequestLabelЛЛУ з
.ЛЛз и
ContentЛЛи п
.ЛЛп ░
ToStringЛЛ░ ╕
(ЛЛ╕ ╣
)ЛЛ╣ ║
)ЛЛ║ ╗
)ЛЛ╗ ╝
)ЛЛ╝ ╜
)ЛЛ╜ ╛
;ЛЛ╛ ┐
new
НН !
AlertPopUpGenerator
НН '
(
НН' (
)
НН( )
.
НН) */
!OpenInternationalizedSuccessPopUp
НН* K
(
ННK L
$str
ННL X
,
ННX Y
$strННZ Ф
)ННФ Х
;ННХ Ц(
FriendRequestDetailsBorder
ПП *
.
ПП* +

Visibility
ПП+ 5
=
ПП6 7

Visibility
ПП8 B
.
ППB C
Hidden
ППC I
;
ППI J#
FriendsRequestsBorder
РР %
.
РР% &

Visibility
РР& 0
=
РР1 2

Visibility
РР3 =
.
РР= >
Visible
РР> E
;
РРE F!
friendRequestClient
СС #
.
СС# $
Close
СС$ )
(
СС) *
)
СС* +
;
СС+ ,
}
ТТ 
}
УУ 	
private
ХХ 
void
ХХ .
 RejectFriendRequestButtonOnClick
ХХ 5
(
ХХ5 6
object
ХХ6 <
sender
ХХ= C
,
ХХC D
RoutedEventArgs
ХХE T
e
ХХU V
)
ХХV W
{
ЦЦ 	
if
ЧЧ 
(
ЧЧ 
new
ЧЧ !
AlertPopUpGenerator
ЧЧ '
(
ЧЧ' (
)
ЧЧ( )
.
ЧЧ) *0
"OpenInternationalizedDesicionPopUp
ЧЧ* L
(
ЧЧL M
$str
ЧЧM \
,
ЧЧ\ ]
$strЧЧ^ У
)ЧЧУ Ф
)ЧЧФ Х
{
ШШ !
FriendRequestClient
ЩЩ #!
friendRequestClient
ЩЩ$ 7
=
ЩЩ8 9
new
ЩЩ: =!
FriendRequestClient
ЩЩ> Q
(
ЩЩQ R
)
ЩЩR S
;
ЩЩS T!
friendRequestClient
ЪЪ #
.
ЪЪ# $!
RejectFriendRequest
ЪЪ$ 7
(
ЪЪ7 84
&FriendRequestToFriendRequestsConverter
ЪЪ8 ^
(
ЪЪ^ _!
friendRequestClient
ЪЪ_ r
.
ЪЪr s#
GetFriendRequestByIDЪЪs З
(ЪЪЗ И
longЪЪИ М
.ЪЪМ Н
ParseЪЪН Т
(ЪЪТ У$
IDFriendRequestLabelЪЪУ з
.ЪЪз и
ContentЪЪи п
.ЪЪп ░
ToStringЪЪ░ ╕
(ЪЪ╕ ╣
)ЪЪ╣ ║
)ЪЪ║ ╗
)ЪЪ╗ ╝
)ЪЪ╝ ╜
)ЪЪ╜ ╛
;ЪЪ╛ ┐
new
ЬЬ !
AlertPopUpGenerator
ЬЬ '
(
ЬЬ' (
)
ЬЬ( )
.
ЬЬ) */
!OpenInternationalizedSuccessPopUp
ЬЬ* K
(
ЬЬK L
$str
ЬЬL X
,
ЬЬX Y
$str
ЬЬZ s
)
ЬЬs t
;
ЬЬt u(
FriendRequestDetailsBorder
ЮЮ *
.
ЮЮ* +

Visibility
ЮЮ+ 5
=
ЮЮ6 7

Visibility
ЮЮ8 B
.
ЮЮB C
Hidden
ЮЮC I
;
ЮЮI J#
FriendsRequestsBorder
ЯЯ %
.
ЯЯ% &

Visibility
ЯЯ& 0
=
ЯЯ1 2

Visibility
ЯЯ3 =
.
ЯЯ= >
Visible
ЯЯ> E
;
ЯЯE F!
friendRequestClient
аа #
.
аа# $
Close
аа$ )
(
аа) *
)
аа* +
;
аа+ ,
}
бб 
}
вв 	
private
зз 
void
зз  
Exit2ButtonOnClick
зз '
(
зз' (
object
зз( .
sender
зз/ 5
,
зз5 6
RoutedEventArgs
зз7 F
e
ззG H
)
ззH I
{
ии 	
NavigationService
йй 
navigationService
йй /
=
йй0 1
NavigationService
йй2 C
.
ййC D"
GetNavigationService
ййD X
(
ййX Y
this
ййY ]
)
йй] ^
;
йй^ _
navigationService
кк 
.
кк 
Navigate
кк &
(
кк& '
new
кк' *
	LobbyView
кк+ 4
(
кк4 5

mainWindow
кк5 ?
,
кк? @
loggedProfile
ккA N
,
ккN O-
profileForCallbackMethodsClient
ккP o
,
ккo p

chatClient
ккq {
,
кк{ |$
multiplayerGameClientкк} Т
)ккТ У
)ккУ Ф
;ккФ Х
}
лл 	
private
нн 
void
нн 1
#InviteFriendToTheLobbyButtonOnClick
нн 8
(
нн8 9
object
нн9 ?
sender
нн@ F
,
ннF G
RoutedEventArgs
ннH W
e
ннX Y
)
ннY Z
{
оо 	
if
пп 
(
пп 
sender
пп 
is
пп 
Button
пп  
button
пп! '
)
пп' (
{
░░ 
if
▒▒ 
(
▒▒ 
new
▒▒ !
AlertPopUpGenerator
▒▒ +
(
▒▒+ ,
)
▒▒, -
.
▒▒- .0
"OpenInternationalizedDesicionPopUp
▒▒. P
(
▒▒P Q
$str
▒▒Q `
,
▒▒` a
$str▒▒b Р
)▒▒Р С
)▒▒С Т
{
▓▓ 

StackPanel
││ 
buttonParent
││ +
=
││, -
VisualTreeHelper
││. >
.
││> ?
	GetParent
││? H
(
││H I
button
││I O
)
││O P
as
││Q S

StackPanel
││T ^
;
││^ _
	TextBlock
┤┤ 
friendNickname
┤┤ ,
=
┤┤- .
(
┤┤/ 0
	TextBlock
┤┤0 9
)
┤┤9 :
VisualTreeHelper
┤┤: J
.
┤┤J K
GetChild
┤┤K S
(
┤┤S T
buttonParent
┤┤T `
,
┤┤` a
$num
┤┤b c
)
┤┤c d
;
┤┤d e-
profileForCallbackMethodsClient
╡╡ 3
.
╡╡3 4$
InviteFriendToTheLobby
╡╡4 J
(
╡╡J K
friendNickname
╡╡K Y
.
╡╡Y Z
Text
╡╡Z ^
)
╡╡^ _
;
╡╡_ `
new
╢╢ !
AlertPopUpGenerator
╢╢ +
(
╢╢+ ,
)
╢╢, -
.
╢╢- ./
!OpenInternationalizedSuccessPopUp
╢╢. O
(
╢╢O P
$str
╢╢P \
,
╢╢\ ]
$str
╢╢^ }
)
╢╢} ~
;
╢╢~ 
}
╖╖ 
}
╕╕ 
}
╣╣ 	
public
╗╗ 
void
╗╗ 6
(ShowConnectedFriendsListForInviteToLobby
╗╗ <
(
╗╗< =
)
╗╗= >
{
╝╝ 	
if
╜╜ 
(
╜╜ #
multiplayerGameClient
╜╜ %
!=
╜╜& (
null
╜╜) -
)
╜╜- .
{
╛╛ -
OnlineFriendsToInviteStackPanel
┐┐ /
.
┐┐/ 0
Children
┐┐0 8
.
┐┐8 9
Clear
┐┐9 >
(
┐┐> ?
)
┐┐? @
;
┐┐@ A
ProfileClient
┴┴ 
profileClient
┴┴ +
=
┴┴, -
new
┴┴. 1
ProfileClient
┴┴2 ?
(
┴┴? @
)
┴┴@ A
;
┴┴A B
foreach
┬┬ 
(
┬┬ 
Profile
┬┬  
profile
┬┬! (
in
┬┬) +
profileClient
┬┬, 9
.
┬┬9 :

GetFriends
┬┬: D
(
┬┬D E
loggedProfile
┬┬E R
.
┬┬R S
Player
┬┬S Y
.
┬┬Y Z
IDPlayer
┬┬Z b
)
┬┬b c
)
┬┬c d
{
├├ 
if
── 
(
── 
!
── #
multiplayerGameClient
── .
.
──. /
IsConnected
──/ :
(
──: ;
profile
──; B
.
──B C
Player
──C I
.
──I J
NickName
──J R
)
──R S
)
──S T
{
┼┼ 
if
╞╞ 
(
╞╞ 
profile
╞╞ #
.
╞╞# $
LoginStatus
╞╞$ /
==
╞╞0 2
Enum
╞╞3 7
.
╞╞7 8
GetName
╞╞8 ?
(
╞╞? @
typeof
╞╞@ F
(
╞╞F G"
ProfileLoginStatuses
╞╞G [
)
╞╞[ \
,
╞╞\ ]"
ProfileLoginStatuses
╞╞^ r
.
╞╞r s
Logged
╞╞s y
)
╞╞y z
)
╞╞z {
{
╟╟ 
Border
╚╚ "
friendBorder
╚╚# /
=
╚╚0 1
new
╚╚2 5
Border
╚╚6 <
{
╔╔ 
Height
╩╩  &
=
╩╩' (
$num
╩╩) +
,
╩╩+ ,
Margin
╦╦  &
=
╦╦' (
new
╦╦) ,
	Thickness
╦╦- 6
(
╦╦6 7
$num
╦╦7 9
,
╦╦9 :
$num
╦╦; =
,
╦╦= >
$num
╦╦? A
,
╦╦A B
$num
╦╦C D
)
╦╦D E
,
╦╦E F
CornerRadius
╠╠  ,
=
╠╠- .
new
╠╠/ 2
CornerRadius
╠╠3 ?
(
╠╠? @
$num
╠╠@ B
)
╠╠B C
,
╠╠C D

Background
══  *
=
══+ ,
new
══- 0
SolidColorBrush
══1 @
(
══@ A
Colors
══A G
.
══G H
Black
══H M
)
══M N
}
╬╬ 
;
╬╬ 

StackPanel
╨╨ &&
textAndButtonsStackPanel
╨╨' ?
=
╨╨@ A
new
╨╨B E

StackPanel
╨╨F P
{
╤╤ 
Orientation
╥╥  +
=
╥╥, -
Orientation
╥╥. 9
.
╥╥9 :

Horizontal
╥╥: D
}
╙╙ 
;
╙╙ 
Image
╒╒ ! 
friendProfileImage
╒╒" 4
=
╒╒5 6
new
╒╒7 :
Image
╒╒; @
{
╓╓ 
Width
╫╫  %
=
╫╫& '
$num
╫╫( *
,
╫╫* +
Height
╪╪  &
=
╪╪' (
$num
╪╪) +
,
╪╪+ ,
Margin
┘┘  &
=
┘┘' (
new
┘┘) ,
	Thickness
┘┘- 6
(
┘┘6 7
$num
┘┘7 9
,
┘┘9 :
$num
┘┘; <
,
┘┘< =
$num
┘┘> ?
,
┘┘? @
$num
┘┘A B
)
┘┘B C
,
┘┘C D
Source
┌┌  &
=
┌┌' (
new
┌┌) ,
ImageLoader
┌┌- 8
(
┌┌8 9
)
┌┌9 :
.
┌┌: ;&
GetImageByPlayerNickname
┌┌; S
(
┌┌S T
profile
┌┌T [
.
┌┌[ \
Player
┌┌\ b
.
┌┌b c
NickName
┌┌c k
)
┌┌k l
}
██ 
;
██ 
	TextBlock
▌▌ %
nicknameTextBlock
▌▌& 7
=
▌▌8 9
new
▌▌: =
	TextBlock
▌▌> G
{
▐▐ 

Foreground
▀▀  *
=
▀▀+ ,
new
▀▀- 0
SolidColorBrush
▀▀1 @
(
▀▀@ A
Colors
▀▀A G
.
▀▀G H
White
▀▀H M
)
▀▀M N
,
▀▀N O
Margin
рр  &
=
рр' (
new
рр) ,
	Thickness
рр- 6
(
рр6 7
$num
рр7 9
,
рр9 :
$num
рр; <
,
рр< =
$num
рр> ?
,
рр? @
$num
ррA B
)
ррB C
,
ррC D
Width
сс  %
=
сс& '
$num
сс( +
,
сс+ ,
TextWrapping
тт  ,
=
тт- .
TextWrapping
тт/ ;
.
тт; <
Wrap
тт< @
,
тт@ A
FontSize
уу  (
=
уу) *
$num
уу+ -
,
уу- .
VerticalAlignment
фф  1
=
фф2 3
VerticalAlignment
фф4 E
.
ффE F
Center
ффF L
,
ффL M
Text
хх  $
=
хх% &
profile
хх' .
.
хх. /
Player
хх/ 5
.
хх5 6
NickName
хх6 >
}
цц 
;
цц 
Button
шш " 
inviteFriendButton
шш# 5
=
шш6 7
new
шш8 ;
Button
шш< B
{
щщ 
Style
ъъ  %
=
ъъ& '
(
ъъ( )
Style
ъъ) .
)
ъъ. /
FindResource
ъъ/ ;
(
ъъ; <
$str
ъъ< I
)
ъъI J
,
ъъJ K
Height
ыы  &
=
ыы' (
$num
ыы) +
,
ыы+ ,
Width
ьь  %
=
ьь& '
$num
ьь( +
,
ьь+ ,!
HorizontalAlignment
ээ  3
=
ээ4 5!
HorizontalAlignment
ээ6 I
.
ээI J
Right
ээJ O
,
ээO P
Content
юю  '
=
юю( )
resourceManager
юю* 9
.
юю9 :
	GetString
юю: C
(
ююC D
$str
ююD L
,
ююL M
cultureInfo
ююN Y
)
ююY Z
,
ююZ [
FontSize
яя  (
=
яя) *
$num
яя+ -
}
ЁЁ 
;
ЁЁ  
inviteFriendButton
ЄЄ .
.
ЄЄ. /
Click
ЄЄ/ 4
+=
ЄЄ5 71
#InviteFriendToTheLobbyButtonOnClick
ЄЄ8 [
;
ЄЄ[ \&
textAndButtonsStackPanel
ЇЇ 4
.
ЇЇ4 5
Children
ЇЇ5 =
.
ЇЇ= >
Add
ЇЇ> A
(
ЇЇA B 
friendProfileImage
ЇЇB T
)
ЇЇT U
;
ЇЇU V&
textAndButtonsStackPanel
її 4
.
її4 5
Children
її5 =
.
її= >
Add
її> A
(
їїA B
nicknameTextBlock
їїB S
)
їїS T
;
їїT U&
textAndButtonsStackPanel
ЎЎ 4
.
ЎЎ4 5
Children
ЎЎ5 =
.
ЎЎ= >
Add
ЎЎ> A
(
ЎЎA B 
inviteFriendButton
ЎЎB T
)
ЎЎT U
;
ЎЎU V
friendBorder
°° (
.
°°( )
Child
°°) .
=
°°/ 0&
textAndButtonsStackPanel
°°1 I
;
°°I J-
OnlineFriendsToInviteStackPanel
∙∙ ;
.
∙∙; <
Children
∙∙< D
.
∙∙D E
Add
∙∙E H
(
∙∙H I
friendBorder
∙∙I U
)
∙∙U V
;
∙∙V W
}
·· 
}
√√ 
}
№№ 
profileClient
■■ 
.
■■ 
Close
■■ #
(
■■# $
)
■■$ %
;
■■% &
}
АА 
}
ББ 	
public
ЖЖ 
void
ЖЖ 9
+ExitFromThisPageForBeingExpeltFromLobbyView
ЖЖ ?
(
ЖЖ? @
)
ЖЖ@ A
{
ЗЗ 	
if
ИИ 
(
ИИ )
entryToThisPageViaLobbyView
ИИ +
)
ИИ+ ,
{
ЙЙ 

chatClient
КК 
.
КК 
	LeaveChat
КК $
(
КК$ %
loggedProfile
КК% 2
.
КК2 3
Player
КК3 9
.
КК9 :
NickName
КК: B
)
ККB C
;
ККC D
NavigationService
ЛЛ !
navigationService
ЛЛ" 3
=
ЛЛ4 5
NavigationService
ЛЛ6 G
.
ЛЛG H"
GetNavigationService
ЛЛH \
(
ЛЛ\ ]
this
ЛЛ] a
)
ЛЛa b
;
ЛЛb c
navigationService
ММ !
.
ММ! "
Navigate
ММ" *
(
ММ* +
new
ММ+ .
MenuView
ММ/ 7
(
ММ7 8

mainWindow
ММ8 B
,
ММB C
loggedProfile
ММD Q
,
ММQ R-
profileForCallbackMethodsClient
ММS r
)
ММr s
)
ММs t
;
ММt u
new
НН !
AlertPopUpGenerator
НН '
(
НН' (
)
НН( )
.
НН) */
!OpenInternationalizedWarningPopUp
НН* K
(
ННK L
$str
ННL T
,
ННT U
$str
ННV q
)
ННq r
;
ННr s
}
ОО 
}
ПП 	
private
СС +
ServiceFriendRequestReference
СС -
.
СС- .
FriendRequests
СС. <4
&FriendRequestToFriendRequestsConverter
СС= c
(
ССc d
FriendRequest
ССd q
friendRequest
ССr 
)СС А
{
ТТ 	+
ServiceFriendRequestReference
УУ )
.
УУ) *
FriendRequests
УУ* 8
friendRequests
УУ9 G
=
УУH I
new
УУJ M+
ServiceFriendRequestReference
УУN k
.
УУk l
FriendRequests
УУl z
{
ФФ 
IDFriendRequest
ХХ 
=
ХХ  !
(
ХХ" #
int
ХХ# &
)
ХХ& '
friendRequest
ХХ' 4
.
ХХ4 5
IDFriendRequest
ХХ5 D
,
ХХD E
Message
ЦЦ 
=
ЦЦ 
friendRequest
ЦЦ '
.
ЦЦ' (
Message
ЦЦ( /
,
ЦЦ/ 0
CreationDate
ЧЧ 
=
ЧЧ 
friendRequest
ЧЧ ,
.
ЧЧ, -
CreationDate
ЧЧ- 9
,
ЧЧ9 :
AceptationStatus
ШШ  
=
ШШ! "
friendRequest
ШШ# 0
.
ШШ0 1
AceptationStatus
ШШ1 A
,
ШШA B
SendingStatus
ЩЩ 
=
ЩЩ 
friendRequest
ЩЩ  -
.
ЩЩ- .
SendingStatus
ЩЩ. ;
}
ЪЪ 
;
ЪЪ +
ServiceFriendRequestReference
ЬЬ )
.
ЬЬ) *
Players
ЬЬ* 1
players
ЬЬ2 9
=
ЬЬ: ;
new
ЬЬ< ?+
ServiceFriendRequestReference
ЬЬ@ ]
.
ЬЬ] ^
Players
ЬЬ^ e
{
ЭЭ 
IDPlayer
ЮЮ 
=
ЮЮ 
friendRequest
ЮЮ (
.
ЮЮ( )
Profile
ЮЮ) 0
.
ЮЮ0 1
Player
ЮЮ1 7
.
ЮЮ7 8
IDPlayer
ЮЮ8 @
,
ЮЮ@ A
Names
ЯЯ 
=
ЯЯ 
friendRequest
ЯЯ %
.
ЯЯ% &
Profile
ЯЯ& -
.
ЯЯ- .
Player
ЯЯ. 4
.
ЯЯ4 5
Names
ЯЯ5 :
,
ЯЯ: ;
Surnames
аа 
=
аа 
friendRequest
аа (
.
аа( )
Profile
аа) 0
.
аа0 1
Player
аа1 7
.
аа7 8
Surnames
аа8 @
,
аа@ A
Email
бб 
=
бб 
friendRequest
бб %
.
бб% &
Profile
бб& -
.
бб- .
Player
бб. 4
.
бб4 5
Email
бб5 :
,
бб: ;
NickName
вв 
=
вв 
friendRequest
вв (
.
вв( )
Profile
вв) 0
.
вв0 1
Player
вв1 7
.
вв7 8
NickName
вв8 @
,
вв@ A
	BirthDate
гг 
=
гг 
(
гг 
DateTime
гг %
)
гг% &
friendRequest
гг& 3
.
гг3 4
Profile
гг4 ;
.
гг; <
Player
гг< B
.
ггB C
	BirthDate
ггC L
}
дд 
;
дд +
ServiceFriendRequestReference
жж )
.
жж) *
Profiles
жж* 2
profiles
жж3 ;
=
жж< =
new
жж> A+
ServiceFriendRequestReference
жжB _
.
жж_ `
Profiles
жж` h
{
зз 
	IDProfile
ии 
=
ии 
friendRequest
ии )
.
ии) *
Profile
ии* 1
.
ии1 2
	IDProfile
ии2 ;
,
ии; <
Coins
йй 
=
йй 
friendRequest
йй %
.
йй% &
Profile
йй& -
.
йй- .
Coins
йй. 3
,
йй3 4
LoginStatus
кк 
=
кк 
friendRequest
кк +
.
кк+ ,
Profile
кк, 3
.
кк3 4
LoginStatus
кк4 ?
,
кк? @
Players
лл 
=
лл 
players
лл !
}
мм 
;
мм +
ServiceFriendRequestReference
оо )
.
оо) *
Players
оо* 1
players1
оо2 :
=
оо; <
new
оо= @+
ServiceFriendRequestReference
ооA ^
.
оо^ _
Players
оо_ f
{
пп 
IDPlayer
░░ 
=
░░ 
friendRequest
░░ (
.
░░( )
Profile1
░░) 1
.
░░1 2
Player
░░2 8
.
░░8 9
IDPlayer
░░9 A
,
░░A B
Names
▒▒ 
=
▒▒ 
friendRequest
▒▒ %
.
▒▒% &
Profile1
▒▒& .
.
▒▒. /
Player
▒▒/ 5
.
▒▒5 6
Names
▒▒6 ;
,
▒▒; <
Surnames
▓▓ 
=
▓▓ 
friendRequest
▓▓ (
.
▓▓( )
Profile1
▓▓) 1
.
▓▓1 2
Player
▓▓2 8
.
▓▓8 9
Surnames
▓▓9 A
,
▓▓A B
Email
││ 
=
││ 
friendRequest
││ %
.
││% &
Profile1
││& .
.
││. /
Player
││/ 5
.
││5 6
Email
││6 ;
,
││; <
NickName
┤┤ 
=
┤┤ 
friendRequest
┤┤ (
.
┤┤( )
Profile1
┤┤) 1
.
┤┤1 2
Player
┤┤2 8
.
┤┤8 9
NickName
┤┤9 A
,
┤┤A B
	BirthDate
╡╡ 
=
╡╡ 
(
╡╡ 
DateTime
╡╡ %
)
╡╡% &
friendRequest
╡╡& 3
.
╡╡3 4
Profile1
╡╡4 <
.
╡╡< =
Player
╡╡= C
.
╡╡C D
	BirthDate
╡╡D M
}
╢╢ 
;
╢╢ +
ServiceFriendRequestReference
╕╕ )
.
╕╕) *
Profiles
╕╕* 2
	profiles1
╕╕3 <
=
╕╕= >
new
╕╕? B+
ServiceFriendRequestReference
╕╕C `
.
╕╕` a
Profiles
╕╕a i
{
╣╣ 
	IDProfile
║║ 
=
║║ 
friendRequest
║║ )
.
║║) *
Profile1
║║* 2
.
║║2 3
	IDProfile
║║3 <
,
║║< =
Coins
╗╗ 
=
╗╗ 
friendRequest
╗╗ %
.
╗╗% &
Profile1
╗╗& .
.
╗╗. /
Coins
╗╗/ 4
,
╗╗4 5
LoginStatus
╝╝ 
=
╝╝ 
friendRequest
╝╝ +
.
╝╝+ ,
Profile1
╝╝, 4
.
╝╝4 5
LoginStatus
╝╝5 @
,
╝╝@ A
Players
╜╜ 
=
╜╜ 
players1
╜╜ "
}
╛╛ 
;
╛╛ 
friendRequests
└└ 
.
└└ 
Profiles
└└ #
=
└└$ %
profiles
└└& .
;
└└. /
friendRequests
┴┴ 
.
┴┴ 
	Profiles1
┴┴ $
=
┴┴% &
	profiles1
┴┴' 0
;
┴┴0 1
return
├├ 
friendRequests
├├ !
;
├├! "
}
── 	
private
╞╞ 
String
╞╞ G
9InvalidNicknameInSendFriendRequestTextFieldsTextGenerator
╞╞ P
(
╞╞P Q
)
╞╞Q R
{
╟╟ 	
string
╚╚ 
	finalText
╚╚ 
=
╚╚ 
$str
╚╚ !
;
╚╚! "
string
╔╔ 
nickNamePattern
╔╔ "
=
╔╔# $
$str
╔╔% ?
;
╔╔? @
Regex
╩╩ 
nickNameRegex
╩╩ 
=
╩╩  !
new
╩╩" %
Regex
╩╩& +
(
╩╩+ ,
nickNamePattern
╩╩, ;
)
╩╩; <
;
╩╩< =
Match
╦╦ 
nickNameMatch
╦╦ 
=
╦╦  !
nickNameRegex
╦╦" /
.
╦╦/ 0
Match
╦╦0 5
(
╦╦5 6
NicknameTextBox
╦╦6 E
.
╦╦E F
Text
╦╦F J
)
╦╦J K
;
╦╦K L
if
══ 
(
══ 
!
══ 
nickNameMatch
══ 
.
══ 
Success
══ &
)
══& '
{
╬╬ 
	finalText
╧╧ 
=
╧╧ 
resourceManager
╧╧ +
.
╧╧+ ,
	GetString
╧╧, 5
(
╧╧5 6
$str
╧╧6 H
,
╧╧H I
cultureInfo
╧╧J U
)
╧╧U V
+
╧╧W X
$str
╧╧Y ]
;
╧╧] ^
}
╨╨ 
return
╥╥ 
	finalText
╥╥ 
;
╥╥ 
}
╙╙ 	
public
╒╒ 
void
╒╒ 
GoToLobbyView
╒╒ !
(
╒╒! "
)
╒╒" #
{
╓╓ 	
if
╫╫ 
(
╫╫ 
!
╫╫ )
entryToThisPageViaLobbyView
╫╫ ,
)
╫╫, -
{
╪╪ 

mainWindow
┘┘ 
.
┘┘ 
OpenTheLobbyView
┘┘ +
(
┘┘+ ,
this
┘┘, 0
)
┘┘0 1
;
┘┘1 2
}
┌┌ 
}
██ 	
public
рр 
void
рр (
UpdateFriendsRequestsLists
рр .
(
рр. /
)
рр/ 0
{
сс 	
if
тт 
(
тт 
PageStateManager
тт  
.
тт  !
CurrentPage
тт! ,
is
тт- /
FriendsView
тт0 ;
currentPage
тт< G
)
ттG H
{
уу 
currentPage
фф 
.
фф +
ShowUpdatedFriendRequestsList
фф 9
(
фф9 :
)
фф: ;
;
фф; <
}
хх 
}
цц 	
}
чч 
}шш ве
wC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\LobbyView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
	LobbyView "
:# $
Page% )
,) *
IChatCallback+ 8
,8 9$
IMultiplayerGameCallback: R
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 

ChatClient #

chatClient$ .
;. /
private 
readonly 
Profile  
loggedProfile! .
;. /
private   
readonly   !
MultiplayerGameClient   .!
multiplayerGameClient  / D
;  D E
private!! 
readonly!! +
ProfileForCallbackMethodsClient!! 8+
profileForCallbackMethodsClient!!9 X
;!!X Y
private"" 
readonly"" 
CultureInfo"" $
cultureInfo""% 0
;""0 1
private## 
readonly## 
ResourceManager## (
resourceManager##) 8
;##8 9
public%% 
	LobbyView%% 
(%% 
)%% 
{&& 	
InitializeComponent'' 
(''  
)''  !
;''! "
cultureInfo(( 
=(( 
CultureInfo(( %
.((% &
CurrentUICulture((& 6
;((6 7
resourceManager)) 
=)) 
new)) !
ResourceManager))" 1
())1 2
$str))2 ^
,))^ _
typeof))` f
())f g

MainWindow))g q
)))q r
.))r s
Assembly))s {
))){ |
;))| }
PageStateManager** 
.** 
CurrentPage** (
=**) *
this**+ /
;**/ 0
}++ 	
public-- 
	LobbyView-- 
(-- 

MainWindow-- #

mainWindow--$ .
,--. /
Profile--0 7
loggedProfile--8 E
,--E F+
ProfileForCallbackMethodsClient--G f,
profileForCallbackMethodsClient	--g Ж
)
--Ж З
{.. 	
InitializeComponent// 
(//  
)//  !
;//! "
this00 
.00 

mainWindow00 
=00 

mainWindow00 (
;00( )
this11 
.11 
loggedProfile11 
=11  
loggedProfile11! .
;11. /
this22 
.22 +
profileForCallbackMethodsClient22 0
=221 2+
profileForCallbackMethodsClient223 R
;22R S
cultureInfo44 
=44 
CultureInfo44 %
.44% &
CurrentUICulture44& 6
;446 7
resourceManager55 
=55 
new55 !
ResourceManager55" 1
(551 2
$str552 ^
,55^ _
typeof55` f
(55f g

MainWindow55g q
)55q r
.55r s
Assembly55s {
)55{ |
;55| }
PageStateManager66 
.66 
CurrentPage66 (
=66) *
this66+ /
;66/ 0

chatClient88 
=88 
new88 

ChatClient88 '
(88' (
new88( +
InstanceContext88, ;
(88; <
this88< @
)88@ A
)88A B
;88B C!
multiplayerGameClient99 !
=99" #
new99$ '!
MultiplayerGameClient99( =
(99= >
new99> A
InstanceContext99B Q
(99Q R
this99R V
)99V W
)99W X
;99X Y
}:: 	
public<< 
	LobbyView<< 
(<< 

MainWindow<< #

mainWindow<<$ .
,<<. /
Profile<<0 7
loggedProfile<<8 E
,<<E F+
ProfileForCallbackMethodsClient<<G f,
profileForCallbackMethodsClient	<<g Ж
,
<<Ж З

ChatClient
<<И Т

chatClient
<<У Э
,
<<Э Ю#
MultiplayerGameClient
<<Я ┤#
multiplayerGameClient
<<╡ ╩
)
<<╩ ╦
{== 	
InitializeComponent>> 
(>>  
)>>  !
;>>! "
this?? 
.?? 

mainWindow?? 
=?? 

mainWindow?? (
;??( )
this@@ 
.@@ 
loggedProfile@@ 
=@@  
loggedProfile@@! .
;@@. /
thisAA 
.AA +
profileForCallbackMethodsClientAA 0
=AA1 2+
profileForCallbackMethodsClientAA3 R
;AAR S
cultureInfoCC 
=CC 
CultureInfoCC %
.CC% &
CurrentUICultureCC& 6
;CC6 7
resourceManagerDD 
=DD 
newDD !
ResourceManagerDD" 1
(DD1 2
$strDD2 ^
,DD^ _
typeofDD` f
(DDf g

MainWindowDDg q
)DDq r
.DDr s
AssemblyDDs {
)DD{ |
;DD| }
PageStateManagerEE 
.EE 
CurrentPageEE (
=EE) *
thisEE+ /
;EE/ 0
thisGG 
.GG 

chatClientGG 
=GG 

chatClientGG (
;GG( )
thisHH 
.HH !
multiplayerGameClientHH &
=HH' (!
multiplayerGameClientHH) >
;HH> ? 
ShowConnectedPlayersII  
(II  !
)II! "
;II" #
}JJ 	
privateLL 
voidLL "
BanPlayerButtonOnClickLL +
(LL+ ,
objectLL, 2
senderLL3 9
,LL9 :
RoutedEventArgsLL; J
eLLK L
)LLL M
{MM 	
ifNN 
(NN 
senderNN 
isNN 
ButtonNN 
buttonNN  &
)NN& '
{OO 
ifPP 
(PP 
newPP 
AlertPopUpGeneratorPP +
(PP+ ,
)PP, -
.PP- ..
"OpenInternationalizedDesicionPopUpPP. P
(PPP Q
$strPPQ `
,PP` a
$str	PPb Г
)
PPГ Д
)
PPД Е
{QQ 

StackPanelRR 
buttonParentRR +
=RR, -
VisualTreeHelperRR. >
.RR> ?
	GetParentRR? H
(RRH I
buttonRRI O
)RRO P
asRRQ S

StackPanelRRT ^
;RR^ _

StackPanelSS 
buttonParentParentSS 1
=SS2 3
VisualTreeHelperSS4 D
.SSD E
	GetParentSSE N
(SSN O
buttonParentSSO [
)SS[ \
asSS] _

StackPanelSS` j
;SSj k

StackPanelTT  
playerNicknameParentTT 3
=TT4 5
(TT6 7

StackPanelTT7 A
)TTA B
VisualTreeHelperTTB R
.TTR S
GetChildTTS [
(TT[ \
buttonParentParentTT\ n
,TTn o
$numTTp q
)TTq r
;TTr s
	TextBlockUU 
nicknameUU &
=UU' (
(UU) *
	TextBlockUU* 3
)UU3 4
VisualTreeHelperUU4 D
.UUD E
GetChildUUE M
(UUM N 
playerNicknameParentUUN b
,UUb c
$numUUd e
)UUe f
;UUf g!
multiplayerGameClientWW )
.WW) *
	BanPlayerWW* 3
(WW3 4
nicknameWW4 <
.WW< =
TextWW= A
)WWA B
;WWB C
newYY 
AlertPopUpGeneratorYY +
(YY+ ,
)YY, -
.YY- .-
!OpenInternationalizedSuccessPopUpYY. O
(YYO P
$strYYP Y
,YYY Z
$strYY[ x
)YYx y
;YYy z
}ZZ 
}[[ 
}\\ 	
private^^ 
void^^ &
BannedPlayersButtonOnClick^^ /
(^^/ 0
object^^0 6
sender^^7 =
,^^= >
RoutedEventArgs^^? N
e^^O P
)^^P Q
{__ 	
NavigationService`` 
navigationService`` /
=``0 1
NavigationService``2 C
.``C D 
GetNavigationService``D X
(``X Y
this``Y ]
)``] ^
;``^ _
navigationServiceaa 
.aa 
Navigateaa &
(aa& '
newaa' *
BannedPlayersViewaa+ <
(aa< =

mainWindowaa= G
,aaG H
loggedProfileaaI V
,aaV W+
profileForCallbackMethodsClientaaX w
,aaw x

chatClient	aay Г
,
aaГ Д#
multiplayerGameClient
aaЕ Ъ
)
aaЪ Ы
)
aaЫ Ь
;
aaЬ Э
}bb 	
privatedd 
voiddd 
ChatButtonOnClickdd &
(dd& '
objectdd' -
senderdd. 4
,dd4 5
RoutedEventArgsdd6 E
eddF G
)ddG H
{ee 	
NavigationServiceff 
navigationServiceff /
=ff0 1
NavigationServiceff2 C
.ffC D 
GetNavigationServiceffD X
(ffX Y
thisffY ]
)ff] ^
;ff^ _
navigationServicegg 
.gg 
Navigategg &
(gg& '
newgg' *
ChatViewgg+ 3
(gg3 4

mainWindowgg4 >
,gg> ?
loggedProfilegg@ M
,ggM N+
profileForCallbackMethodsClientggO n
,ggn o

chatClientggp z
,ggz {"
multiplayerGameClient	gg| С
)
ggС Т
)
ggТ У
;
ggУ Ф
}hh 	
privatejj 
voidjj &
ConfigurationButtonOnClickjj /
(jj/ 0
objectjj0 6
senderjj7 =
,jj= >
RoutedEventArgsjj? N
ejjO P
)jjP Q
{kk 	
newll 
AlertPopUpGeneratorll #
(ll# $
)ll$ %
.ll% &-
!OpenInternationalizedWarningPopUpll& G
(llG H
$strllH U
,llU V
$strllW i
)lli j
;llj k
}mm 	
privateoo 
voidoo 
ExitButtonOnClickoo &
(oo& '
objectoo' -
senderoo. 4
,oo4 5
RoutedEventArgsoo6 E
eooF G
)ooG H
{pp 	

chatClientqq 
.qq 
	LeaveChatqq  
(qq  !
loggedProfileqq! .
.qq. /
Playerqq/ 5
.qq5 6
NickNameqq6 >
)qq> ?
;qq? @!
multiplayerGameClientrr !
.rr! "

Disconnectrr" ,
(rr, -
loggedProfilerr- :
.rr: ;
Playerrr; A
.rrA B
NickNamerrB J
)rrJ K
;rrK L
NavigationServicess 
navigationServicess /
=ss0 1
NavigationServicess2 C
.ssC D 
GetNavigationServicessD X
(ssX Y
thisssY ]
)ss] ^
;ss^ _
navigationServicett 
.tt 
Navigatett &
(tt& '
newtt' *
MenuViewtt+ 3
(tt3 4

mainWindowtt4 >
,tt> ?
loggedProfilett@ M
,ttM N+
profileForCallbackMethodsClientttO n
)ttn o
)tto p
;ttp q
}uu 	
privateww 
voidww  
FriendsButtonOnClickww )
(ww) *
objectww* 0
senderww1 7
,ww7 8
RoutedEventArgsww9 H
ewwI J
)wwJ K
{xx 	
NavigationServiceyy 
navigationServiceyy /
=yy0 1
NavigationServiceyy2 C
.yyC D 
GetNavigationServiceyyD X
(yyX Y
thisyyY ]
)yy] ^
;yy^ _
navigationServicezz 
.zz 
Navigatezz &
(zz& '
newzz' *
FriendsViewzz+ 6
(zz6 7

mainWindowzz7 A
,zzA B
loggedProfilezzC P
,zzP Q+
profileForCallbackMethodsClientzzR q
,zzq r

chatClientzzs }
,zz} ~"
multiplayerGameClient	zz Ф
)
zzФ Х
)
zzХ Ц
;
zzЦ Ч
}{{ 	
private}} 
void}} "
MakeAdminButtonOnClick}} +
(}}+ ,
object}}, 2
sender}}3 9
,}}9 :
RoutedEventArgs}}; J
e}}K L
)}}L M
{~~ 	
if 
( 
sender 
is 
Button  
button! '
)' (
{
АА 
if
ББ 
(
ББ 
new
ББ !
AlertPopUpGenerator
ББ +
(
ББ+ ,
)
ББ, -
.
ББ- .0
"OpenInternationalizedDesicionPopUp
ББ. P
(
ББP Q
$str
ББQ `
,
ББ` a
$strББb М
)ББМ Н
)ББН О
{
ВВ 

StackPanel
ГГ 
buttonParent
ГГ +
=
ГГ, -
VisualTreeHelper
ГГ. >
.
ГГ> ?
	GetParent
ГГ? H
(
ГГH I
button
ГГI O
)
ГГO P
as
ГГQ S

StackPanel
ГГT ^
;
ГГ^ _

StackPanel
ДД  
buttonParentParent
ДД 1
=
ДД2 3
VisualTreeHelper
ДД4 D
.
ДДD E
	GetParent
ДДE N
(
ДДN O
buttonParent
ДДO [
)
ДД[ \
as
ДД] _

StackPanel
ДД` j
;
ДДj k

StackPanel
ЕЕ "
playerNicknameParent
ЕЕ 3
=
ЕЕ4 5
(
ЕЕ6 7

StackPanel
ЕЕ7 A
)
ЕЕA B
VisualTreeHelper
ЕЕB R
.
ЕЕR S
GetChild
ЕЕS [
(
ЕЕ[ \ 
buttonParentParent
ЕЕ\ n
,
ЕЕn o
$num
ЕЕp q
)
ЕЕq r
;
ЕЕr s
	TextBlock
ЖЖ 
nickname
ЖЖ &
=
ЖЖ' (
(
ЖЖ) *
	TextBlock
ЖЖ* 3
)
ЖЖ3 4
VisualTreeHelper
ЖЖ4 D
.
ЖЖD E
GetChild
ЖЖE M
(
ЖЖM N"
playerNicknameParent
ЖЖN b
,
ЖЖb c
$num
ЖЖd e
)
ЖЖe f
;
ЖЖf g#
multiplayerGameClient
ИИ )
.
ИИ) *
SetAdmin
ИИ* 2
(
ИИ2 3
nickname
ИИ3 ;
.
ИИ; <
Text
ИИ< @
)
ИИ@ A
;
ИИA B
new
КК !
AlertPopUpGenerator
КК +
(
КК+ ,
)
КК, -
.
КК- ./
!OpenInternationalizedSuccessPopUp
КК. O
(
ККO P
$str
ККP Y
,
ККY Z
$str
КК[ v
)
ККv w
;
ККw x
}
ЛЛ 
}
ММ 
}
НН 	
private
ПП 
void
ПП 
PlayButtonOnClick
ПП &
(
ПП& '
object
ПП' -
sender
ПП. 4
,
ПП4 5
RoutedEventArgs
ПП6 E
e
ППF G
)
ППG H
{
РР 	
new
СС !
AlertPopUpGenerator
СС #
(
СС# $
)
СС$ %
.
СС% &/
!OpenInternationalizedWarningPopUp
СС& G
(
ССG H
$str
ССH U
,
ССU V
$str
ССW i
)
ССi j
;
ССj k
}
ТТ 	
public
ЦЦ 
void
ЦЦ 9
+ExitFromThisPageForBeingExpeltFromLobbyView
ЦЦ ?
(
ЦЦ? @
)
ЦЦ@ A
{
ЧЧ 	

chatClient
ШШ 
.
ШШ 
	LeaveChat
ШШ  
(
ШШ  !
loggedProfile
ШШ! .
.
ШШ. /
Player
ШШ/ 5
.
ШШ5 6
NickName
ШШ6 >
)
ШШ> ?
;
ШШ? @
NavigationService
ЩЩ 
navigationService
ЩЩ /
=
ЩЩ0 1
NavigationService
ЩЩ2 C
.
ЩЩC D"
GetNavigationService
ЩЩD X
(
ЩЩX Y
this
ЩЩY ]
)
ЩЩ] ^
;
ЩЩ^ _
navigationService
ЪЪ 
.
ЪЪ 
Navigate
ЪЪ &
(
ЪЪ& '
new
ЪЪ' *
MenuView
ЪЪ+ 3
(
ЪЪ3 4

mainWindow
ЪЪ4 >
,
ЪЪ> ?
loggedProfile
ЪЪ@ M
,
ЪЪM N-
profileForCallbackMethodsClient
ЪЪO n
)
ЪЪn o
)
ЪЪo p
;
ЪЪp q
new
ЫЫ !
AlertPopUpGenerator
ЫЫ #
(
ЫЫ# $
)
ЫЫ$ %
.
ЫЫ% &/
!OpenInternationalizedWarningPopUp
ЫЫ& G
(
ЫЫG H
$str
ЫЫH P
,
ЫЫP Q
$str
ЫЫR m
)
ЫЫm n
;
ЫЫn o
}
ЬЬ 	
public
ЮЮ 
void
ЮЮ "
ShowConnectedPlayers
ЮЮ (
(
ЮЮ( )
)
ЮЮ) *
{
ЯЯ 	&
ConnectedUsersStackPanel
аа $
.
аа$ %
Children
аа% -
.
аа- .
Clear
аа. 3
(
аа3 4
)
аа4 5
;
аа5 6
foreach
бб 
(
бб 
string
бб 
profile
бб #
in
бб$ &#
multiplayerGameClient
бб' <
.
бб< ="
GetConnectedProfiles
бб= Q
(
ббQ R
)
ббR S
)
ббS T
{
вв 
Border
гг 
playerBorder
гг #
=
гг$ %
new
гг& )
Border
гг* 0
{
дд 
Margin
ее 
=
ее 
new
ее  
	Thickness
ее! *
(
ее* +
$num
ее+ -
,
ее- .
$num
ее/ 0
,
ее0 1
$num
ее2 3
,
ее3 4
$num
ее5 6
)
ее6 7
,
ее7 8
Height
жж 
=
жж 
$num
жж  
,
жж  !
Width
зз 
=
зз 
$num
зз 
,
зз  
CornerRadius
ии  
=
ии! "
new
ии# &
CornerRadius
ии' 3
(
ии3 4
$num
ии4 6
)
ии6 7
,
ии7 8

Background
йй 
=
йй  
new
йй! $
SolidColorBrush
йй% 4
(
йй4 5
Colors
йй5 ;
.
йй; <
Black
йй< A
)
ййA B
}
кк 
;
кк 
playerBorder
лл 
.
лл 

Background
лл '
.
лл' (
Opacity
лл( /
=
лл0 1
$num
лл2 5
;
лл5 6
Grid
нн #
playerBorderContainer
нн *
=
нн+ ,
new
нн- 0
Grid
нн1 5
(
нн5 6
)
нн6 7
;
нн7 8

StackPanel
пп $
playerBorderStackPanel
пп 1
=
пп2 3
new
пп4 7

StackPanel
пп8 B
(
ппB C
)
ппC D
;
ппD E
if
▒▒ 
(
▒▒ #
multiplayerGameClient
▒▒ )
.
▒▒) *
IsAdmin
▒▒* 1
(
▒▒1 2
profile
▒▒2 9
)
▒▒9 :
)
▒▒: ;
{
▓▓ 
	TextBlock
││ 
	adminText
││ '
=
││( )
new
││* -
	TextBlock
││. 7
{
┤┤ 
Text
╡╡ 
=
╡╡ 
resourceManager
╡╡ .
.
╡╡. /
	GetString
╡╡/ 8
(
╡╡8 9
$str
╡╡9 @
,
╡╡@ A
cultureInfo
╡╡B M
)
╡╡M N
,
╡╡N O
Margin
╢╢ 
=
╢╢  
new
╢╢! $
	Thickness
╢╢% .
(
╢╢. /
$num
╢╢/ 0
,
╢╢0 1
$num
╢╢2 4
,
╢╢4 5
$num
╢╢6 7
,
╢╢7 8
$num
╢╢9 :
)
╢╢: ;
,
╢╢; <
VerticalAlignment
╖╖ )
=
╖╖* +
VerticalAlignment
╖╖, =
.
╖╖= >
Center
╖╖> D
,
╖╖D E

Foreground
╕╕ "
=
╕╕# $
new
╕╕% (
SolidColorBrush
╕╕) 8
(
╕╕8 9
Colors
╕╕9 ?
.
╕╕? @
Gold
╕╕@ D
)
╕╕D E
,
╕╕E F
TextWrapping
╣╣ $
=
╣╣% &
TextWrapping
╣╣' 3
.
╣╣3 4
Wrap
╣╣4 8
,
╣╣8 9
TextAlignment
║║ %
=
║║& '
TextAlignment
║║( 5
.
║║5 6
Center
║║6 <
,
║║< =!
HorizontalAlignment
╗╗ +
=
╗╗, -!
HorizontalAlignment
╗╗. A
.
╗╗A B
Center
╗╗B H
,
╗╗H I
FontSize
╝╝  
=
╝╝! "
$num
╝╝# %
,
╝╝% &
Width
╜╜ 
=
╜╜ 
$num
╜╜  #
}
╛╛ 
;
╛╛ $
playerBorderStackPanel
└└ *
.
└└* +
Children
└└+ 3
.
└└3 4
Add
└└4 7
(
└└7 8
	adminText
└└8 A
)
└└A B
;
└└B C
}
┴┴ 
if
├├ 
(
├├ 
profile
├├ 
==
├├ 
loggedProfile
├├ ,
.
├├, -
Player
├├- 3
.
├├3 4
NickName
├├4 <
)
├├< =
{
── 
	TextBlock
┼┼ 
youText
┼┼ %
=
┼┼& '
new
┼┼( +
	TextBlock
┼┼, 5
{
╞╞ 
Text
╟╟ 
=
╟╟ 
resourceManager
╟╟ .
.
╟╟. /
	GetString
╟╟/ 8
(
╟╟8 9
$str
╟╟9 >
,
╟╟> ?
cultureInfo
╟╟@ K
)
╟╟K L
,
╟╟L M
VerticalAlignment
╚╚ )
=
╚╚* +
VerticalAlignment
╚╚, =
.
╚╚= >
Center
╚╚> D
,
╚╚D E

Foreground
╔╔ "
=
╔╔# $
new
╔╔% (
SolidColorBrush
╔╔) 8
(
╔╔8 9
Colors
╔╔9 ?
.
╔╔? @
White
╔╔@ E
)
╔╔E F
,
╔╔F G
TextWrapping
╩╩ $
=
╩╩% &
TextWrapping
╩╩' 3
.
╩╩3 4
Wrap
╩╩4 8
,
╩╩8 9
TextAlignment
╦╦ %
=
╦╦& '
TextAlignment
╦╦( 5
.
╦╦5 6
Center
╦╦6 <
,
╦╦< =!
HorizontalAlignment
╠╠ +
=
╠╠, -!
HorizontalAlignment
╠╠. A
.
╠╠A B
Center
╠╠B H
,
╠╠H I
FontSize
══  
=
══! "
$num
══# %
,
══% &
Width
╬╬ 
=
╬╬ 
$num
╬╬  #
}
╧╧ 
;
╧╧ 
if
╤╤ 
(
╤╤ #
multiplayerGameClient
╤╤ -
.
╤╤- .
IsAdmin
╤╤. 5
(
╤╤5 6
profile
╤╤6 =
)
╤╤= >
)
╤╤> ?
{
╥╥ 
youText
╙╙ 
.
╙╙  
Margin
╙╙  &
=
╙╙' (
new
╙╙) ,
	Thickness
╙╙- 6
(
╙╙6 7
$num
╙╙7 8
,
╙╙8 9
$num
╙╙: <
,
╙╙< =
$num
╙╙> ?
,
╙╙? @
$num
╙╙A B
)
╙╙B C
;
╙╙C D
}
╘╘ 
else
╒╒ 
{
╓╓ 
youText
╫╫ 
.
╫╫  
Margin
╫╫  &
=
╫╫' (
new
╫╫) ,
	Thickness
╫╫- 6
(
╫╫6 7
$num
╫╫7 8
,
╫╫8 9
$num
╫╫: ;
,
╫╫; <
$num
╫╫= >
,
╫╫> ?
$num
╫╫@ A
)
╫╫A B
;
╫╫B C
}
╪╪ $
playerBorderStackPanel
██ *
.
██* +
Children
██+ 3
.
██3 4
Add
██4 7
(
██7 8
youText
██8 ?
)
██? @
;
██@ A
}
▄▄ 
Image
▐▐ 
profileImage
▐▐ "
=
▐▐# $
new
▐▐% (
Image
▐▐) .
{
▀▀ 
Source
рр 
=
рр 
new
рр  
ImageLoader
рр! ,
(
рр, -
)
рр- .
.
рр. /&
GetImageByPlayerNickname
рр/ G
(
ррG H
profile
ррH O
)
ррO P
}
сс 
;
сс 
if
уу 
(
уу #
multiplayerGameClient
уу )
.
уу) *
IsAdmin
уу* 1
(
уу1 2
profile
уу2 9
)
уу9 :
||
уу; =#
multiplayerGameClient
уу> S
.
ууS T
IsAdmin
ууT [
(
уу[ \
loggedProfile
уу\ i
.
ууi j
Player
ууj p
.
ууp q
NickName
ууq y
)
ууy z
)
ууz {
{
фф 
profileImage
хх  
.
хх  !
Height
хх! '
=
хх( )
$num
хх* -
;
хх- .
profileImage
цц  
.
цц  !
Width
цц! &
=
цц' (
$num
цц) ,
;
цц, -
if
шш 
(
шш 
profile
шш 
==
шш  "
loggedProfile
шш# 0
.
шш0 1
Player
шш1 7
.
шш7 8
NickName
шш8 @
)
шш@ A
{
щщ 
profileImage
ъъ $
.
ъъ$ %
Margin
ъъ% +
=
ъъ, -
new
ъъ. 1
	Thickness
ъъ2 ;
(
ъъ; <
$num
ъъ< =
,
ъъ= >
$num
ъъ? A
,
ъъA B
$num
ъъC D
,
ъъD E
$num
ъъF G
)
ъъG H
;
ъъH I
}
ыы 
else
ьь 
{
ээ 
profileImage
юю $
.
юю$ %
Margin
юю% +
=
юю, -
new
юю. 1
	Thickness
юю2 ;
(
юю; <
$num
юю< =
,
юю= >
$num
юю? A
,
ююA B
$num
ююC D
,
ююD E
$num
ююF G
)
ююG H
;
ююH I
}
яя 
}
ЁЁ 
if
ЄЄ 
(
ЄЄ 
!
ЄЄ #
multiplayerGameClient
ЄЄ *
.
ЄЄ* +
IsAdmin
ЄЄ+ 2
(
ЄЄ2 3
loggedProfile
ЄЄ3 @
.
ЄЄ@ A
Player
ЄЄA G
.
ЄЄG H
NickName
ЄЄH P
)
ЄЄP Q
&&
ЄЄR T
!
ЄЄU V#
multiplayerGameClient
ЄЄV k
.
ЄЄk l
IsAdmin
ЄЄl s
(
ЄЄs t
profile
ЄЄt {
)
ЄЄ{ |
)
ЄЄ| }
{
єє 
profileImage
ЇЇ  
.
ЇЇ  !
Margin
ЇЇ! '
=
ЇЇ( )
new
ЇЇ* -
	Thickness
ЇЇ. 7
(
ЇЇ7 8
$num
ЇЇ8 9
,
ЇЇ9 :
$num
ЇЇ; =
,
ЇЇ= >
$num
ЇЇ? @
,
ЇЇ@ A
$num
ЇЇB C
)
ЇЇC D
;
ЇЇD E
if
ЎЎ 
(
ЎЎ 
profile
ЎЎ 
==
ЎЎ  "
loggedProfile
ЎЎ# 0
.
ЎЎ0 1
Player
ЎЎ1 7
.
ЎЎ7 8
NickName
ЎЎ8 @
)
ЎЎ@ A
{
ўў 
profileImage
°° $
.
°°$ %
Height
°°% +
=
°°, -
$num
°°. 1
;
°°1 2
profileImage
∙∙ $
.
∙∙$ %
Width
∙∙% *
=
∙∙+ ,
$num
∙∙- 0
;
∙∙0 1
}
·· 
else
√√ 
{
№№ 
profileImage
¤¤ $
.
¤¤$ %
Height
¤¤% +
=
¤¤, -
$num
¤¤. 1
;
¤¤1 2
profileImage
■■ $
.
■■$ %
Width
■■% *
=
■■+ ,
$num
■■- 0
;
■■0 1
}
   
}
АА $
playerBorderStackPanel
ВВ &
.
ВВ& '
Children
ВВ' /
.
ВВ/ 0
Add
ВВ0 3
(
ВВ3 4
profileImage
ВВ4 @
)
ВВ@ A
;
ВВA B

StackPanel
ДД &
playerNicknameStackPanel
ДД 3
=
ДД4 5
new
ДД6 9

StackPanel
ДД: D
{
ЕЕ 
Height
ЖЖ 
=
ЖЖ 
$num
ЖЖ 
,
ЖЖ  
Margin
ЗЗ 
=
ЗЗ 
new
ЗЗ  
	Thickness
ЗЗ! *
(
ЗЗ* +
$num
ЗЗ+ ,
,
ЗЗ, -
$num
ЗЗ. 0
,
ЗЗ0 1
$num
ЗЗ2 3
,
ЗЗ3 4
$num
ЗЗ5 6
)
ЗЗ6 7
}
ИИ 
;
ИИ 
	TextBlock
КК 
playerNickname
КК (
=
КК) *
new
КК+ .
	TextBlock
КК/ 8
{
ЛЛ 
Text
ММ 
=
ММ 
profile
ММ "
,
ММ" #
VerticalAlignment
НН %
=
НН& '
VerticalAlignment
НН( 9
.
НН9 :
Center
НН: @
,
НН@ A

Foreground
ОО 
=
ОО  
new
ОО! $
SolidColorBrush
ОО% 4
(
ОО4 5
Colors
ОО5 ;
.
ОО; <
White
ОО< A
)
ООA B
,
ООB C
TextWrapping
ПП  
=
ПП! "
TextWrapping
ПП# /
.
ПП/ 0
Wrap
ПП0 4
,
ПП4 5
TextAlignment
РР !
=
РР" #
TextAlignment
РР$ 1
.
РР1 2
Center
РР2 8
,
РР8 9!
HorizontalAlignment
СС '
=
СС( )!
HorizontalAlignment
СС* =
.
СС= >
Center
СС> D
,
ССD E
FontSize
ТТ 
=
ТТ 
$num
ТТ !
,
ТТ! "
Width
УУ 
=
УУ 
$num
УУ 
}
ФФ 
;
ФФ &
playerNicknameStackPanel
ЦЦ (
.
ЦЦ( )
Children
ЦЦ) 1
.
ЦЦ1 2
Add
ЦЦ2 5
(
ЦЦ5 6
playerNickname
ЦЦ6 D
)
ЦЦD E
;
ЦЦE F$
playerBorderStackPanel
ЧЧ &
.
ЧЧ& '
Children
ЧЧ' /
.
ЧЧ/ 0
Add
ЧЧ0 3
(
ЧЧ3 4&
playerNicknameStackPanel
ЧЧ4 L
)
ЧЧL M
;
ЧЧM N
if
ЩЩ 
(
ЩЩ #
multiplayerGameClient
ЩЩ )
.
ЩЩ) *
IsAdmin
ЩЩ* 1
(
ЩЩ1 2
loggedProfile
ЩЩ2 ?
.
ЩЩ? @
Player
ЩЩ@ F
.
ЩЩF G
NickName
ЩЩG O
)
ЩЩO P
&&
ЩЩQ S
!
ЩЩT U#
multiplayerGameClient
ЩЩU j
.
ЩЩj k
IsAdmin
ЩЩk r
(
ЩЩr s
profile
ЩЩs z
)
ЩЩz {
)
ЩЩ{ |
{
ЪЪ 

StackPanel
ЫЫ 
buttonsStackPanel
ЫЫ 0
=
ЫЫ1 2
new
ЫЫ3 6

StackPanel
ЫЫ7 A
{
ЬЬ 
Margin
ЭЭ 
=
ЭЭ  
new
ЭЭ! $
	Thickness
ЭЭ% .
(
ЭЭ. /
$num
ЭЭ/ 0
,
ЭЭ0 1
$num
ЭЭ2 4
,
ЭЭ4 5
$num
ЭЭ6 7
,
ЭЭ7 8
$num
ЭЭ9 :
)
ЭЭ: ;
,
ЭЭ; <
Orientation
ЮЮ #
=
ЮЮ$ %
Orientation
ЮЮ& 1
.
ЮЮ1 2

Horizontal
ЮЮ2 <
}
ЯЯ 
;
ЯЯ 
	TextBlock
бб !
makeAdminButtonText
бб 1
=
бб2 3
new
бб4 7
	TextBlock
бб8 A
{
вв 
TextWrapping
гг $
=
гг% &
TextWrapping
гг' 3
.
гг3 4
Wrap
гг4 8
,
гг8 9
TextAlignment
дд %
=
дд& '
TextAlignment
дд( 5
.
дд5 6
Center
дд6 <
,
дд< =
Text
ее 
=
ее 
resourceManager
ее .
.
ее. /
	GetString
ее/ 8
(
ее8 9
$str
ее9 E
,
ееE F
cultureInfo
ееG R
)
ееR S
}
жж 
;
жж 
Button
ии 
makeAdminButton
ии *
=
ии+ ,
new
ии- 0
Button
ии1 7
{
йй 
Style
кк 
=
кк 
(
кк  !
Style
кк! &
)
кк& '
FindResource
кк' 3
(
кк3 4
$str
кк4 A
)
ккA B
,
ккB C
FontSize
лл  
=
лл! "
$num
лл# %
,
лл% &
Height
мм 
=
мм  
$num
мм! #
,
мм# $
Width
нн 
=
нн 
$num
нн  "
,
нн" #
Margin
оо 
=
оо  
new
оо! $
	Thickness
оо% .
(
оо. /
$num
оо/ 1
,
оо1 2
$num
оо3 4
,
оо4 5
$num
оо6 7
,
оо7 8
$num
оо9 :
)
оо: ;
,
оо; <
Content
пп 
=
пп  !!
makeAdminButtonText
пп" 5
}
░░ 
;
░░ 
makeAdminButton
▒▒ #
.
▒▒# $
Click
▒▒$ )
+=
▒▒* ,$
MakeAdminButtonOnClick
▒▒- C
;
▒▒C D
Button
││ 
banPlayerButton
││ *
=
││+ ,
new
││- 0
Button
││1 7
{
┤┤ 
Content
╡╡ 
=
╡╡  !
resourceManager
╡╡" 1
.
╡╡1 2
	GetString
╡╡2 ;
(
╡╡; <
$str
╡╡< A
,
╡╡A B
cultureInfo
╡╡C N
)
╡╡N O
,
╡╡O P
Style
╢╢ 
=
╢╢ 
(
╢╢  !
Style
╢╢! &
)
╢╢& '
FindResource
╢╢' 3
(
╢╢3 4
$str
╢╢4 ?
)
╢╢? @
,
╢╢@ A
Height
╖╖ 
=
╖╖  
$num
╖╖! #
,
╖╖# $
Width
╕╕ 
=
╕╕ 
$num
╕╕  "
,
╕╕" #
Margin
╣╣ 
=
╣╣  
new
╣╣! $
	Thickness
╣╣% .
(
╣╣. /
$num
╣╣/ 1
,
╣╣1 2
$num
╣╣3 4
,
╣╣4 5
$num
╣╣6 7
,
╣╣7 8
$num
╣╣9 :
)
╣╣: ;
}
║║ 
;
║║ 
banPlayerButton
╗╗ #
.
╗╗# $
Click
╗╗$ )
+=
╗╗* ,$
BanPlayerButtonOnClick
╗╗- C
;
╗╗C D
buttonsStackPanel
╜╜ %
.
╜╜% &
Children
╜╜& .
.
╜╜. /
Add
╜╜/ 2
(
╜╜2 3
makeAdminButton
╜╜3 B
)
╜╜B C
;
╜╜C D
buttonsStackPanel
╛╛ %
.
╛╛% &
Children
╛╛& .
.
╛╛. /
Add
╛╛/ 2
(
╛╛2 3
banPlayerButton
╛╛3 B
)
╛╛B C
;
╛╛C D$
playerBorderStackPanel
┐┐ *
.
┐┐* +
Children
┐┐+ 3
.
┐┐3 4
Add
┐┐4 7
(
┐┐7 8
buttonsStackPanel
┐┐8 I
)
┐┐I J
;
┐┐J K
}
└└ #
playerBorderContainer
┬┬ %
.
┬┬% &
Children
┬┬& .
.
┬┬. /
Add
┬┬/ 2
(
┬┬2 3$
playerBorderStackPanel
┬┬3 I
)
┬┬I J
;
┬┬J K
playerBorder
├├ 
.
├├ 
Child
├├ "
=
├├# $#
playerBorderContainer
├├% :
;
├├: ;&
ConnectedUsersStackPanel
── (
.
──( )
Children
──) 1
.
──1 2
Add
──2 5
(
──5 6
playerBorder
──6 B
)
──B C
;
──C D
}
┼┼ 
}
╟╟ 	
public
╦╦ 
void
╦╦ 

UpdateChat
╦╦ 
(
╦╦ 
)
╦╦  
{
╠╠ 	
if
══ 
(
══ 
PageStateManager
══  
.
══  !
CurrentPage
══! ,
is
══- /
ChatView
══0 8
currentPage
══9 D
)
══D E
{
╬╬ 
currentPage
╧╧ 
.
╧╧ 
ShowUpdatedChat
╧╧ +
(
╧╧+ ,
)
╧╧, -
;
╧╧- .
}
╨╨ 
}
╤╤ 	
public
╙╙ 
void
╙╙ '
UpdateBannedProfilesLists
╙╙ -
(
╙╙- .
)
╙╙. /
{
╘╘ 	
if
╒╒ 
(
╒╒ 
PageStateManager
╒╒  
.
╒╒  !
CurrentPage
╒╒! ,
is
╒╒- /
BannedPlayersView
╒╒0 A
currentPage
╒╒B M
)
╒╒M N
{
╓╓ 
currentPage
╫╫ 
.
╫╫ 
ShowBannedPlayers
╫╫ -
(
╫╫- .
)
╫╫. /
;
╫╫/ 0
}
╪╪ 
}
┘┘ 	
public
██ 
void
██ *
UpdateConnectedProfilesLists
██ 0
(
██0 1
)
██1 2
{
▄▄ 	
if
▌▌ 
(
▌▌ 
PageStateManager
▌▌  
.
▌▌  !
CurrentPage
▌▌! ,
is
▌▌- /
	LobbyView
▌▌0 9
currentPage
▌▌: E
)
▌▌E F
{
▐▐ 
currentPage
▀▀ 
.
▀▀ "
ShowConnectedPlayers
▀▀ 0
(
▀▀0 1
)
▀▀1 2
;
▀▀2 3
}
рр 
}
сс 	
public
уу 
void
уу :
,UpdateConnectedProfilesForInviteToLobbyLists
уу @
(
уу@ A
)
ууA B
{
фф 	
if
хх 
(
хх 
PageStateManager
хх  
.
хх  !
CurrentPage
хх! ,
is
хх- /
FriendsView
хх0 ;
currentPage
хх< G
)
ххG H
{
цц 
currentPage
чч 
.
чч 6
(ShowConnectedFriendsListForInviteToLobby
чч D
(
ччD E
)
ччE F
;
ччF G
}
шш 
}
щщ 	
public
ыы 
void
ыы ,
ExpelPlayerFromMultiplayerGame
ыы 2
(
ыы2 3
)
ыы3 4
{
ьь 	
if
ээ 
(
ээ 
PageStateManager
ээ  
.
ээ  !
CurrentPage
ээ! ,
is
ээ- /
	LobbyView
ээ0 9
	lobbyView
ээ: C
)
ээC D
{
юю 
	lobbyView
яя 
.
яя 9
+ExitFromThisPageForBeingExpeltFromLobbyView
яя E
(
яяE F
)
яяF G
;
яяG H
}
ЁЁ 
else
ёё 
if
ёё 
(
ёё 
PageStateManager
ёё %
.
ёё% &
CurrentPage
ёё& 1
is
ёё2 4
BannedPlayersView
ёё5 F
bannedPlayersView
ёёG X
)
ёёX Y
{
ЄЄ 
bannedPlayersView
єє !
.
єє! "9
+ExitFromThisPageForBeingExpeltFromLobbyView
єє" M
(
єєM N
)
єєN O
;
єєO P
}
ЇЇ 
else
її 
if
її 
(
її 
PageStateManager
її %
.
її% &
CurrentPage
її& 1
is
її2 4
FriendsView
її5 @
friendsView
їїA L
)
їїL M
{
ЎЎ 
friendsView
ўў 
.
ўў 9
+ExitFromThisPageForBeingExpeltFromLobbyView
ўў G
(
ўўG H
)
ўўH I
;
ўўI J
}
°° 
else
∙∙ 
if
∙∙ 
(
∙∙ 
PageStateManager
∙∙ %
.
∙∙% &
CurrentPage
∙∙& 1
is
∙∙2 4
ChatView
∙∙5 =
chatView
∙∙> F
)
∙∙F G
{
·· 
chatView
√√ 
.
√√ 9
+ExitFromThisPageForBeingExpeltFromLobbyView
√√ D
(
√√D E
)
√√E F
;
√√F G
}
№№ 
else
¤¤ 
if
¤¤ 
(
¤¤ 
PageStateManager
¤¤ %
.
¤¤% &
CurrentPage
¤¤& 1
is
¤¤2 4
ConfigurationView
¤¤5 F
configurationView
¤¤G X
)
¤¤X Y
{
■■ 
}
АА 
}
ББ 	
}
ДД 
}ЕЕ ┤b
wC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\LoginView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
	LoginView "
:# $
Page% )
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
public 
	LoginView 
( 

MainWindow #

mainWindow$ .
,. /+
ProfileForCallbackMethodsClient0 O+
profileForCallbackMethodsClientP o
)o p
{ 	
PageStateManager   
.   
CurrentPage   (
=  ) *
this  + /
;  / 0
InitializeComponent!! 
(!!  
)!!  !
;!!! "
this## 
.## 

mainWindow## 
=## 

mainWindow## (
;##( )
cultureInfo$$ 
=$$ 
CultureInfo$$ %
.$$% &
CurrentUICulture$$& 6
;$$6 7
resourceManager%% 
=%% 
new%% !
ResourceManager%%" 1
(%%1 2
$str%%2 ^
,%%^ _
typeof%%` f
(%%f g

MainWindow%%g q
)%%q r
.%%r s
Assembly%%s {
)%%{ |
;%%| }
this'' 
.'' +
profileForCallbackMethodsClient'' 0
=''1 2+
profileForCallbackMethodsClient''3 R
;''R S
}(( 	
private** 
void** "
OpenForgotPasswordPage** +
(**+ ,
object**, 2
sender**3 9
,**9 : 
MouseButtonEventArgs**; O
e**P Q
)**Q R
{++ 	
NavigationService,, 
navigationService,, /
=,,0 1
NavigationService,,2 C
.,,C D 
GetNavigationService,,D X
(,,X Y
this,,Y ]
),,] ^
;,,^ _
navigationService-- 
.-- 
Navigate-- &
(--& '
new--' *
ForgotPassword--+ 9
(--9 :

mainWindow--: D
,--D E+
profileForCallbackMethodsClient--F e
)--e f
)--f g
;--g h
}.. 	
private00 
void00 
OpenSignUpPage00 #
(00# $
object00$ *
sender00+ 1
,001 2 
MouseButtonEventArgs003 G
e00H I
)00I J
{11 	
NavigationService22 
navigationService22 /
=220 1
NavigationService222 C
.22C D 
GetNavigationService22D X
(22X Y
this22Y ]
)22] ^
;22^ _
navigationService33 
.33 
Navigate33 &
(33& '
new33' *
CreateAccountView33+ <
(33< =

mainWindow33= G
,33G H+
profileForCallbackMethodsClient33I h
)33h i
)33i j
;33j k
}44 	
private66 
void66 
LoginButton66  
(66  !
object66! '
sender66( .
,66. /
RoutedEventArgs660 ?
e66@ A
)66A B
{77 	
if88 
(88 2
&InvalidValuesInTextFieldsTextGenerator88 6
(886 7
)887 8
==889 ;
$str88< >
)88> ?
{99 
SecureString:: "
passwordSecurePassword:: 3
=::4 5
PasswordPasswordBox::6 I
.::I J
SecurePassword::J X
;::X Y
string;; 
password;; 
=;;  !
new;;" %
System;;& ,
.;;, -
Net;;- 0
.;;0 1
NetworkCredential;;1 B
(;;B C
string;;C I
.;;I J
Empty;;J O
,;;O P"
passwordSecurePassword;;Q g
);;g h
.;;h i
Password;;i q
;;;q r
ProfileClient== 
profileClient== +
===, -
new==. 1
ProfileClient==2 ?
(==? @
)==@ A
;==A B
Profile>> 
profile>> 
=>>  !
profileClient>>" /
.>>/ 0&
GetProfileByPlayerNickname>>0 J
(>>J K
NicknameTextField>>K \
.>>\ ]
Text>>] a
)>>a b
;>>b c
if@@ 
(@@ 
profile@@ 
!=@@ 
null@@ #
)@@# $
{AA 
stringBB 

storedHashBB %
=BB& '
EncodingBB( 0
.BB0 1
UTF8BB1 5
.BB5 6
	GetStringBB6 ?
(BB? @
EncodingBB@ H
.BBH I
UTF8BBI M
.BBM N
GetBytesBBN V
(BBV W
profileBBW ^
.BB^ _
PlayerBB_ e
.BBe f
PasswordBBf n
)BBn o
)BBo p
;BBp q
ifDD 
(DD 
BCryptDD 
.DD 
NetDD "
.DD" #
BCryptDD# )
.DD) *
VerifyDD* 0
(DD0 1
passwordDD1 9
,DD9 :

storedHashDD; E
)DDE F
)DDF G
{EE 
ifFF 
(FF 
!FF 
profileClientFF *
.FF* +
TheProfileIsLoggedFF+ =
(FF= >
profileFF> E
.FFE F
	IDProfileFFF O
)FFO P
)FFP Q
{GG 
profileClientHH )
.HH) *
ChangeLoginStatusHH* ;
(HH; < 
ProfileLoginStatusesHH< P
.HHP Q
LoggedHHQ W
,HHW X
profileHHY `
.HH` a
	IDProfileHHa j
)HHj k
;HHk l+
profileForCallbackMethodsClientKK ;
.KK; <
ConnectKK< C
(KKC D
profileKKD K
.KKK L
PlayerKKL R
.KKR S
NickNameKKS [
)KK[ \
;KK\ ]

mainWindowMM &
.MM& '%
SetProfileToLoggedProfileMM' @
(MM@ A
profileMMA H
)MMH I
;MMI J
NavigationServiceOO -
navigationServiceOO. ?
=OO@ A
NavigationServiceOOB S
.OOS T 
GetNavigationServiceOOT h
(OOh i
thisOOi m
)OOm n
;OOn o
navigationServicePP -
.PP- .
NavigatePP. 6
(PP6 7
newPP7 :
MenuViewPP; C
(PPC D

mainWindowPPD N
,PPN O
profilePPP W
,PPW X+
profileForCallbackMethodsClientPPY x
)PPx y
)PPy z
;PPz {
}QQ 
elseRR 
{SS 
newTT 
AlertPopUpGeneratorTT  3
(TT3 4
)TT4 5
.TT5 6+
OpenInternationalizedErrorPopUpTT6 U
(TTU V
$strTTV b
,TTb c
$str	TTd А
)
TTА Б
;
TTБ В
}UU 
}VV 
elseWW 
{XX 
newYY 
AlertPopUpGeneratorYY /
(YY/ 0
)YY0 1
.YY1 2+
OpenInternationalizedErrorPopUpYY2 Q
(YYQ R
$strYYR ^
,YY^ _
$strYY` |
)YY| }
;YY} ~
}ZZ 
}[[ 
else\\ 
{]] 
new^^ 
AlertPopUpGenerator^^ +
(^^+ ,
)^^, -
.^^- .+
OpenInternationalizedErrorPopUp^^. M
(^^M N
$str^^N Z
,^^Z [
$str	^^\ Д
)
^^Д Е
;
^^Е Ж
}__ 
profileClientaa 
.aa 
Closeaa #
(aa# $
)aa$ %
;aa% &
}bb 
elsecc 
{dd 
newee 
AlertPopUpGeneratoree '
(ee' (
)ee( )
.ee) *
OpenErrorPopUpee* 8
(ee8 9
$stree9 E
,eeE F2
&InvalidValuesInTextFieldsTextGeneratoreeG m
(eem n
)een o
)eeo p
;eep q
}ff 
}gg 	
privatejj 
Stringjj 2
&InvalidValuesInTextFieldsTextGeneratorjj =
(jj= >
)jj> ?
{kk 	
intll )
textFieldsWithIncorrectValuesll -
=ll. /
$numll0 1
;ll1 2
stringnn 
	finalTextnn 
=nn 
$strnn !
;nn! "
stringpp 
nickNamePatternpp "
=pp# $
$strpp% @
;pp@ A
stringqq 
passwordPatternqq "
=qq# $
$strqq% g
;qqg h
Regexss 
nickNameRegexss 
=ss  !
newss" %
Regexss& +
(ss+ ,
nickNamePatternss, ;
)ss; <
;ss< =
Regextt 
passwordRegextt 
=tt  !
newtt" %
Regextt& +
(tt+ ,
passwordPatterntt, ;
)tt; <
;tt< =
Matchvv 
nickNameMatchvv 
=vv  !
nickNameRegexvv" /
.vv/ 0
Matchvv0 5
(vv5 6
NicknameTextFieldvv6 G
.vvG H
TextvvH L
)vvL M
;vvM N
SecureStringxx %
newPasswordSecurePasswordxx 2
=xx3 4
PasswordPasswordBoxxx5 H
.xxH I
SecurePasswordxxI W
;xxW X
stringyy 
passwordyy 
=yy 
newyy !
Systemyy" (
.yy( )
Netyy) ,
.yy, -
NetworkCredentialyy- >
(yy> ?
stringyy? E
.yyE F
EmptyyyF K
,yyK L%
newPasswordSecurePasswordyyM f
)yyf g
.yyg h
Passwordyyh p
;yyp q
Match{{ 
passwordMatch{{ 
={{  !
passwordRegex{{" /
.{{/ 0
Match{{0 5
({{5 6
password{{6 >
){{> ?
;{{? @
if}} 
(}} 
!}} 
nickNameMatch}} 
.}} 
Success}} &
||}}' )
!}}* +
passwordMatch}}+ 8
.}}8 9
Success}}9 @
)}}@ A
{~~ 
	finalText 
+= 
resourceManager ,
., -
	GetString- 6
(6 7
$str7 `
,` a
cultureInfob m
)m n
;n o
}
АА 
if
ВВ 
(
ВВ 
!
ВВ 
nickNameMatch
ВВ 
.
ВВ 
Success
ВВ &
)
ВВ& '
{
ГГ 
	finalText
ДД 
=
ДД 
	finalText
ДД %
+
ДД& '
resourceManager
ДД( 7
.
ДД7 8
	GetString
ДД8 A
(
ДДA B
$str
ДДB L
,
ДДL M
cultureInfo
ДДN Y
)
ДДY Z
+
ДД[ \
$str
ДД] `
;
ДД` a+
textFieldsWithIncorrectValues
ЕЕ -
++
ЕЕ- /
;
ЕЕ/ 0
}
ЖЖ 
if
ИИ 
(
ИИ 
!
ИИ 
passwordMatch
ИИ 
.
ИИ 
Success
ИИ &
)
ИИ& '
{
ЙЙ 
if
КК 
(
КК +
textFieldsWithIncorrectValues
КК 1
>=
КК2 4
$num
КК5 6
)
КК6 7
{
ЛЛ 
	finalText
ММ 
=
ММ 
	finalText
ММ  )
.
ММ) *
	Substring
ММ* 3
(
ММ3 4
$num
ММ4 5
,
ММ5 6
	finalText
ММ7 @
.
ММ@ A
Length
ММA G
-
ММH I
$num
ММJ K
)
ММK L
;
ММL M
	finalText
НН 
=
НН 
	finalText
НН  )
+
НН* +
$str
НН, 0
+
НН1 2
resourceManager
НН3 B
.
ННB C
	GetString
ННC L
(
ННL M
$str
ННM W
,
ННW X
cultureInfo
ННY d
)
ННd e
+
ННf g
$str
ННh k
;
ННk l
}
ОО 
else
ПП 
{
РР 
	finalText
СС 
=
СС 
	finalText
СС  )
+
СС* +
resourceManager
СС, ;
.
СС; <
	GetString
СС< E
(
ССE F
$str
ССF P
,
ССP Q
cultureInfo
ССR ]
)
СС] ^
+
СС_ `
$str
ССa d
;
ССd e
}
ТТ 
}
УУ 
return
ХХ 
	finalText
ХХ 
;
ХХ 
}
ЦЦ 	
}
ЧЧ 
}ШШ ▐v
xC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\MainWindow.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
,, -.
"IProfileForCallbackMethodsCallback. P
{ 
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
private 
Profile 
loggedProfile %
=& '
null( ,
;, -
public   

MainWindow   
(   
)   
{!! 	
InitializeComponent"" 
(""  
)""  !
;""! "
Application$$ 
.$$ 
Current$$ 
.$$  (
DispatcherUnhandledException$$  <
+=$$= ?(
DispatcherUnhandledException$$@ \
;$$\ ]
Application%% 
.%% 
Current%% 
.%%  
Exit%%  $
+=%%% '
AppExit%%( /
;%%/ 0
	AppDomain&& 
.&& 
CurrentDomain&& #
.&&# $
ProcessExit&&$ /
+=&&0 2
ProcessExit&&3 >
;&&> ?
this'' 
.'' 
Closing'' 
+='' 
MainWindowClosing'' -
;''- .+
profileForCallbackMethodsClient)) +
=)), -
new)). 1+
ProfileForCallbackMethodsClient))2 Q
())Q R
new))R U
InstanceContext))V e
())e f
this))f j
)))j k
)))k l
;))l m
NavigationService++ 
navigationService++ /
=++0 1
	MainFrame++2 ;
.++; <
NavigationService++< M
;++M N
navigationService,, 
.,, 
Navigate,, &
(,,& '
new,,' *
	StartView,,+ 4
(,,4 5
this,,5 9
,,,9 :+
profileForCallbackMethodsClient,,; Z
),,Z [
),,[ \
;,,\ ]
}.. 	
private00 
void00 
AppExit00 
(00 
object00 #
sender00$ *
,00* +
	EventArgs00, 5
e006 7
)007 8
{11 	
if22 
(22 
loggedProfile22 
!=22  
null22! %
)22% &
{33 
ProfileClient44 
profileClient44 +
=44, -
new44. 1
ProfileClient442 ?
(44? @
)44@ A
;44A B
profileClient55 
.55 
ChangeLoginStatus55 /
(55/ 0 
ProfileLoginStatuses550 D
.55D E
	NotLogged55E N
,55N O
loggedProfile55P ]
.55] ^
	IDProfile55^ g
)55g h
;55h i+
profileForCallbackMethodsClient66 /
.66/ 0

Disconnect660 :
(66: ;
loggedProfile66; H
.66H I
Player66I O
.66O P
NickName66P X
)66X Y
;66Y Z
profileClient88 
.88 
Close88 #
(88# $
)88$ %
;88% &
}99 
}:: 	
private<< 
void<< 
ProcessExit<<  
(<<  !
object<<! '
sender<<( .
,<<. /
	EventArgs<<0 9
e<<: ;
)<<; <
{== 	
if>> 
(>> 
loggedProfile>> 
!=>>  
null>>! %
)>>% &
{?? 
ProfileClient@@ 
profileClient@@ +
=@@, -
new@@. 1
ProfileClient@@2 ?
(@@? @
)@@@ A
;@@A B
profileClientAA 
.AA 
ChangeLoginStatusAA /
(AA/ 0 
ProfileLoginStatusesAA0 D
.AAD E
	NotLoggedAAE N
,AAN O
loggedProfileAAP ]
.AA] ^
	IDProfileAA^ g
)AAg h
;AAh i+
profileForCallbackMethodsClientBB /
.BB/ 0

DisconnectBB0 :
(BB: ;
loggedProfileBB; H
.BBH I
PlayerBBI O
.BBO P
NickNameBBP X
)BBX Y
;BBY Z
profileClientDD 
.DD 
CloseDD #
(DD# $
)DD$ %
;DD% &
}EE 
}FF 	
privateHH 
voidHH (
DispatcherUnhandledExceptionHH 1
(HH1 2
objectHH2 8
senderHH9 ?
,HH? @1
%DispatcherUnhandledExceptionEventArgsHHA f
eHHg h
)HHh i
{II 	
ifJJ 
(JJ 
loggedProfileJJ 
!=JJ  
nullJJ! %
)JJ% &
{KK 
ProfileClientLL 
profileClientLL +
=LL, -
newLL. 1
ProfileClientLL2 ?
(LL? @
)LL@ A
;LLA B
profileClientMM 
.MM 
ChangeLoginStatusMM /
(MM/ 0 
ProfileLoginStatusesMM0 D
.MMD E
	NotLoggedMME N
,MMN O
loggedProfileMMP ]
.MM] ^
	IDProfileMM^ g
)MMg h
;MMh i+
profileForCallbackMethodsClientNN /
.NN/ 0

DisconnectNN0 :
(NN: ;
loggedProfileNN; H
.NNH I
PlayerNNI O
.NNO P
NickNameNNP X
)NNX Y
;NNY Z
profileClientPP 
.PP 
ClosePP #
(PP# $
)PP$ %
;PP% &
}QQ 
}SS 	
privateUU 
voidUU 
MainWindowClosingUU &
(UU& '
objectUU' -
senderUU. 4
,UU4 5
SystemUU6 <
.UU< =
ComponentModelUU= K
.UUK L
CancelEventArgsUUL [
eUU\ ]
)UU] ^
{VV 	
if[[ 
([[ 
new[[ 
AlertPopUpGenerator[[ +
([[+ ,
)[[, -
.[[- ..
"OpenInternationalizedDesicionPopUp[[. P
([[P Q
$str[[Q c
,[[c d
$str[[e z
)[[z {
)[[{ |
{\\ 
if]] 
(]] 
loggedProfile]] $
!=]]% '
null]]( ,
)]], -
{^^ 
ProfileClient__ %
profileClient__& 3
=__4 5
new__6 9
ProfileClient__: G
(__G H
)__H I
;__I J
profileClient`` %
.``% &
ChangeLoginStatus``& 7
(``7 8 
ProfileLoginStatuses``8 L
.``L M
	NotLogged``M V
,``V W
loggedProfile``X e
.``e f
	IDProfile``f o
)``o p
;``p q+
profileForCallbackMethodsClientaa 7
.aa7 8

Disconnectaa8 B
(aaB C
loggedProfileaaC P
.aaP Q
PlayeraaQ W
.aaW X
NickNameaaX `
)aa` a
;aaa b
profileClientcc %
.cc% &
Closecc& +
(cc+ ,
)cc, -
;cc- .
}dd 
}ee 
elseff 
{gg 
ehh 
.hh 
Cancelhh 
=hh 
truehh #
;hh# $
}ii 
}ll 	
publicnn 
voidnn "
SetNullToLoggedProfilenn *
(nn* +
)nn+ ,
{oo 	
thispp 
.pp 
loggedProfilepp 
=pp  
nullpp! %
;pp% &
}qq 	
publicss 
voidss %
SetProfileToLoggedProfiless -
(ss- .
Profiless. 5
profiless6 =
)ss= >
{tt 	
thisuu 
.uu 
loggedProfileuu 
=uu  
newuu! $
Profileuu% ,
(uu, -
)uu- .
;uu. /
thisvv 
.vv 
loggedProfilevv 
=vv  
profilevv! (
;vv( )
}ww 	
public{{ 
void{{ 
OpenTheLobbyView{{ $
({{$ %
Page{{% )
page{{* .
){{. /
{|| 	
if}} 
(}} 
new}} 
AlertPopUpGenerator}} '
(}}' (
)}}( )
.}}) *.
"OpenInternationalizedDesicionPopUp}}* L
(}}L M
$str}}M t
,}}t u
$str	}}v Ъ
)
}}Ъ Ы
)
}}Ы Ь
{~~ !
MultiplayerGameClient %!
multiplayerGameClient& ;
=< =
new> A!
MultiplayerGameClientB W
(W X
newX [
InstanceContext\ k
(k l
newl o
	LobbyViewp y
(y z
thisz ~
,~ 
loggedProfile
А Н
,
Н О
new
П Т-
ProfileForCallbackMethodsClient
У ▓
(
▓ │
new
│ ╢
InstanceContext
╖ ╞
(
╞ ╟
this
╟ ╦
)
╦ ╠
)
╠ ═
)
═ ╬
)
╬ ╧
)
╧ ╨
;
╨ ╤
if
АА 
(
АА 
!
АА #
multiplayerGameClient
АА *
.
АА* +!
ThePlayersAreInGame
АА+ >
(
АА> ?
)
АА? @
)
АА@ A
{
ББ 
if
ВВ 
(
ВВ 
!
ВВ #
multiplayerGameClient
ВВ .
.
ВВ. /
IsBanned
ВВ/ 7
(
ВВ7 8
loggedProfile
ВВ8 E
.
ВВE F
Player
ВВF L
.
ВВL M
NickName
ВВM U
)
ВВU V
)
ВВV W
{
ГГ 
if
ДД 
(
ДД #
multiplayerGameClient
ДД 1
.
ДД1 2"
GetConnectedProfiles
ДД2 F
(
ДДF G
)
ДДG H
.
ДДH I
Length
ДДI O
<
ДДP Q
$num
ДДR S
)
ДДS T
{
ЕЕ 

ChatClient
ЖЖ &

chatClient
ЖЖ' 1
=
ЖЖ2 3
new
ЖЖ4 7

ChatClient
ЖЖ8 B
(
ЖЖB C
new
ЖЖC F
InstanceContext
ЖЖG V
(
ЖЖV W
new
ЖЖW Z
	LobbyView
ЖЖ[ d
(
ЖЖd e
)
ЖЖe f
)
ЖЖf g
)
ЖЖg h
;
ЖЖh i

chatClient
ЗЗ &
.
ЗЗ& '
JoinChat
ЗЗ' /
(
ЗЗ/ 0
loggedProfile
ЗЗ0 =
.
ЗЗ= >
Player
ЗЗ> D
.
ЗЗD E
NickName
ЗЗE M
)
ЗЗM N
;
ЗЗN O#
multiplayerGameClient
ЙЙ 1
.
ЙЙ1 2
Connect
ЙЙ2 9
(
ЙЙ9 :
loggedProfile
ЙЙ: G
.
ЙЙG H
Player
ЙЙH N
.
ЙЙN O
NickName
ЙЙO W
)
ЙЙW X
;
ЙЙX Y
NavigationService
КК -
navigationService
КК. ?
=
КК@ A
NavigationService
ККB S
.
ККS T"
GetNavigationService
ККT h
(
ККh i
page
ККi m
)
ККm n
;
ККn o
navigationService
ЛЛ -
.
ЛЛ- .
Navigate
ЛЛ. 6
(
ЛЛ6 7
new
ЛЛ7 :
	LobbyView
ЛЛ; D
(
ЛЛD E
this
ЛЛE I
,
ЛЛI J
loggedProfile
ЛЛK X
,
ЛЛX Y
new
ЛЛZ ]-
ProfileForCallbackMethodsClient
ЛЛ^ }
(
ЛЛ} ~
newЛЛ~ Б
InstanceContextЛЛВ С
(ЛЛС Т
thisЛЛТ Ц
)ЛЛЦ Ч
)ЛЛЧ Ш
)ЛЛШ Щ
)ЛЛЩ Ъ
;ЛЛЪ Ы
}
ММ 
else
НН 
{
ОО 
new
ПП !
AlertPopUpGenerator
ПП  3
(
ПП3 4
)
ПП4 5
.
ПП5 6-
OpenInternationalizedErrorPopUp
ПП6 U
(
ППU V
$str
ППV b
,
ППb c
$str
ППd z
)
ППz {
;
ПП{ |
}
РР 
}
СС 
else
ТТ 
{
УУ 
new
ФФ !
AlertPopUpGenerator
ФФ /
(
ФФ/ 0
)
ФФ0 1
.
ФФ1 2-
OpenInternationalizedErrorPopUp
ФФ2 Q
(
ФФQ R
$str
ФФR ^
,
ФФ^ _
$str
ФФ` u
)
ФФu v
;
ФФv w
}
ХХ 
}
ЦЦ 
else
ЧЧ 
{
ШШ 
new
ЩЩ !
AlertPopUpGenerator
ЩЩ +
(
ЩЩ+ ,
)
ЩЩ, -
.
ЩЩ- .-
OpenInternationalizedErrorPopUp
ЩЩ. M
(
ЩЩM N
$str
ЩЩN Z
,
ЩЩZ [
$str
ЩЩ\ {
)
ЩЩ{ |
;
ЩЩ| }
}
ЪЪ 
}
ЫЫ 
}
ЬЬ 	
public
аа 
void
аа  
UpdateFriendsLists
аа &
(
аа& '
)
аа' (
{
бб 	
if
вв 
(
вв 
PageStateManager
вв  
.
вв  !
CurrentPage
вв! ,
is
вв- /
FriendsView
вв0 ;
currentPage
вв< G
)
ввG H
{
гг 
currentPage
дд 
.
дд $
ShowUpdatedFriendsList
дд 2
(
дд2 3
)
дд3 4
;
дд4 5
}
ее 
}
жж 	
public
ии 
void
ии )
UpdateFriendsForInviteLists
ии /
(
ии/ 0
)
ии0 1
{
йй 	
if
кк 
(
кк 
PageStateManager
кк  
.
кк  !
CurrentPage
кк! ,
is
кк- /
FriendsView
кк0 ;
currentPage
кк< G
)
ккG H
{
лл 
currentPage
мм 
.
мм 6
(ShowConnectedFriendsListForInviteToLobby
мм D
(
ммD E
)
ммE F
;
ммF G
}
нн 
}
оо 	
public
░░ 
void
░░ &
OpenPaneForEnterTheLobby
░░ ,
(
░░, -
)
░░- .
{
▒▒ 	
if
▓▓ 
(
▓▓ 
PageStateManager
▓▓  
.
▓▓  !
CurrentPage
▓▓! ,
is
▓▓- /
MenuView
▓▓0 8
menuView
▓▓9 A
)
▓▓A B
{
││ 
menuView
┤┤ 
.
┤┤ 
GoToLobbyView
┤┤ &
(
┤┤& '
)
┤┤' (
;
┤┤( )
}
╡╡ 
else
╢╢ 
if
╢╢ 
(
╢╢ 
PageStateManager
╢╢ %
.
╢╢% &
CurrentPage
╢╢& 1
is
╢╢2 4
ModifyProfileView
╢╢5 F
modifyProfileView
╢╢G X
)
╢╢X Y
{
╖╖ 
modifyProfileView
╕╕ !
.
╕╕! "
GoToLobbyView
╕╕" /
(
╕╕/ 0
)
╕╕0 1
;
╕╕1 2
}
╣╣ 
else
║║ 
if
║║ 
(
║║ 
PageStateManager
║║ %
.
║║% &
CurrentPage
║║& 1
is
║║2 4
FriendsView
║║5 @
friendsView
║║A L
)
║║L M
{
╗╗ 
friendsView
╝╝ 
.
╝╝ 
GoToLobbyView
╝╝ )
(
╝╝) *
)
╝╝* +
;
╝╝+ ,
}
╜╜ 
else
╛╛ 
if
╛╛ 
(
╛╛ 
PageStateManager
╛╛ %
.
╛╛% &
CurrentPage
╛╛& 1
is
╛╛2 4
ConfigurationView
╛╛5 F
configurationView
╛╛G X
)
╛╛X Y
{
┐┐ 
}
┴┴ 
}
┬┬ 	
}
├├ 
public
┼┼ 

class
┼┼ 
PageStateManager
┼┼ !
{
╞╞ 
public
╟╟ 
static
╟╟ 
Page
╟╟ 
CurrentPage
╟╟ &
{
╟╟' (
get
╟╟) ,
;
╟╟, -
set
╟╟. 1
;
╟╟1 2
}
╟╟3 4
}
╚╚ 
}╔╔ юF
vC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\MenuView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
MenuView !
:" #
Page$ (
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
Profile  
loggedProfile! .
=/ 0
new1 4
Profile5 <
(< =
)= >
;> ?
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
public 
MenuView 
( 

MainWindow "

mainWindow# -
,- .
Profile/ 6
loggedProfile7 D
,D E+
ProfileForCallbackMethodsClientF e,
profileForCallbackMethodsClient	f Е
)
Е Ж
{ 	
PageStateManager 
. 
CurrentPage (
=) *
this+ /
;/ 0
InitializeComponent 
(  
)  !
;! "
this   
.   

mainWindow   
=   

mainWindow   (
;  ( )
this!! 
.!! 
loggedProfile!! 
=!!  
loggedProfile!!! .
;!!. /
this"" 
."" +
profileForCallbackMethodsClient"" 0
=""1 2+
profileForCallbackMethodsClient""3 R
;""R S
WelcomeBackLabel$$ 
.$$ 
Content$$ $
=$$% &
WelcomeBackLabel$$' 7
.$$7 8
Content$$8 ?
+$$@ A
loggedProfile$$B O
.$$O P
Player$$P V
.$$V W
NickName$$W _
+$$` a
$str$$b e
;$$e f
}%% 	
public'' 
MenuView'' 
('' 
)'' 
{'' 
}'' 
private)) 
void))  
FriendsButtonOnClick)) )
())) *
object))* 0
sender))1 7
,))7 8
RoutedEventArgs))9 H
e))I J
)))J K
{** 	
NavigationService++ 
navigationService++ /
=++0 1
NavigationService++2 C
.++C D 
GetNavigationService++D X
(++X Y
this++Y ]
)++] ^
;++^ _
navigationService,, 
.,, 
Navigate,, &
(,,& '
new,,' *
FriendsView,,+ 6
(,,6 7

mainWindow,,7 A
,,,A B
loggedProfile,,C P
,,,P Q+
profileForCallbackMethodsClient,,R q
),,q r
),,r s
;,,s t
}-- 	
private// 
void// 
PlayButtonOnClick// &
(//& '
object//' -
sender//. 4
,//4 5
RoutedEventArgs//6 E
e//F G
)//G H
{00 	!
MultiplayerGameClient11 !!
multiplayerGameClient11" 7
=118 9
new11: =!
MultiplayerGameClient11> S
(11S T
new11T W
InstanceContext11X g
(11g h
new11h k
	LobbyView11l u
(11u v

mainWindow	11v А
,
11А Б
loggedProfile
11В П
,
11П Р-
profileForCallbackMethodsClient
11С ░
)
11░ ▒
)
11▒ ▓
)
11▓ │
;
11│ ┤
if22 
(22 
!22 !
multiplayerGameClient22 &
.22& '
ThePlayersAreInGame22' :
(22: ;
)22; <
)22< =
{33 
if44 
(44 
!44 !
multiplayerGameClient44 *
.44* +
IsBanned44+ 3
(443 4
loggedProfile444 A
.44A B
Player44B H
.44H I
NickName44I Q
)44Q R
)44R S
{55 
if66 
(66 !
multiplayerGameClient66 -
.66- . 
GetConnectedProfiles66. B
(66B C
)66C D
.66D E
Length66E K
<66L M
$num66N O
)66O P
{77 

ChatClient88 "

chatClient88# -
=88. /
new880 3

ChatClient884 >
(88> ?
new88? B
InstanceContext88C R
(88R S
new88S V
	LobbyView88W `
(88` a
)88a b
)88b c
)88c d
;88d e

chatClient99 "
.99" #
JoinChat99# +
(99+ ,
loggedProfile99, 9
.999 :
Player99: @
.99@ A
NickName99A I
)99I J
;99J K!
multiplayerGameClient;; -
.;;- .
Connect;;. 5
(;;5 6
loggedProfile;;6 C
.;;C D
Player;;D J
.;;J K
NickName;;K S
);;S T
;;;T U
NavigationService<< )
navigationService<<* ;
=<<< =
NavigationService<<> O
.<<O P 
GetNavigationService<<P d
(<<d e
this<<e i
)<<i j
;<<j k
navigationService== )
.==) *
Navigate==* 2
(==2 3
new==3 6
	LobbyView==7 @
(==@ A

mainWindow==A K
,==K L
loggedProfile==M Z
,==Z [+
profileForCallbackMethodsClient==\ {
)=={ |
)==| }
;==} ~
}>> 
else?? 
{@@ 
newAA 
AlertPopUpGeneratorAA /
(AA/ 0
)AA0 1
.AA1 2+
OpenInternationalizedErrorPopUpAA2 Q
(AAQ R
$strAAR ^
,AA^ _
$strAA` v
)AAv w
;AAw x
}BB 
}CC 
elseDD 
{EE 
newFF 
AlertPopUpGeneratorFF +
(FF+ ,
)FF, -
.FF- .+
OpenInternationalizedErrorPopUpFF. M
(FFM N
$strFFN Z
,FFZ [
$strFF\ q
)FFq r
;FFr s
}GG 
}HH 
elseII 
{JJ 
newKK 
AlertPopUpGeneratorKK '
(KK' (
)KK( )
.KK) *+
OpenInternationalizedErrorPopUpKK* I
(KKI J
$strKKJ V
,KKV W
$strKKX w
)KKw x
;KKx y
}LL 
}MM 	
privateOO 
voidOO  
ProfileButtonOnClickOO )
(OO) *
objectOO* 0
senderOO1 7
,OO7 8
RoutedEventArgsOO9 H
eOOI J
)OOJ K
{PP 	
NavigationServiceQQ 
navigationServiceQQ /
=QQ0 1
NavigationServiceQQ2 C
.QQC D 
GetNavigationServiceQQD X
(QQX Y
thisQQY ]
)QQ] ^
;QQ^ _
navigationServiceRR 
.RR 
NavigateRR &
(RR& '
newRR' *
ModifyProfileViewRR+ <
(RR< =

mainWindowRR= G
,RRG H
loggedProfileRRI V
,RRV W+
profileForCallbackMethodsClientRRX w
)RRw x
)RRx y
;RRy z
}SS 	
privateUU 
voidUU 
QuitButtonOnClickUU &
(UU& '
objectUU' -
senderUU. 4
,UU4 5
RoutedEventArgsUU6 E
eUUF G
)UUG H
{VV 	
ProfileClientWW 
profileClientWW '
=WW( )
newWW* -
ProfileClientWW. ;
(WW; <
)WW< =
;WW= >
profileClientXX 
.XX 
ChangeLoginStatusXX +
(XX+ , 
ProfileLoginStatusesXX, @
.XX@ A
	NotLoggedXXA J
,XXJ K
loggedProfileXXL Y
.XXY Z
	IDProfileXXZ c
)XXc d
;XXd e

mainWindowYY 
.YY "
SetNullToLoggedProfileYY -
(YY- .
)YY. /
;YY/ 0+
profileForCallbackMethodsClient[[ +
.[[+ ,

Disconnect[[, 6
([[6 7
loggedProfile[[7 D
.[[D E
Player[[E K
.[[K L
NickName[[L T
)[[T U
;[[U V
NavigationService]] 
navigationService]] /
=]]0 1
NavigationService]]2 C
.]]C D 
GetNavigationService]]D X
(]]X Y
this]]Y ]
)]]] ^
;]]^ _
navigationService^^ 
.^^ 
Navigate^^ &
(^^& '
new^^' *
	LoginView^^+ 4
(^^4 5

mainWindow^^5 ?
,^^? @+
profileForCallbackMethodsClient^^A `
)^^` a
)^^a b
;^^b c
profileClient`` 
.`` 
Close`` 
(``  
)``  !
;``! "
}aa 	
publicdd 
voiddd 
GoToLobbyViewdd !
(dd! "
)dd" #
{ee 	

mainWindowff 
.ff 
OpenTheLobbyViewff '
(ff' (
thisff( ,
)ff, -
;ff- .
}gg 	
}hh 
}ii п╞
C:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\ModifyProfileView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
ModifyProfileView *
:+ ,
Page- 1
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
private 
Profile 
loggedProfile %
=& '
new( +
Profile, 3
(3 4
)4 5
;5 6
public!! 
ModifyProfileView!!  
(!!  !

MainWindow!!! +

mainWindow!!, 6
,!!6 7
Profile!!8 ?
loggedProfile!!@ M
,!!M N+
ProfileForCallbackMethodsClient!!O n,
profileForCallbackMethodsClient	!!o О
)
!!О П
{"" 	
InitializeComponent## 
(##  
)##  !
;##! "
this%% 
.%% 

mainWindow%% 
=%% 

mainWindow%% (
;%%( )
this&& 
.&& 
loggedProfile&& 
=&&  
loggedProfile&&! .
;&&. /
this'' 
.'' +
profileForCallbackMethodsClient'' 0
=''1 2+
profileForCallbackMethodsClient''3 R
;''R S
cultureInfo)) 
=)) 
CultureInfo)) %
.))% &
CurrentUICulture))& 6
;))6 7
resourceManager** 
=** 
new** !
ResourceManager**" 1
(**1 2
$str**2 ^
,**^ _
typeof**` f
(**f g

MainWindow**g q
)**q r
.**r s
Assembly**s {
)**{ |
;**| }
NamesTextBox,, 
.,, 
Text,, 
=,, 
loggedProfile,,  -
.,,- .
Player,,. 4
.,,4 5
Names,,5 :
;,,: ;
SurnamesTextBox-- 
.-- 
Text--  
=--! "
loggedProfile--# 0
.--0 1
Player--1 7
.--7 8
Surnames--8 @
;--@ A
EmailTextBox.. 
... 
Text.. 
=.. 
loggedProfile..  -
...- .
Player... 4
...4 5
Email..5 :
;..: ;
NicknameTextBox// 
.// 
Text//  
=//! "
loggedProfile//# 0
.//0 1
Player//1 7
.//7 8
NickName//8 @
;//@ A
BirthDayDatePicker00 
.00 
SelectedDate00 +
=00, -
loggedProfile00. ;
.00; <
Player00< B
.00B C
	BirthDate00C L
;00L M
byte22 
[22 
]22 
	imageData22 
=22 J
>GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions22 ]
(22] ^
)22^ _
;22_ `
if44 
(44 
	imageData44 
!=44 
null44 !
)44! "
{55 
try66 
{77 
BitmapImage88 
imageSource88  +
=88, -
new88. 1
BitmapImage882 =
(88= >
)88> ?
;88? @
imageSource99 
.99  
	BeginInit99  )
(99) *
)99* +
;99+ ,
imageSource:: 
.::  
StreamSource::  ,
=::- .
new::/ 2
MemoryStream::3 ?
(::? @
	imageData::@ I
)::I J
;::J K
imageSource;; 
.;;  
EndInit;;  '
(;;' (
);;( )
;;;) *
ProfilePictureImage== '
.==' (
Source==( .
===/ 0
imageSource==1 <
;==< =
}>> 
catch?? 
(?? 
	Exception??  
ex??! #
)??# $
{@@ 

MessageBoxAA 
.AA 
ShowAA #
(AA# $
$strAA$ -
+AA. /
exAA0 2
.AA2 3
MessageAA3 :
)AA: ;
;AA; <
}BB 
}CC 
elseDD 
{EE 
ImageRouteTextBlockFF #
.FF# $
TextFF$ (
=FF) *
$strFF+ -
;FF- .
}GG 
thisII 
.II +
profileForCallbackMethodsClientII 0
=II1 2+
profileForCallbackMethodsClientII3 R
;IIR S
}JJ 	
privateLL 
voidLL 
CancelButtonLL !
(LL! "
objectLL" (
senderLL) /
,LL/ 0
RoutedEventArgsLL1 @
eLLA B
)LLB C
{MM 	
NavigationServiceNN 
navigationServiceNN /
=NN0 1
NavigationServiceNN2 C
.NNC D 
GetNavigationServiceNND X
(NNX Y
thisNNY ]
)NN] ^
;NN^ _
navigationServiceOO 
.OO 
NavigateOO &
(OO& '
newOO' *
MenuViewOO+ 3
(OO3 4

mainWindowOO4 >
,OO> ?
loggedProfileOO@ M
,OOM N+
profileForCallbackMethodsClientOOO n
)OOn o
)OOo p
;OOp q
}PP 	
privateRR 
voidRR 
ModifyProfileButtonRR (
(RR( )
objectRR) /
senderRR0 6
,RR6 7
RoutedEventArgsRR8 G
eRRH I
)RRI J
{SS 	
ifTT 
(TT 2
&InvalidValuesInTextFieldsTextGeneratorTT 5
(TT5 6
)TT6 7
==TT8 :
$strTT; =
)TT= >
{UU 
ifVV 
(VV 
BirthDayDatePickerVV &
.VV& '
SelectedDateVV' 3
<=VV4 6
DateTimeVV7 ?
.VV? @
NowVV@ C
)VVC D
{WW 
PlayerClientXX  
playerClientXX! -
=XX. /
newXX0 3
PlayerClientXX4 @
(XX@ A
)XXA B
;XXB C
ProfileClientYY !
profileClientYY" /
=YY0 1
newYY2 5
ProfileClientYY6 C
(YYC D
)YYD E
;YYE F
if[[ 
([[ 
![[ 
playerClient[[ %
.[[% &%
TheEmailIsAlreadyRegisted[[& ?
([[? @
EmailTextBox[[@ L
.[[L M
Text[[M Q
)[[Q R
||[[S U
EmailTextBox[[V b
.[[b c
Text[[c g
==[[h j
loggedProfile[[k x
.[[x y
Player[[y 
.	[[ А
Email
[[А Е
)
[[Е Ж
{\\ 
if]] 
(]] 
!]] 
playerClient]] )
.]]) *(
TheNicknameIsAlreadyRegisted]]* F
(]]F G
NicknameTextBox]]G V
.]]V W
Text]]W [
)]][ \
||]]] _
NicknameTextBox]]` o
.]]o p
Text]]p t
==]]u w
loggedProfile	]]x Е
.
]]Е Ж
Player
]]Ж М
.
]]М Н
NickName
]]Н Х
)
]]Х Ц
{^^ 
profileClient__ )
.__) *
ModifyImageName__* 9
(__9 :
loggedProfile__: G
.__G H
Player__H N
.__N O
NickName__O W
,__W X
NicknameTextBox__Y h
.__h i
Text__i m
)__m n
;__n o"
ServicePlayerReferencebb 2
.bb2 3
Playersbb3 :
playersbb; B
=bbC D
newbbE H"
ServicePlayerReferencebbI _
.bb_ `
Playersbb` g
{cc 
IDPlayerdd  (
=dd) *
loggedProfiledd+ 8
.dd8 9
Playerdd9 ?
.dd? @
IDPlayerdd@ H
,ddH I
Namesee  %
=ee& '
NamesTextBoxee( 4
.ee4 5
Textee5 9
,ee9 :
Surnamesff  (
=ff) *
SurnamesTextBoxff+ :
.ff: ;
Textff; ?
,ff? @
Emailgg  %
=gg& '
EmailTextBoxgg( 4
.gg4 5
Textgg5 9
,gg9 :
NickNamehh  (
=hh) *
NicknameTextBoxhh+ :
.hh: ;
Texthh; ?
,hh? @
	BirthDateii  )
=ii* +
(ii, -
DateTimeii- 5
)ii5 6
BirthDayDatePickerii6 H
.iiH I
SelectedDateiiI U
}jj 
;jj 
playerClientll (
.ll( )
ModifyPlayerll) 5
(ll5 6
playersll6 =
)ll= >
;ll> ?
ifnn 
(nn  
ImageRouteTextBlocknn  3
.nn3 4
Textnn4 8
!=nn9 ;
$strnn< >
)nn> ?
{oo 
bytepp  $
[pp$ %
]pp% &
	imageDatapp' 0
=pp1 2
Filepp3 7
.pp7 8
ReadAllBytespp8 D
(ppD E
ImageRouteTextBlockppE X
.ppX Y
TextppY ]
)pp] ^
;pp^ _
stringqq  &
fileExtensionqq' 4
=qq5 6
Pathqq7 ;
.qq; <
GetExtensionqq< H
(qqH I
ImageRouteTextBlockqqI \
.qq\ ]
Textqq] a
)qqa b
;qqb c
stringrr  &
fileNamerr' /
=rr0 1
NicknameTextBoxrr2 A
.rrA B
TextrrB F
+rrG H
fileExtensionrrI V
;rrV W
iftt  "
(tt# $
	imageDatatt$ -
.tt- .
Lengthtt. 4
<=tt5 7
$numtt8 ?
)tt? @
{uu  !
profileClientvv$ 1
.vv1 2
UploadImagevv2 =
(vv= >
fileNamevv> F
,vvF G
	imageDatavvH Q
)vvQ R
;vvR S
}ww  !
elsexx  $
{yy  !
newzz$ '
AlertPopUpGeneratorzz( ;
(zz; <
)zz< =
.zz= >+
OpenInternationalizedErrorPopUpzz> ]
(zz] ^
$strzz^ j
,zzj k
$str	zzl Ф
)
zzФ Х
;
zzХ Ц
return{{$ *
;{{* +
}||  !
}}} 
new~~ 
AlertPopUpGenerator~~  3
(~~3 4
)~~4 5
.~~5 6-
!OpenInternationalizedSuccessPopUp~~6 W
(~~W X
$str~~X d
,~~d e
$str	~~f И
)
~~И Й
;
~~Й К
loggedProfile
АА )
=
АА* +
profileClient
АА, 9
.
АА9 :"
GetProfileByPlayerID
АА: N
(
ААN O
(
ААO P
int
ААP S
)
ААS T
loggedProfile
ААT a
.
ААa b
Player
ААb h
.
ААh i
IDPlayer
ААi q
)
ААq r
;
ААr s-
profileForCallbackMethodsClient
ВВ ;
.
ВВ; <5
'UpdateFriendsListsToAllConnectedClients
ВВ< c
(
ВВc d
)
ВВd e
;
ВВe f
NavigationService
ДД -
navigationService
ДД. ?
=
ДД@ A
NavigationService
ДДB S
.
ДДS T"
GetNavigationService
ДДT h
(
ДДh i
this
ДДi m
)
ДДm n
;
ДДn o
navigationService
ЕЕ -
.
ЕЕ- .
Navigate
ЕЕ. 6
(
ЕЕ6 7
new
ЕЕ7 :
MenuView
ЕЕ; C
(
ЕЕC D

mainWindow
ЕЕD N
,
ЕЕN O
loggedProfile
ЕЕP ]
,
ЕЕ] ^-
profileForCallbackMethodsClient
ЕЕ_ ~
)
ЕЕ~ 
)ЕЕ А
;ЕЕА Б
}
ЖЖ 
else
ЗЗ 
{
ИИ 
new
ЙЙ !
AlertPopUpGenerator
ЙЙ  3
(
ЙЙ3 4
)
ЙЙ4 5
.
ЙЙ5 6-
OpenInternationalizedErrorPopUp
ЙЙ6 U
(
ЙЙU V
$str
ЙЙV b
,
ЙЙb c
$str
ЙЙd }
)
ЙЙ} ~
;
ЙЙ~ 
}
КК 
}
ЛЛ 
else
ММ 
{
НН 
new
ОО !
AlertPopUpGenerator
ОО /
(
ОО/ 0
)
ОО0 1
.
ОО1 2-
OpenInternationalizedErrorPopUp
ОО2 Q
(
ООQ R
$str
ООR ^
,
ОО^ _
$str
ОО` v
)
ООv w
;
ООw x
}
ПП 
playerClient
СС  
.
СС  !
Close
СС! &
(
СС& '
)
СС' (
;
СС( )
profileClient
ТТ !
.
ТТ! "
Close
ТТ" '
(
ТТ' (
)
ТТ( )
;
ТТ) *
}
УУ 
else
ФФ 
{
ХХ 
new
ЦЦ !
AlertPopUpGenerator
ЦЦ +
(
ЦЦ+ ,
)
ЦЦ, -
.
ЦЦ- .-
OpenInternationalizedErrorPopUp
ЦЦ. M
(
ЦЦM N
$str
ЦЦN Z
,
ЦЦZ [
$strЦЦ\ О
)ЦЦО П
;ЦЦП Р
}
ЧЧ 
}
ШШ 
else
ЩЩ 
{
ЪЪ 
new
ЫЫ !
AlertPopUpGenerator
ЫЫ '
(
ЫЫ' (
)
ЫЫ( )
.
ЫЫ) *
OpenErrorPopUp
ЫЫ* 8
(
ЫЫ8 9
$str
ЫЫ9 E
,
ЫЫE F4
&InvalidValuesInTextFieldsTextGenerator
ЫЫG m
(
ЫЫm n
)
ЫЫn o
)
ЫЫo p
;
ЫЫp q
}
ЬЬ 
}
ЭЭ 	
private
ЯЯ 
void
ЯЯ 
SelectImageButton
ЯЯ &
(
ЯЯ& '
object
ЯЯ' -
sender
ЯЯ. 4
,
ЯЯ4 5
RoutedEventArgs
ЯЯ6 E
e
ЯЯF G
)
ЯЯG H
{
аа 	
OpenFileDialog
бб 
openFileDialog
бб )
=
бб* +
new
бб, /
OpenFileDialog
бб0 >
{
вв 
Filter
гг 
=
гг 
$str
гг O
,
ггO P
Title
дд 
=
дд 
resourceManager
дд '
.
дд' (
	GetString
дд( 1
(
дд1 2
$str
дд2 C
,
ддC D
cultureInfo
ддE P
)
ддP Q
}
ее 
;
ее 
if
зз 
(
зз 
openFileDialog
зз 
.
зз 

ShowDialog
зз )
(
зз) *
)
зз* +
==
зз, .
DialogResult
зз/ ;
.
зз; <
OK
зз< >
)
зз> ?
{
ии 
BitmapImage
йй 
imageSource
йй '
=
йй( )
new
йй* -
BitmapImage
йй. 9
(
йй9 :
new
йй: =
Uri
йй> A
(
ййA B
openFileDialog
ййB P
.
ййP Q
FileName
ййQ Y
)
ййY Z
)
ййZ [
;
йй[ \!
ProfilePictureImage
кк #
.
кк# $
Source
кк$ *
=
кк+ ,
imageSource
кк- 8
;
кк8 9!
ImageRouteTextBlock
лл #
.
лл# $
Text
лл$ (
=
лл) *
openFileDialog
лл+ 9
.
лл9 :
FileName
лл: B
;
ллB C
}
мм 
}
нн 	
private
пп 
string
пп 4
&InvalidValuesInTextFieldsTextGenerator
пп =
(
пп= >
)
пп> ?
{
░░ 	
int
▒▒ +
textFieldsWithIncorrectValues
▒▒ -
=
▒▒. /
$num
▒▒0 1
;
▒▒1 2
string
││ 
	finalText
││ 
=
││ 
$str
││ !
;
││! "
string
╡╡ 
namesPattern
╡╡ 
=
╡╡  !
$str
╡╡" C
;
╡╡C D
string
╢╢ 
surnamesPattern
╢╢ "
=
╢╢# $
$str
╢╢% F
;
╢╢F G
string
╖╖ 
emailPattern
╖╖ 
=
╖╖  !
$str
╖╖" A
;
╖╖A B
string
╕╕ 
nickNamePattern
╕╕ "
=
╕╕# $
$str
╕╕% ?
;
╕╕? @
Regex
║║ 

namesRegex
║║ 
=
║║ 
new
║║ "
Regex
║║# (
(
║║( )
namesPattern
║║) 5
)
║║5 6
;
║║6 7
Regex
╗╗ 
surnamesRegex
╗╗ 
=
╗╗  !
new
╗╗" %
Regex
╗╗& +
(
╗╗+ ,
surnamesPattern
╗╗, ;
)
╗╗; <
;
╗╗< =
Regex
╝╝ 

emailRegex
╝╝ 
=
╝╝ 
new
╝╝ "
Regex
╝╝# (
(
╝╝( )
emailPattern
╝╝) 5
)
╝╝5 6
;
╝╝6 7
Regex
╜╜ 
nickNameRegex
╜╜ 
=
╜╜  !
new
╜╜" %
Regex
╜╜& +
(
╜╜+ ,
nickNamePattern
╜╜, ;
)
╜╜; <
;
╜╜< =
Match
┐┐ 

namesMatch
┐┐ 
=
┐┐ 

namesRegex
┐┐ )
.
┐┐) *
Match
┐┐* /
(
┐┐/ 0
NamesTextBox
┐┐0 <
.
┐┐< =
Text
┐┐= A
)
┐┐A B
;
┐┐B C
Match
└└ 
surnamesMatch
└└ 
=
└└  !
surnamesRegex
└└" /
.
└└/ 0
Match
└└0 5
(
└└5 6
SurnamesTextBox
└└6 E
.
└└E F
Text
└└F J
)
└└J K
;
└└K L
Match
┴┴ 

emailMatch
┴┴ 
=
┴┴ 

emailRegex
┴┴ )
.
┴┴) *
Match
┴┴* /
(
┴┴/ 0
EmailTextBox
┴┴0 <
.
┴┴< =
Text
┴┴= A
)
┴┴A B
;
┴┴B C
Match
┬┬ 
nickNameMatch
┬┬ 
=
┬┬  !
nickNameRegex
┬┬" /
.
┬┬/ 0
Match
┬┬0 5
(
┬┬5 6
NicknameTextBox
┬┬6 E
.
┬┬E F
Text
┬┬F J
)
┬┬J K
;
┬┬K L
if
── 
(
── 
!
── 

namesMatch
── 
.
── 
Success
── #
||
──$ &
!
──' (
surnamesMatch
──( 5
.
──5 6
Success
──6 =
||
──> @
!
──A B

emailMatch
──B L
.
──L M
Success
──M T
||
──U W
!
┼┼ 
nickNameMatch
┼┼ 
.
┼┼ 
Success
┼┼ &
)
┼┼& '
{
╞╞ 
	finalText
╟╟ 
+=
╟╟ 
resourceManager
╟╟ ,
.
╟╟, -
	GetString
╟╟- 6
(
╟╟6 7
$str
╟╟7 `
)
╟╟` a
;
╟╟a b
}
╚╚ 
if
╩╩ 
(
╩╩ 
!
╩╩ 

namesMatch
╩╩ 
.
╩╩ 
Success
╩╩ #
)
╩╩# $
{
╦╦ 
	finalText
╠╠ 
=
╠╠ 
	finalText
╠╠ %
+
╠╠& '
resourceManager
╠╠( 7
.
╠╠7 8
	GetString
╠╠8 A
(
╠╠A B
$str
╠╠B K
,
╠╠K L
cultureInfo
╠╠M X
)
╠╠X Y
+
╠╠Z [
$str
╠╠\ _
;
╠╠_ `+
textFieldsWithIncorrectValues
══ -
++
══- /
;
══/ 0
}
╬╬ 
if
╨╨ 
(
╨╨ 
!
╨╨ 
surnamesMatch
╨╨ 
.
╨╨ 
Success
╨╨ &
)
╨╨& '
{
╤╤ 
if
╥╥ 
(
╥╥ +
textFieldsWithIncorrectValues
╥╥ 1
>=
╥╥2 4
$num
╥╥5 6
)
╥╥6 7
{
╙╙ 
	finalText
╘╘ 
=
╘╘ 
	finalText
╘╘  )
.
╘╘) *
	Substring
╘╘* 3
(
╘╘3 4
$num
╘╘4 5
,
╘╘5 6
	finalText
╘╘7 @
.
╘╘@ A
Length
╘╘A G
-
╘╘H I
$num
╘╘J K
)
╘╘K L
;
╘╘L M
	finalText
╒╒ 
=
╒╒ 
	finalText
╒╒  )
+
╒╒* +
$str
╒╒, 0
+
╒╒1 2
resourceManager
╒╒3 B
.
╒╒B C
	GetString
╒╒C L
(
╒╒L M
$str
╒╒M Y
,
╒╒Y Z
cultureInfo
╒╒[ f
)
╒╒f g
+
╒╒h i
$str
╒╒j m
;
╒╒m n
}
╓╓ 
else
╫╫ 
{
╪╪ 
	finalText
┘┘ 
=
┘┘ 
	finalText
┘┘  )
+
┘┘* +
resourceManager
┘┘, ;
.
┘┘; <
	GetString
┘┘< E
(
┘┘E F
$str
┘┘F R
,
┘┘R S
cultureInfo
┘┘T _
)
┘┘_ `
+
┘┘a b
$str
┘┘c f
;
┘┘f g
}
┌┌ +
textFieldsWithIncorrectValues
▄▄ -
++
▄▄- /
;
▄▄/ 0
}
▌▌ 
if
▀▀ 
(
▀▀ 
!
▀▀ 

emailMatch
▀▀ 
.
▀▀ 
Success
▀▀ #
)
▀▀# $
{
рр 
if
сс 
(
сс +
textFieldsWithIncorrectValues
сс 1
>=
сс2 4
$num
сс5 6
)
сс6 7
{
тт 
	finalText
уу 
=
уу 
	finalText
уу  )
.
уу) *
	Substring
уу* 3
(
уу3 4
$num
уу4 5
,
уу5 6
	finalText
уу7 @
.
уу@ A
Length
ууA G
-
ууH I
$num
ууJ K
)
ууK L
;
ууL M
	finalText
фф 
=
фф 
	finalText
фф  )
+
фф* +
$str
фф, 0
+
фф1 2
resourceManager
фф3 B
.
ффB C
	GetString
ффC L
(
ффL M
$str
ффM T
,
ффT U
cultureInfo
ффV a
)
ффa b
+
ффc d
$str
ффe h
;
ффh i
}
хх 
else
цц 
{
чч 
	finalText
шш 
=
шш 
	finalText
шш  )
+
шш* +
resourceManager
шш, ;
.
шш; <
	GetString
шш< E
(
шшE F
$str
шшF M
,
шшM N
cultureInfo
шшO Z
)
шшZ [
+
шш\ ]
$str
шш^ a
;
шшa b
}
щщ +
textFieldsWithIncorrectValues
ыы -
++
ыы- /
;
ыы/ 0
}
ьь 
if
юю 
(
юю 
!
юю 
nickNameMatch
юю 
.
юю 
Success
юю &
)
юю& '
{
яя 
if
ЁЁ 
(
ЁЁ +
textFieldsWithIncorrectValues
ЁЁ 1
>=
ЁЁ2 4
$num
ЁЁ5 6
)
ЁЁ6 7
{
ёё 
	finalText
ЄЄ 
=
ЄЄ 
	finalText
ЄЄ  )
.
ЄЄ) *
	Substring
ЄЄ* 3
(
ЄЄ3 4
$num
ЄЄ4 5
,
ЄЄ5 6
	finalText
ЄЄ7 @
.
ЄЄ@ A
Length
ЄЄA G
-
ЄЄH I
$num
ЄЄJ K
)
ЄЄK L
;
ЄЄL M
	finalText
єє 
=
єє 
	finalText
єє  )
+
єє* +
$str
єє, 0
+
єє1 2
resourceManager
єє3 B
.
єєB C
	GetString
єєC L
(
єєL M
$str
єєM W
,
єєW X
cultureInfo
єєY d
)
єєd e
+
єєf g
$str
єєh k
;
єєk l
}
ЇЇ 
else
її 
{
ЎЎ 
	finalText
ўў 
=
ўў 
	finalText
ўў  )
+
ўў* +
resourceManager
ўў, ;
.
ўў; <
	GetString
ўў< E
(
ўўE F
$str
ўўF P
,
ўўP Q
cultureInfo
ўўR ]
)
ўў] ^
+
ўў_ `
$str
ўўa d
;
ўўd e
}
°° 
}
∙∙ 
return
√√ 
	finalText
√√ 
;
√√ 
}
№№ 	
private
■■ 
byte
■■ 
[
■■ 
]
■■ L
>GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions
■■ U
(
■■U V
)
■■V W
{
   	
ProfileClient
АА 
profileClient
АА '
=
АА( )
new
АА* -
ProfileClient
АА. ;
(
АА; <
)
АА< =
;
АА= >
string
ББ 
fileName
ББ 
=
ББ 
loggedProfile
ББ +
.
ББ+ ,
Player
ББ, 2
.
ББ2 3
NickName
ББ3 ;
+
ББ< =
$str
ББ> D
;
ББD E
byte
ВВ 
[
ВВ 
]
ВВ 
	imageData
ВВ 
=
ВВ 
profileClient
ВВ ,
.
ВВ, -
GetImage
ВВ- 5
(
ВВ5 6
fileName
ВВ6 >
)
ВВ> ?
;
ВВ? @
if
ДД 
(
ДД 
	imageData
ДД 
==
ДД 
null
ДД  
)
ДД  !
{
ЕЕ 
fileName
ЖЖ 
=
ЖЖ 
loggedProfile
ЖЖ (
.
ЖЖ( )
Player
ЖЖ) /
.
ЖЖ/ 0
NickName
ЖЖ0 8
+
ЖЖ9 :
$str
ЖЖ; A
;
ЖЖA B
	imageData
ЗЗ 
=
ЗЗ 
profileClient
ЗЗ )
.
ЗЗ) *
GetImage
ЗЗ* 2
(
ЗЗ2 3
fileName
ЗЗ3 ;
)
ЗЗ; <
;
ЗЗ< =
}
ИИ 
if
КК 
(
КК 
	imageData
КК 
==
КК 
null
КК !
)
КК! "
{
ЛЛ 
fileName
ММ 
=
ММ 
loggedProfile
ММ (
.
ММ( )
Player
ММ) /
.
ММ/ 0
NickName
ММ0 8
+
ММ9 :
$str
ММ; B
;
ММB C
	imageData
НН 
=
НН 
profileClient
НН )
.
НН) *
GetImage
НН* 2
(
НН2 3
fileName
НН3 ;
)
НН; <
;
НН< =
}
ОО 
profileClient
РР 
.
РР 
Close
РР 
(
РР  
)
РР  !
;
РР! "
return
ТТ 
	imageData
ТТ 
;
ТТ 
}
УУ 	
public
ХХ 
void
ХХ 
GoToLobbyView
ХХ !
(
ХХ! "
)
ХХ" #
{
ЦЦ 	

mainWindow
ЧЧ 
.
ЧЧ 
OpenTheLobbyView
ЧЧ '
(
ЧЧ' (
this
ЧЧ( ,
)
ЧЧ, -
;
ЧЧ- .
}
ШШ 	
}
ЩЩ 
}ЪЪ ы4
wC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\StartView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
	StartView "
:# $
Page% )
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly +
ProfileForCallbackMethodsClient 8+
profileForCallbackMethodsClient9 X
;X Y
public 
	StartView 
( 

MainWindow #

mainWindow$ .
,. /+
ProfileForCallbackMethodsClient0 O+
profileForCallbackMethodsClientP o
)o p
{ 	
string 
incompletePath !
=" #
Path$ (
.( )
GetFullPath) 4
(4 5
$str	5 Я
)
Я а
;
а б
string 
pathPartToDelete #
=$ %
$str& b
;b c
Console 
. 
	WriteLine 
( 
incompletePath ,
), -
;- .
Console 
. 
ReadLine 
( 
) 
; 
string 
completePath 
=  !
incompletePath" 0
.0 1
Replace1 8
(8 9
pathPartToDelete9 I
,I J
$strK M
)M N
;N O
SoundPlayer!! 
mainMenuSong!! $
=!!% &
new!!' *
SoundPlayer!!+ 6
(!!6 7
completePath!!7 C
)!!C D
;!!D E
mainMenuSong"" 
."" 
Play"" 
("" 
)"" 
;""  
PageStateManager## 
.## 
CurrentPage## (
=##) *
this##+ /
;##/ 0
this%% 
.%% +
profileForCallbackMethodsClient%% 0
=%%1 2+
profileForCallbackMethodsClient%%3 R
;%%R S
InitializeComponent'' 
(''  
)''  !
;''! "
this(( 
.(( 

mainWindow(( 
=(( 

mainWindow(( (
;((( )
ChangeLanguageLabel)) 
())  
)))  !
;))! "
}** 	
private,, 
void,, 
	StartGame,, 
(,, 
object,, %
sender,,& ,
,,,, -
RoutedEventArgs,,. =
e,,> ?
),,? @
{-- 	
NavigationService.. 
navigationService.. /
=..0 1
NavigationService..2 C
...C D 
GetNavigationService..D X
(..X Y
this..Y ]
)..] ^
;..^ _
navigationService// 
.// 
Navigate// &
(//& '
new//' *
	LoginView//+ 4
(//4 5

mainWindow//5 ?
,//? @+
profileForCallbackMethodsClient//A `
)//` a
)//a b
;//b c
}00 	
private22 
void22 
ShowLanguages22 "
(22" #
object22# )
sender22* 0
,220 1 
MouseButtonEventArgs222 F
e22G H
)22H I
{33 	
LanguagePopUp44 
.44 
IsOpen44  
=44! "
true44# '
;44' (
}55 	
private77 
void77 
CloseLanguages77 #
(77# $
object77$ *
sender77+ 1
,771 2
MouseEventArgs773 A
e77B C
)77C D
{88 	
LanguagePopUp99 
.99 
IsOpen99  
=99! "
false99# (
;99( )
}:: 	
private<< 
void<< 
SetSpanishLanguage<< '
(<<' (
object<<( .
sender<</ 5
,<<5 6
RoutedEventArgs<<7 F
e<<G H
)<<H I
{== 	
System>> 
.>> 
	Threading>> 
.>> 
Thread>> #
.>># $
CurrentThread>>$ 1
.>>1 2
CurrentUICulture>>2 B
=>>C D
new>>E H
System>>I O
.>>O P
Globalization>>P ]
.>>] ^
CultureInfo>>^ i
(>>i j
$str>>j n
)>>n o
;>>o p
NavigationService@@ 
navigationService@@ /
=@@0 1
NavigationService@@2 C
.@@C D 
GetNavigationService@@D X
(@@X Y
this@@Y ]
)@@] ^
;@@^ _
navigationServiceAA 
.AA 
NavigateAA &
(AA& '
newAA' *
	StartViewAA+ 4
(AA4 5

mainWindowAA5 ?
,AA? @+
profileForCallbackMethodsClientAAA `
)AA` a
)AAa b
;AAb c
}BB 	
privateDD 
voidDD 
SetEnglishLanguageDD '
(DD' (
objectDD( .
senderDD/ 5
,DD5 6
RoutedEventArgsDD7 F
eDDG H
)DDH I
{EE 	
SystemFF 
.FF 
	ThreadingFF 
.FF 
ThreadFF #
.FF# $
CurrentThreadFF$ 1
.FF1 2
CurrentUICultureFF2 B
=FFC D
newFFE H
SystemFFI O
.FFO P
GlobalizationFFP ]
.FF] ^
CultureInfoFF^ i
(FFi j
$strFFj n
)FFn o
;FFo p
NavigationServiceHH 
navigationServiceHH /
=HH0 1
NavigationServiceHH2 C
.HHC D 
GetNavigationServiceHHD X
(HHX Y
thisHHY ]
)HH] ^
;HH^ _
navigationServiceII 
.II 
NavigateII &
(II& '
newII' *
	StartViewII+ 4
(II4 5

mainWindowII5 ?
,II? @+
profileForCallbackMethodsClientIIA `
)II` a
)IIa b
;IIb c
}JJ 	
privateLL 
voidLL 
ChangeLanguageLabelLL (
(LL( )
)LL) *
{MM 	
CultureInfoNN 
CurrentLanguageNN '
=NN( )
CultureInfoNN* 5
.NN5 6
CurrentUICultureNN6 F
;NNF G
ifQQ 
(QQ 
CurrentLanguageQQ 
.QQ  
NameQQ  $
==QQ% '
$strQQ( ,
)QQ, -
{RR 
LanguageLabelSS 
.SS 
TextSS "
=SS# $
$strSS% .
;SS. /
}TT 
elseUU 
{VV 
LanguageLabelWW 
.WW 
TextWW "
=WW# $
$strWW% .
;WW. /
}XX 
}[[ 	
}\\ 
}]] ╘
lC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\App.xaml.cs
	namespace		 	"
Renovaci├│n_LIS_Client		
 
{

 
public 

partial 
class 
App 
: 
Application *
{ 
} 
} Л
yC:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\View\WinnersView.xaml.cs
	namespace 	"
Renovaci├│n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
WinnersView $
:% &
Page' +
{ 
public 
WinnersView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void $
SendMessageButtonOnClick -
(- .
object. 4
sender5 ;
,; <
RoutedEventArgs= L
eM N
)N O
{ 	
} 	
private!! 
void!! 
ExitButtonOnClick!! &
(!!& '
object!!' -
sender!!. 4
,!!4 5
RoutedEventArgs!!6 E
e!!F G
)!!G H
{"" 	
}$$ 	
}%% 
}&& ┬
{C:\Users\wmike\OneDrive\Documentos\Renovaci├│n LIS\Renovaci├│n LIS Client\Renovaci├│n LIS Client\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 0
)

0 1
]

1 2
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 2
)2 3
]3 4
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[66 
assembly66 	
:66	 

AssemblyVersion66 
(66 
$str66 $
)66$ %
]66% &
[77 
assembly77 	
:77	 

AssemblyFileVersion77 
(77 
$str77 (
)77( )
]77) *