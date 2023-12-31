�)
�C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\AuxiliaryClasses\AlertPopUpGenerator.cs
	namespace 	"
Renovación_LIS_Client
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
}MM �
�C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\AuxiliaryClasses\ImageLoader.cs
	namespace 	"
Renovación_LIS_Client
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
}// �
uC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\Properties\Class1.cs
	namespace 	"
Renovación_LIS_Client
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
} �\
C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\BannedPlayersView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
profileForCallbackMethodsClient	o �
,
� �

ChatClient
� �

chatClient
� �
,
� �#
MultiplayerGameClient
� �#
multiplayerGameClient
� �
)
� �
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
multiplayerGameClient	//} �
)
//� �
)
//� �
;
//� �
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
$str	66b �
)
66� �
)
66� �
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
�� !
AlertPopUpGenerator
�� #
(
��# $
)
��$ %
.
��% &/
!OpenInternationalizedWarningPopUp
��& G
(
��G H
$str
��H P
,
��P Q
$str
��R m
)
��m n
;
��n o
}
�� 	
}
�� 
}�� ə
vC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\ChatView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
profileForCallbackMethodsClient	f �
,
� �

ChatClient
� �

chatClient
� �
,
� �#
MultiplayerGameClient
� �#
multiplayerGameClient
� �
)
� �
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
multiplayerGameClient	11} �
)
11� �
)
11� �
;
11� �
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
$str	??\ �
)
??� �
;
??� �
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
	GetString	PPw �
(
PP� �
$str
PP� �
,
PP� �
cultureInfo
PP� �
)
PP� �
;
PP� �
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
$str	UUx �
,
UU� �
cultureInfo
UU� �
)
UU� �
;
UU� �
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
�� +
friendBorderContentStackPanel
�� <
=
��= >
new
��? B

StackPanel
��C M
{
�� 
Orientation
�� #
=
��$ %
Orientation
��& 1
.
��1 2

Horizontal
��2 <
}
�� 
;
�� 
Image
��  
friendProfileImage
�� ,
=
��- .
new
��/ 2
Image
��3 8
{
�� 
Source
�� 
=
��  
new
��! $
ImageLoader
��% 0
(
��0 1
)
��1 2
.
��2 3&
GetImageByPlayerNickname
��3 K
(
��K L
profileAndMessage
��L ]
.
��] ^
Key
��^ a
)
��a b
,
��b c
Width
�� 
=
�� 
$num
��  "
,
��" #
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 1
,
��1 2
$num
��3 5
,
��5 6
$num
��7 8
,
��8 9
$num
��: <
)
��< =
}
�� 
;
�� 

StackPanel
�� 0
"friendNicknameAndMessageStackPanel
�� A
=
��B C
new
��D G

StackPanel
��H R
(
��R S
)
��S T
;
��T U
Label
�� !
friendNicknameLabel
�� -
=
��. /
new
��0 3
Label
��4 9
{
�� 

Foreground
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
White
��@ E
)
��E F
,
��F G!
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Left
��B F
,
��F G
FontSize
��  
=
��! "
$num
��# %
,
��% &
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
Content
�� 
=
��  !
profileAndMessage
��" 3
.
��3 4
Key
��4 7
}
�� 
;
�� 
Label
��  
friendMessageLabel
�� ,
=
��- .
new
��/ 2
Label
��3 8
{
�� 

Foreground
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
White
��@ E
)
��E F
,
��F G!
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Left
��B F
,
��F G
FontSize
��  
=
��! "
$num
��# %
,
��% &
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
Content
�� 
=
��  !
profileAndMessage
��" 3
.
��3 4
Value
��4 9
}
�� 
;
�� 0
"friendNicknameAndMessageStackPanel
�� 6
.
��6 7
Children
��7 ?
.
��? @
Add
��@ C
(
��C D!
friendNicknameLabel
��D W
)
��W X
;
��X Y0
"friendNicknameAndMessageStackPanel
�� 6
.
��6 7
Children
��7 ?
.
��? @
Add
��@ C
(
��C D 
friendMessageLabel
��D V
)
��V W
;
��W X+
friendBorderContentStackPanel
�� 1
.
��1 2
Children
��2 :
.
��: ;
Add
��; >
(
��> ? 
friendProfileImage
��? Q
)
��Q R
;
��R S+
friendBorderContentStackPanel
�� 1
.
��1 2
Children
��2 :
.
��: ;
Add
��; >
(
��> ?0
"friendNicknameAndMessageStackPanel
��? a
)
��a b
;
��b c!
friendMessageBorder
�� '
.
��' (
Child
��( -
=
��. /+
friendBorderContentStackPanel
��0 M
;
��M N 
MessagesStackPanel
�� &
.
��& '
Children
��' /
.
��/ 0
Add
��0 3
(
��3 4!
friendMessageBorder
��4 G
)
��G H
;
��H I
continue
�� 
;
�� 
}
�� 
if
�� 
(
�� 
profileAndMessage
�� %
.
��% &
Key
��& )
==
��* ,
loggedProfile
��- :
.
��: ;
Player
��; A
.
��A B
NickName
��B J
)
��J K
{
�� 
Border
�� '
loggedPlayerMessageBorder
�� 4
=
��5 6
new
��7 :
Border
��; A
{
�� !
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Right
��B G
,
��G H
Height
�� 
=
��  
$num
��! #
,
��# $
MaxWidth
��  
=
��! "
$num
��# '
,
��' (
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
CornerRadius
�� $
=
��% &
new
��' *
CornerRadius
��+ 7
(
��7 8
$num
��8 :
)
��: ;
,
��; <

Background
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
Black
��@ E
)
��E F
,
��F G
Opacity
�� 
=
��  !
$num
��" %
}
�� 
;
�� 
Label
�� &
loggedPlayerMessageLabel
�� 2
=
��3 4
new
��5 8
Label
��9 >
{
�� 

Foreground
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
White
��@ E
)
��E F
,
��F G!
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Left
��B F
,
��F G
FontSize
��  
=
��! "
$num
��# %
,
��% &
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 1
,
��1 2
$num
��3 5
,
��5 6
$num
��7 9
,
��9 :
$num
��; =
)
��= >
,
��> ?
Content
�� 
=
��  !
profileAndMessage
��" 3
.
��3 4
Value
��4 9
}
�� 
;
�� '
loggedPlayerMessageBorder
�� -
.
��- .
Child
��. 3
=
��4 5&
loggedPlayerMessageLabel
��6 N
;
��N O 
MessagesStackPanel
�� &
.
��& '
Children
��' /
.
��/ 0
Add
��0 3
(
��3 4'
loggedPlayerMessageBorder
��4 M
)
��M N
;
��N O
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� ?
(
��? @
)
��@ A
{
�� 	

chatClient
�� 
.
�� 
	LeaveChat
��  
(
��  !
loggedProfile
��! .
.
��. /
Player
��/ 5
.
��5 6
NickName
��6 >
)
��> ?
;
��? @
NavigationService
�� 
navigationService
�� /
=
��0 1
NavigationService
��2 C
.
��C D"
GetNavigationService
��D X
(
��X Y
this
��Y ]
)
��] ^
;
��^ _
navigationService
�� 
.
�� 
Navigate
�� &
(
��& '
new
��' *
MenuView
��+ 3
(
��3 4

mainWindow
��4 >
,
��> ?
loggedProfile
��@ M
,
��M N-
profileForCallbackMethodsClient
��O n
)
��n o
)
��o p
;
��p q
new
�� !
AlertPopUpGenerator
�� #
(
��# $
)
��$ %
.
��% &/
!OpenInternationalizedWarningPopUp
��& G
(
��G H
$str
��H P
,
��P Q
$str
��R m
)
��m n
;
��n o
}
�� 	
}
�� 
}�� �
C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\ConfigurationView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
}&& �
C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\CreateAccountView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
$str	XXj �
)
XX� �
;
XX� �
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
$str	__h �
)
__� �
;
__� �
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
)	ll �
;
ll� �
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
$str	qq\ �
)
qq� �
;
qq� �
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
�� 
string
�� 4
&InvalidValuesInTextFieldsTextGenerator
�� =
(
��= >
)
��> ?
{
�� 	
int
�� +
textFieldsWithIncorrectValues
�� -
=
��. /
$num
��0 1
;
��1 2
string
�� 
	finalText
�� 
=
�� 
$str
�� !
;
��! "
string
�� 
namesPattern
�� 
=
��  !
$str
��" C
;
��C D
string
�� 
surnamesPattern
�� "
=
��# $
$str
��% F
;
��F G
string
�� 
emailPattern
�� 
=
��  !
$str
��" A
;
��A B
string
�� 
nickNamePattern
�� "
=
��# $
$str
��% ?
;
��? @
string
�� 
passwordPattern
�� "
=
��# $
$str
��% g
;
��g h
string
�� $
confirmPasswordPattern
�� )
=
��* +
$str
��, n
;
��n o
Regex
�� 

namesRegex
�� 
=
�� 
new
�� "
Regex
��# (
(
��( )
namesPattern
��) 5
)
��5 6
;
��6 7
Regex
�� 
surnamesRegex
�� 
=
��  !
new
��" %
Regex
��& +
(
��+ ,
surnamesPattern
��, ;
)
��; <
;
��< =
Regex
�� 

emailRegex
�� 
=
�� 
new
�� "
Regex
��# (
(
��( )
emailPattern
��) 5
)
��5 6
;
��6 7
Regex
�� 
nickNameRegex
�� 
=
��  !
new
��" %
Regex
��& +
(
��+ ,
nickNamePattern
��, ;
)
��; <
;
��< =
Regex
�� 
passwordRegex
�� 
=
��  !
new
��" %
Regex
��& +
(
��+ ,
passwordPattern
��, ;
)
��; <
;
��< =
Regex
�� %
confirmNewPasswordRegex
�� )
=
��* +
new
��, /
Regex
��0 5
(
��5 6$
confirmPasswordPattern
��6 L
)
��L M
;
��M N
Match
�� 

namesMatch
�� 
=
�� 

namesRegex
�� )
.
��) *
Match
��* /
(
��/ 0
NamesTextBox
��0 <
.
��< =
Text
��= A
)
��A B
;
��B C
Match
�� 
surnamesMatch
�� 
=
��  !
surnamesRegex
��" /
.
��/ 0
Match
��0 5
(
��5 6
SurnamesTextBox
��6 E
.
��E F
Text
��F J
)
��J K
;
��K L
Match
�� 

emailMatch
�� 
=
�� 

emailRegex
�� )
.
��) *
Match
��* /
(
��/ 0
EmailTextBox
��0 <
.
��< =
Text
��= A
)
��A B
;
��B C
Match
�� 
nickNameMatch
�� 
=
��  !
nickNameRegex
��" /
.
��/ 0
Match
��0 5
(
��5 6
NickNameTextBox
��6 E
.
��E F
Text
��F J
)
��J K
;
��K L
SecureString
�� $
passwordSecurePassword
�� /
=
��0 1!
PasswordPasswordBox
��2 E
.
��E F
SecurePassword
��F T
;
��T U
string
�� 
password
�� 
=
�� 
new
�� !
System
��" (
.
��( )
Net
��) ,
.
��, -
NetworkCredential
��- >
(
��> ?
string
��? E
.
��E F
Empty
��F K
,
��K L$
passwordSecurePassword
��M c
)
��c d
.
��d e
Password
��e m
;
��m n
SecureString
�� +
confirmPasswordSecurePassword
�� 6
=
��7 8(
ConfirmPasswordPasswordBox
��9 S
.
��S T
SecurePassword
��T b
;
��b c
string
�� 
confirmPassword
�� "
=
��# $
new
��% (
System
��) /
.
��/ 0
Net
��0 3
.
��3 4
NetworkCredential
��4 E
(
��E F
string
��F L
.
��L M
Empty
��M R
,
��R S+
confirmPasswordSecurePassword
��T q
)
��q r
.
��r s
Password
��s {
;
��{ |
Match
�� 
passwordMatch
�� 
=
��  !
passwordRegex
��" /
.
��/ 0
Match
��0 5
(
��5 6
password
��6 >
)
��> ?
;
��? @
Match
�� "
confirmPasswordMatch
�� &
=
��' (%
confirmNewPasswordRegex
��) @
.
��@ A
Match
��A F
(
��F G
confirmPassword
��G V
)
��V W
;
��W X
if
�� 
(
�� 
!
�� 

namesMatch
�� 
.
�� 
Success
�� #
||
��$ &
!
��' (
surnamesMatch
��( 5
.
��5 6
Success
��6 =
||
��> @
!
��A B

emailMatch
��B L
.
��L M
Success
��M T
||
��U W
!
�� 
nickNameMatch
�� 
.
�� 
Success
�� &
||
��' )
!
��* +
passwordMatch
��+ 8
.
��8 9
Success
��9 @
||
��A C
!
��D E"
confirmPasswordMatch
��E Y
.
��Y Z
Success
��Z a
)
��a b
{
�� 
	finalText
�� 
=
�� 
	finalText
�� %
+
��& '
resourceManager
��( 7
.
��7 8
	GetString
��8 A
(
��A B
$str
��B k
,
��k l
cultureInfo
��m x
)
��x y
;
��y z
}
�� 
if
�� 
(
�� 
!
�� 

namesMatch
�� 
.
�� 
Success
�� #
)
��# $
{
�� 
	finalText
�� 
=
�� 
	finalText
�� %
+
��& '
resourceManager
��( 7
.
��7 8
	GetString
��8 A
(
��A B
$str
��B K
,
��K L
cultureInfo
��M X
)
��X Y
+
��Z [
$str
��\ _
;
��_ `+
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
surnamesMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M Y
,
��Y Z
cultureInfo
��[ f
)
��f g
+
��h i
$str
��j m
;
��m n
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F R
,
��R S
cultureInfo
��T _
)
��_ `
+
��a b
$str
��c f
;
��f g
}
�� +
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 

emailMatch
�� 
.
�� 
Success
�� #
)
��# $
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M T
,
��T U
cultureInfo
��V a
)
��a b
+
��c d
$str
��e h
;
��h i
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F M
,
��M N
cultureInfo
��O Z
)
��Z [
+
��\ ]
$str
��^ a
;
��a b
}
�� +
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
nickNameMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M W
,
��W X
cultureInfo
��Y d
)
��d e
+
��f g
$str
��h k
;
��k l
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F P
,
��P Q
cultureInfo
��R ]
)
��] ^
+
��_ `
$str
��a d
;
��d e
}
�� +
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
passwordMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M W
,
��W X
cultureInfo
��Y d
)
��d e
+
��f g
$str
��h k
;
��k l
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F P
,
��P Q
cultureInfo
��R ]
)
��] ^
+
��_ `
$str
��a d
;
��d e
}
�� +
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� "
confirmPasswordMatch
�� %
.
��% &
Success
��& -
)
��- .
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M _
,
��_ `
cultureInfo
��a l
)
��l m
+
��n o
$str
��p s
;
��s t
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F X
,
��X Y
cultureInfo
��Z e
)
��e f
+
��g h
$str
��i l
;
��l m
}
�� 
}
�� 
return
�� 
	finalText
�� 
;
�� 
}
�� 	
}
�� 
}�� ߚ
|C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\ForgotPassword.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
Password	^^} �
;
^^� �
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
verificationCode	tt} �
;
tt� �
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
�� 
new
�� !
AlertPopUpGenerator
�� /
(
��/ 0
)
��0 1
.
��1 2-
OpenInternationalizedErrorPopUp
��2 Q
(
��Q R
$str
��R ^
,
��^ _
$str
��` q
)
��q r
;
��r s
}
�� 
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- .-
OpenInternationalizedErrorPopUp
��. M
(
��M N
$str
��N Z
,
��Z [
$str
��\ {
)
��{ |
;
��| }
}
�� 
playerClient
�� 
.
�� 
Close
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) *
OpenErrorPopUp
��* 8
(
��8 9
$str
��9 E
,
��E F4
&InvalidValuesInTextFieldsTextGenerator
��G m
(
��m n
)
��n o
)
��o p
;
��p q
}
�� 
}
�� 	
private
�� 
String
�� 4
&InvalidValuesInTextFieldsTextGenerator
�� =
(
��= >
)
��> ?
{
�� 	
int
�� +
textFieldsWithIncorrectValues
�� -
=
��. /
$num
��0 1
;
��1 2
string
�� 
	finalText
�� 
=
�� 
$str
�� !
;
��! "
string
�� 
emailPattern
�� 
=
��  !
$str
��" A
;
��A B
string
��  
newPasswordPattern
�� %
=
��& '
$str
��( j
;
��j k
string
�� '
confirmNewPasswordPattern
�� ,
=
��- .
$str
��/ q
;
��q r
Regex
�� 

emailRegex
�� 
=
�� 
new
�� "
Regex
��# (
(
��( )
emailPattern
��) 5
)
��5 6
;
��6 7
Regex
�� 
newPasswordRegex
�� "
=
��# $
new
��% (
Regex
��) .
(
��. / 
newPasswordPattern
��/ A
)
��A B
;
��B C
Regex
�� %
confirmNewPasswordRegex
�� )
=
��* +
new
��, /
Regex
��0 5
(
��5 6'
confirmNewPasswordPattern
��6 O
)
��O P
;
��P Q
Match
�� 

emailMatch
�� 
=
�� 

emailRegex
�� )
.
��) *
Match
��* /
(
��/ 0
EmailTextField
��0 >
.
��> ?
Text
��? C
)
��C D
;
��D E
SecureString
�� '
newPasswordSecurePassword
�� 2
=
��3 4$
NewPasswordPasswordBox
��5 K
.
��K L
SecurePassword
��L Z
;
��Z [
string
�� 
newPassword
�� 
=
��  
new
��! $
System
��% +
.
��+ ,
Net
��, /
.
��/ 0
NetworkCredential
��0 A
(
��A B
string
��B H
.
��H I
Empty
��I N
,
��N O'
newPasswordSecurePassword
��P i
)
��i j
.
��j k
Password
��k s
;
��s t
SecureString
�� .
 confirmNewPasswordSecurePassword
�� 9
=
��: ;+
ConfirmNewPasswordPasswordBox
��< Y
.
��Y Z
SecurePassword
��Z h
;
��h i
string
��  
confirmNewPassword
�� %
=
��& '
new
��( +
System
��, 2
.
��2 3
Net
��3 6
.
��6 7
NetworkCredential
��7 H
(
��H I
string
��I O
.
��O P
Empty
��P U
,
��U V.
 confirmNewPasswordSecurePassword
��W w
)
��w x
.
��x y
Password��y �
;��� �
Match
�� 
newPasswordMatch
�� "
=
��# $
newPasswordRegex
��% 5
.
��5 6
Match
��6 ;
(
��; <
newPassword
��< G
)
��G H
;
��H I
Match
�� %
confirmNewPasswordMatch
�� )
=
��* +%
confirmNewPasswordRegex
��, C
.
��C D
Match
��D I
(
��I J 
confirmNewPassword
��J \
)
��\ ]
;
��] ^
if
�� 
(
�� 
!
�� 

emailMatch
�� 
.
�� 
Success
�� #
||
��$ &
!
��' (
newPasswordMatch
��( 8
.
��8 9
Success
��9 @
||
��A C
!
��D E%
confirmNewPasswordMatch
��E \
.
��\ ]
Success
��] d
)
��d e
{
�� 
	finalText
�� 
+=
�� 
resourceManager
�� ,
.
��, -
	GetString
��- 6
(
��6 7
$str
��7 `
,
��` a
cultureInfo
��b m
)
��m n
;
��n o
}
�� 
if
�� 
(
�� 
!
�� 

emailMatch
�� 
.
�� 
Success
�� #
)
��# $
{
�� 
	finalText
�� 
=
�� 
	finalText
�� %
+
��& '
resourceManager
��( 7
.
��7 8
	GetString
��8 A
(
��A B
$str
��B I
,
��I J
cultureInfo
��K V
)
��V W
+
��X Y
$str
��Z ]
;
��] ^+
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
newPasswordMatch
�� !
.
��! "
Success
��" )
)
��) *
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, /
+
��0 1
resourceManager
��2 A
.
��A B
	GetString
��B K
(
��K L
$str
��L Z
,
��Z [
cultureInfo
��\ g
)
��g h
+
��i j
$str
��k n
;
��n o
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F T
,
��T U
cultureInfo
��V a
)
��a b
+
��c d
$str
��e h
;
��h i
}
�� +
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� %
confirmNewPasswordMatch
�� (
.
��( )
Success
��) 0
)
��0 1
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, /
+
��0 1
resourceManager
��2 A
.
��A B
	GetString
��B K
(
��K L
$str
��L ^
,
��^ _
cultureInfo
��` k
)
��k l
+
��m n
$str
��o r
;
��r s
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F X
,
��X Y
cultureInfo
��Z e
)
��e f
+
��g h
$str
��i l
;
��l m
}
�� 
}
�� 
return
�� 
	finalText
�� 
;
�� 
}
�� 	
}
�� 
}�� ��
yC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\FriendsView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
profileForCallbackMethodsClient	))i �
)
))� �
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
profileForCallbackMethodsClient	<<i �
,
<<� �

ChatClient
<<� �

chatClient
<<� �
,
<<� �#
MultiplayerGameClient
<<� �#
multiplayerGameClient
<<� �
)
<<� �
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
$str	ZZb �
)
ZZ� �
)
ZZ� �
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
�� 
	IDProfile
�� !
=
��" #
profile1
��$ ,
.
��, -
	IDProfile
��- 6
,
��6 7
Coins
�� 
=
�� 
profile1
��  (
.
��( )
Coins
��) .
,
��. /
LoginStatus
�� #
=
��$ %
profile1
��& .
.
��. /
LoginStatus
��/ :
,
��: ;
Players
�� 
=
��  !
players1
��" *
}
�� 
;
�� 
profileClient
�� !
.
��! "
CancelFriendship
��" 2
(
��2 3
profiles
��  
,
��  !
	profiles1
�� !
)
�� 
;
�� 
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- ./
!OpenInternationalizedSuccessPopUp
��. O
(
��O P
$str
��P \
,
��\ ]
$str��^ �
)��� �
;��� �
profileClient
�� !
.
��! "
Close
��" '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
ExitButtonOnClick
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	3
%friendRequestForCallbackMethodsClient
�� 1
.
��1 2

Disconnect
��2 <
(
��< =
loggedProfile
��= J
.
��J K
Player
��K Q
.
��Q R
NickName
��R Z
)
��Z [
;
��[ \
NavigationService
�� 
navigationService
�� /
=
��0 1
NavigationService
��2 C
.
��C D"
GetNavigationService
��D X
(
��X Y
this
��Y ]
)
��] ^
;
��^ _
navigationService
�� 
.
�� 
Navigate
�� &
(
��& '
new
��' *
MenuView
��+ 3
(
��3 4

mainWindow
��4 >
,
��> ?
loggedProfile
��@ M
,
��M N-
profileForCallbackMethodsClient
��O n
)
��n o
)
��o p
;
��p q
}
�� 	
private
�� 
void
�� '
InviteFriendButtonOnClick
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< =
RoutedEventArgs
��> M
e
��N O
)
��O P
{
�� 	
FriendsBorder
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Hidden
��2 8
;
��8 9%
SendFriendRequestBorder
�� #
.
��# $

Visibility
��$ .
=
��/ 0

Visibility
��1 ;
.
��; <
Visible
��< C
;
��C D
}
�� 	
private
�� 
void
�� ,
SeeFriendsRequestButtonOnClick
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
RoutedEventArgs
��C R
e
��S T
)
��T U
{
�� 	+
ShowUpdatedFriendRequestsList
�� )
(
��) *
)
��* +
;
��+ ,
FriendsBorder
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Hidden
��2 8
;
��8 9#
FriendsRequestsBorder
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Visible
��: A
;
��A B
}
�� 	
public
�� 
void
�� $
ShowUpdatedFriendsList
�� *
(
��* +
)
��+ ,
{
�� 	%
OnlineFriendsStackPanel
�� #
.
��# $
Children
��$ ,
.
��, -
Clear
��- 2
(
��2 3
)
��3 4
;
��4 5&
OfflineFriendsStackPanel
�� $
.
��$ %
Children
��% -
.
��- .
Clear
��. 3
(
��3 4
)
��4 5
;
��5 6
ProfileClient
�� 
profileClient
�� '
=
��( )
new
��* -
ProfileClient
��. ;
(
��; <
)
��< =
;
��= >
foreach
�� 
(
�� 
Profile
�� 
profile
�� $
in
��% '
profileClient
��( 5
.
��5 6

GetFriends
��6 @
(
��@ A
loggedProfile
��A N
.
��N O
Player
��O U
.
��U V
IDPlayer
��V ^
)
��^ _
)
��_ `
{
�� 
Border
�� 
friendBorder
�� #
=
��$ %
new
��& )
Border
��* 0
{
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 1
,
��1 2
$num
��3 5
,
��5 6
$num
��7 8
)
��8 9
,
��9 :
CornerRadius
��  
=
��! "
new
��# &
CornerRadius
��' 3
(
��3 4
$num
��4 6
)
��6 7
,
��7 8

Background
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
Black
��< A
)
��A B
}
�� 
;
�� 

StackPanel
�� &
textAndButtonsStackPanel
�� 3
=
��4 5
new
��6 9

StackPanel
��: D
{
�� 
Orientation
�� 
=
��  !
Orientation
��" -
.
��- .

Horizontal
��. 8
}
�� 
;
�� 
	TextBlock
�� 
idTextBlock
�� %
=
��& '
new
��( +
	TextBlock
��, 5
{
�� 

Visibility
�� 
=
��  

Visibility
��! +
.
��+ ,
	Collapsed
��, 5
,
��5 6
Text
�� 
=
�� 
profile
�� "
.
��" #
	IDProfile
��# ,
.
��, -
ToString
��- 5
(
��5 6
)
��6 7
}
�� 
;
�� 
Image
��  
friendProfileImage
�� (
=
��) *
new
��+ .
Image
��/ 4
{
�� 
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Source
�� 
=
�� 
new
��  
ImageLoader
��! ,
(
��, -
)
��- .
.
��. /&
GetImageByPlayerNickname
��/ G
(
��G H
profile
��H O
.
��O P
Player
��P V
.
��V W
NickName
��W _
)
��_ `
}
�� 
;
�� 
	TextBlock
�� 
nicknameTextBlock
�� +
=
��, -
new
��. 1
	TextBlock
��2 ;
{
�� 

Foreground
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Width
�� 
=
�� 
$num
�� 
,
��  
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
FontSize
�� 
=
�� 
$num
�� !
,
��! "
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Center
��: @
,
��@ A
Text
�� 
=
�� 
profile
�� "
.
��" #
Player
��# )
.
��) *
NickName
��* 2
}
�� 
;
�� 
Button
�� $
cancelFriendshipButton
�� -
=
��. /
new
��0 3
Button
��4 :
{
�� 
Style
�� 
=
�� 
(
�� 
Style
�� "
)
��" #
FindResource
��# /
(
��/ 0
$str
��0 ;
)
��; <
,
��< =
Height
�� 
=
�� 
$num
�� 
,
��  
Width
�� 
=
�� 
$num
�� 
,
��  !
HorizontalAlignment
�� '
=
��( )!
HorizontalAlignment
��* =
.
��= >
Right
��> C
,
��C D
Content
�� 
=
�� 
resourceManager
�� -
.
��- .
	GetString
��. 7
(
��7 8
$str
��8 K
,
��K L
cultureInfo
��M X
)
��X Y
,
��Y Z
FontSize
�� 
=
�� 
$num
�� !
,
��! "
}
�� 
;
�� $
cancelFriendshipButton
�� &
.
��& '
Click
��' ,
+=
��- /+
CancelFriendshipButtonOnClick
��0 M
;
��M N&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
idTextBlock
��6 A
)
��A B
;
��B C&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6 
friendProfileImage
��6 H
)
��H I
;
��I J&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
nicknameTextBlock
��6 G
)
��G H
;
��H I&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6$
cancelFriendshipButton
��6 L
)
��L M
;
��M N
friendBorder
�� 
.
�� 
Child
�� "
=
��# $&
textAndButtonsStackPanel
��% =
;
��= >
if
�� 
(
�� 
profile
�� 
.
�� 
LoginStatus
�� '
==
��( *
Enum
��+ /
.
��/ 0
GetName
��0 7
(
��7 8
typeof
��8 >
(
��> ?"
ProfileLoginStatuses
��? S
)
��S T
,
��T U"
ProfileLoginStatuses
��V j
.
��j k
Logged
��k q
)
��q r
)
��r s
{
�� %
OnlineFriendsStackPanel
�� +
.
��+ ,
Children
��, 4
.
��4 5
Add
��5 8
(
��8 9
friendBorder
��9 E
)
��E F
;
��F G
}
�� 
if
�� 
(
�� 
profile
�� 
.
�� 
LoginStatus
�� '
==
��( *
Enum
��+ /
.
��/ 0
GetName
��0 7
(
��7 8
typeof
��8 >
(
��> ?"
ProfileLoginStatuses
��? S
)
��S T
,
��T U"
ProfileLoginStatuses
��V j
.
��j k
	NotLogged
��k t
)
��t u
)
��u v
{
�� &
OfflineFriendsStackPanel
�� ,
.
��, -
Children
��- 5
.
��5 6
Add
��6 9
(
��9 :
friendBorder
��: F
)
��F G
;
��G H
}
�� 
}
�� 
profileClient
�� 
.
�� 
Close
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
void
�� !
CancelButtonOnClick
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	$
ShowUpdatedFriendsList
�� "
(
��" #
)
��# $
;
��$ %%
SendFriendRequestBorder
�� #
.
��# $

Visibility
��$ .
=
��/ 0

Visibility
��1 ;
.
��; <
Hidden
��< B
;
��B C
FriendsBorder
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Visible
��2 9
;
��9 :
}
�� 	
private
�� 
void
�� ,
SendFriendRequestButtonOnClick
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
RoutedEventArgs
��C R
e
��S T
)
��T U
{
�� 	
if
�� 
(
�� G
9InvalidNicknameInSendFriendRequestTextFieldsTextGenerator
�� I
(
��I J
)
��J K
==
��L N
$str
��O Q
)
��Q R
{
�� 
if
�� 
(
�� 
new
�� 
	TextRange
�� !
(
��! " 
MessageRichTextBox
��" 4
.
��4 5
Document
��5 =
.
��= >
ContentStart
��> J
,
��J K 
MessageRichTextBox
��L ^
.
��^ _
Document
��_ g
.
��g h

ContentEnd
��h r
)
��r s
.
��s t
Text
��t x
.
��x y
Length
��y 
<=��� �
$num��� �
)��� �
{
�� 
ProfileClient
�� !
profileClient
��" /
=
��0 1
new
��2 5
ProfileClient
��6 C
(
��C D
)
��D E
;
��E F
if
�� 
(
�� 
profileClient
�� %
.
��% &(
GetProfileByPlayerNickname
��& @
(
��@ A
NicknameTextBox
��A P
.
��P Q
Text
��Q U
)
��U V
!=
��W Y
null
��Z ^
)
��^ _
{
�� 
if
�� 
(
�� 
NicknameTextBox
�� +
.
��+ ,
Text
��, 0
!=
��1 3
loggedProfile
��4 A
.
��A B
Player
��B H
.
��H I
NickName
��I Q
)
��Q R
{
�� !
FriendRequestClient
�� /!
friendRequestClient
��0 C
=
��D E
new
��F I!
FriendRequestClient
��J ]
(
��] ^
)
��^ _
;
��_ `
if
�� 
(
��  
!
��  !!
friendRequestClient
��! 4
.
��4 5T
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile
��5 {
(
��{ |
loggedProfile
��  -
.
��- .
	IDProfile
��. 7
,
��7 8
profileClient
��  -
.
��- .(
GetProfileByPlayerNickname
��. H
(
��H I
NicknameTextBox
��I X
.
��X Y
Text
��Y ]
)
��] ^
.
��^ _
	IDProfile
��_ h
)
��  !
)
��! "
{
�� 
bool
��  $M
?theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile
��% d
=
��e f
false
��g l
;
��l m
foreach
��  '
(
��( )
Profile
��) 0
p
��1 2
in
��3 5
profileClient
��6 C
.
��C D

GetFriends
��D N
(
��N O
loggedProfile
��O \
.
��\ ]
	IDProfile
��] f
)
��f g
)
��g h
{
��  !
if
��$ &
(
��' (
profileClient
��( 5
.
��5 6(
GetProfileByPlayerNickname
��6 P
(
��P Q
NicknameTextBox
��Q `
.
��` a
Text
��a e
)
��e f
.
��f g
Player
��g m
.
��m n
NickName
��n v
==
��w y
p
��z {
.
��{ |
Player��| �
.��� �
NickName��� �
)��� �
{
��$ %M
?theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile
��( g
=
��h i
true
��j n
;
��n o
break
��( -
;
��- .
}
��$ %
}
��  !
if
��  "
(
��# $
!
��$ %M
?theUserIntroducedInTheNicknameTextBoxIsFriendOfTheLoggedProfile
��% d
)
��d e
{
��  !
if
��$ &
(
��' (
!
��( )!
friendRequestClient
��) <
.
��< =[
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile��= �
(��� �
loggedProfile
��( 5
.
��5 6
	IDProfile
��6 ?
,
��? @
profileClient
��( 5
.
��5 6(
GetProfileByPlayerNickname
��6 P
(
��P Q
NicknameTextBox
��Q `
.
��` a
Text
��a e
)
��e f
.
��f g
	IDProfile
��g p
)
��( )
)
��) *
{
��$ %+
ServiceFriendRequestReference
��( E
.
��E F
FriendRequests
��F T
friendRequests
��U c
=
��d e
new
��f i,
ServiceFriendRequestReference��j �
.��� �
FriendRequests��� �
{
��( )
Message
��, 3
=
��4 5
new
��6 9
	TextRange
��: C
(
��C D 
MessageRichTextBox
��D V
.
��V W
Document
��W _
.
��_ `
ContentStart
��` l
,
��l m!
MessageRichTextBox��n �
.��� �
Document��� �
.��� �

ContentEnd��� �
)��� �
.��� �
Text��� �
,��� �
CreationDate
��, 8
=
��9 :
DateTime
��; C
.
��C D
Now
��D G
,
��G H
AceptationStatus
��, <
=
��= >
Enum
��? C
.
��C D
GetName
��D K
(
��K L
typeof
��L R
(
��R S-
FriendRequestAceptationStatuses
��S r
)
��r s
,
��s t.
FriendRequestAceptationStatuses��u �
.��� �
Pendient��� �
)��� �
,��� �
SendingStatus
��, 9
=
��: ;
Enum
��< @
.
��@ A
GetName
��A H
(
��H I
typeof
��I O
(
��O P*
FriendRequestSendingStatuses
��P l
)
��l m
,
��m n+
FriendRequestSendingStatuses��o �
.��� �
Sent��� �
)��� �
}
��( )
;
��) *+
ServiceFriendRequestReference
��( E
.
��E F
Players
��F M
players
��N U
=
��V W
new
��X [+
ServiceFriendRequestReference
��\ y
.
��y z
Players��z �
{
��( )
IDPlayer
��, 4
=
��5 6
loggedProfile
��7 D
.
��D E
Player
��E K
.
��K L
IDPlayer
��L T
,
��T U
Names
��, 1
=
��2 3
loggedProfile
��4 A
.
��A B
Player
��B H
.
��H I
Names
��I N
,
��N O
Surnames
��, 4
=
��5 6
loggedProfile
��7 D
.
��D E
Player
��E K
.
��K L
Surnames
��L T
,
��T U
Email
��, 1
=
��2 3
loggedProfile
��4 A
.
��A B
Player
��B H
.
��H I
Email
��I N
,
��N O
NickName
��, 4
=
��5 6
loggedProfile
��7 D
.
��D E
Player
��E K
.
��K L
NickName
��L T
,
��T U
	BirthDate
��, 5
=
��6 7
(
��8 9
DateTime
��9 A
)
��A B
loggedProfile
��B O
.
��O P
Player
��P V
.
��V W
	BirthDate
��W `
,
��` a
Password
��, 4
=
��5 6
loggedProfile
��7 D
.
��D E
Player
��E K
.
��K L
Password
��L T
}
��( )
;
��) *+
ServiceFriendRequestReference
��( E
.
��E F
Profiles
��F N
profiles
��O W
=
��X Y
new
��Z ]+
ServiceFriendRequestReference
��^ {
.
��{ |
Profiles��| �
{
��( )
	IDProfile
��, 5
=
��6 7
loggedProfile
��8 E
.
��E F
	IDProfile
��F O
,
��O P
Coins
��, 1
=
��2 3
loggedProfile
��4 A
.
��A B
Coins
��B G
,
��G H
LoginStatus
��, 7
=
��8 9
loggedProfile
��: G
.
��G H
LoginStatus
��H S
,
��S T
Players
��, 3
=
��4 5
players
��6 =
}
��( )
;
��) *
Profile
��( /
profile1
��0 8
=
��9 :
profileClient
��; H
.
��H I(
GetProfileByPlayerNickname
��I c
(
��c d
NicknameTextBox
��d s
.
��s t
Text
��t x
)
��x y
;
��y z+
ServiceFriendRequestReference
��( E
.
��E F
Players
��F M
players1
��N V
=
��W X
new
��Y \+
ServiceFriendRequestReference
��] z
.
��z {
Players��{ �
{
��( )
IDPlayer
��, 4
=
��5 6
profile1
��7 ?
.
��? @
Player
��@ F
.
��F G
IDPlayer
��G O
,
��O P
Names
��, 1
=
��2 3
profile1
��4 <
.
��< =
Player
��= C
.
��C D
Names
��D I
,
��I J
Surnames
��, 4
=
��5 6
profile1
��7 ?
.
��? @
Player
��@ F
.
��F G
Surnames
��G O
,
��O P
Email
��, 1
=
��2 3
profile1
��4 <
.
��< =
Player
��= C
.
��C D
Email
��D I
,
��I J
NickName
��, 4
=
��5 6
profile1
��7 ?
.
��? @
Player
��@ F
.
��F G
NickName
��G O
,
��O P
	BirthDate
��, 5
=
��6 7
(
��8 9
DateTime
��9 A
)
��A B
profile1
��B J
.
��J K
Player
��K Q
.
��Q R
	BirthDate
��R [
,
��[ \
Password
��, 4
=
��5 6
profile1
��7 ?
.
��? @
Player
��@ F
.
��F G
Password
��G O
}
��( )
;
��) *+
ServiceFriendRequestReference
��( E
.
��E F
Profiles
��F N
	profiles1
��O X
=
��Y Z
new
��[ ^+
ServiceFriendRequestReference
��_ |
.
��| }
Profiles��} �
{
��( )
	IDProfile
��, 5
=
��6 7
profile1
��8 @
.
��@ A
	IDProfile
��A J
,
��J K
Coins
��, 1
=
��2 3
profile1
��4 <
.
��< =
Coins
��= B
,
��B C
LoginStatus
��, 7
=
��8 9
profile1
��: B
.
��B C
LoginStatus
��C N
,
��N O
Players
��, 3
=
��4 5
players1
��6 >
}
��( )
;
��) *
friendRequests
��( 6
.
��6 7
Profiles
��7 ?
=
��@ A
profiles
��B J
;
��J K
friendRequests
��( 6
.
��6 7
	Profiles1
��7 @
=
��A B
	profiles1
��C L
;
��L M!
friendRequestClient
��( ;
.
��; <
AddFriendRequest
��< L
(
��L M
friendRequests
��M [
)
��[ \
;
��\ ]
new
��( +!
AlertPopUpGenerator
��, ?
(
��? @
)
��@ A
.
��A B/
!OpenInternationalizedSuccessPopUp
��B c
(
��c d
$str
��d p
,
��p q
$str��r �
)��� �
;��� �$
ShowUpdatedFriendsList
��( >
(
��> ?
)
��? @
;
��@ A%
SendFriendRequestBorder
��( ?
.
��? @

Visibility
��@ J
=
��K L

Visibility
��M W
.
��W X
Hidden
��X ^
;
��^ _
FriendsBorder
��( 5
.
��5 6

Visibility
��6 @
=
��A B

Visibility
��C M
.
��M N
Visible
��N U
;
��U V
}
��$ %
else
��$ (
{
��$ %
new
��( +!
AlertPopUpGenerator
��, ?
(
��? @
)
��@ A
.
��A B-
OpenInternationalizedErrorPopUp
��B a
(
��a b
$str
��b n
,
��n o
$str��p �
)��� �
;��� �
}
��$ %
}
��  !
else
��  $
{
��  !
new
��$ '!
AlertPopUpGenerator
��( ;
(
��; <
)
��< =
.
��= >-
OpenInternationalizedErrorPopUp
��> ]
(
��] ^
$str
��^ j
,
��j k
$str��l �
)��� �
;��� �
}
��  !
}
�� 
else
��  
{
�� 
new
��  #!
AlertPopUpGenerator
��$ 7
(
��7 8
)
��8 9
.
��9 :-
OpenInternationalizedErrorPopUp
��: Y
(
��Y Z
$str
��Z f
,
��f g
$str��h �
)��� �
;��� �
}
�� !
friendRequestClient
�� /
.
��/ 0
Close
��0 5
(
��5 6
)
��6 7
;
��7 8
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
��  3
(
��3 4
)
��4 5
.
��5 6-
OpenInternationalizedErrorPopUp
��6 U
(
��U V
$str
��V b
,
��b c
$str��d �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� /
(
��/ 0
)
��0 1
.
��1 2-
OpenInternationalizedErrorPopUp
��2 Q
(
��Q R
$str
��R ^
,
��^ _
$str��` �
)��� �
;��� �
}
�� 
profileClient
�� !
.
��! "
Close
��" '
(
��' (
)
��( )
;
��) *
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- .-
OpenInternationalizedErrorPopUp
��. M
(
��M N
$str
��N Z
,
��Z [
$str��\ �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) *
OpenErrorPopUp
��* 8
(
��8 9
$str
��9 E
,
��E FH
9InvalidNicknameInSendFriendRequestTextFieldsTextGenerator��G �
(��� �
)��� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� 
BackButtonOnClick
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	$
ShowUpdatedFriendsList
�� "
(
��" #
)
��# $
;
��$ %#
FriendsRequestsBorder
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Hidden
��: @
;
��@ A
FriendsBorder
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Visible
��2 9
;
��9 :
}
�� 	
private
�� 
void
�� "
DetailsButtonOnClick
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	#
FriendsRequestsBorder
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Hidden
��: @
;
��@ A(
FriendRequestDetailsBorder
�� &
.
��& '

Visibility
��' 1
=
��2 3

Visibility
��4 >
.
��> ?
Visible
��? F
;
��F G
if
�� 
(
�� 
sender
�� 
is
�� 
Button
��  
button
��! '
)
��' (
{
�� 

StackPanel
�� 
parent
�� !
=
��" #
VisualTreeHelper
��$ 4
.
��4 5
	GetParent
��5 >
(
��> ?
button
��? E
)
��E F
as
��G I

StackPanel
��J T
;
��T U
	TextBlock
�� 
IDTextBlock
�� %
=
��& '
(
��( )
	TextBlock
��) 2
)
��2 3
VisualTreeHelper
��3 C
.
��C D
GetChild
��D L
(
��L M
parent
��M S
,
��S T
$num
��U V
)
��V W
;
��W X!
FriendRequestClient
�� #!
friendRequestClient
��$ 7
=
��8 9
new
��: =!
FriendRequestClient
��> Q
(
��Q R
)
��R S
;
��S T
FriendRequest
�� 
friendRequest
�� +
=
��, -!
friendRequestClient
��. A
.
��A B"
GetFriendRequestByID
��B V
(
��V W
long
��W [
.
��[ \
Parse
��\ a
(
��a b
IDTextBlock
��b m
.
��m n
Text
��n r
)
��r s
)
��s t
;
��t u
NicknameLabel
�� 
.
�� 
Content
�� %
=
��& '
friendRequest
��( 5
.
��5 6
Profile
��6 =
.
��= >
Player
��> D
.
��D E
NickName
��E M
;
��M N
CreationDateLabel
�� !
.
��! "
Content
��" )
=
��* +
friendRequest
��, 9
.
��9 :
CreationDate
��: F
;
��F G
MessageTextBlock
��  
.
��  !
Text
��! %
=
��& '
friendRequest
��( 5
.
��5 6
Message
��6 =
;
��= >"
IDFriendRequestLabel
�� $
.
��$ %
Content
��% ,
=
��- .
friendRequest
��/ <
.
��< =
IDFriendRequest
��= L
;
��L M
bool
�� (
theButtonsAreShowAndHidden
�� /
=
��0 1
false
��2 7
;
��7 8
foreach
�� 
(
�� 
var
�� )
receivedFriendRequestBorder
�� 8
in
��9 ;/
!ReceivedFriendsRequestsStackPanel
��< ]
.
��] ^
Children
��^ f
)
��f g
{
�� 
if
�� 
(
�� )
receivedFriendRequestBorder
�� 3
is
��4 6
FrameworkElement
��7 G
frameworkElement
��H X
)
��X Y
{
�� 
if
�� 
(
�� 
frameworkElement
�� ,
is
��- /
Border
��0 6
border
��7 =
)
��= >
{
�� 

StackPanel
�� &
borderStackPanel
��' 7
=
��8 9
(
��: ;

StackPanel
��; E
)
��E F
border
��F L
.
��L M
Child
��M R
;
��R S
	TextBlock
�� %4
&textBlockOfSelectedFriendRequestBorder
��& L
=
��M N
(
��O P
	TextBlock
��P Y
)
��Y Z
VisualTreeHelper
��Z j
.
��j k
GetChild
��k s
(
��s t
borderStackPanel��t �
,��� �
$num��� �
)��� �
;��� �
if
�� 
(
��  
long
��  $
.
��$ %
Parse
��% *
(
��* +4
&textBlockOfSelectedFriendRequestBorder
��+ Q
.
��Q R
Text
��R V
)
��V W
==
��X Z
long
��[ _
.
��_ `
Parse
��` e
(
��e f
IDTextBlock
��f q
.
��q r
Text
��r v
)
��v w
)
��w x
{
�� '
AcceptFriendRequestButton
��  9
.
��9 :

Visibility
��: D
=
��E F

Visibility
��G Q
.
��Q R
Visible
��R Y
;
��Y Z'
CancelFriendRequestButton
��  9
.
��9 :

Visibility
��: D
=
��E F

Visibility
��G Q
.
��Q R
	Collapsed
��R [
;
��[ \'
RejectFriendRequestButton
��  9
.
��9 :

Visibility
��: D
=
��E F

Visibility
��G Q
.
��Q R
Visible
��R Y
;
��Y Z
BackButton1
��  +
.
��+ ,

Visibility
��, 6
=
��7 8

Visibility
��9 C
.
��C D
Visible
��D K
;
��K L(
theButtonsAreShowAndHidden
��  :
=
��; <
true
��= A
;
��A B
break
��  %
;
��% &
}
�� 
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� (
theButtonsAreShowAndHidden
�� /
)
��/ 0
{
�� 
foreach
�� 
(
�� 
var
��  %
sentFriendRequestBorder
��! 8
in
��9 ;+
SentFriendsRequestsStackPanel
��< Y
.
��Y Z
Children
��Z b
)
��b c
{
�� 
if
�� 
(
�� %
sentFriendRequestBorder
�� 3
is
��4 6
FrameworkElement
��7 G
frameworkElement
��H X
)
��X Y
{
�� 
if
�� 
(
��  
frameworkElement
��  0
is
��1 3
Border
��4 :
border
��; A
)
��A B
{
�� 

StackPanel
��  *
borderStackPanel
��+ ;
=
��< =
(
��> ?

StackPanel
��? I
)
��I J
border
��J P
.
��P Q
Child
��Q V
;
��V W
	TextBlock
��  )4
&textBlockOfSelectedFriendRequestBorder
��* P
=
��Q R
(
��S T
	TextBlock
��T ]
)
��] ^
VisualTreeHelper
��^ n
.
��n o
GetChild
��o w
(
��w x
borderStackPanel��x �
,��� �
$num��� �
)��� �
;��� �
if
��  "
(
��# $
long
��$ (
.
��( )
Parse
��) .
(
��. /4
&textBlockOfSelectedFriendRequestBorder
��/ U
.
��U V
Text
��V Z
)
��Z [
==
��\ ^
long
��_ c
.
��c d
Parse
��d i
(
��i j
IDTextBlock
��j u
.
��u v
Text
��v z
)
��z {
)
��{ |
{
��  !'
AcceptFriendRequestButton
��$ =
.
��= >

Visibility
��> H
=
��I J

Visibility
��K U
.
��U V
	Collapsed
��V _
;
��_ `'
CancelFriendRequestButton
��$ =
.
��= >

Visibility
��> H
=
��I J

Visibility
��K U
.
��U V
Visible
��V ]
;
��] ^'
RejectFriendRequestButton
��$ =
.
��= >

Visibility
��> H
=
��I J

Visibility
��K U
.
��U V
	Collapsed
��V _
;
��_ `
BackButton1
��$ /
.
��/ 0

Visibility
��0 :
=
��; <

Visibility
��= G
.
��G H
Visible
��H O
;
��O P(
theButtonsAreShowAndHidden
��$ >
=
��? @
true
��A E
;
��E F
break
��$ )
;
��) *
}
��  !
}
�� 
}
�� 
}
�� 
}
�� !
friendRequestClient
�� #
.
��# $
Close
��$ )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 	
public
�� 
void
�� +
ShowUpdatedFriendRequestsList
�� 1
(
��1 2
)
��2 3
{
�� 	/
!ReceivedFriendsRequestsStackPanel
�� -
.
��- .
Children
��. 6
.
��6 7
Clear
��7 <
(
��< =
)
��= >
;
��> ?+
SentFriendsRequestsStackPanel
�� )
.
��) *
Children
��* 2
.
��2 3
Clear
��3 8
(
��8 9
)
��9 :
;
��: ;!
FriendRequestClient
�� !
friendRequestClient
��  3
=
��4 5
new
��6 9!
FriendRequestClient
��: M
(
��M N
)
��N O
;
��O P3
%FriendRequestForCallbackMethodsClient
�� 13
%friendRequestForCallbackMethodsClient
��2 W
=
��X Y
new
��Z ]4
%FriendRequestForCallbackMethodsClient��^ �
(��� �
new��� �
InstanceContext��� �
(��� �
this��� �
)��� �
)��� �
;��� �
foreach
�� 
(
�� 
FriendRequest
�� "
friendRequest
��# 0
in
��1 3!
friendRequestClient
��4 G
.
��G HB
4GetPendientsForAceptationFriendsRequestsByProfile1ID
��H |
(
��| }
loggedProfile��} �
.��� �
	IDProfile��� �
)��� �
)��� �
{
�� 
Border
�� )
receivedFriendRequestBorder
�� 2
=
��3 4
new
��5 8
Border
��9 ?
{
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 1
,
��1 2
$num
��3 5
,
��5 6
$num
��7 8
)
��8 9
,
��9 :
CornerRadius
��  
=
��! "
new
��# &
CornerRadius
��' 3
(
��3 4
$num
��4 6
)
��6 7
,
��7 8

Background
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
Black
��< A
)
��A B
}
�� 
;
�� 

StackPanel
�� &
textAndButtonsStackPanel
�� 3
=
��4 5
new
��6 9

StackPanel
��: D
{
�� 
Orientation
�� 
=
��  !
Orientation
��" -
.
��- .

Horizontal
��. 8
}
�� 
;
�� 
	TextBlock
�� 
idTextBlock
�� %
=
��& '
new
��( +
	TextBlock
��, 5
{
�� 

Visibility
�� 
=
��  

Visibility
��! +
.
��+ ,
	Collapsed
��, 5
,
��5 6
Text
�� 
=
�� 
friendRequest
�� (
.
��( )
IDFriendRequest
��) 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
}
�� 
;
�� 
	TextBlock
�� 
fromTextBlock
�� '
=
��( )
new
��* -
	TextBlock
��. 7
{
�� 

Foreground
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Width
�� 
=
�� 
$num
�� 
,
��  
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
FontSize
�� 
=
�� 
$num
�� !
,
��! "
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Center
��: @
,
��@ A
Text
�� 
=
�� 
resourceManager
�� *
.
��* +
	GetString
��+ 4
(
��4 5
$str
��5 ;
,
��; <
cultureInfo
��= H
)
��H I
+
��J K
$str
��L P
+
��Q R
friendRequest
��S `
.
��` a
Profile
��a h
.
��h i
Player
��i o
.
��o p
NickName
��p x
}
�� 
;
�� 
	TextBlock
�� 
dateTextBlock
�� '
=
��( )
new
��* -
	TextBlock
��. 7
{
�� 

Foreground
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Width
�� 
=
�� 
$num
�� 
,
��  
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
FontSize
�� 
=
�� 
$num
�� !
,
��! "
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Center
��: @
,
��@ A
Text
�� 
=
�� 
resourceManager
�� *
.
��* +
	GetString
��+ 4
(
��4 5
$str
��5 ;
,
��; <
cultureInfo
��= H
)
��H I
+
��J K
$str
��L P
+
��Q R
friendRequest
��S `
.
��` a
CreationDate
��a m
.
��m n
ToString
��n v
(
��v w
)
��w x
}
�� 
;
�� 
Button
�� 
detailsButton
�� $
=
��% &
new
��' *
Button
��+ 1
{
�� 
Style
�� 
=
�� 
(
�� 
Style
�� "
)
��" #
FindResource
��# /
(
��/ 0
$str
��0 <
)
��< =
,
��= >
Height
�� 
=
�� 
$num
�� 
,
��  
Width
�� 
=
�� 
$num
�� 
,
�� 

Background
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
(
��5 6
Color
��6 ;
)
��; <
ColorConverter
��< J
.
��J K
ConvertFromString
��K \
(
��\ ]
$str
��] h
)
��h i
)
��i j
,
��j k
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Content
�� 
=
�� 
resourceManager
�� -
.
��- .
	GetString
��. 7
(
��7 8
$str
��8 A
,
��A B
cultureInfo
��C N
)
��N O
,
��O P
FontSize
�� 
=
�� 
$num
�� !
}
�� 
;
�� 
detailsButton
�� 
.
�� 
Click
�� #
+=
��$ &"
DetailsButtonOnClick
��' ;
;
��; <&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
idTextBlock
��6 A
)
��A B
;
��B C&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
fromTextBlock
��6 C
)
��C D
;
��D E&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
dateTextBlock
��6 C
)
��C D
;
��D E&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
detailsButton
��6 C
)
��C D
;
��D E)
receivedFriendRequestBorder
�� +
.
��+ ,
Child
��, 1
=
��2 3&
textAndButtonsStackPanel
��4 L
;
��L M/
!ReceivedFriendsRequestsStackPanel
�� 1
.
��1 2
Children
��2 :
.
��: ;
Add
��; >
(
��> ?)
receivedFriendRequestBorder
��? Z
)
��Z [
;
��[ \
}
�� 
foreach
�� 
(
�� 
FriendRequest
�� "
friendRequest
��# 0
in
��1 3!
friendRequestClient
��4 G
.
��G HI
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID��H �
(��� �
loggedProfile��� �
.��� �
	IDProfile��� �
)��� �
)��� �
{
�� 
Border
�� %
sentFriendRequestBorder
�� .
=
��/ 0
new
��1 4
Border
��5 ;
{
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 1
,
��1 2
$num
��3 5
,
��5 6
$num
��7 8
)
��8 9
,
��9 :
CornerRadius
��  
=
��! "
new
��# &
CornerRadius
��' 3
(
��3 4
$num
��4 6
)
��6 7
,
��7 8

Background
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
Black
��< A
)
��A B
}
�� 
;
�� 

StackPanel
�� &
textAndButtonsStackPanel
�� 3
=
��4 5
new
��6 9

StackPanel
��: D
{
�� 
Orientation
�� 
=
��  !
Orientation
��" -
.
��- .

Horizontal
��. 8
}
�� 
;
�� 
	TextBlock
�� 
idTextBlock
�� %
=
��& '
new
��( +
	TextBlock
��, 5
{
�� 

Visibility
�� 
=
��  

Visibility
��! +
.
��+ ,
	Collapsed
��, 5
,
��5 6
Text
�� 
=
�� 
friendRequest
�� (
.
��( )
IDFriendRequest
��) 8
.
��8 9
ToString
��9 A
(
��A B
)
��B C
}
�� 
;
�� 
	TextBlock
�� 
forTextBlock
�� &
=
��' (
new
��) ,
	TextBlock
��- 6
{
�� 

Foreground
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Width
�� 
=
�� 
$num
�� 
,
��  
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
FontSize
�� 
=
�� 
$num
�� !
,
��! "
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Center
��: @
,
��@ A
Text
�� 
=
�� 
resourceManager
�� *
.
��* +
	GetString
��+ 4
(
��4 5
$str
��5 :
,
��: ;
cultureInfo
��< G
)
��G H
+
��I J
$str
��K O
+
��P Q
friendRequest
��R _
.
��_ `
Profile1
��` h
.
��h i
Player
��i o
.
��o p
NickName
��p x
}
�� 
;
�� 
	TextBlock
�� 
dateTextBlock
�� '
=
��( )
new
��* -
	TextBlock
��. 7
{
�� 

Foreground
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Width
�� 
=
�� 
$num
�� 
,
��  
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
FontSize
�� 
=
�� 
$num
�� !
,
��! "
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Center
��: @
,
��@ A
Text
�� 
=
�� 
resourceManager
�� *
.
��* +
	GetString
��+ 4
(
��4 5
$str
��5 ;
,
��; <
cultureInfo
��= H
)
��H I
+
��J K
$str
��L P
+
��Q R
friendRequest
��S `
.
��` a
CreationDate
��a m
.
��m n
ToString
��n v
(
��v w
)
��w x
}
�� 
;
�� 
Button
�� 
detailsButton
�� $
=
��% &
new
��' *
Button
��+ 1
{
�� 
Style
�� 
=
�� 
(
�� 
Style
�� "
)
��" #
FindResource
��# /
(
��/ 0
$str
��0 <
)
��< =
,
��= >
Height
�� 
=
�� 
$num
�� 
,
��  
Width
�� 
=
�� 
$num
�� 
,
�� 
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Content
�� 
=
�� 
resourceManager
�� -
.
��- .
	GetString
��. 7
(
��7 8
$str
��8 A
,
��A B
cultureInfo
��C N
)
��N O
,
��O P
FontSize
�� 
=
�� 
$num
�� !
}
�� 
;
�� 
detailsButton
�� 
.
�� 
Click
�� #
+=
��$ &"
DetailsButtonOnClick
��' ;
;
��; <&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
idTextBlock
��6 A
)
��A B
;
��B C&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
forTextBlock
��6 B
)
��B C
;
��C D&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
dateTextBlock
��6 C
)
��C D
;
��D E&
textAndButtonsStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
detailsButton
��6 C
)
��C D
;
��D E%
sentFriendRequestBorder
�� '
.
��' (
Child
��( -
=
��. /&
textAndButtonsStackPanel
��0 H
;
��H I+
SentFriendsRequestsStackPanel
�� -
.
��- .
Children
��. 6
.
��6 7
Add
��7 :
(
��: ;%
sentFriendRequestBorder
��; R
)
��R S
;
��S T
}
�� !
friendRequestClient
�� 
.
��  
Close
��  %
(
��% &
)
��& '
;
��' (
}
�� 	
private
�� 
void
�� .
 AcceptFriendRequestButtonOnClick
�� 5
(
��5 6
object
��6 <
sender
��= C
,
��C D
RoutedEventArgs
��E T
e
��U V
)
��V W
{
�� 	
if
�� 
(
�� 
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) *0
"OpenInternationalizedDesicionPopUp
��* L
(
��L M
$str
��M \
,
��\ ]
$str��^ �
)��� �
)��� �
{
�� !
FriendRequestClient
�� #!
friendRequestClient
��$ 7
=
��8 9
new
��: =!
FriendRequestClient
��> Q
(
��Q R
)
��R S
;
��S T!
friendRequestClient
�� #
.
��# $!
AcceptFriendRequest
��$ 7
(
��7 84
&FriendRequestToFriendRequestsConverter
��8 ^
(
��^ _!
friendRequestClient
��_ r
.
��r s#
GetFriendRequestByID��s �
(��� �
int��� �
.��� �
Parse��� �
(��� �$
IDFriendRequestLabel��� �
.��� �
Content��� �
.��� �
ToString��� �
(��� �
)��� �
)��� �
)��� �
)��� �
)��� �
;��� �
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) */
!OpenInternationalizedSuccessPopUp
��* K
(
��K L
$str
��L X
,
��X Y
$str��Z �
)��� �
;��� �(
FriendRequestDetailsBorder
�� *
.
��* +

Visibility
��+ 5
=
��6 7

Visibility
��8 B
.
��B C
Hidden
��C I
;
��I J#
FriendsRequestsBorder
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
Visible
��> E
;
��E F!
friendRequestClient
�� #
.
��# $
Close
��$ )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 	
private
�� 
void
��  
BackButton1OnClick
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
RoutedEventArgs
��7 F
e
��G H
)
��H I
{
�� 	+
ShowUpdatedFriendRequestsList
�� )
(
��) *
)
��* +
;
��+ ,(
FriendRequestDetailsBorder
�� &
.
��& '

Visibility
��' 1
=
��2 3

Visibility
��4 >
.
��> ?
Hidden
��? E
;
��E F#
FriendsRequestsBorder
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
Visible
��: A
;
��A B
}
�� 	
private
�� 
void
�� .
 CancelFriendRequestButtonOnClick
�� 5
(
��5 6
object
��6 <
sender
��= C
,
��C D
RoutedEventArgs
��E T
e
��U V
)
��V W
{
�� 	
if
�� 
(
�� 
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) *0
"OpenInternationalizedDesicionPopUp
��* L
(
��L M
$str
��M \
,
��\ ]
$str��^ �
)��� �
)��� �
{
�� !
FriendRequestClient
�� #!
friendRequestClient
��$ 7
=
��8 9
new
��: =!
FriendRequestClient
��> Q
(
��Q R
)
��R S
;
��S T!
friendRequestClient
�� #
.
��# $!
CancelFriendRequest
��$ 7
(
��7 84
&FriendRequestToFriendRequestsConverter
��8 ^
(
��^ _!
friendRequestClient
��_ r
.
��r s#
GetFriendRequestByID��s �
(��� �
long��� �
.��� �
Parse��� �
(��� �$
IDFriendRequestLabel��� �
.��� �
Content��� �
.��� �
ToString��� �
(��� �
)��� �
)��� �
)��� �
)��� �
)��� �
;��� �
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) */
!OpenInternationalizedSuccessPopUp
��* K
(
��K L
$str
��L X
,
��X Y
$str��Z �
)��� �
;��� �(
FriendRequestDetailsBorder
�� *
.
��* +

Visibility
��+ 5
=
��6 7

Visibility
��8 B
.
��B C
Hidden
��C I
;
��I J#
FriendsRequestsBorder
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
Visible
��> E
;
��E F!
friendRequestClient
�� #
.
��# $
Close
��$ )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 	
private
�� 
void
�� .
 RejectFriendRequestButtonOnClick
�� 5
(
��5 6
object
��6 <
sender
��= C
,
��C D
RoutedEventArgs
��E T
e
��U V
)
��V W
{
�� 	
if
�� 
(
�� 
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) *0
"OpenInternationalizedDesicionPopUp
��* L
(
��L M
$str
��M \
,
��\ ]
$str��^ �
)��� �
)��� �
{
�� !
FriendRequestClient
�� #!
friendRequestClient
��$ 7
=
��8 9
new
��: =!
FriendRequestClient
��> Q
(
��Q R
)
��R S
;
��S T!
friendRequestClient
�� #
.
��# $!
RejectFriendRequest
��$ 7
(
��7 84
&FriendRequestToFriendRequestsConverter
��8 ^
(
��^ _!
friendRequestClient
��_ r
.
��r s#
GetFriendRequestByID��s �
(��� �
long��� �
.��� �
Parse��� �
(��� �$
IDFriendRequestLabel��� �
.��� �
Content��� �
.��� �
ToString��� �
(��� �
)��� �
)��� �
)��� �
)��� �
)��� �
;��� �
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) */
!OpenInternationalizedSuccessPopUp
��* K
(
��K L
$str
��L X
,
��X Y
$str
��Z s
)
��s t
;
��t u(
FriendRequestDetailsBorder
�� *
.
��* +

Visibility
��+ 5
=
��6 7

Visibility
��8 B
.
��B C
Hidden
��C I
;
��I J#
FriendsRequestsBorder
�� %
.
��% &

Visibility
��& 0
=
��1 2

Visibility
��3 =
.
��= >
Visible
��> E
;
��E F!
friendRequestClient
�� #
.
��# $
Close
��$ )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 	
private
�� 
void
��  
Exit2ButtonOnClick
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
RoutedEventArgs
��7 F
e
��G H
)
��H I
{
�� 	
NavigationService
�� 
navigationService
�� /
=
��0 1
NavigationService
��2 C
.
��C D"
GetNavigationService
��D X
(
��X Y
this
��Y ]
)
��] ^
;
��^ _
navigationService
�� 
.
�� 
Navigate
�� &
(
��& '
new
��' *
	LobbyView
��+ 4
(
��4 5

mainWindow
��5 ?
,
��? @
loggedProfile
��A N
,
��N O-
profileForCallbackMethodsClient
��P o
,
��o p

chatClient
��q {
,
��{ |$
multiplayerGameClient��} �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
void
�� 1
#InviteFriendToTheLobbyButtonOnClick
�� 8
(
��8 9
object
��9 ?
sender
��@ F
,
��F G
RoutedEventArgs
��H W
e
��X Y
)
��Y Z
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
Button
��  
button
��! '
)
��' (
{
�� 
if
�� 
(
�� 
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- .0
"OpenInternationalizedDesicionPopUp
��. P
(
��P Q
$str
��Q `
,
��` a
$str��b �
)��� �
)��� �
{
�� 

StackPanel
�� 
buttonParent
�� +
=
��, -
VisualTreeHelper
��. >
.
��> ?
	GetParent
��? H
(
��H I
button
��I O
)
��O P
as
��Q S

StackPanel
��T ^
;
��^ _
	TextBlock
�� 
friendNickname
�� ,
=
��- .
(
��/ 0
	TextBlock
��0 9
)
��9 :
VisualTreeHelper
��: J
.
��J K
GetChild
��K S
(
��S T
buttonParent
��T `
,
��` a
$num
��b c
)
��c d
;
��d e-
profileForCallbackMethodsClient
�� 3
.
��3 4$
InviteFriendToTheLobby
��4 J
(
��J K
friendNickname
��K Y
.
��Y Z
Text
��Z ^
)
��^ _
;
��_ `
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- ./
!OpenInternationalizedSuccessPopUp
��. O
(
��O P
$str
��P \
,
��\ ]
$str
��^ }
)
��} ~
;
��~ 
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 6
(ShowConnectedFriendsListForInviteToLobby
�� <
(
��< =
)
��= >
{
�� 	
if
�� 
(
�� #
multiplayerGameClient
�� %
!=
��& (
null
��) -
)
��- .
{
�� -
OnlineFriendsToInviteStackPanel
�� /
.
��/ 0
Children
��0 8
.
��8 9
Clear
��9 >
(
��> ?
)
��? @
;
��@ A
ProfileClient
�� 
profileClient
�� +
=
��, -
new
��. 1
ProfileClient
��2 ?
(
��? @
)
��@ A
;
��A B
foreach
�� 
(
�� 
Profile
��  
profile
��! (
in
��) +
profileClient
��, 9
.
��9 :

GetFriends
��: D
(
��D E
loggedProfile
��E R
.
��R S
Player
��S Y
.
��Y Z
IDPlayer
��Z b
)
��b c
)
��c d
{
�� 
if
�� 
(
�� 
!
�� #
multiplayerGameClient
�� .
.
��. /
IsConnected
��/ :
(
��: ;
profile
��; B
.
��B C
Player
��C I
.
��I J
NickName
��J R
)
��R S
)
��S T
{
�� 
if
�� 
(
�� 
profile
�� #
.
��# $
LoginStatus
��$ /
==
��0 2
Enum
��3 7
.
��7 8
GetName
��8 ?
(
��? @
typeof
��@ F
(
��F G"
ProfileLoginStatuses
��G [
)
��[ \
,
��\ ]"
ProfileLoginStatuses
��^ r
.
��r s
Logged
��s y
)
��y z
)
��z {
{
�� 
Border
�� "
friendBorder
��# /
=
��0 1
new
��2 5
Border
��6 <
{
�� 
Height
��  &
=
��' (
$num
��) +
,
��+ ,
Margin
��  &
=
��' (
new
��) ,
	Thickness
��- 6
(
��6 7
$num
��7 9
,
��9 :
$num
��; =
,
��= >
$num
��? A
,
��A B
$num
��C D
)
��D E
,
��E F
CornerRadius
��  ,
=
��- .
new
��/ 2
CornerRadius
��3 ?
(
��? @
$num
��@ B
)
��B C
,
��C D

Background
��  *
=
��+ ,
new
��- 0
SolidColorBrush
��1 @
(
��@ A
Colors
��A G
.
��G H
Black
��H M
)
��M N
}
�� 
;
�� 

StackPanel
�� &&
textAndButtonsStackPanel
��' ?
=
��@ A
new
��B E

StackPanel
��F P
{
�� 
Orientation
��  +
=
��, -
Orientation
��. 9
.
��9 :

Horizontal
��: D
}
�� 
;
�� 
Image
�� ! 
friendProfileImage
��" 4
=
��5 6
new
��7 :
Image
��; @
{
�� 
Width
��  %
=
��& '
$num
��( *
,
��* +
Height
��  &
=
��' (
$num
��) +
,
��+ ,
Margin
��  &
=
��' (
new
��) ,
	Thickness
��- 6
(
��6 7
$num
��7 9
,
��9 :
$num
��; <
,
��< =
$num
��> ?
,
��? @
$num
��A B
)
��B C
,
��C D
Source
��  &
=
��' (
new
��) ,
ImageLoader
��- 8
(
��8 9
)
��9 :
.
��: ;&
GetImageByPlayerNickname
��; S
(
��S T
profile
��T [
.
��[ \
Player
��\ b
.
��b c
NickName
��c k
)
��k l
}
�� 
;
�� 
	TextBlock
�� %
nicknameTextBlock
��& 7
=
��8 9
new
��: =
	TextBlock
��> G
{
�� 

Foreground
��  *
=
��+ ,
new
��- 0
SolidColorBrush
��1 @
(
��@ A
Colors
��A G
.
��G H
White
��H M
)
��M N
,
��N O
Margin
��  &
=
��' (
new
��) ,
	Thickness
��- 6
(
��6 7
$num
��7 9
,
��9 :
$num
��; <
,
��< =
$num
��> ?
,
��? @
$num
��A B
)
��B C
,
��C D
Width
��  %
=
��& '
$num
��( +
,
��+ ,
TextWrapping
��  ,
=
��- .
TextWrapping
��/ ;
.
��; <
Wrap
��< @
,
��@ A
FontSize
��  (
=
��) *
$num
��+ -
,
��- .
VerticalAlignment
��  1
=
��2 3
VerticalAlignment
��4 E
.
��E F
Center
��F L
,
��L M
Text
��  $
=
��% &
profile
��' .
.
��. /
Player
��/ 5
.
��5 6
NickName
��6 >
}
�� 
;
�� 
Button
�� " 
inviteFriendButton
��# 5
=
��6 7
new
��8 ;
Button
��< B
{
�� 
Style
��  %
=
��& '
(
��( )
Style
��) .
)
��. /
FindResource
��/ ;
(
��; <
$str
��< I
)
��I J
,
��J K
Height
��  &
=
��' (
$num
��) +
,
��+ ,
Width
��  %
=
��& '
$num
��( +
,
��+ ,!
HorizontalAlignment
��  3
=
��4 5!
HorizontalAlignment
��6 I
.
��I J
Right
��J O
,
��O P
Content
��  '
=
��( )
resourceManager
��* 9
.
��9 :
	GetString
��: C
(
��C D
$str
��D L
,
��L M
cultureInfo
��N Y
)
��Y Z
,
��Z [
FontSize
��  (
=
��) *
$num
��+ -
}
�� 
;
��  
inviteFriendButton
�� .
.
��. /
Click
��/ 4
+=
��5 71
#InviteFriendToTheLobbyButtonOnClick
��8 [
;
��[ \&
textAndButtonsStackPanel
�� 4
.
��4 5
Children
��5 =
.
��= >
Add
��> A
(
��A B 
friendProfileImage
��B T
)
��T U
;
��U V&
textAndButtonsStackPanel
�� 4
.
��4 5
Children
��5 =
.
��= >
Add
��> A
(
��A B
nicknameTextBlock
��B S
)
��S T
;
��T U&
textAndButtonsStackPanel
�� 4
.
��4 5
Children
��5 =
.
��= >
Add
��> A
(
��A B 
inviteFriendButton
��B T
)
��T U
;
��U V
friendBorder
�� (
.
��( )
Child
��) .
=
��/ 0&
textAndButtonsStackPanel
��1 I
;
��I J-
OnlineFriendsToInviteStackPanel
�� ;
.
��; <
Children
��< D
.
��D E
Add
��E H
(
��H I
friendBorder
��I U
)
��U V
;
��V W
}
�� 
}
�� 
}
�� 
profileClient
�� 
.
�� 
Close
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
}
�� 	
public
�� 
void
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� ?
(
��? @
)
��@ A
{
�� 	
if
�� 
(
�� )
entryToThisPageViaLobbyView
�� +
)
��+ ,
{
�� 

chatClient
�� 
.
�� 
	LeaveChat
�� $
(
��$ %
loggedProfile
��% 2
.
��2 3
Player
��3 9
.
��9 :
NickName
��: B
)
��B C
;
��C D
NavigationService
�� !
navigationService
��" 3
=
��4 5
NavigationService
��6 G
.
��G H"
GetNavigationService
��H \
(
��\ ]
this
��] a
)
��a b
;
��b c
navigationService
�� !
.
��! "
Navigate
��" *
(
��* +
new
��+ .
MenuView
��/ 7
(
��7 8

mainWindow
��8 B
,
��B C
loggedProfile
��D Q
,
��Q R-
profileForCallbackMethodsClient
��S r
)
��r s
)
��s t
;
��t u
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) */
!OpenInternationalizedWarningPopUp
��* K
(
��K L
$str
��L T
,
��T U
$str
��V q
)
��q r
;
��r s
}
�� 
}
�� 	
private
�� +
ServiceFriendRequestReference
�� -
.
��- .
FriendRequests
��. <4
&FriendRequestToFriendRequestsConverter
��= c
(
��c d
FriendRequest
��d q
friendRequest
��r 
)�� �
{
�� 	+
ServiceFriendRequestReference
�� )
.
��) *
FriendRequests
��* 8
friendRequests
��9 G
=
��H I
new
��J M+
ServiceFriendRequestReference
��N k
.
��k l
FriendRequests
��l z
{
�� 
IDFriendRequest
�� 
=
��  !
(
��" #
int
��# &
)
��& '
friendRequest
��' 4
.
��4 5
IDFriendRequest
��5 D
,
��D E
Message
�� 
=
�� 
friendRequest
�� '
.
��' (
Message
��( /
,
��/ 0
CreationDate
�� 
=
�� 
friendRequest
�� ,
.
��, -
CreationDate
��- 9
,
��9 :
AceptationStatus
��  
=
��! "
friendRequest
��# 0
.
��0 1
AceptationStatus
��1 A
,
��A B
SendingStatus
�� 
=
�� 
friendRequest
��  -
.
��- .
SendingStatus
��. ;
}
�� 
;
�� +
ServiceFriendRequestReference
�� )
.
��) *
Players
��* 1
players
��2 9
=
��: ;
new
��< ?+
ServiceFriendRequestReference
��@ ]
.
��] ^
Players
��^ e
{
�� 
IDPlayer
�� 
=
�� 
friendRequest
�� (
.
��( )
Profile
��) 0
.
��0 1
Player
��1 7
.
��7 8
IDPlayer
��8 @
,
��@ A
Names
�� 
=
�� 
friendRequest
�� %
.
��% &
Profile
��& -
.
��- .
Player
��. 4
.
��4 5
Names
��5 :
,
��: ;
Surnames
�� 
=
�� 
friendRequest
�� (
.
��( )
Profile
��) 0
.
��0 1
Player
��1 7
.
��7 8
Surnames
��8 @
,
��@ A
Email
�� 
=
�� 
friendRequest
�� %
.
��% &
Profile
��& -
.
��- .
Player
��. 4
.
��4 5
Email
��5 :
,
��: ;
NickName
�� 
=
�� 
friendRequest
�� (
.
��( )
Profile
��) 0
.
��0 1
Player
��1 7
.
��7 8
NickName
��8 @
,
��@ A
	BirthDate
�� 
=
�� 
(
�� 
DateTime
�� %
)
��% &
friendRequest
��& 3
.
��3 4
Profile
��4 ;
.
��; <
Player
��< B
.
��B C
	BirthDate
��C L
}
�� 
;
�� +
ServiceFriendRequestReference
�� )
.
��) *
Profiles
��* 2
profiles
��3 ;
=
��< =
new
��> A+
ServiceFriendRequestReference
��B _
.
��_ `
Profiles
��` h
{
�� 
	IDProfile
�� 
=
�� 
friendRequest
�� )
.
��) *
Profile
��* 1
.
��1 2
	IDProfile
��2 ;
,
��; <
Coins
�� 
=
�� 
friendRequest
�� %
.
��% &
Profile
��& -
.
��- .
Coins
��. 3
,
��3 4
LoginStatus
�� 
=
�� 
friendRequest
�� +
.
��+ ,
Profile
��, 3
.
��3 4
LoginStatus
��4 ?
,
��? @
Players
�� 
=
�� 
players
�� !
}
�� 
;
�� +
ServiceFriendRequestReference
�� )
.
��) *
Players
��* 1
players1
��2 :
=
��; <
new
��= @+
ServiceFriendRequestReference
��A ^
.
��^ _
Players
��_ f
{
�� 
IDPlayer
�� 
=
�� 
friendRequest
�� (
.
��( )
Profile1
��) 1
.
��1 2
Player
��2 8
.
��8 9
IDPlayer
��9 A
,
��A B
Names
�� 
=
�� 
friendRequest
�� %
.
��% &
Profile1
��& .
.
��. /
Player
��/ 5
.
��5 6
Names
��6 ;
,
��; <
Surnames
�� 
=
�� 
friendRequest
�� (
.
��( )
Profile1
��) 1
.
��1 2
Player
��2 8
.
��8 9
Surnames
��9 A
,
��A B
Email
�� 
=
�� 
friendRequest
�� %
.
��% &
Profile1
��& .
.
��. /
Player
��/ 5
.
��5 6
Email
��6 ;
,
��; <
NickName
�� 
=
�� 
friendRequest
�� (
.
��( )
Profile1
��) 1
.
��1 2
Player
��2 8
.
��8 9
NickName
��9 A
,
��A B
	BirthDate
�� 
=
�� 
(
�� 
DateTime
�� %
)
��% &
friendRequest
��& 3
.
��3 4
Profile1
��4 <
.
��< =
Player
��= C
.
��C D
	BirthDate
��D M
}
�� 
;
�� +
ServiceFriendRequestReference
�� )
.
��) *
Profiles
��* 2
	profiles1
��3 <
=
��= >
new
��? B+
ServiceFriendRequestReference
��C `
.
��` a
Profiles
��a i
{
�� 
	IDProfile
�� 
=
�� 
friendRequest
�� )
.
��) *
Profile1
��* 2
.
��2 3
	IDProfile
��3 <
,
��< =
Coins
�� 
=
�� 
friendRequest
�� %
.
��% &
Profile1
��& .
.
��. /
Coins
��/ 4
,
��4 5
LoginStatus
�� 
=
�� 
friendRequest
�� +
.
��+ ,
Profile1
��, 4
.
��4 5
LoginStatus
��5 @
,
��@ A
Players
�� 
=
�� 
players1
�� "
}
�� 
;
�� 
friendRequests
�� 
.
�� 
Profiles
�� #
=
��$ %
profiles
��& .
;
��. /
friendRequests
�� 
.
�� 
	Profiles1
�� $
=
��% &
	profiles1
��' 0
;
��0 1
return
�� 
friendRequests
�� !
;
��! "
}
�� 	
private
�� 
String
�� G
9InvalidNicknameInSendFriendRequestTextFieldsTextGenerator
�� P
(
��P Q
)
��Q R
{
�� 	
string
�� 
	finalText
�� 
=
�� 
$str
�� !
;
��! "
string
�� 
nickNamePattern
�� "
=
��# $
$str
��% ?
;
��? @
Regex
�� 
nickNameRegex
�� 
=
��  !
new
��" %
Regex
��& +
(
��+ ,
nickNamePattern
��, ;
)
��; <
;
��< =
Match
�� 
nickNameMatch
�� 
=
��  !
nickNameRegex
��" /
.
��/ 0
Match
��0 5
(
��5 6
NicknameTextBox
��6 E
.
��E F
Text
��F J
)
��J K
;
��K L
if
�� 
(
�� 
!
�� 
nickNameMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
	finalText
�� 
=
�� 
resourceManager
�� +
.
��+ ,
	GetString
��, 5
(
��5 6
$str
��6 H
,
��H I
cultureInfo
��J U
)
��U V
+
��W X
$str
��Y ]
;
��] ^
}
�� 
return
�� 
	finalText
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
GoToLobbyView
�� !
(
��! "
)
��" #
{
�� 	
if
�� 
(
�� 
!
�� )
entryToThisPageViaLobbyView
�� ,
)
��, -
{
�� 

mainWindow
�� 
.
�� 
OpenTheLobbyView
�� +
(
��+ ,
this
��, 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
public
�� 
void
�� (
UpdateFriendsRequestsLists
�� .
(
��. /
)
��/ 0
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
FriendsView
��0 ;
currentPage
��< G
)
��G H
{
�� 
currentPage
�� 
.
�� +
ShowUpdatedFriendRequestsList
�� 9
(
��9 :
)
��: ;
;
��; <
}
�� 
}
�� 	
}
�� 
}�� ��
wC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\LobbyView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
profileForCallbackMethodsClient	--g �
)
--� �
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
profileForCallbackMethodsClient	<<g �
,
<<� �

ChatClient
<<� �

chatClient
<<� �
,
<<� �#
MultiplayerGameClient
<<� �#
multiplayerGameClient
<<� �
)
<<� �
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
$str	PPb �
)
PP� �
)
PP� �
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

chatClient	aay �
,
aa� �#
multiplayerGameClient
aa� �
)
aa� �
)
aa� �
;
aa� �
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
multiplayerGameClient	gg| �
)
gg� �
)
gg� �
;
gg� �
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
multiplayerGameClient	zz �
)
zz� �
)
zz� �
;
zz� �
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
�� 
if
�� 
(
�� 
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- .0
"OpenInternationalizedDesicionPopUp
��. P
(
��P Q
$str
��Q `
,
��` a
$str��b �
)��� �
)��� �
{
�� 

StackPanel
�� 
buttonParent
�� +
=
��, -
VisualTreeHelper
��. >
.
��> ?
	GetParent
��? H
(
��H I
button
��I O
)
��O P
as
��Q S

StackPanel
��T ^
;
��^ _

StackPanel
��  
buttonParentParent
�� 1
=
��2 3
VisualTreeHelper
��4 D
.
��D E
	GetParent
��E N
(
��N O
buttonParent
��O [
)
��[ \
as
��] _

StackPanel
��` j
;
��j k

StackPanel
�� "
playerNicknameParent
�� 3
=
��4 5
(
��6 7

StackPanel
��7 A
)
��A B
VisualTreeHelper
��B R
.
��R S
GetChild
��S [
(
��[ \ 
buttonParentParent
��\ n
,
��n o
$num
��p q
)
��q r
;
��r s
	TextBlock
�� 
nickname
�� &
=
��' (
(
��) *
	TextBlock
��* 3
)
��3 4
VisualTreeHelper
��4 D
.
��D E
GetChild
��E M
(
��M N"
playerNicknameParent
��N b
,
��b c
$num
��d e
)
��e f
;
��f g#
multiplayerGameClient
�� )
.
��) *
SetAdmin
��* 2
(
��2 3
nickname
��3 ;
.
��; <
Text
��< @
)
��@ A
;
��A B
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- ./
!OpenInternationalizedSuccessPopUp
��. O
(
��O P
$str
��P Y
,
��Y Z
$str
��[ v
)
��v w
;
��w x
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
PlayButtonOnClick
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
new
�� !
AlertPopUpGenerator
�� #
(
��# $
)
��$ %
.
��% &/
!OpenInternationalizedWarningPopUp
��& G
(
��G H
$str
��H U
,
��U V
$str
��W i
)
��i j
;
��j k
}
�� 	
public
�� 
void
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� ?
(
��? @
)
��@ A
{
�� 	

chatClient
�� 
.
�� 
	LeaveChat
��  
(
��  !
loggedProfile
��! .
.
��. /
Player
��/ 5
.
��5 6
NickName
��6 >
)
��> ?
;
��? @
NavigationService
�� 
navigationService
�� /
=
��0 1
NavigationService
��2 C
.
��C D"
GetNavigationService
��D X
(
��X Y
this
��Y ]
)
��] ^
;
��^ _
navigationService
�� 
.
�� 
Navigate
�� &
(
��& '
new
��' *
MenuView
��+ 3
(
��3 4

mainWindow
��4 >
,
��> ?
loggedProfile
��@ M
,
��M N-
profileForCallbackMethodsClient
��O n
)
��n o
)
��o p
;
��p q
new
�� !
AlertPopUpGenerator
�� #
(
��# $
)
��$ %
.
��% &/
!OpenInternationalizedWarningPopUp
��& G
(
��G H
$str
��H P
,
��P Q
$str
��R m
)
��m n
;
��n o
}
�� 	
public
�� 
void
�� "
ShowConnectedPlayers
�� (
(
��( )
)
��) *
{
�� 	&
ConnectedUsersStackPanel
�� $
.
��$ %
Children
��% -
.
��- .
Clear
��. 3
(
��3 4
)
��4 5
;
��5 6
foreach
�� 
(
�� 
string
�� 
profile
�� #
in
��$ &#
multiplayerGameClient
��' <
.
��< ="
GetConnectedProfiles
��= Q
(
��Q R
)
��R S
)
��S T
{
�� 
Border
�� 
playerBorder
�� #
=
��$ %
new
��& )
Border
��* 0
{
�� 
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ -
,
��- .
$num
��/ 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
,
��7 8
Height
�� 
=
�� 
$num
��  
,
��  !
Width
�� 
=
�� 
$num
�� 
,
��  
CornerRadius
��  
=
��! "
new
��# &
CornerRadius
��' 3
(
��3 4
$num
��4 6
)
��6 7
,
��7 8

Background
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
Black
��< A
)
��A B
}
�� 
;
�� 
playerBorder
�� 
.
�� 

Background
�� '
.
��' (
Opacity
��( /
=
��0 1
$num
��2 5
;
��5 6
Grid
�� #
playerBorderContainer
�� *
=
��+ ,
new
��- 0
Grid
��1 5
(
��5 6
)
��6 7
;
��7 8

StackPanel
�� $
playerBorderStackPanel
�� 1
=
��2 3
new
��4 7

StackPanel
��8 B
(
��B C
)
��C D
;
��D E
if
�� 
(
�� #
multiplayerGameClient
�� )
.
��) *
IsAdmin
��* 1
(
��1 2
profile
��2 9
)
��9 :
)
��: ;
{
�� 
	TextBlock
�� 
	adminText
�� '
=
��( )
new
��* -
	TextBlock
��. 7
{
�� 
Text
�� 
=
�� 
resourceManager
�� .
.
��. /
	GetString
��/ 8
(
��8 9
$str
��9 @
,
��@ A
cultureInfo
��B M
)
��M N
,
��N O
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 0
,
��0 1
$num
��2 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
VerticalAlignment
�� )
=
��* +
VerticalAlignment
��, =
.
��= >
Center
��> D
,
��D E

Foreground
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
Gold
��@ D
)
��D E
,
��E F
TextWrapping
�� $
=
��% &
TextWrapping
��' 3
.
��3 4
Wrap
��4 8
,
��8 9
TextAlignment
�� %
=
��& '
TextAlignment
��( 5
.
��5 6
Center
��6 <
,
��< =!
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Center
��B H
,
��H I
FontSize
��  
=
��! "
$num
��# %
,
��% &
Width
�� 
=
�� 
$num
��  #
}
�� 
;
�� $
playerBorderStackPanel
�� *
.
��* +
Children
��+ 3
.
��3 4
Add
��4 7
(
��7 8
	adminText
��8 A
)
��A B
;
��B C
}
�� 
if
�� 
(
�� 
profile
�� 
==
�� 
loggedProfile
�� ,
.
��, -
Player
��- 3
.
��3 4
NickName
��4 <
)
��< =
{
�� 
	TextBlock
�� 
youText
�� %
=
��& '
new
��( +
	TextBlock
��, 5
{
�� 
Text
�� 
=
�� 
resourceManager
�� .
.
��. /
	GetString
��/ 8
(
��8 9
$str
��9 >
,
��> ?
cultureInfo
��@ K
)
��K L
,
��L M
VerticalAlignment
�� )
=
��* +
VerticalAlignment
��, =
.
��= >
Center
��> D
,
��D E

Foreground
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
White
��@ E
)
��E F
,
��F G
TextWrapping
�� $
=
��% &
TextWrapping
��' 3
.
��3 4
Wrap
��4 8
,
��8 9
TextAlignment
�� %
=
��& '
TextAlignment
��( 5
.
��5 6
Center
��6 <
,
��< =!
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Center
��B H
,
��H I
FontSize
��  
=
��! "
$num
��# %
,
��% &
Width
�� 
=
�� 
$num
��  #
}
�� 
;
�� 
if
�� 
(
�� #
multiplayerGameClient
�� -
.
��- .
IsAdmin
��. 5
(
��5 6
profile
��6 =
)
��= >
)
��> ?
{
�� 
youText
�� 
.
��  
Margin
��  &
=
��' (
new
��) ,
	Thickness
��- 6
(
��6 7
$num
��7 8
,
��8 9
$num
��: <
,
��< =
$num
��> ?
,
��? @
$num
��A B
)
��B C
;
��C D
}
�� 
else
�� 
{
�� 
youText
�� 
.
��  
Margin
��  &
=
��' (
new
��) ,
	Thickness
��- 6
(
��6 7
$num
��7 8
,
��8 9
$num
��: ;
,
��; <
$num
��= >
,
��> ?
$num
��@ A
)
��A B
;
��B C
}
�� $
playerBorderStackPanel
�� *
.
��* +
Children
��+ 3
.
��3 4
Add
��4 7
(
��7 8
youText
��8 ?
)
��? @
;
��@ A
}
�� 
Image
�� 
profileImage
�� "
=
��# $
new
��% (
Image
��) .
{
�� 
Source
�� 
=
�� 
new
��  
ImageLoader
��! ,
(
��, -
)
��- .
.
��. /&
GetImageByPlayerNickname
��/ G
(
��G H
profile
��H O
)
��O P
}
�� 
;
�� 
if
�� 
(
�� #
multiplayerGameClient
�� )
.
��) *
IsAdmin
��* 1
(
��1 2
profile
��2 9
)
��9 :
||
��; =#
multiplayerGameClient
��> S
.
��S T
IsAdmin
��T [
(
��[ \
loggedProfile
��\ i
.
��i j
Player
��j p
.
��p q
NickName
��q y
)
��y z
)
��z {
{
�� 
profileImage
��  
.
��  !
Height
��! '
=
��( )
$num
��* -
;
��- .
profileImage
��  
.
��  !
Width
��! &
=
��' (
$num
��) ,
;
��, -
if
�� 
(
�� 
profile
�� 
==
��  "
loggedProfile
��# 0
.
��0 1
Player
��1 7
.
��7 8
NickName
��8 @
)
��@ A
{
�� 
profileImage
�� $
.
��$ %
Margin
��% +
=
��, -
new
��. 1
	Thickness
��2 ;
(
��; <
$num
��< =
,
��= >
$num
��? A
,
��A B
$num
��C D
,
��D E
$num
��F G
)
��G H
;
��H I
}
�� 
else
�� 
{
�� 
profileImage
�� $
.
��$ %
Margin
��% +
=
��, -
new
��. 1
	Thickness
��2 ;
(
��; <
$num
��< =
,
��= >
$num
��? A
,
��A B
$num
��C D
,
��D E
$num
��F G
)
��G H
;
��H I
}
�� 
}
�� 
if
�� 
(
�� 
!
�� #
multiplayerGameClient
�� *
.
��* +
IsAdmin
��+ 2
(
��2 3
loggedProfile
��3 @
.
��@ A
Player
��A G
.
��G H
NickName
��H P
)
��P Q
&&
��R T
!
��U V#
multiplayerGameClient
��V k
.
��k l
IsAdmin
��l s
(
��s t
profile
��t {
)
��{ |
)
��| }
{
�� 
profileImage
��  
.
��  !
Margin
��! '
=
��( )
new
��* -
	Thickness
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; =
,
��= >
$num
��? @
,
��@ A
$num
��B C
)
��C D
;
��D E
if
�� 
(
�� 
profile
�� 
==
��  "
loggedProfile
��# 0
.
��0 1
Player
��1 7
.
��7 8
NickName
��8 @
)
��@ A
{
�� 
profileImage
�� $
.
��$ %
Height
��% +
=
��, -
$num
��. 1
;
��1 2
profileImage
�� $
.
��$ %
Width
��% *
=
��+ ,
$num
��- 0
;
��0 1
}
�� 
else
�� 
{
�� 
profileImage
�� $
.
��$ %
Height
��% +
=
��, -
$num
��. 1
;
��1 2
profileImage
�� $
.
��$ %
Width
��% *
=
��+ ,
$num
��- 0
;
��0 1
}
�� 
}
�� $
playerBorderStackPanel
�� &
.
��& '
Children
��' /
.
��/ 0
Add
��0 3
(
��3 4
profileImage
��4 @
)
��@ A
;
��A B

StackPanel
�� &
playerNicknameStackPanel
�� 3
=
��4 5
new
��6 9

StackPanel
��: D
{
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ ,
,
��, -
$num
��. 0
,
��0 1
$num
��2 3
,
��3 4
$num
��5 6
)
��6 7
}
�� 
;
�� 
	TextBlock
�� 
playerNickname
�� (
=
��) *
new
��+ .
	TextBlock
��/ 8
{
�� 
Text
�� 
=
�� 
profile
�� "
,
��" #
VerticalAlignment
�� %
=
��& '
VerticalAlignment
��( 9
.
��9 :
Center
��: @
,
��@ A

Foreground
�� 
=
��  
new
��! $
SolidColorBrush
��% 4
(
��4 5
Colors
��5 ;
.
��; <
White
��< A
)
��A B
,
��B C
TextWrapping
��  
=
��! "
TextWrapping
��# /
.
��/ 0
Wrap
��0 4
,
��4 5
TextAlignment
�� !
=
��" #
TextAlignment
��$ 1
.
��1 2
Center
��2 8
,
��8 9!
HorizontalAlignment
�� '
=
��( )!
HorizontalAlignment
��* =
.
��= >
Center
��> D
,
��D E
FontSize
�� 
=
�� 
$num
�� !
,
��! "
Width
�� 
=
�� 
$num
�� 
}
�� 
;
�� &
playerNicknameStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
playerNickname
��6 D
)
��D E
;
��E F$
playerBorderStackPanel
�� &
.
��& '
Children
��' /
.
��/ 0
Add
��0 3
(
��3 4&
playerNicknameStackPanel
��4 L
)
��L M
;
��M N
if
�� 
(
�� #
multiplayerGameClient
�� )
.
��) *
IsAdmin
��* 1
(
��1 2
loggedProfile
��2 ?
.
��? @
Player
��@ F
.
��F G
NickName
��G O
)
��O P
&&
��Q S
!
��T U#
multiplayerGameClient
��U j
.
��j k
IsAdmin
��k r
(
��r s
profile
��s z
)
��z {
)
��{ |
{
�� 

StackPanel
�� 
buttonsStackPanel
�� 0
=
��1 2
new
��3 6

StackPanel
��7 A
{
�� 
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 0
,
��0 1
$num
��2 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
Orientation
�� #
=
��$ %
Orientation
��& 1
.
��1 2

Horizontal
��2 <
}
�� 
;
�� 
	TextBlock
�� !
makeAdminButtonText
�� 1
=
��2 3
new
��4 7
	TextBlock
��8 A
{
�� 
TextWrapping
�� $
=
��% &
TextWrapping
��' 3
.
��3 4
Wrap
��4 8
,
��8 9
TextAlignment
�� %
=
��& '
TextAlignment
��( 5
.
��5 6
Center
��6 <
,
��< =
Text
�� 
=
�� 
resourceManager
�� .
.
��. /
	GetString
��/ 8
(
��8 9
$str
��9 E
,
��E F
cultureInfo
��G R
)
��R S
}
�� 
;
�� 
Button
�� 
makeAdminButton
�� *
=
��+ ,
new
��- 0
Button
��1 7
{
�� 
Style
�� 
=
�� 
(
��  !
Style
��! &
)
��& '
FindResource
��' 3
(
��3 4
$str
��4 A
)
��A B
,
��B C
FontSize
��  
=
��! "
$num
��# %
,
��% &
Height
�� 
=
��  
$num
��! #
,
��# $
Width
�� 
=
�� 
$num
��  "
,
��" #
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 1
,
��1 2
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
Content
�� 
=
��  !!
makeAdminButtonText
��" 5
}
�� 
;
�� 
makeAdminButton
�� #
.
��# $
Click
��$ )
+=
��* ,$
MakeAdminButtonOnClick
��- C
;
��C D
Button
�� 
banPlayerButton
�� *
=
��+ ,
new
��- 0
Button
��1 7
{
�� 
Content
�� 
=
��  !
resourceManager
��" 1
.
��1 2
	GetString
��2 ;
(
��; <
$str
��< A
,
��A B
cultureInfo
��C N
)
��N O
,
��O P
Style
�� 
=
�� 
(
��  !
Style
��! &
)
��& '
FindResource
��' 3
(
��3 4
$str
��4 ?
)
��? @
,
��@ A
Height
�� 
=
��  
$num
��! #
,
��# $
Width
�� 
=
�� 
$num
��  "
,
��" #
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 1
,
��1 2
$num
��3 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
}
�� 
;
�� 
banPlayerButton
�� #
.
��# $
Click
��$ )
+=
��* ,$
BanPlayerButtonOnClick
��- C
;
��C D
buttonsStackPanel
�� %
.
��% &
Children
��& .
.
��. /
Add
��/ 2
(
��2 3
makeAdminButton
��3 B
)
��B C
;
��C D
buttonsStackPanel
�� %
.
��% &
Children
��& .
.
��. /
Add
��/ 2
(
��2 3
banPlayerButton
��3 B
)
��B C
;
��C D$
playerBorderStackPanel
�� *
.
��* +
Children
��+ 3
.
��3 4
Add
��4 7
(
��7 8
buttonsStackPanel
��8 I
)
��I J
;
��J K
}
�� #
playerBorderContainer
�� %
.
��% &
Children
��& .
.
��. /
Add
��/ 2
(
��2 3$
playerBorderStackPanel
��3 I
)
��I J
;
��J K
playerBorder
�� 
.
�� 
Child
�� "
=
��# $#
playerBorderContainer
��% :
;
��: ;&
ConnectedUsersStackPanel
�� (
.
��( )
Children
��) 1
.
��1 2
Add
��2 5
(
��5 6
playerBorder
��6 B
)
��B C
;
��C D
}
�� 
}
�� 	
public
�� 
void
�� 

UpdateChat
�� 
(
�� 
)
��  
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
ChatView
��0 8
currentPage
��9 D
)
��D E
{
�� 
currentPage
�� 
.
�� 
ShowUpdatedChat
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
}
�� 	
public
�� 
void
�� '
UpdateBannedProfilesLists
�� -
(
��- .
)
��. /
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
BannedPlayersView
��0 A
currentPage
��B M
)
��M N
{
�� 
currentPage
�� 
.
�� 
ShowBannedPlayers
�� -
(
��- .
)
��. /
;
��/ 0
}
�� 
}
�� 	
public
�� 
void
�� *
UpdateConnectedProfilesLists
�� 0
(
��0 1
)
��1 2
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
	LobbyView
��0 9
currentPage
��: E
)
��E F
{
�� 
currentPage
�� 
.
�� "
ShowConnectedPlayers
�� 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 	
public
�� 
void
�� :
,UpdateConnectedProfilesForInviteToLobbyLists
�� @
(
��@ A
)
��A B
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
FriendsView
��0 ;
currentPage
��< G
)
��G H
{
�� 
currentPage
�� 
.
�� 6
(ShowConnectedFriendsListForInviteToLobby
�� D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 	
public
�� 
void
�� ,
ExpelPlayerFromMultiplayerGame
�� 2
(
��2 3
)
��3 4
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
	LobbyView
��0 9
	lobbyView
��: C
)
��C D
{
�� 
	lobbyView
�� 
.
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� E
(
��E F
)
��F G
;
��G H
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
BannedPlayersView
��5 F
bannedPlayersView
��G X
)
��X Y
{
�� 
bannedPlayersView
�� !
.
��! "9
+ExitFromThisPageForBeingExpeltFromLobbyView
��" M
(
��M N
)
��N O
;
��O P
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
FriendsView
��5 @
friendsView
��A L
)
��L M
{
�� 
friendsView
�� 
.
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� G
(
��G H
)
��H I
;
��I J
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
ChatView
��5 =
chatView
��> F
)
��F G
{
�� 
chatView
�� 
.
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� D
(
��D E
)
��E F
;
��F G
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
ConfigurationView
��5 F
configurationView
��G X
)
��X Y
{
�� 
}
�� 
}
�� 	
}
�� 
}�� �b
wC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\LoginView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
$str	TTd �
)
TT� �
;
TT� �
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
$str	^^\ �
)
^^� �
;
^^� �
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
�� 
if
�� 
(
�� 
!
�� 
nickNameMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
	finalText
�� 
=
�� 
	finalText
�� %
+
��& '
resourceManager
��( 7
.
��7 8
	GetString
��8 A
(
��A B
$str
��B L
,
��L M
cultureInfo
��N Y
)
��Y Z
+
��[ \
$str
��] `
;
��` a+
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
passwordMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M W
,
��W X
cultureInfo
��Y d
)
��d e
+
��f g
$str
��h k
;
��k l
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F P
,
��P Q
cultureInfo
��R ]
)
��] ^
+
��_ `
$str
��a d
;
��d e
}
�� 
}
�� 
return
�� 
	finalText
�� 
;
�� 
}
�� 	
}
�� 
}�� �v
xC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\MainWindow.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
$str	}}v �
)
}}� �
)
}}� �
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
� �
,
� �
new
� �-
ProfileForCallbackMethodsClient
� �
(
� �
new
� �
InstanceContext
� �
(
� �
this
� �
)
� �
)
� �
)
� �
)
� �
)
� �
;
� �
if
�� 
(
�� 
!
�� #
multiplayerGameClient
�� *
.
��* +!
ThePlayersAreInGame
��+ >
(
��> ?
)
��? @
)
��@ A
{
�� 
if
�� 
(
�� 
!
�� #
multiplayerGameClient
�� .
.
��. /
IsBanned
��/ 7
(
��7 8
loggedProfile
��8 E
.
��E F
Player
��F L
.
��L M
NickName
��M U
)
��U V
)
��V W
{
�� 
if
�� 
(
�� #
multiplayerGameClient
�� 1
.
��1 2"
GetConnectedProfiles
��2 F
(
��F G
)
��G H
.
��H I
Length
��I O
<
��P Q
$num
��R S
)
��S T
{
�� 

ChatClient
�� &

chatClient
��' 1
=
��2 3
new
��4 7

ChatClient
��8 B
(
��B C
new
��C F
InstanceContext
��G V
(
��V W
new
��W Z
	LobbyView
��[ d
(
��d e
)
��e f
)
��f g
)
��g h
;
��h i

chatClient
�� &
.
��& '
JoinChat
��' /
(
��/ 0
loggedProfile
��0 =
.
��= >
Player
��> D
.
��D E
NickName
��E M
)
��M N
;
��N O#
multiplayerGameClient
�� 1
.
��1 2
Connect
��2 9
(
��9 :
loggedProfile
��: G
.
��G H
Player
��H N
.
��N O
NickName
��O W
)
��W X
;
��X Y
NavigationService
�� -
navigationService
��. ?
=
��@ A
NavigationService
��B S
.
��S T"
GetNavigationService
��T h
(
��h i
page
��i m
)
��m n
;
��n o
navigationService
�� -
.
��- .
Navigate
��. 6
(
��6 7
new
��7 :
	LobbyView
��; D
(
��D E
this
��E I
,
��I J
loggedProfile
��K X
,
��X Y
new
��Z ]-
ProfileForCallbackMethodsClient
��^ }
(
��} ~
new��~ �
InstanceContext��� �
(��� �
this��� �
)��� �
)��� �
)��� �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
��  3
(
��3 4
)
��4 5
.
��5 6-
OpenInternationalizedErrorPopUp
��6 U
(
��U V
$str
��V b
,
��b c
$str
��d z
)
��z {
;
��{ |
}
�� 
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� /
(
��/ 0
)
��0 1
.
��1 2-
OpenInternationalizedErrorPopUp
��2 Q
(
��Q R
$str
��R ^
,
��^ _
$str
��` u
)
��u v
;
��v w
}
�� 
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- .-
OpenInternationalizedErrorPopUp
��. M
(
��M N
$str
��N Z
,
��Z [
$str
��\ {
)
��{ |
;
��| }
}
�� 
}
�� 
}
�� 	
public
�� 
void
��  
UpdateFriendsLists
�� &
(
��& '
)
��' (
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
FriendsView
��0 ;
currentPage
��< G
)
��G H
{
�� 
currentPage
�� 
.
�� $
ShowUpdatedFriendsList
�� 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
}
�� 	
public
�� 
void
�� )
UpdateFriendsForInviteLists
�� /
(
��/ 0
)
��0 1
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
FriendsView
��0 ;
currentPage
��< G
)
��G H
{
�� 
currentPage
�� 
.
�� 6
(ShowConnectedFriendsListForInviteToLobby
�� D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 	
public
�� 
void
�� &
OpenPaneForEnterTheLobby
�� ,
(
��, -
)
��- .
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
MenuView
��0 8
menuView
��9 A
)
��A B
{
�� 
menuView
�� 
.
�� 
GoToLobbyView
�� &
(
��& '
)
��' (
;
��( )
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
ModifyProfileView
��5 F
modifyProfileView
��G X
)
��X Y
{
�� 
modifyProfileView
�� !
.
��! "
GoToLobbyView
��" /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
FriendsView
��5 @
friendsView
��A L
)
��L M
{
�� 
friendsView
�� 
.
�� 
GoToLobbyView
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
ConfigurationView
��5 F
configurationView
��G X
)
��X Y
{
�� 
}
�� 
}
�� 	
}
�� 
public
�� 

class
�� 
PageStateManager
�� !
{
�� 
public
�� 
static
�� 
Page
�� 
CurrentPage
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
}
�� 
}�� �F
vC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\MenuView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
profileForCallbackMethodsClient	f �
)
� �
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

mainWindow	11v �
,
11� �
loggedProfile
11� �
,
11� �-
profileForCallbackMethodsClient
11� �
)
11� �
)
11� �
)
11� �
;
11� �
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
}ii ��
C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\ModifyProfileView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
profileForCallbackMethodsClient	!!o �
)
!!� �
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
.	[[ �
Email
[[� �
)
[[� �
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
loggedProfile	]]x �
.
]]� �
Player
]]� �
.
]]� �
NickName
]]� �
)
]]� �
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
$str	zzl �
)
zz� �
;
zz� �
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
$str	~~f �
)
~~� �
;
~~� �
loggedProfile
�� )
=
��* +
profileClient
��, 9
.
��9 :"
GetProfileByPlayerID
��: N
(
��N O
(
��O P
int
��P S
)
��S T
loggedProfile
��T a
.
��a b
Player
��b h
.
��h i
IDPlayer
��i q
)
��q r
;
��r s-
profileForCallbackMethodsClient
�� ;
.
��; <5
'UpdateFriendsListsToAllConnectedClients
��< c
(
��c d
)
��d e
;
��e f
NavigationService
�� -
navigationService
��. ?
=
��@ A
NavigationService
��B S
.
��S T"
GetNavigationService
��T h
(
��h i
this
��i m
)
��m n
;
��n o
navigationService
�� -
.
��- .
Navigate
��. 6
(
��6 7
new
��7 :
MenuView
��; C
(
��C D

mainWindow
��D N
,
��N O
loggedProfile
��P ]
,
��] ^-
profileForCallbackMethodsClient
��_ ~
)
��~ 
)�� �
;��� �
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
��  3
(
��3 4
)
��4 5
.
��5 6-
OpenInternationalizedErrorPopUp
��6 U
(
��U V
$str
��V b
,
��b c
$str
��d }
)
��} ~
;
��~ 
}
�� 
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� /
(
��/ 0
)
��0 1
.
��1 2-
OpenInternationalizedErrorPopUp
��2 Q
(
��Q R
$str
��R ^
,
��^ _
$str
��` v
)
��v w
;
��w x
}
�� 
playerClient
��  
.
��  !
Close
��! &
(
��& '
)
��' (
;
��( )
profileClient
�� !
.
��! "
Close
��" '
(
��' (
)
��( )
;
��) *
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� +
(
��+ ,
)
��, -
.
��- .-
OpenInternationalizedErrorPopUp
��. M
(
��M N
$str
��N Z
,
��Z [
$str��\ �
)��� �
;��� �
}
�� 
}
�� 
else
�� 
{
�� 
new
�� !
AlertPopUpGenerator
�� '
(
��' (
)
��( )
.
��) *
OpenErrorPopUp
��* 8
(
��8 9
$str
��9 E
,
��E F4
&InvalidValuesInTextFieldsTextGenerator
��G m
(
��m n
)
��n o
)
��o p
;
��p q
}
�� 
}
�� 	
private
�� 
void
�� 
SelectImageButton
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
OpenFileDialog
�� 
openFileDialog
�� )
=
��* +
new
��, /
OpenFileDialog
��0 >
{
�� 
Filter
�� 
=
�� 
$str
�� O
,
��O P
Title
�� 
=
�� 
resourceManager
�� '
.
��' (
	GetString
��( 1
(
��1 2
$str
��2 C
,
��C D
cultureInfo
��E P
)
��P Q
}
�� 
;
�� 
if
�� 
(
�� 
openFileDialog
�� 
.
�� 

ShowDialog
�� )
(
��) *
)
��* +
==
��, .
DialogResult
��/ ;
.
��; <
OK
��< >
)
��> ?
{
�� 
BitmapImage
�� 
imageSource
�� '
=
��( )
new
��* -
BitmapImage
��. 9
(
��9 :
new
��: =
Uri
��> A
(
��A B
openFileDialog
��B P
.
��P Q
FileName
��Q Y
)
��Y Z
)
��Z [
;
��[ \!
ProfilePictureImage
�� #
.
��# $
Source
��$ *
=
��+ ,
imageSource
��- 8
;
��8 9!
ImageRouteTextBlock
�� #
.
��# $
Text
��$ (
=
��) *
openFileDialog
��+ 9
.
��9 :
FileName
��: B
;
��B C
}
�� 
}
�� 	
private
�� 
string
�� 4
&InvalidValuesInTextFieldsTextGenerator
�� =
(
��= >
)
��> ?
{
�� 	
int
�� +
textFieldsWithIncorrectValues
�� -
=
��. /
$num
��0 1
;
��1 2
string
�� 
	finalText
�� 
=
�� 
$str
�� !
;
��! "
string
�� 
namesPattern
�� 
=
��  !
$str
��" C
;
��C D
string
�� 
surnamesPattern
�� "
=
��# $
$str
��% F
;
��F G
string
�� 
emailPattern
�� 
=
��  !
$str
��" A
;
��A B
string
�� 
nickNamePattern
�� "
=
��# $
$str
��% ?
;
��? @
Regex
�� 

namesRegex
�� 
=
�� 
new
�� "
Regex
��# (
(
��( )
namesPattern
��) 5
)
��5 6
;
��6 7
Regex
�� 
surnamesRegex
�� 
=
��  !
new
��" %
Regex
��& +
(
��+ ,
surnamesPattern
��, ;
)
��; <
;
��< =
Regex
�� 

emailRegex
�� 
=
�� 
new
�� "
Regex
��# (
(
��( )
emailPattern
��) 5
)
��5 6
;
��6 7
Regex
�� 
nickNameRegex
�� 
=
��  !
new
��" %
Regex
��& +
(
��+ ,
nickNamePattern
��, ;
)
��; <
;
��< =
Match
�� 

namesMatch
�� 
=
�� 

namesRegex
�� )
.
��) *
Match
��* /
(
��/ 0
NamesTextBox
��0 <
.
��< =
Text
��= A
)
��A B
;
��B C
Match
�� 
surnamesMatch
�� 
=
��  !
surnamesRegex
��" /
.
��/ 0
Match
��0 5
(
��5 6
SurnamesTextBox
��6 E
.
��E F
Text
��F J
)
��J K
;
��K L
Match
�� 

emailMatch
�� 
=
�� 

emailRegex
�� )
.
��) *
Match
��* /
(
��/ 0
EmailTextBox
��0 <
.
��< =
Text
��= A
)
��A B
;
��B C
Match
�� 
nickNameMatch
�� 
=
��  !
nickNameRegex
��" /
.
��/ 0
Match
��0 5
(
��5 6
NicknameTextBox
��6 E
.
��E F
Text
��F J
)
��J K
;
��K L
if
�� 
(
�� 
!
�� 

namesMatch
�� 
.
�� 
Success
�� #
||
��$ &
!
��' (
surnamesMatch
��( 5
.
��5 6
Success
��6 =
||
��> @
!
��A B

emailMatch
��B L
.
��L M
Success
��M T
||
��U W
!
�� 
nickNameMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
	finalText
�� 
+=
�� 
resourceManager
�� ,
.
��, -
	GetString
��- 6
(
��6 7
$str
��7 `
)
��` a
;
��a b
}
�� 
if
�� 
(
�� 
!
�� 

namesMatch
�� 
.
�� 
Success
�� #
)
��# $
{
�� 
	finalText
�� 
=
�� 
	finalText
�� %
+
��& '
resourceManager
��( 7
.
��7 8
	GetString
��8 A
(
��A B
$str
��B K
,
��K L
cultureInfo
��M X
)
��X Y
+
��Z [
$str
��\ _
;
��_ `+
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
surnamesMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M Y
,
��Y Z
cultureInfo
��[ f
)
��f g
+
��h i
$str
��j m
;
��m n
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F R
,
��R S
cultureInfo
��T _
)
��_ `
+
��a b
$str
��c f
;
��f g
}
�� +
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 

emailMatch
�� 
.
�� 
Success
�� #
)
��# $
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M T
,
��T U
cultureInfo
��V a
)
��a b
+
��c d
$str
��e h
;
��h i
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F M
,
��M N
cultureInfo
��O Z
)
��Z [
+
��\ ]
$str
��^ a
;
��a b
}
�� +
textFieldsWithIncorrectValues
�� -
++
��- /
;
��/ 0
}
�� 
if
�� 
(
�� 
!
�� 
nickNameMatch
�� 
.
�� 
Success
�� &
)
��& '
{
�� 
if
�� 
(
�� +
textFieldsWithIncorrectValues
�� 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
.
��) *
	Substring
��* 3
(
��3 4
$num
��4 5
,
��5 6
	finalText
��7 @
.
��@ A
Length
��A G
-
��H I
$num
��J K
)
��K L
;
��L M
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
$str
��, 0
+
��1 2
resourceManager
��3 B
.
��B C
	GetString
��C L
(
��L M
$str
��M W
,
��W X
cultureInfo
��Y d
)
��d e
+
��f g
$str
��h k
;
��k l
}
�� 
else
�� 
{
�� 
	finalText
�� 
=
�� 
	finalText
��  )
+
��* +
resourceManager
��, ;
.
��; <
	GetString
��< E
(
��E F
$str
��F P
,
��P Q
cultureInfo
��R ]
)
��] ^
+
��_ `
$str
��a d
;
��d e
}
�� 
}
�� 
return
�� 
	finalText
�� 
;
�� 
}
�� 	
private
�� 
byte
�� 
[
�� 
]
�� L
>GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions
�� U
(
��U V
)
��V W
{
�� 	
ProfileClient
�� 
profileClient
�� '
=
��( )
new
��* -
ProfileClient
��. ;
(
��; <
)
��< =
;
��= >
string
�� 
fileName
�� 
=
�� 
loggedProfile
�� +
.
��+ ,
Player
��, 2
.
��2 3
NickName
��3 ;
+
��< =
$str
��> D
;
��D E
byte
�� 
[
�� 
]
�� 
	imageData
�� 
=
�� 
profileClient
�� ,
.
��, -
GetImage
��- 5
(
��5 6
fileName
��6 >
)
��> ?
;
��? @
if
�� 
(
�� 
	imageData
�� 
==
�� 
null
��  
)
��  !
{
�� 
fileName
�� 
=
�� 
loggedProfile
�� (
.
��( )
Player
��) /
.
��/ 0
NickName
��0 8
+
��9 :
$str
��; A
;
��A B
	imageData
�� 
=
�� 
profileClient
�� )
.
��) *
GetImage
��* 2
(
��2 3
fileName
��3 ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
	imageData
�� 
==
�� 
null
�� !
)
��! "
{
�� 
fileName
�� 
=
�� 
loggedProfile
�� (
.
��( )
Player
��) /
.
��/ 0
NickName
��0 8
+
��9 :
$str
��; B
;
��B C
	imageData
�� 
=
�� 
profileClient
�� )
.
��) *
GetImage
��* 2
(
��2 3
fileName
��3 ;
)
��; <
;
��< =
}
�� 
profileClient
�� 
.
�� 
Close
�� 
(
��  
)
��  !
;
��! "
return
�� 
	imageData
�� 
;
�� 
}
�� 	
public
�� 
void
�� 
GoToLobbyView
�� !
(
��! "
)
��" #
{
�� 	

mainWindow
�� 
.
�� 
OpenTheLobbyView
�� '
(
��' (
this
��( ,
)
��, -
;
��- .
}
�� 	
}
�� 
}�� �4
wC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\StartView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
$str	5 �
)
� �
;
� �
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
}]] �
lC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\App.xaml.cs
	namespace		 	"
Renovación_LIS_Client		
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
} �
yC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\WinnersView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
}&& �
{C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\Properties\AssemblyInfo.cs
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