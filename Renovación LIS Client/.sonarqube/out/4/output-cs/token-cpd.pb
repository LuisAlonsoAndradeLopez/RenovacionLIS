å)
àC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\AuxiliaryClasses\AlertPopUpGenerator.cs
	namespace 	"
Renovaci√≥n_LIS_Client
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
}MM µ
ÄC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\AuxiliaryClasses\ImageLoader.cs
	namespace 	"
Renovaci√≥n_LIS_Client
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
{ 	+
ProfileNonCallbackMethodsClient ++
profileNonCallbackMethodsClient, K
=L M
newN Q+
ProfileNonCallbackMethodsClientR q
(q r
)r s
;s t
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
= +
profileNonCallbackMethodsClient >
.> ?
GetImage? G
(G H
fileNameH P
)P Q
;Q R
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
= +
profileNonCallbackMethodsClient ;
.; <
GetImage< D
(D E
fileNameE M
)M N
;N O
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
= +
profileNonCallbackMethodsClient ;
.; <
GetImage< D
(D E
fileNameE M
)M N
;N O
} +
profileNonCallbackMethodsClient!! +
.!!+ ,
Close!!, 1
(!!1 2
)!!2 3
;!!3 4
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
}//  
uC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\Properties\Class1.cs
	namespace 	"
Renovaci√≥n_LIS_Client
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
} ◊T
C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\BannedPlayersView.xaml.cs
	namespace

 	"
Renovaci√≥n_LIS_Client


 
.

  
View

  $
{ 
public 

partial 
class 
BannedPlayersView *
:+ ,
Page- 1
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
public 
BannedPlayersView  
(  !

MainWindow! +

mainWindow, 6
)6 7
{ 	
PageStateManager 
. 
CurrentPage (
=) *
this+ /
;/ 0
this 
. 

mainWindow 
= 

mainWindow (
;( )
cultureInfo   
=   
CultureInfo   %
.  % &
CurrentUICulture  & 6
;  6 7
resourceManager!! 
=!! 
new!! !
ResourceManager!!" 1
(!!1 2
$str!!2 ^
,!!^ _
typeof!!` f
(!!f g

MainWindow!!g q
)!!q r
.!!r s
Assembly!!s {
)!!{ |
;!!| }
InitializeComponent## 
(##  
)##  !
;##! "
ShowBannedPlayers$$ 
($$ 
)$$ 
;$$  
}%% 	
private++ 
void++ 
ExitButtonOnClick++ &
(++& '
object++' -
sender++. 4
,++4 5
RoutedEventArgs++6 E
e++F G
)++G H
{,, 	
NavigationService-- 
navigationService-- /
=--0 1
NavigationService--2 C
.--C D 
GetNavigationService--D X
(--X Y
this--Y ]
)--] ^
;--^ _
navigationService.. 
... 
Navigate.. &
(..& '
new..' *
	LobbyView..+ 4
(..4 5

mainWindow..5 ?
)..? @
)..@ A
;..A B
}// 	
private11 
void11 $
UnbanPlayerButtonOnClick11 -
(11- .
object11. 4
sender115 ;
,11; <
RoutedEventArgs11= L
e11M N
)11N O
{22 	
if33 
(33 
sender33 
is33 
Button33 
button33  &
)33& '
{44 
if55 
(55 
new55 
AlertPopUpGenerator55 +
(55+ ,
)55, -
.55- ..
"OpenInternationalizedDesicionPopUp55. P
(55P Q
$str55Q `
,55` a
$str	55b Ö
)
55Ö Ü
)
55Ü á
{66 

StackPanel77 
buttonParent77 +
=77, -
VisualTreeHelper77. >
.77> ?
	GetParent77? H
(77H I
button77I O
)77O P
as77Q S

StackPanel77T ^
;77^ _
Label88 
playerNickname88 (
=88) *
(88+ ,
Label88, 1
)881 2
VisualTreeHelper882 B
.88B C
GetChild88C K
(88K L
buttonParent88L X
,88X Y
$num88Z [
)88[ \
;88\ ]
	LobbyView:: 
.:: &
lobbyCallbackMethodsClient:: 8
.::8 9
UnbanPlayer::9 D
(::D E
playerNickname::E S
.::S T
Content::T [
.::[ \
ToString::\ d
(::d e
)::e f
)::f g
;::g h
new<< 
AlertPopUpGenerator<< +
(<<+ ,
)<<, -
.<<- .-
!OpenInternationalizedSuccessPopUp<<. O
(<<O P
$str<<P Y
,<<Y Z
$str<<[ m
)<<m n
;<<n o
}== 
}>> 
}?? 	
publicEE 
voidEE 
ShowBannedPlayersEE %
(EE% &
)EE& '
{FF 	#
BannedPlayersStackPanelGG #
.GG# $
ChildrenGG$ ,
.GG, -
ClearGG- 2
(GG2 3
)GG3 4
;GG4 5)
LobbyNonCallbackMethodsClientHH ))
lobbyNonCallbackMethodsClientHH* G
=HHH I
newHHJ M)
LobbyNonCallbackMethodsClientHHN k
(HHk l
)HHl m
;HHm n
foreachII 
(II 
stringII 
profileII #
inII$ &)
lobbyNonCallbackMethodsClientII' D
.IID E
GetBannedProfilesIIE V
(IIV W
)IIW X
)IIX Y
{JJ 
BorderKK 
bannedPlayerBorderKK )
=KK* +
newKK, /
BorderKK0 6
{LL 
CornerRadiusMM  
=MM! "
newMM# &
CornerRadiusMM' 3
(MM3 4
$numMM4 6
)MM6 7
,MM7 8
HeightNN 
=NN 
$numNN 
,NN  
MarginOO 
=OO 
newOO  
	ThicknessOO! *
(OO* +
$numOO+ -
,OO- .
$numOO/ 1
,OO1 2
$numOO3 5
,OO5 6
$numOO7 8
)OO8 9
,OO9 :

BackgroundPP 
=PP  
newPP! $
SolidColorBrushPP% 4
(PP4 5
ColorsPP5 ;
.PP; <
BlackPP< A
)PPA B
}QQ 
;QQ 
bannedPlayerBorderRR "
.RR" #

BackgroundRR# -
.RR- .
OpacityRR. 5
=RR6 7
$numRR8 ;
;RR; <

StackPanelTT "
bannedPlayerStackPanelTT 1
=TT2 3
newTT4 7

StackPanelTT8 B
{UU 
OrientationVV 
=VV  !
OrientationVV" -
.VV- .

HorizontalVV. 8
}WW 
;WW 
ImageYY 
bannedPlayerImageYY '
=YY( )
newYY* -
ImageYY. 3
{ZZ 
Source[[ 
=[[ 
new[[  
ImageLoader[[! ,
([[, -
)[[- .
.[[. /$
GetImageByPlayerNickname[[/ G
([[G H
profile[[H O
)[[O P
,[[P Q
Margin\\ 
=\\ 
new\\  
	Thickness\\! *
(\\* +
$num\\+ -
,\\- .
$num\\/ 0
,\\0 1
$num\\2 3
,\\3 4
$num\\5 6
)\\6 7
,\\7 8
Height]] 
=]] 
$num]] 
,]]  
Width^^ 
=^^ 
$num^^ 
}__ 
;__ "
bannedPlayerStackPanel`` &
.``& '
Children``' /
.``/ 0
Add``0 3
(``3 4
bannedPlayerImage``4 E
)``E F
;``F G
Labelbb  
bannedPlayerNicknamebb *
=bb+ ,
newbb- 0
Labelbb1 6
{cc 
Contentdd 
=dd 
profiledd %
,dd% &

Foregroundee 
=ee  
newee! $
SolidColorBrushee% 4
(ee4 5
Colorsee5 ;
.ee; <
Whiteee< A
)eeA B
,eeB C
FontSizeff 
=ff 
$numff !
,ff! "
Margingg 
=gg 
newgg  
	Thicknessgg! *
(gg* +
$numgg+ -
,gg- .
$numgg/ 1
,gg1 2
$numgg3 4
,gg4 5
$numgg6 7
)gg7 8
,gg8 9
Widthhh 
=hh 
$numhh 
}ii 
;ii "
bannedPlayerStackPaneljj &
.jj& '
Childrenjj' /
.jj/ 0
Addjj0 3
(jj3 4 
bannedPlayerNicknamejj4 H
)jjH I
;jjI J
ifll 
(ll )
lobbyNonCallbackMethodsClientll 1
.ll1 2
IsAdminll2 9
(ll9 :

MainWindowll: D
.llD E
loggedProfilellE R
.llR S
PlayerllS Y
.llY Z
NickNamellZ b
)llb c
)llc d
{mm 
Buttonnn #
unbanBannedPlayerButtonnn 2
=nn3 4
newnn5 8
Buttonnn9 ?
{oo 
Contentpp 
=pp  !
resourceManagerpp" 1
.pp1 2
	GetStringpp2 ;
(pp; <
$strpp< C
,ppC D
cultureInfoppE P
)ppP Q
,ppQ R
Styleqq 
=qq 
(qq  !
Styleqq! &
)qq& '
FindResourceqq' 3
(qq3 4
$strqq4 A
)qqA B
,qqB C
Heightrr 
=rr  
$numrr! #
,rr# $
Widthss 
=ss 
$numss  "
}tt 
;tt #
unbanBannedPlayerButtonuu +
.uu+ ,
Clickuu, 1
+=uu2 4$
UnbanPlayerButtonOnClickuu5 M
;uuM N"
bannedPlayerStackPanelvv *
.vv* +
Childrenvv+ 3
.vv3 4
Addvv4 7
(vv7 8#
unbanBannedPlayerButtonvv8 O
)vvO P
;vvP Q
}ww 
bannedPlayerBorderyy "
.yy" #
Childyy# (
=yy) *"
bannedPlayerStackPanelyy+ A
;yyA B#
BannedPlayersStackPanelzz '
.zz' (
Childrenzz( 0
.zz0 1
Addzz1 4
(zz4 5
bannedPlayerBorderzz5 G
)zzG H
;zzH I
}{{ )
lobbyNonCallbackMethodsClient}} )
.}}) *
Close}}* /
(}}/ 0
)}}0 1
;}}1 2
}~~ 	
public
ÄÄ 
void
ÄÄ 9
+ExitFromThisPageForBeingExpeltFromLobbyView
ÄÄ ?
(
ÄÄ? @
)
ÄÄ@ A
{
ÅÅ 	
	LobbyView
ÇÇ 
.
ÇÇ '
chatCallbackMethodsClient
ÇÇ /
.
ÇÇ/ 0
	LeaveChat
ÇÇ0 9
(
ÇÇ9 :

MainWindow
ÇÇ: D
.
ÇÇD E
loggedProfile
ÇÇE R
.
ÇÇR S
Player
ÇÇS Y
.
ÇÇY Z
NickName
ÇÇZ b
)
ÇÇb c
;
ÇÇc d
NavigationService
ÉÉ 
navigationService
ÉÉ /
=
ÉÉ0 1
NavigationService
ÉÉ2 C
.
ÉÉC D"
GetNavigationService
ÉÉD X
(
ÉÉX Y
this
ÉÉY ]
)
ÉÉ] ^
;
ÉÉ^ _
navigationService
ÑÑ 
.
ÑÑ 
Navigate
ÑÑ &
(
ÑÑ& '
new
ÑÑ' *
MenuView
ÑÑ+ 3
(
ÑÑ3 4

mainWindow
ÑÑ4 >
)
ÑÑ> ?
)
ÑÑ? @
;
ÑÑ@ A
new
ÖÖ !
AlertPopUpGenerator
ÖÖ #
(
ÖÖ# $
)
ÖÖ$ %
.
ÖÖ% &/
!OpenInternationalizedWarningPopUp
ÖÖ& G
(
ÖÖG H
$str
ÖÖH P
,
ÖÖP Q
$str
ÖÖR m
)
ÖÖm n
;
ÖÖn o
}
ÜÜ 	
}
àà 
}ââ ëë
vC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\ChatView.xaml.cs
	namespace

 	"
Renovaci√≥n_LIS_Client


 
.

  
View

  $
{ 
public 

partial 
class 
ChatView !
:" #
Page$ (
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
public 
ChatView 
( 

MainWindow "

mainWindow# -
)- .
{ 	
PageStateManager 
. 
CurrentPage (
=) *
this+ /
;/ 0
this 
. 

mainWindow 
= 

mainWindow (
;( )
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
;""| }
InitializeComponent$$ 
($$  
)$$  !
;$$! "
ShowUpdatedChat%% 
(%% 
)%% 
;%% 
}&& 	
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
)//? @
)//@ A
;//A B
}00 	
private22 
void22 $
SendMessageButtonOnClick22 -
(22- .
object22. 4
sender225 ;
,22; <
RoutedEventArgs22= L
e22M N
)22N O
{33 	
if44 
(44 
!44 
string44 
.44 
IsNullOrWhiteSpace44 *
(44* +
MessageTextBox44+ 9
.449 :
Text44: >
)44> ?
)44? @
{55 
if66 
(66 
MessageTextBox66 "
.66" #
Text66# '
.66' (
Length66( .
<=66/ 1
$num662 5
)665 6
{77 
	LobbyView88 
.88 %
chatCallbackMethodsClient88 7
.887 8
SendMessage888 C
(88C D

MainWindow88D N
.88N O
loggedProfile88O \
.88\ ]
Player88] c
.88c d
NickName88d l
,88l m
MessageTextBox88n |
.88| }
Text	88} Å
)
88Å Ç
;
88Ç É
MessageTextBox99 "
.99" #
Clear99# (
(99( )
)99) *
;99* +
}:: 
else;; 
{<< 
new== 
AlertPopUpGenerator== +
(==+ ,
)==, -
.==- .+
OpenInternationalizedErrorPopUp==. M
(==M N
$str==N Z
,==Z [
$str	==\ ë
)
==ë í
;
==í ì
}>> 
}?? 
}@@ 	
publicFF 
voidFF 
ShowUpdatedChatFF #
(FF# $
)FF$ %
{GG 	
MessagesStackPanelHH 
.HH 
ChildrenHH '
.HH' (
ClearHH( -
(HH- .
)HH. /
;HH/ 0(
ChatNotCallbackMethodsClientJJ ((
chatNotCallbackMethodsClientJJ) E
=JJF G
newJJH K(
ChatNotCallbackMethodsClientJJL h
(JJh i
)JJi j
;JJj k
foreachKK 
(KK 
varKK 
profileAndMessageKK *
inKK+ -(
chatNotCallbackMethodsClientKK. J
.KKJ K0
$GetConnectedProfilesAndTheirMessagesKKK o
(KKo p
)KKp q
)KKq r
{LL 
ifMM 
(MM 
profileAndMessageMM $
.MM$ %
KeyMM% (
==MM) +
$strMM, 9
)MM9 :
{NN 
stringOO 
messageOO "
=OO# $
profileAndMessageOO% 6
.OO6 7
ValueOO7 <
;OO< =
ifQQ 
(QQ 
messageQQ 
.QQ  
ContainsQQ  (
(QQ( )
$strQQ) A
)QQA B
)QQB C
{RR 
messageSS 
=SS  !
$"SS" $
{SS$ %
profileAndMessageSS% 6
.SS6 7
ValueSS7 <
.SS< =
ReplaceSS= D
(SSD E
$strSSE ]
,SS] ^
$strSS_ a
)SSa b
}SSb c
"SSc d
+SSe f
resourceManagerSSg v
.SSv w
	GetString	SSw Ä
(
SSÄ Å
$str
SSÅ ô
,
SSô ö
cultureInfo
SSõ ¶
)
SS¶ ß
;
SSß ®
}TT 
ifVV 
(VV 
messageVV 
.VV  
ContainsVV  (
(VV( )
$strVV) 8
)VV8 9
)VV9 :
{WW 
messageXX 
=XX  !
$"XX" $
{XX$ %
profileAndMessageXX% 6
.XX6 7
ValueXX7 <
.XX< =
ReplaceXX= D
(XXD E
$strXXE T
,XXT U
$strXXV X
)XXX Y
}XXY Z
"XXZ [
+XX\ ]
resourceManagerXX^ m
.XXm n
	GetStringXXn w
(XXw x
$str	XXx á
,
XXá à
cultureInfo
XXâ î
)
XXî ï
;
XXï ñ
}YY 
Border\\ $
serviceChatMessageBorder\\ 3
=\\4 5
new\\6 9
Border\\: @
{]] 
HorizontalAlignment^^ +
=^^, -
HorizontalAlignment^^. A
.^^A B
Center^^B H
,^^H I
Height__ 
=__  
$num__! #
,__# $
MaxWidth``  
=``! "
$num``# '
,``' (
Marginaa 
=aa  
newaa! $
	Thicknessaa% .
(aa. /
$numaa/ 0
,aa0 1
$numaa2 3
,aa3 4
$numaa5 6
,aa6 7
$numaa8 9
)aa9 :
,aa: ;
CornerRadiusbb $
=bb% &
newbb' *
CornerRadiusbb+ 7
(bb7 8
$numbb8 :
)bb: ;
,bb; <

Backgroundcc "
=cc# $
newcc% (
SolidColorBrushcc) 8
(cc8 9
(cc9 :
Colorcc: ?
)cc? @
ColorConvertercc@ N
.ccN O
ConvertFromStringccO `
(cc` a
$strcca l
)ccl m
)ccm n
,ccn o
Opacitydd 
=dd  !
$numdd" %
}ee 
;ee 
Labelgg #
serviceChatMessageLabelgg 1
=gg2 3
newgg4 7
Labelgg8 =
{hh 

Foregroundii "
=ii# $
newii% (
SolidColorBrushii) 8
(ii8 9
Colorsii9 ?
.ii? @
Whiteii@ E
)iiE F
,iiF G
HorizontalAlignmentjj +
=jj, -
HorizontalAlignmentjj. A
.jjA B
LeftjjB F
,jjF G
FontSizekk  
=kk! "
$numkk# %
,kk% &
Marginll 
=ll  
newll! $
	Thicknessll% .
(ll. /
$numll/ 1
,ll1 2
$numll3 5
,ll5 6
$numll7 9
,ll9 :
$numll; =
)ll= >
,ll> ?
Contentmm 
=mm  !
messagemm" )
}nn 
;nn $
serviceChatMessageBorderpp ,
.pp, -
Childpp- 2
=pp3 4#
serviceChatMessageLabelpp5 L
;ppL M
MessagesStackPanelqq &
.qq& '
Childrenqq' /
.qq/ 0
Addqq0 3
(qq3 4$
serviceChatMessageBorderqq4 L
)qqL M
;qqM N
continuess 
;ss 
}tt 
ifvv 
(vv 
profileAndMessagevv %
.vv% &
Keyvv& )
!=vv* ,

MainWindowvv- 7
.vv7 8
loggedProfilevv8 E
.vvE F
PlayervvF L
.vvL M
NickNamevvM U
&&vvV X
profileAndMessagevvY j
.vvj k
Keyvvk n
!=vvo q
$strvvr 
)	vv Ä
{ww 
Borderxx 
friendMessageBorderxx .
=xx/ 0
newxx1 4
Borderxx5 ;
{yy 
HorizontalAlignmentzz +
=zz, -
HorizontalAlignmentzz. A
.zzA B
LeftzzB F
,zzF G
Height{{ 
={{  
$num{{! #
,{{# $
MaxWidth||  
=||! "
$num||# '
,||' (
Margin}} 
=}}  
new}}! $
	Thickness}}% .
(}}. /
$num}}/ 1
,}}1 2
$num}}3 4
,}}4 5
$num}}6 7
,}}7 8
$num}}9 :
)}}: ;
,}}; <
CornerRadius~~ $
=~~% &
new~~' *
CornerRadius~~+ 7
(~~7 8
$num~~8 :
)~~: ;
,~~; <

Background "
=# $
new% (
SolidColorBrush) 8
(8 9
Colors9 ?
.? @
Black@ E
)E F
,F G
Opacity
ÄÄ 
=
ÄÄ  !
$num
ÄÄ" %
}
ÅÅ 
;
ÅÅ 

StackPanel
ÉÉ +
friendBorderContentStackPanel
ÉÉ <
=
ÉÉ= >
new
ÉÉ? B

StackPanel
ÉÉC M
{
ÑÑ 
Orientation
ÖÖ #
=
ÖÖ$ %
Orientation
ÖÖ& 1
.
ÖÖ1 2

Horizontal
ÖÖ2 <
}
ÜÜ 
;
ÜÜ 
Image
àà  
friendProfileImage
àà ,
=
àà- .
new
àà/ 2
Image
àà3 8
{
ââ 
Source
ää 
=
ää  
new
ää! $
ImageLoader
ää% 0
(
ää0 1
)
ää1 2
.
ää2 3&
GetImageByPlayerNickname
ää3 K
(
ääK L
profileAndMessage
ääL ]
.
ää] ^
Key
ää^ a
)
ääa b
,
ääb c
Width
ãã 
=
ãã 
$num
ãã  "
,
ãã" #
Margin
åå 
=
åå  
new
åå! $
	Thickness
åå% .
(
åå. /
$num
åå/ 1
,
åå1 2
$num
åå3 5
,
åå5 6
$num
åå7 8
,
åå8 9
$num
åå: <
)
åå< =
}
çç 
;
çç 

StackPanel
èè 0
"friendNicknameAndMessageStackPanel
èè A
=
èèB C
new
èèD G

StackPanel
èèH R
(
èèR S
)
èèS T
;
èèT U
Label
ëë !
friendNicknameLabel
ëë -
=
ëë. /
new
ëë0 3
Label
ëë4 9
{
íí 

Foreground
ìì "
=
ìì# $
new
ìì% (
SolidColorBrush
ìì) 8
(
ìì8 9
Colors
ìì9 ?
.
ìì? @
White
ìì@ E
)
ììE F
,
ììF G!
HorizontalAlignment
îî +
=
îî, -!
HorizontalAlignment
îî. A
.
îîA B
Left
îîB F
,
îîF G
FontSize
ïï  
=
ïï! "
$num
ïï# %
,
ïï% &
Margin
ññ 
=
ññ  
new
ññ! $
	Thickness
ññ% .
(
ññ. /
$num
ññ/ 0
,
ññ0 1
$num
ññ2 3
,
ññ3 4
$num
ññ5 7
,
ññ7 8
$num
ññ9 :
)
ññ: ;
,
ññ; <
Content
óó 
=
óó  !
profileAndMessage
óó" 3
.
óó3 4
Key
óó4 7
}
òò 
;
òò 
Label
öö  
friendMessageLabel
öö ,
=
öö- .
new
öö/ 2
Label
öö3 8
{
õõ 

Foreground
úú "
=
úú# $
new
úú% (
SolidColorBrush
úú) 8
(
úú8 9
Colors
úú9 ?
.
úú? @
White
úú@ E
)
úúE F
,
úúF G!
HorizontalAlignment
ùù +
=
ùù, -!
HorizontalAlignment
ùù. A
.
ùùA B
Left
ùùB F
,
ùùF G
FontSize
ûû  
=
ûû! "
$num
ûû# %
,
ûû% &
Margin
üü 
=
üü  
new
üü! $
	Thickness
üü% .
(
üü. /
$num
üü/ 0
,
üü0 1
$num
üü2 3
,
üü3 4
$num
üü5 7
,
üü7 8
$num
üü9 :
)
üü: ;
,
üü; <
Content
†† 
=
††  !
profileAndMessage
††" 3
.
††3 4
Value
††4 9
}
°° 
;
°° 0
"friendNicknameAndMessageStackPanel
££ 6
.
££6 7
Children
££7 ?
.
££? @
Add
££@ C
(
££C D!
friendNicknameLabel
££D W
)
££W X
;
££X Y0
"friendNicknameAndMessageStackPanel
§§ 6
.
§§6 7
Children
§§7 ?
.
§§? @
Add
§§@ C
(
§§C D 
friendMessageLabel
§§D V
)
§§V W
;
§§W X+
friendBorderContentStackPanel
¶¶ 1
.
¶¶1 2
Children
¶¶2 :
.
¶¶: ;
Add
¶¶; >
(
¶¶> ? 
friendProfileImage
¶¶? Q
)
¶¶Q R
;
¶¶R S+
friendBorderContentStackPanel
ßß 1
.
ßß1 2
Children
ßß2 :
.
ßß: ;
Add
ßß; >
(
ßß> ?0
"friendNicknameAndMessageStackPanel
ßß? a
)
ßßa b
;
ßßb c!
friendMessageBorder
©© '
.
©©' (
Child
©©( -
=
©©. /+
friendBorderContentStackPanel
©©0 M
;
©©M N 
MessagesStackPanel
´´ &
.
´´& '
Children
´´' /
.
´´/ 0
Add
´´0 3
(
´´3 4!
friendMessageBorder
´´4 G
)
´´G H
;
´´H I
continue
≠≠ 
;
≠≠ 
}
ÆÆ 
if
∞∞ 
(
∞∞ 
profileAndMessage
∞∞ %
.
∞∞% &
Key
∞∞& )
==
∞∞* ,

MainWindow
∞∞- 7
.
∞∞7 8
loggedProfile
∞∞8 E
.
∞∞E F
Player
∞∞F L
.
∞∞L M
NickName
∞∞M U
)
∞∞U V
{
±± 
Border
≤≤ '
loggedPlayerMessageBorder
≤≤ 4
=
≤≤5 6
new
≤≤7 :
Border
≤≤; A
{
≥≥ !
HorizontalAlignment
¥¥ +
=
¥¥, -!
HorizontalAlignment
¥¥. A
.
¥¥A B
Right
¥¥B G
,
¥¥G H
Height
µµ 
=
µµ  
$num
µµ! #
,
µµ# $
MaxWidth
∂∂  
=
∂∂! "
$num
∂∂# '
,
∂∂' (
Margin
∑∑ 
=
∑∑  
new
∑∑! $
	Thickness
∑∑% .
(
∑∑. /
$num
∑∑/ 0
,
∑∑0 1
$num
∑∑2 3
,
∑∑3 4
$num
∑∑5 7
,
∑∑7 8
$num
∑∑9 :
)
∑∑: ;
,
∑∑; <
CornerRadius
∏∏ $
=
∏∏% &
new
∏∏' *
CornerRadius
∏∏+ 7
(
∏∏7 8
$num
∏∏8 :
)
∏∏: ;
,
∏∏; <

Background
ππ "
=
ππ# $
new
ππ% (
SolidColorBrush
ππ) 8
(
ππ8 9
Colors
ππ9 ?
.
ππ? @
Black
ππ@ E
)
ππE F
,
ππF G
Opacity
∫∫ 
=
∫∫  !
$num
∫∫" %
}
ªª 
;
ªª 
Label
ΩΩ &
loggedPlayerMessageLabel
ΩΩ 2
=
ΩΩ3 4
new
ΩΩ5 8
Label
ΩΩ9 >
{
ææ 

Foreground
øø "
=
øø# $
new
øø% (
SolidColorBrush
øø) 8
(
øø8 9
Colors
øø9 ?
.
øø? @
White
øø@ E
)
øøE F
,
øøF G!
HorizontalAlignment
¿¿ +
=
¿¿, -!
HorizontalAlignment
¿¿. A
.
¿¿A B
Left
¿¿B F
,
¿¿F G
FontSize
¡¡  
=
¡¡! "
$num
¡¡# %
,
¡¡% &
Margin
¬¬ 
=
¬¬  
new
¬¬! $
	Thickness
¬¬% .
(
¬¬. /
$num
¬¬/ 1
,
¬¬1 2
$num
¬¬3 5
,
¬¬5 6
$num
¬¬7 9
,
¬¬9 :
$num
¬¬; =
)
¬¬= >
,
¬¬> ?
Content
√√ 
=
√√  !
profileAndMessage
√√" 3
.
√√3 4
Value
√√4 9
}
ƒƒ 
;
ƒƒ '
loggedPlayerMessageBorder
∆∆ -
.
∆∆- .
Child
∆∆. 3
=
∆∆4 5&
loggedPlayerMessageLabel
∆∆6 N
;
∆∆N O 
MessagesStackPanel
«« &
.
««& '
Children
««' /
.
««/ 0
Add
««0 3
(
««3 4'
loggedPlayerMessageBorder
««4 M
)
««M N
;
««N O
}
»» 
}
   *
chatNotCallbackMethodsClient
ÃÃ (
.
ÃÃ( )
Close
ÃÃ) .
(
ÃÃ. /
)
ÃÃ/ 0
;
ÃÃ0 1
}
ÕÕ 	
public
œœ 
void
œœ 9
+ExitFromThisPageForBeingExpeltFromLobbyView
œœ ?
(
œœ? @
)
œœ@ A
{
–– 	
	LobbyView
—— 
.
—— '
chatCallbackMethodsClient
—— /
.
——/ 0
	LeaveChat
——0 9
(
——9 :

MainWindow
——: D
.
——D E
loggedProfile
——E R
.
——R S
Player
——S Y
.
——Y Z
NickName
——Z b
)
——b c
;
——c d
NavigationService
““ 
navigationService
““ /
=
““0 1
NavigationService
““2 C
.
““C D"
GetNavigationService
““D X
(
““X Y
this
““Y ]
)
““] ^
;
““^ _
navigationService
”” 
.
”” 
Navigate
”” &
(
””& '
new
””' *
MenuView
””+ 3
(
””3 4

mainWindow
””4 >
)
””> ?
)
””? @
;
””@ A
new
‘‘ !
AlertPopUpGenerator
‘‘ #
(
‘‘# $
)
‘‘$ %
.
‘‘% &/
!OpenInternationalizedWarningPopUp
‘‘& G
(
‘‘G H
$str
‘‘H P
,
‘‘P Q
$str
‘‘R m
)
‘‘m n
;
‘‘n o
}
’’ 	
}
◊◊ 
}ÿÿ ê
C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\ConfigurationView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
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
}&& ª∂
C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\CreateAccountView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
CreateAccountView *
:+ ,
Page- 1
{ 
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
;8 9
public 
CreateAccountView  
(  !

MainWindow! +

mainWindow, 6
)6 7
{   	
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
this## 
.## 

mainWindow## 
=## 

mainWindow## (
;##( )
InitializeComponent%% 
(%%  
)%%  !
;%%! "
}&& 	
private,, 
void,, 
CreateAccountButton,, (
(,,( )
object,,) /
sender,,0 6
,,,6 7
RoutedEventArgs,,8 G
e,,H I
),,I J
{-- 	
if.. 
(.. 2
&InvalidValuesInTextFieldsTextGenerator.. 6
(..6 7
)..7 8
==..9 ;
$str..< >
)..> ?
{// 
if00 
(00 
BirthdayDatePicker00 &
.00& '
SelectedDate00' 3
<=004 6
DateTime007 ?
.00? @
Now00@ C
)00C D
{11 
SecureString22  
securePassword22! /
=220 1
PasswordPasswordBox222 E
.22E F
SecurePassword22F T
;22T U
string33 
Password33 #
=33$ %
new33& )
System33* 0
.330 1
Net331 4
.334 5
NetworkCredential335 F
(33F G
string33G M
.33M N
Empty33N S
,33S T
securePassword33U c
)33c d
.33d e
Password33e m
;33m n
SecureString55  !
secureConfirmPassword55! 6
=557 8&
ConfirmPasswordPasswordBox559 S
.55S T
SecurePassword55T b
;55b c
string66 
ConfirmPassword66 *
=66+ ,
new66- 0
System661 7
.667 8
Net668 ;
.66; <
NetworkCredential66< M
(66M N
string66N T
.66T U
Empty66U Z
,66Z [!
secureConfirmPassword66\ q
)66q r
.66r s
Password66s {
;66{ |
if88 
(88 
Password88  
==88! #
ConfirmPassword88$ 3
)883 4
{99 +
ProfileNonCallbackMethodsClient:: 7+
profileNonCallbackMethodsClient::8 W
=::X Y
new::Z ]+
ProfileNonCallbackMethodsClient::^ }
(::} ~
)::~ 
;	:: Ä
PlayerClient;; $
playerClient;;% 1
=;;2 3
new;;4 7
PlayerClient;;8 D
(;;D E
);;E F
;;;F G
if<< 
(<< 
!<< 
playerClient<< )
.<<) *%
TheEmailIsAlreadyRegisted<<* C
(<<C D
EmailTextBox<<D P
.<<P Q
Text<<Q U
)<<U V
)<<V W
{== 
if>> 
(>>  
!>>  !
playerClient>>! -
.>>- .(
TheNicknameIsAlreadyRegisted>>. J
(>>J K
NickNameTextBox>>K Z
.>>Z [
Text>>[ _
)>>_ `
)>>` a
{?? 8
,ServiceProfileForNonCallbackMethodsReference@@  L
.@@L M
Players@@M T
players@@U \
=@@] ^
new@@_ b9
,ServiceProfileForNonCallbackMethodsReference	@@c è
.
@@è ê
Players
@@ê ó
{AA  !
NamesBB$ )
=BB* +
NamesTextBoxBB, 8
.BB8 9
TextBB9 =
,BB= >
SurnamesCC$ ,
=CC- .
SurnamesTextBoxCC/ >
.CC> ?
TextCC? C
,CCC D
EmailDD$ )
=DD* +
EmailTextBoxDD, 8
.DD8 9
TextDD9 =
,DD= >
NickNameEE$ ,
=EE- .
NickNameTextBoxEE/ >
.EE> ?
TextEE? C
,EEC D
	BirthDateFF$ -
=FF. /
(FF0 1
DateTimeFF1 9
)FF9 :
BirthdayDatePickerFF: L
.FFL M
SelectedDateFFM Y
}GG  !
;GG! "8
,ServiceProfileForNonCallbackMethodsReferenceII  L
.IIL M
ProfilesIIM U
profilesIIV ^
=II_ `
newIIa d9
,ServiceProfileForNonCallbackMethodsReference	IIe ë
.
IIë í
Profiles
IIí ö
{JJ  !
LoginStatusKK$ /
=KK0 1 
ProfileLoginStatusesKK2 F
.KKF G
	NotLoggedKKG P
.KKP Q
ToStringKKQ Y
(KKY Z
)KKZ [
,KK[ \
CoinsLL$ )
=LL* +
$numLL, -
,LL- .
PlayersMM$ +
=MM, -
playersMM. 5
}NN  !
;NN! "
stringPP  &
saltPP' +
=PP, -
BCryptPP. 4
.PP4 5
NetPP5 8
.PP8 9
BCryptPP9 ?
.PP? @
GenerateSaltPP@ L
(PPL M
)PPM N
;PPN O
stringQQ  &
hashedPasswordQQ' 5
=QQ6 7
BCryptQQ8 >
.QQ> ?
NetQQ? B
.QQB C
BCryptQQC I
.QQI J
HashPasswordQQJ V
(QQV W
PasswordQQW _
,QQ_ `
saltQQa e
)QQe f
;QQf g
playersRR  '
.RR' (
PasswordRR( 0
=RR1 2
hashedPasswordRR3 A
;RRA B
tryTT  #
{UU  !+
profileNonCallbackMethodsClientVV$ C
.VVC D

AddProfileVVD N
(VVN O
profilesVVO W
)VVW X
;VVX Y
}WW  !
catchXX  %
(XX& '
	ExceptionXX' 0
exXX1 3
)XX3 4
{YY  !
ConsoleZZ$ +
.ZZ+ ,
	WriteLineZZ, 5
(ZZ5 6
exZZ6 8
.ZZ8 9

StackTraceZZ9 C
)ZZC D
;ZZD E
}[[  !
new]]  #
AlertPopUpGenerator]]$ 7
(]]7 8
)]]8 9
.]]9 :-
!OpenInternationalizedSuccessPopUp]]: [
(]][ \
$str]]\ h
,]]h i
$str	]]j Ö
)
]]Ö Ü
;
]]Ü á
NavigationService__  1
navigationService__2 C
=__D E
NavigationService__F W
.__W X 
GetNavigationService__X l
(__l m
this__m q
)__q r
;__r s
navigationService``  1
.``1 2
Navigate``2 :
(``: ;
new``; >
	LoginView``? H
(``H I

mainWindow``I S
)``S T
)``T U
;``U V
}aa 
elsebb  
{cc 
newdd  #
AlertPopUpGeneratordd$ 7
(dd7 8
)dd8 9
.dd9 :+
OpenInternationalizedErrorPopUpdd: Y
(ddY Z
$strddZ f
,ddf g
$str	ddh Å
)
ddÅ Ç
;
ddÇ É
}ee 
}ff 
elsegg 
{hh 
newii 
AlertPopUpGeneratorii  3
(ii3 4
)ii4 5
.ii5 6+
OpenInternationalizedErrorPopUpii6 U
(iiU V
$striiV b
,iib c
$striid z
)iiz {
;ii{ |
}jj +
profileNonCallbackMethodsClientll 7
.ll7 8
Closell8 =
(ll= >
)ll> ?
;ll? @
playerClientmm $
.mm$ %
Closemm% *
(mm* +
)mm+ ,
;mm, -
}nn 
elseoo 
{pp 
newqq 
AlertPopUpGeneratorqq /
(qq/ 0
)qq0 1
.qq1 2+
OpenInternationalizedErrorPopUpqq2 Q
(qqQ R
$strqqR ^
,qq^ _
$strqq` 
)	qq Ä
;
qqÄ Å
}rr 
}ss 
elsett 
{uu 
newvv 
AlertPopUpGeneratorvv +
(vv+ ,
)vv, -
.vv- .+
OpenInternationalizedErrorPopUpvv. M
(vvM N
$strvvN Z
,vvZ [
$str	vv\ é
)
vvé è
;
vvè ê
}ww 
}xx 
elseyy 
{zz 
new{{ 
AlertPopUpGenerator{{ '
({{' (
){{( )
.{{) *
OpenErrorPopUp{{* 8
({{8 9
$str{{9 E
,{{E F2
&InvalidValuesInTextFieldsTextGenerator{{G m
({{m n
){{n o
){{o p
;{{p q
}|| 
}}} 	
private 
void 
GoLoginButton "
(" #
object# )
sender* 0
,0 1 
MouseButtonEventArgs2 F
eG H
)H I
{
ÄÄ 	
NavigationService
ÅÅ 
navigationService
ÅÅ /
=
ÅÅ0 1
NavigationService
ÅÅ2 C
.
ÅÅC D"
GetNavigationService
ÅÅD X
(
ÅÅX Y
this
ÅÅY ]
)
ÅÅ] ^
;
ÅÅ^ _
navigationService
ÇÇ 
.
ÇÇ 
Navigate
ÇÇ &
(
ÇÇ& '
new
ÇÇ' *
	LoginView
ÇÇ+ 4
(
ÇÇ4 5

mainWindow
ÇÇ5 ?
)
ÇÇ? @
)
ÇÇ@ A
;
ÇÇA B
}
ÉÉ 	
private
ââ 
string
ââ 4
&InvalidValuesInTextFieldsTextGenerator
ââ =
(
ââ= >
)
ââ> ?
{
ää 	
int
ãã +
textFieldsWithIncorrectValues
ãã -
=
ãã. /
$num
ãã0 1
;
ãã1 2
string
çç 
	finalText
çç 
=
çç 
$str
çç !
;
çç! "
string
èè 
namesPattern
èè 
=
èè  !
$str
èè" C
;
èèC D
string
êê 
surnamesPattern
êê "
=
êê# $
$str
êê% F
;
êêF G
string
ëë 
emailPattern
ëë 
=
ëë  !
$str
ëë" A
;
ëëA B
string
íí 
nickNamePattern
íí "
=
íí# $
$str
íí% ?
;
íí? @
string
ìì 
passwordPattern
ìì "
=
ìì# $
$str
ìì% g
;
ììg h
string
îî $
confirmPasswordPattern
îî )
=
îî* +
$str
îî, n
;
îîn o
Regex
ññ 

namesRegex
ññ 
=
ññ 
new
ññ "
Regex
ññ# (
(
ññ( )
namesPattern
ññ) 5
)
ññ5 6
;
ññ6 7
Regex
óó 
surnamesRegex
óó 
=
óó  !
new
óó" %
Regex
óó& +
(
óó+ ,
surnamesPattern
óó, ;
)
óó; <
;
óó< =
Regex
òò 

emailRegex
òò 
=
òò 
new
òò "
Regex
òò# (
(
òò( )
emailPattern
òò) 5
)
òò5 6
;
òò6 7
Regex
ôô 
nickNameRegex
ôô 
=
ôô  !
new
ôô" %
Regex
ôô& +
(
ôô+ ,
nickNamePattern
ôô, ;
)
ôô; <
;
ôô< =
Regex
öö 
passwordRegex
öö 
=
öö  !
new
öö" %
Regex
öö& +
(
öö+ ,
passwordPattern
öö, ;
)
öö; <
;
öö< =
Regex
õõ %
confirmNewPasswordRegex
õõ )
=
õõ* +
new
õõ, /
Regex
õõ0 5
(
õõ5 6$
confirmPasswordPattern
õõ6 L
)
õõL M
;
õõM N
Match
ùù 

namesMatch
ùù 
=
ùù 

namesRegex
ùù )
.
ùù) *
Match
ùù* /
(
ùù/ 0
NamesTextBox
ùù0 <
.
ùù< =
Text
ùù= A
)
ùùA B
;
ùùB C
Match
ûû 
surnamesMatch
ûû 
=
ûû  !
surnamesRegex
ûû" /
.
ûû/ 0
Match
ûû0 5
(
ûû5 6
SurnamesTextBox
ûû6 E
.
ûûE F
Text
ûûF J
)
ûûJ K
;
ûûK L
Match
üü 

emailMatch
üü 
=
üü 

emailRegex
üü )
.
üü) *
Match
üü* /
(
üü/ 0
EmailTextBox
üü0 <
.
üü< =
Text
üü= A
)
üüA B
;
üüB C
Match
†† 
nickNameMatch
†† 
=
††  !
nickNameRegex
††" /
.
††/ 0
Match
††0 5
(
††5 6
NickNameTextBox
††6 E
.
††E F
Text
††F J
)
††J K
;
††K L
SecureString
¢¢ $
passwordSecurePassword
¢¢ /
=
¢¢0 1!
PasswordPasswordBox
¢¢2 E
.
¢¢E F
SecurePassword
¢¢F T
;
¢¢T U
string
££ 
password
££ 
=
££ 
new
££ !
System
££" (
.
££( )
Net
££) ,
.
££, -
NetworkCredential
££- >
(
££> ?
string
££? E
.
££E F
Empty
££F K
,
££K L$
passwordSecurePassword
££M c
)
££c d
.
££d e
Password
££e m
;
££m n
SecureString
•• +
confirmPasswordSecurePassword
•• 6
=
••7 8(
ConfirmPasswordPasswordBox
••9 S
.
••S T
SecurePassword
••T b
;
••b c
string
¶¶ 
confirmPassword
¶¶ "
=
¶¶# $
new
¶¶% (
System
¶¶) /
.
¶¶/ 0
Net
¶¶0 3
.
¶¶3 4
NetworkCredential
¶¶4 E
(
¶¶E F
string
¶¶F L
.
¶¶L M
Empty
¶¶M R
,
¶¶R S+
confirmPasswordSecurePassword
¶¶T q
)
¶¶q r
.
¶¶r s
Password
¶¶s {
;
¶¶{ |
Match
®® 
passwordMatch
®® 
=
®®  !
passwordRegex
®®" /
.
®®/ 0
Match
®®0 5
(
®®5 6
password
®®6 >
)
®®> ?
;
®®? @
Match
©© "
confirmPasswordMatch
©© &
=
©©' (%
confirmNewPasswordRegex
©©) @
.
©©@ A
Match
©©A F
(
©©F G
confirmPassword
©©G V
)
©©V W
;
©©W X
if
´´ 
(
´´ 
!
´´ 

namesMatch
´´ 
.
´´ 
Success
´´ #
||
´´$ &
!
´´' (
surnamesMatch
´´( 5
.
´´5 6
Success
´´6 =
||
´´> @
!
´´A B

emailMatch
´´B L
.
´´L M
Success
´´M T
||
´´U W
!
¨¨ 
nickNameMatch
¨¨ 
.
¨¨ 
Success
¨¨ &
||
¨¨' )
!
¨¨* +
passwordMatch
¨¨+ 8
.
¨¨8 9
Success
¨¨9 @
||
¨¨A C
!
¨¨D E"
confirmPasswordMatch
¨¨E Y
.
¨¨Y Z
Success
¨¨Z a
)
¨¨a b
{
≠≠ 
	finalText
ÆÆ 
=
ÆÆ 
	finalText
ÆÆ %
+
ÆÆ& '
resourceManager
ÆÆ( 7
.
ÆÆ7 8
	GetString
ÆÆ8 A
(
ÆÆA B
$str
ÆÆB k
,
ÆÆk l
cultureInfo
ÆÆm x
)
ÆÆx y
;
ÆÆy z
}
ØØ 
if
±± 
(
±± 
!
±± 

namesMatch
±± 
.
±± 
Success
±± #
)
±±# $
{
≤≤ 
	finalText
≥≥ 
=
≥≥ 
	finalText
≥≥ %
+
≥≥& '
resourceManager
≥≥( 7
.
≥≥7 8
	GetString
≥≥8 A
(
≥≥A B
$str
≥≥B K
,
≥≥K L
cultureInfo
≥≥M X
)
≥≥X Y
+
≥≥Z [
$str
≥≥\ _
;
≥≥_ `+
textFieldsWithIncorrectValues
¥¥ -
++
¥¥- /
;
¥¥/ 0
}
µµ 
if
∑∑ 
(
∑∑ 
!
∑∑ 
surnamesMatch
∑∑ 
.
∑∑ 
Success
∑∑ &
)
∑∑& '
{
∏∏ 
if
ππ 
(
ππ +
textFieldsWithIncorrectValues
ππ 1
>=
ππ2 4
$num
ππ5 6
)
ππ6 7
{
∫∫ 
	finalText
ªª 
=
ªª 
	finalText
ªª  )
.
ªª) *
	Substring
ªª* 3
(
ªª3 4
$num
ªª4 5
,
ªª5 6
	finalText
ªª7 @
.
ªª@ A
Length
ªªA G
-
ªªH I
$num
ªªJ K
)
ªªK L
;
ªªL M
	finalText
ºº 
=
ºº 
	finalText
ºº  )
+
ºº* +
$str
ºº, 0
+
ºº1 2
resourceManager
ºº3 B
.
ººB C
	GetString
ººC L
(
ººL M
$str
ººM Y
,
ººY Z
cultureInfo
ºº[ f
)
ººf g
+
ººh i
$str
ººj m
;
ººm n
}
ΩΩ 
else
ææ 
{
øø 
	finalText
¿¿ 
=
¿¿ 
	finalText
¿¿  )
+
¿¿* +
resourceManager
¿¿, ;
.
¿¿; <
	GetString
¿¿< E
(
¿¿E F
$str
¿¿F R
,
¿¿R S
cultureInfo
¿¿T _
)
¿¿_ `
+
¿¿a b
$str
¿¿c f
;
¿¿f g
}
¡¡ +
textFieldsWithIncorrectValues
√√ -
++
√√- /
;
√√/ 0
}
ƒƒ 
if
∆∆ 
(
∆∆ 
!
∆∆ 

emailMatch
∆∆ 
.
∆∆ 
Success
∆∆ #
)
∆∆# $
{
«« 
if
»» 
(
»» +
textFieldsWithIncorrectValues
»» 1
>=
»»2 4
$num
»»5 6
)
»»6 7
{
…… 
	finalText
   
=
   
	finalText
    )
.
  ) *
	Substring
  * 3
(
  3 4
$num
  4 5
,
  5 6
	finalText
  7 @
.
  @ A
Length
  A G
-
  H I
$num
  J K
)
  K L
;
  L M
	finalText
ÀÀ 
=
ÀÀ 
	finalText
ÀÀ  )
+
ÀÀ* +
$str
ÀÀ, 0
+
ÀÀ1 2
resourceManager
ÀÀ3 B
.
ÀÀB C
	GetString
ÀÀC L
(
ÀÀL M
$str
ÀÀM T
,
ÀÀT U
cultureInfo
ÀÀV a
)
ÀÀa b
+
ÀÀc d
$str
ÀÀe h
;
ÀÀh i
}
ÃÃ 
else
ÕÕ 
{
ŒŒ 
	finalText
œœ 
=
œœ 
	finalText
œœ  )
+
œœ* +
resourceManager
œœ, ;
.
œœ; <
	GetString
œœ< E
(
œœE F
$str
œœF M
,
œœM N
cultureInfo
œœO Z
)
œœZ [
+
œœ\ ]
$str
œœ^ a
;
œœa b
}
–– +
textFieldsWithIncorrectValues
““ -
++
““- /
;
““/ 0
}
”” 
if
’’ 
(
’’ 
!
’’ 
nickNameMatch
’’ 
.
’’ 
Success
’’ &
)
’’& '
{
÷÷ 
if
◊◊ 
(
◊◊ +
textFieldsWithIncorrectValues
◊◊ 1
>=
◊◊2 4
$num
◊◊5 6
)
◊◊6 7
{
ÿÿ 
	finalText
ŸŸ 
=
ŸŸ 
	finalText
ŸŸ  )
.
ŸŸ) *
	Substring
ŸŸ* 3
(
ŸŸ3 4
$num
ŸŸ4 5
,
ŸŸ5 6
	finalText
ŸŸ7 @
.
ŸŸ@ A
Length
ŸŸA G
-
ŸŸH I
$num
ŸŸJ K
)
ŸŸK L
;
ŸŸL M
	finalText
⁄⁄ 
=
⁄⁄ 
	finalText
⁄⁄  )
+
⁄⁄* +
$str
⁄⁄, 0
+
⁄⁄1 2
resourceManager
⁄⁄3 B
.
⁄⁄B C
	GetString
⁄⁄C L
(
⁄⁄L M
$str
⁄⁄M W
,
⁄⁄W X
cultureInfo
⁄⁄Y d
)
⁄⁄d e
+
⁄⁄f g
$str
⁄⁄h k
;
⁄⁄k l
}
€€ 
else
‹‹ 
{
›› 
	finalText
ﬁﬁ 
=
ﬁﬁ 
	finalText
ﬁﬁ  )
+
ﬁﬁ* +
resourceManager
ﬁﬁ, ;
.
ﬁﬁ; <
	GetString
ﬁﬁ< E
(
ﬁﬁE F
$str
ﬁﬁF P
,
ﬁﬁP Q
cultureInfo
ﬁﬁR ]
)
ﬁﬁ] ^
+
ﬁﬁ_ `
$str
ﬁﬁa d
;
ﬁﬁd e
}
ﬂﬂ +
textFieldsWithIncorrectValues
·· -
++
··- /
;
··/ 0
}
‚‚ 
if
‰‰ 
(
‰‰ 
!
‰‰ 
passwordMatch
‰‰ 
.
‰‰ 
Success
‰‰ &
)
‰‰& '
{
ÂÂ 
if
ÊÊ 
(
ÊÊ +
textFieldsWithIncorrectValues
ÊÊ 1
>=
ÊÊ2 4
$num
ÊÊ5 6
)
ÊÊ6 7
{
ÁÁ 
	finalText
ËË 
=
ËË 
	finalText
ËË  )
.
ËË) *
	Substring
ËË* 3
(
ËË3 4
$num
ËË4 5
,
ËË5 6
	finalText
ËË7 @
.
ËË@ A
Length
ËËA G
-
ËËH I
$num
ËËJ K
)
ËËK L
;
ËËL M
	finalText
ÈÈ 
=
ÈÈ 
	finalText
ÈÈ  )
+
ÈÈ* +
$str
ÈÈ, 0
+
ÈÈ1 2
resourceManager
ÈÈ3 B
.
ÈÈB C
	GetString
ÈÈC L
(
ÈÈL M
$str
ÈÈM W
,
ÈÈW X
cultureInfo
ÈÈY d
)
ÈÈd e
+
ÈÈf g
$str
ÈÈh k
;
ÈÈk l
}
ÍÍ 
else
ÎÎ 
{
ÏÏ 
	finalText
ÌÌ 
=
ÌÌ 
	finalText
ÌÌ  )
+
ÌÌ* +
resourceManager
ÌÌ, ;
.
ÌÌ; <
	GetString
ÌÌ< E
(
ÌÌE F
$str
ÌÌF P
,
ÌÌP Q
cultureInfo
ÌÌR ]
)
ÌÌ] ^
+
ÌÌ_ `
$str
ÌÌa d
;
ÌÌd e
}
ÓÓ +
textFieldsWithIncorrectValues
 -
++
- /
;
/ 0
}
ÒÒ 
if
ÛÛ 
(
ÛÛ 
!
ÛÛ "
confirmPasswordMatch
ÛÛ %
.
ÛÛ% &
Success
ÛÛ& -
)
ÛÛ- .
{
ÙÙ 
if
ıı 
(
ıı +
textFieldsWithIncorrectValues
ıı 1
>=
ıı2 4
$num
ıı5 6
)
ıı6 7
{
ˆˆ 
	finalText
˜˜ 
=
˜˜ 
	finalText
˜˜  )
.
˜˜) *
	Substring
˜˜* 3
(
˜˜3 4
$num
˜˜4 5
,
˜˜5 6
	finalText
˜˜7 @
.
˜˜@ A
Length
˜˜A G
-
˜˜H I
$num
˜˜J K
)
˜˜K L
;
˜˜L M
	finalText
¯¯ 
=
¯¯ 
	finalText
¯¯  )
+
¯¯* +
$str
¯¯, 0
+
¯¯1 2
resourceManager
¯¯3 B
.
¯¯B C
	GetString
¯¯C L
(
¯¯L M
$str
¯¯M _
,
¯¯_ `
cultureInfo
¯¯a l
)
¯¯l m
+
¯¯n o
$str
¯¯p s
;
¯¯s t
}
˘˘ 
else
˙˙ 
{
˚˚ 
	finalText
¸¸ 
=
¸¸ 
	finalText
¸¸  )
+
¸¸* +
resourceManager
¸¸, ;
.
¸¸; <
	GetString
¸¸< E
(
¸¸E F
$str
¸¸F X
,
¸¸X Y
cultureInfo
¸¸Z e
)
¸¸e f
+
¸¸g h
$str
¸¸i l
;
¸¸l m
}
˝˝ 
}
˛˛ 
return
ÄÄ 
	finalText
ÄÄ 
;
ÄÄ 
}
ÅÅ 	
}
ÉÉ 
}ÑÑ »î
|C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\ForgotPassword.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
ForgotPassword '
:( )
Page* .
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
private 
int 
verificationCode $
;$ %
public 
ForgotPassword 
( 

MainWindow (

mainWindow) 3
)3 4
{   	
this!! 
.!! 

mainWindow!! 
=!! 

mainWindow!! (
;!!( )
cultureInfo"" 
="" 
CultureInfo"" %
.""% &
CurrentUICulture""& 6
;""6 7
resourceManager## 
=## 
new## !
ResourceManager##" 1
(##1 2
$str##2 ^
,##^ _
typeof##` f
(##f g

MainWindow##g q
)##q r
.##r s
Assembly##s {
)##{ |
;##| }
verificationCode%% 
=%% 
new%% "
Random%%# )
(%%) *
)%%* +
.%%+ ,
Next%%, 0
(%%0 1
$num%%1 7
,%%7 8
$num%%9 @
)%%@ A
;%%A B
InitializeComponent&& 
(&&  
)&&  !
;&&! "
}'' 	
private-- 
void-- 
CancelButton1-- "
(--" #
object--# )
sender--* 0
,--0 1
RoutedEventArgs--2 A
e--B C
)--C D
{.. 	
NavigationService// 
navigationService// /
=//0 1
NavigationService//2 C
.//C D 
GetNavigationService//D X
(//X Y
this//Y ]
)//] ^
;//^ _
navigationService00 
.00 
Navigate00 &
(00& '
new00' *
	LoginView00+ 4
(004 5

mainWindow005 ?
)00? @
)00@ A
;00A B
}11 	
private33 
void33 
CancelButton233 "
(33" #
object33# )
sender33* 0
,330 1
RoutedEventArgs332 A
e33B C
)33C D
{44 	
IntroduceDataBorder55 
.55  

Visibility55  *
=55+ ,

Visibility55- 7
.557 8
Visible558 ?
;55? @
IntroduceCodeBorder66 
.66  

Visibility66  *
=66+ ,

Visibility66- 7
.667 8
Hidden668 >
;66> ?
EmailTextField77 
.77 
Text77 
=77  !
string77" (
.77( )
Empty77) .
;77. /"
NewPasswordPasswordBox88 "
.88" #
Clear88# (
(88( )
)88) *
;88* +)
ConfirmNewPasswordPasswordBox99 )
.99) *
Clear99* /
(99/ 0
)990 1
;991 2
verificationCode:: 
=:: 
new:: "
Random::# )
(::) *
)::* +
.::+ ,
Next::, 0
(::0 1
$num::1 7
,::7 8
$num::9 @
)::@ A
;::A B
};; 	
private== 
void==  
ChangePasswordButton== )
(==) *
object==* 0
sender==1 7
,==7 8
RoutedEventArgs==9 H
e==I J
)==J K
{>> 	
if?? 
(?? "
IntroduceCodeTextField?? %
.??% &
Text??& *
==??+ -
verificationCode??. >
.??> ?
ToString??? G
(??G H
)??H I
)??I J
{@@ 
PlayerClientAA 
playerClientAA )
=AA* +
newAA, /
PlayerClientAA0 <
(AA< =
)AA= >
;AA> ?
SecureStringBB %
newPasswordSecurePasswordBB 6
=BB7 8"
NewPasswordPasswordBoxBB9 O
.BBO P
SecurePasswordBBP ^
;BB^ _
stringCC 
newPasswordCC "
=CC# $
newCC% (
SystemCC) /
.CC/ 0
NetCC0 3
.CC3 4
NetworkCredentialCC4 E
(CCE F
stringCCF L
.CCL M
EmptyCCM R
,CCR S%
newPasswordSecurePasswordCCT m
)CCm n
.CCn o
PasswordCCo w
;CCw x
stringEE 
saltEE 
=EE 
BCryptEE $
.EE$ %
NetEE% (
.EE( )
BCryptEE) /
.EE/ 0
GenerateSaltEE0 <
(EE< =
)EE= >
;EE> ?
stringFF 
hashedPasswordFF %
=FF& '
BCryptFF( .
.FF. /
NetFF/ 2
.FF2 3
BCryptFF3 9
.FF9 :
HashPasswordFF: F
(FFF G
newPasswordFFG R
,FFR S
saltFFT X
)FFX Y
;FFY Z
playerClientHH 
.HH !
ModifyPasswordByEmailHH 2
(HH2 3
EmailTextFieldHH3 A
.HHA B
TextHHB F
,HHF G
hashedPasswordHHH V
)HHV W
;HHW X
newJJ 
AlertPopUpGeneratorJJ '
(JJ' (
)JJ( )
.JJ) *-
!OpenInternationalizedSuccessPopUpJJ* K
(JJK L
$strJJL X
,JJX Y
$strJJZ {
)JJ{ |
;JJ| }
NavigationServiceLL !
navigationServiceLL" 3
=LL4 5
NavigationServiceLL6 G
.LLG H 
GetNavigationServiceLLH \
(LL\ ]
thisLL] a
)LLa b
;LLb c
navigationServiceMM !
.MM! "
NavigateMM" *
(MM* +
newMM+ .
	LoginViewMM/ 8
(MM8 9

mainWindowMM9 C
)MMC D
)MMD E
;MME F
playerClientOO 
.OO 
CloseOO "
(OO" #
)OO# $
;OO$ %
}PP 
elseQQ 
{RR 
newSS 
AlertPopUpGeneratorSS '
(SS' (
)SS( )
.SS) *+
OpenInternationalizedErrorPopUpSS* I
(SSI J
$strSSJ V
,SSV W
$strSSX f
)SSf g
;SSg h
}TT 
}UU 	
privateWW 
voidWW 
SendCodeButtonWW #
(WW# $
objectWW$ *
senderWW+ 1
,WW1 2
RoutedEventArgsWW3 B
eWWC D
)WWD E
{XX 	
ifYY 
(YY 2
&InvalidValuesInTextFieldsTextGeneratorYY 6
(YY6 7
)YY7 8
==YY9 ;
$strYY< >
)YY> ?
{ZZ 
PlayerClient[[ 
playerClient[[ )
=[[* +
new[[, /
PlayerClient[[0 <
([[< =
)[[= >
;[[> ?
SecureString]] %
newPasswordSecurePassword]] 6
=]]7 8"
NewPasswordPasswordBox]]9 O
.]]O P
SecurePassword]]P ^
;]]^ _
string^^ 
newPassword^^ "
=^^# $
new^^% (
System^^) /
.^^/ 0
Net^^0 3
.^^3 4
NetworkCredential^^4 E
(^^E F
string^^F L
.^^L M
Empty^^M R
,^^R S%
newPasswordSecurePassword^^T m
)^^m n
.^^n o
Password^^o w
;^^w x
SecureString`` ,
 confirmNewPasswordSecurePassword`` =
=``> ?)
ConfirmNewPasswordPasswordBox``@ ]
.``] ^
SecurePassword``^ l
;``l m
stringaa 
confirmNewPasswordaa )
=aa* +
newaa, /
Systemaa0 6
.aa6 7
Netaa7 :
.aa: ;
NetworkCredentialaa; L
(aaL M
stringaaM S
.aaS T
EmptyaaT Y
,aaY Z,
 confirmNewPasswordSecurePasswordaa[ {
)aa{ |
.aa| }
Password	aa} Ö
;
aaÖ Ü
ifcc 
(cc 
newPasswordcc 
==cc  "
confirmNewPasswordcc# 5
)cc5 6
{dd 
ifee 
(ee 
playerClientee $
.ee$ %%
TheEmailIsAlreadyRegistedee% >
(ee> ?
EmailTextFieldee? M
.eeM N
TexteeN R
)eeR S
)eeS T
{ff 
IntroduceDataBordergg +
.gg+ ,

Visibilitygg, 6
=gg7 8

Visibilitygg9 C
.ggC D
HiddenggD J
;ggJ K
IntroduceCodeBorderhh +
.hh+ ,

Visibilityhh, 6
=hh7 8

Visibilityhh9 C
.hhC D
VisiblehhD K
;hhK L

SmtpClientjj "

smtpClientjj# -
=jj. /
newjj0 3

SmtpClientjj4 >
(jj> ?
$strjj? O
)jjO P
{kk 
Portll  
=ll! "
$numll# &
,ll& '
Credentialsmm '
=mm( )
newmm* -
NetworkCredentialmm. ?
(mm? @
$strmm@ \
,mm\ ]
$strmm^ s
)mms t
,mmt u
	EnableSslnn %
=nn& '
truenn( ,
}oo 
;oo 
MailMessageqq #
mailqq$ (
=qq) *
newqq+ .
MailMessageqq/ :
{rr 
Fromss  
=ss! "
newss# &
MailAddressss' 2
(ss2 3
$strss3 O
)ssO P
}tt 
;tt 
mailuu 
.uu 
Touu 
.uu  
Adduu  #
(uu# $
newuu$ '
MailAddressuu( 3
(uu3 4
EmailTextFielduu4 B
.uuB C
TextuuC G
)uuG H
)uuH I
;uuI J
mailvv 
.vv 
Subjectvv $
=vv% &
resourceManagervv' 6
.vv6 7
	GetStringvv7 @
(vv@ A
$strvvA `
,vv` a
cultureInfovvb m
)vvm n
;vvn o
mailww 
.ww 
Bodyww !
=ww" #
resourceManagerww$ 3
.ww3 4
	GetStringww4 =
(ww= >
$strww> l
,wwl m
cultureInfowwn y
)wwy z
+ww{ |
verificationCode	ww} ç
;
wwç é

smtpClientyy "
.yy" #
Sendyy# '
(yy' (
mailyy( ,
)yy, -
;yy- .
}zz 
else{{ 
{|| 
new}} 
AlertPopUpGenerator}} /
(}}/ 0
)}}0 1
.}}1 2+
OpenInternationalizedErrorPopUp}}2 Q
(}}Q R
$str}}R ^
,}}^ _
$str}}` q
)}}q r
;}}r s
}~~ 
} 
else
ÄÄ 
{
ÅÅ 
new
ÇÇ !
AlertPopUpGenerator
ÇÇ +
(
ÇÇ+ ,
)
ÇÇ, -
.
ÇÇ- .-
OpenInternationalizedErrorPopUp
ÇÇ. M
(
ÇÇM N
$str
ÇÇN Z
,
ÇÇZ [
$str
ÇÇ\ {
)
ÇÇ{ |
;
ÇÇ| }
}
ÉÉ 
playerClient
ÖÖ 
.
ÖÖ 
Close
ÖÖ "
(
ÖÖ" #
)
ÖÖ# $
;
ÖÖ$ %
}
ÜÜ 
else
áá 
{
àà 
new
ââ !
AlertPopUpGenerator
ââ '
(
ââ' (
)
ââ( )
.
ââ) *
OpenErrorPopUp
ââ* 8
(
ââ8 9
$str
ââ9 E
,
ââE F4
&InvalidValuesInTextFieldsTextGenerator
ââG m
(
ââm n
)
âân o
)
ââo p
;
ââp q
}
ää 
}
ãã 	
private
ëë 
string
ëë 4
&InvalidValuesInTextFieldsTextGenerator
ëë =
(
ëë= >
)
ëë> ?
{
íí 	
int
ìì +
textFieldsWithIncorrectValues
ìì -
=
ìì. /
$num
ìì0 1
;
ìì1 2
string
ïï 
	finalText
ïï 
=
ïï 
$str
ïï !
;
ïï! "
string
óó 
emailPattern
óó 
=
óó  !
$str
óó" A
;
óóA B
string
òò  
newPasswordPattern
òò %
=
òò& '
$str
òò( j
;
òòj k
string
ôô '
confirmNewPasswordPattern
ôô ,
=
ôô- .
$str
ôô/ q
;
ôôq r
Regex
õõ 

emailRegex
õõ 
=
õõ 
new
õõ "
Regex
õõ# (
(
õõ( )
emailPattern
õõ) 5
)
õõ5 6
;
õõ6 7
Regex
úú 
newPasswordRegex
úú "
=
úú# $
new
úú% (
Regex
úú) .
(
úú. / 
newPasswordPattern
úú/ A
)
úúA B
;
úúB C
Regex
ùù %
confirmNewPasswordRegex
ùù )
=
ùù* +
new
ùù, /
Regex
ùù0 5
(
ùù5 6'
confirmNewPasswordPattern
ùù6 O
)
ùùO P
;
ùùP Q
Match
üü 

emailMatch
üü 
=
üü 

emailRegex
üü )
.
üü) *
Match
üü* /
(
üü/ 0
EmailTextField
üü0 >
.
üü> ?
Text
üü? C
)
üüC D
;
üüD E
SecureString
°° '
newPasswordSecurePassword
°° 2
=
°°3 4$
NewPasswordPasswordBox
°°5 K
.
°°K L
SecurePassword
°°L Z
;
°°Z [
string
¢¢ 
newPassword
¢¢ 
=
¢¢  
new
¢¢! $
System
¢¢% +
.
¢¢+ ,
Net
¢¢, /
.
¢¢/ 0
NetworkCredential
¢¢0 A
(
¢¢A B
string
¢¢B H
.
¢¢H I
Empty
¢¢I N
,
¢¢N O'
newPasswordSecurePassword
¢¢P i
)
¢¢i j
.
¢¢j k
Password
¢¢k s
;
¢¢s t
SecureString
§§ .
 confirmNewPasswordSecurePassword
§§ 9
=
§§: ;+
ConfirmNewPasswordPasswordBox
§§< Y
.
§§Y Z
SecurePassword
§§Z h
;
§§h i
string
••  
confirmNewPassword
•• %
=
••& '
new
••( +
System
••, 2
.
••2 3
Net
••3 6
.
••6 7
NetworkCredential
••7 H
(
••H I
string
••I O
.
••O P
Empty
••P U
,
••U V.
 confirmNewPasswordSecurePassword
••W w
)
••w x
.
••x y
Password••y Å
;••Å Ç
Match
ßß 
newPasswordMatch
ßß "
=
ßß# $
newPasswordRegex
ßß% 5
.
ßß5 6
Match
ßß6 ;
(
ßß; <
newPassword
ßß< G
)
ßßG H
;
ßßH I
Match
®® %
confirmNewPasswordMatch
®® )
=
®®* +%
confirmNewPasswordRegex
®®, C
.
®®C D
Match
®®D I
(
®®I J 
confirmNewPassword
®®J \
)
®®\ ]
;
®®] ^
if
™™ 
(
™™ 
!
™™ 

emailMatch
™™ 
.
™™ 
Success
™™ #
||
™™$ &
!
™™' (
newPasswordMatch
™™( 8
.
™™8 9
Success
™™9 @
||
™™A C
!
™™D E%
confirmNewPasswordMatch
™™E \
.
™™\ ]
Success
™™] d
)
™™d e
{
´´ 
	finalText
¨¨ 
+=
¨¨ 
resourceManager
¨¨ ,
.
¨¨, -
	GetString
¨¨- 6
(
¨¨6 7
$str
¨¨7 `
,
¨¨` a
cultureInfo
¨¨b m
)
¨¨m n
;
¨¨n o
}
≠≠ 
if
ØØ 
(
ØØ 
!
ØØ 

emailMatch
ØØ 
.
ØØ 
Success
ØØ #
)
ØØ# $
{
∞∞ 
	finalText
±± 
=
±± 
	finalText
±± %
+
±±& '
resourceManager
±±( 7
.
±±7 8
	GetString
±±8 A
(
±±A B
$str
±±B I
,
±±I J
cultureInfo
±±K V
)
±±V W
+
±±X Y
$str
±±Z ]
;
±±] ^+
textFieldsWithIncorrectValues
≤≤ -
++
≤≤- /
;
≤≤/ 0
}
≥≥ 
if
µµ 
(
µµ 
!
µµ 
newPasswordMatch
µµ !
.
µµ! "
Success
µµ" )
)
µµ) *
{
∂∂ 
if
∑∑ 
(
∑∑ +
textFieldsWithIncorrectValues
∑∑ 1
>=
∑∑2 4
$num
∑∑5 6
)
∑∑6 7
{
∏∏ 
	finalText
ππ 
=
ππ 
	finalText
ππ  )
.
ππ) *
	Substring
ππ* 3
(
ππ3 4
$num
ππ4 5
,
ππ5 6
	finalText
ππ7 @
.
ππ@ A
Length
ππA G
-
ππH I
$num
ππJ K
)
ππK L
;
ππL M
	finalText
∫∫ 
=
∫∫ 
	finalText
∫∫  )
+
∫∫* +
$str
∫∫, /
+
∫∫0 1
resourceManager
∫∫2 A
.
∫∫A B
	GetString
∫∫B K
(
∫∫K L
$str
∫∫L Z
,
∫∫Z [
cultureInfo
∫∫\ g
)
∫∫g h
+
∫∫i j
$str
∫∫k n
;
∫∫n o
}
ªª 
else
ºº 
{
ΩΩ 
	finalText
ææ 
=
ææ 
	finalText
ææ  )
+
ææ* +
resourceManager
ææ, ;
.
ææ; <
	GetString
ææ< E
(
ææE F
$str
ææF T
,
ææT U
cultureInfo
ææV a
)
ææa b
+
ææc d
$str
ææe h
;
ææh i
}
øø +
textFieldsWithIncorrectValues
¡¡ -
++
¡¡- /
;
¡¡/ 0
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
!
ƒƒ %
confirmNewPasswordMatch
ƒƒ (
.
ƒƒ( )
Success
ƒƒ) 0
)
ƒƒ0 1
{
≈≈ 
if
∆∆ 
(
∆∆ +
textFieldsWithIncorrectValues
∆∆ 1
>=
∆∆2 4
$num
∆∆5 6
)
∆∆6 7
{
«« 
	finalText
»» 
=
»» 
	finalText
»»  )
.
»») *
	Substring
»»* 3
(
»»3 4
$num
»»4 5
,
»»5 6
	finalText
»»7 @
.
»»@ A
Length
»»A G
-
»»H I
$num
»»J K
)
»»K L
;
»»L M
	finalText
…… 
=
…… 
	finalText
……  )
+
……* +
$str
……, /
+
……0 1
resourceManager
……2 A
.
……A B
	GetString
……B K
(
……K L
$str
……L ^
,
……^ _
cultureInfo
……` k
)
……k l
+
……m n
$str
……o r
;
……r s
}
   
else
ÀÀ 
{
ÃÃ 
	finalText
ÕÕ 
=
ÕÕ 
	finalText
ÕÕ  )
+
ÕÕ* +
resourceManager
ÕÕ, ;
.
ÕÕ; <
	GetString
ÕÕ< E
(
ÕÕE F
$str
ÕÕF X
,
ÕÕX Y
cultureInfo
ÕÕZ e
)
ÕÕe f
+
ÕÕg h
$str
ÕÕi l
;
ÕÕl m
}
ŒŒ 
}
œœ 
return
—— 
	finalText
—— 
;
—— 
}
““ 	
}
‘‘ 
}’’ ©–
yC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\FriendsView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
FriendsView $
:% &
Page' +
,+ ,1
%IFriendRequestCallbackMethodsCallback- R
{ 
private   
readonly   

MainWindow   #

mainWindow  $ .
;  . /
private!! 
readonly!! .
"FriendRequestCallbackMethodsClient!! ;.
"friendRequestCallbackMethodsClient!!< ^
;!!^ _
private"" 
readonly"" 
CultureInfo"" $
cultureInfo""% 0
;""0 1
private## 
readonly## 
ResourceManager## (
resourceManager##) 8
;##8 9
private$$ 
readonly$$ 
bool$$ '
entryToThisPageViaLobbyView$$ 9
;$$9 :
public** 
FriendsView** 
(** 

MainWindow** %

mainWindow**& 0
)**0 1
{++ 	
this,, 
.,, 

mainWindow,, 
=,, 

mainWindow,, (
;,,( )
cultureInfo.. 
=.. 
CultureInfo.. %
...% &
CurrentUICulture..& 6
;..6 7
resourceManager// 
=// 
new// !
ResourceManager//" 1
(//1 2
$str//2 ^
,//^ _
typeof//` f
(//f g

MainWindow//g q
)//q r
.//r s
Assembly//s {
)//{ |
;//| }
PageStateManager11 
.11 
CurrentPage11 (
=11) *
this11+ /
;11/ 0'
entryToThisPageViaLobbyView22 '
=22( )
false22* /
;22/ 0.
"friendRequestCallbackMethodsClient44 .
=44/ 0
new441 4.
"FriendRequestCallbackMethodsClient445 W
(44W X
new44X [
InstanceContext44\ k
(44k l
this44l p
)44p q
)44q r
;44r s.
"friendRequestCallbackMethodsClient55 .
.55. /
Connect55/ 6
(556 7

MainWindow557 A
.55A B
loggedProfile55B O
.55O P
Player55P V
.55V W
NickName55W _
)55_ `
;55` a
InitializeComponent77 
(77  
)77  !
;77! ""
ShowUpdatedFriendsList88 "
(88" #
)88# $
;88$ %
}99 	
public;; 
FriendsView;; 
(;; 

MainWindow;; %

mainWindow;;& 0
,;;0 1
bool;;2 6'
entryToThisPageViaLobbyView;;7 R
);;R S
{<< 	
this== 
.== 

mainWindow== 
=== 

mainWindow== (
;==( )
cultureInfo?? 
=?? 
CultureInfo?? %
.??% &
CurrentUICulture??& 6
;??6 7
resourceManager@@ 
=@@ 
new@@ !
ResourceManager@@" 1
(@@1 2
$str@@2 ^
,@@^ _
typeof@@` f
(@@f g

MainWindow@@g q
)@@q r
.@@r s
Assembly@@s {
)@@{ |
;@@| }
PageStateManagerBB 
.BB 
CurrentPageBB (
=BB) *
thisBB+ /
;BB/ 0
thisCC 
.CC '
entryToThisPageViaLobbyViewCC ,
=CC- .'
entryToThisPageViaLobbyViewCC/ J
;CCJ K.
"friendRequestCallbackMethodsClientEE .
=EE/ 0
newEE1 4.
"FriendRequestCallbackMethodsClientEE5 W
(EEW X
newEEX [
InstanceContextEE\ k
(EEk l
thisEEl p
)EEp q
)EEq r
;EEr s.
"friendRequestCallbackMethodsClientFF .
.FF. /
ConnectFF/ 6
(FF6 7

MainWindowFF7 A
.FFA B
loggedProfileFFB O
.FFO P
PlayerFFP V
.FFV W
NickNameFFW _
)FF_ `
;FF` a
InitializeComponentHH 
(HH  
)HH  !
;HH! "
FriendsBorderJJ 
.JJ 

VisibilityJJ $
=JJ% &

VisibilityJJ' 1
.JJ1 2
HiddenJJ2 8
;JJ8 9+
ConnectedFriendsForInviteBorderKK +
.KK+ ,

VisibilityKK, 6
=KK7 8

VisibilityKK9 C
.KKC D
VisibleKKD K
;KKK L4
(ShowConnectedFriendsListForInviteToLobbyMM 4
(MM4 5
)MM5 6
;MM6 7
}NN 	
privateTT 
voidTT )
CancelFriendshipButtonOnClickTT 2
(TT2 3
objectTT3 9
senderTT: @
,TT@ A
RoutedEventArgsTTB Q
eTTR S
)TTS T
{UU 	
ifVV 
(VV 
senderVV 
isVV 
ButtonVV  
buttonVV! '
)VV' (
{WW 
ifXX 
(XX 
newXX 
AlertPopUpGeneratorXX +
(XX+ ,
)XX, -
.XX- ..
"OpenInternationalizedDesicionPopUpXX. P
(XXP Q
$strXXQ `
,XX` a
$str	XXb ì
)
XXì î
)
XXî ï
{YY 8
,ServiceProfileForNonCallbackMethodsReferenceZZ @
.ZZ@ A
PlayersZZA H
playersZZI P
=ZZQ R
newZZS V9
,ServiceProfileForNonCallbackMethodsReference	ZZW É
.
ZZÉ Ñ
Players
ZZÑ ã
{[[ 
IDPlayer\\  
=\\! "

MainWindow\\# -
.\\- .
loggedProfile\\. ;
.\\; <
Player\\< B
.\\B C
IDPlayer\\C K
,\\K L
Names]] 
=]] 

MainWindow]]  *
.]]* +
loggedProfile]]+ 8
.]]8 9
Player]]9 ?
.]]? @
Names]]@ E
,]]E F
Surnames^^  
=^^! "

MainWindow^^# -
.^^- .
loggedProfile^^. ;
.^^; <
Player^^< B
.^^B C
Surnames^^C K
,^^K L
Email__ 
=__ 

MainWindow__  *
.__* +
loggedProfile__+ 8
.__8 9
Player__9 ?
.__? @
Email__@ E
,__E F
NickName``  
=``! "

MainWindow``# -
.``- .
loggedProfile``. ;
.``; <
Player``< B
.``B C
NickName``C K
,``K L
	BirthDateaa !
=aa" #
(aa$ %
DateTimeaa% -
)aa- .

MainWindowaa. 8
.aa8 9
loggedProfileaa9 F
.aaF G
PlayeraaG M
.aaM N
	BirthDateaaN W
,aaW X
Passwordbb  
=bb! "

MainWindowbb# -
.bb- .
loggedProfilebb. ;
.bb; <
Playerbb< B
.bbB C
PasswordbbC K
}cc 
;cc 8
,ServiceProfileForNonCallbackMethodsReferenceee @
.ee@ A
ProfileseeA I
profileseeJ R
=eeS T
neweeU X9
,ServiceProfileForNonCallbackMethodsReference	eeY Ö
.
eeÖ Ü
Profiles
eeÜ é
{ff 
	IDProfilegg !
=gg" #

MainWindowgg$ .
.gg. /
loggedProfilegg/ <
.gg< =
	IDProfilegg= F
,ggF G
Coinshh 
=hh 

MainWindowhh  *
.hh* +
loggedProfilehh+ 8
.hh8 9
Coinshh9 >
,hh> ?
LoginStatusii #
=ii$ %

MainWindowii& 0
.ii0 1
loggedProfileii1 >
.ii> ?
LoginStatusii? J
,iiJ K
Playersjj 
=jj  !
playersjj" )
}kk 
;kk +
ProfileNonCallbackMethodsClientmm 3+
profileNonCallbackMethodsClientmm4 S
=mmT U
newmmV Y+
ProfileNonCallbackMethodsClientmmZ y
(mmy z
)mmz {
;mm{ |

StackPanelnn 
parentnn %
=nn& '
VisualTreeHelpernn( 8
.nn8 9
	GetParentnn9 B
(nnB C
buttonnnC I
)nnI J
asnnK M

StackPanelnnN X
;nnX Y
	TextBlockoo 
IDTextBlockoo )
=oo* +
(oo, -
	TextBlockoo- 6
)oo6 7
VisualTreeHelperoo7 G
.ooG H
GetChildooH P
(ooP Q
parentooQ W
,ooW X
$numooY Z
)ooZ [
;oo[ \
Profilepp 
profile1pp $
=pp% &+
profileNonCallbackMethodsClientpp' F
.ppF G 
GetProfileByPlayerIDppG [
(pp[ \
longpp\ `
.pp` a
Parseppa f
(ppf g
IDTextBlockppg r
.ppr s
Textpps w
)ppw x
)ppx y
;ppy z8
,ServiceProfileForNonCallbackMethodsReferencerr @
.rr@ A
PlayersrrA H
players1rrI Q
=rrR S
newrrT W9
,ServiceProfileForNonCallbackMethodsReference	rrX Ñ
.
rrÑ Ö
Players
rrÖ å
{ss 
IDPlayertt  
=tt! "
profile1tt# +
.tt+ ,
Playertt, 2
.tt2 3
IDPlayertt3 ;
,tt; <
Namesuu 
=uu 
profile1uu  (
.uu( )
Playeruu) /
.uu/ 0
Namesuu0 5
,uu5 6
Surnamesvv  
=vv! "
profile1vv# +
.vv+ ,
Playervv, 2
.vv2 3
Surnamesvv3 ;
,vv; <
Emailww 
=ww 
profile1ww  (
.ww( )
Playerww) /
.ww/ 0
Emailww0 5
,ww5 6
NickNamexx  
=xx! "
profile1xx# +
.xx+ ,
Playerxx, 2
.xx2 3
NickNamexx3 ;
,xx; <
	BirthDateyy !
=yy" #
(yy$ %
DateTimeyy% -
)yy- .
profile1yy. 6
.yy6 7
Playeryy7 =
.yy= >
	BirthDateyy> G
,yyG H
Passwordzz  
=zz! "
profile1zz# +
.zz+ ,
Playerzz, 2
.zz2 3
Passwordzz3 ;
}{{ 
;{{ 8
,ServiceProfileForNonCallbackMethodsReference}} @
.}}@ A
Profiles}}A I
	profiles1}}J S
=}}T U
new}}V Y9
,ServiceProfileForNonCallbackMethodsReference	}}Z Ü
.
}}Ü á
Profiles
}}á è
{~~ 
	IDProfile !
=" #
profile1$ ,
., -
	IDProfile- 6
,6 7
Coins
ÄÄ 
=
ÄÄ 
profile1
ÄÄ  (
.
ÄÄ( )
Coins
ÄÄ) .
,
ÄÄ. /
LoginStatus
ÅÅ #
=
ÅÅ$ %
profile1
ÅÅ& .
.
ÅÅ. /
LoginStatus
ÅÅ/ :
,
ÅÅ: ;
Players
ÇÇ 
=
ÇÇ  !
players1
ÇÇ" *
}
ÉÉ 
;
ÉÉ -
profileNonCallbackMethodsClient
ÖÖ 3
.
ÖÖ3 4
CancelFriendship
ÖÖ4 D
(
ÖÖD E
profiles
ÜÜ  
,
ÜÜ  !
	profiles1
áá !
)
àà 
;
àà 
new
ää !
AlertPopUpGenerator
ää +
(
ää+ ,
)
ää, -
.
ää- ./
!OpenInternationalizedSuccessPopUp
ää. O
(
ääO P
$str
ääP \
,
ää\ ]
$strää^ â
)ääâ ä
;äää ã-
profileNonCallbackMethodsClient
åå 3
.
åå3 4
Close
åå4 9
(
åå9 :
)
åå: ;
;
åå; <
}
çç 
}
éé 
}
èè 	
private
ëë 
void
ëë 
ExitButtonOnClick
ëë &
(
ëë& '
object
ëë' -
sender
ëë. 4
,
ëë4 5
RoutedEventArgs
ëë6 E
e
ëëF G
)
ëëG H
{
íí 	0
"friendRequestCallbackMethodsClient
ìì .
.
ìì. /

Disconnect
ìì/ 9
(
ìì9 :

MainWindow
ìì: D
.
ììD E
loggedProfile
ììE R
.
ììR S
Player
ììS Y
.
ììY Z
NickName
ììZ b
)
ììb c
;
ììc d
NavigationService
ïï 
navigationService
ïï /
=
ïï0 1
NavigationService
ïï2 C
.
ïïC D"
GetNavigationService
ïïD X
(
ïïX Y
this
ïïY ]
)
ïï] ^
;
ïï^ _
navigationService
ññ 
.
ññ 
Navigate
ññ &
(
ññ& '
new
ññ' *
MenuView
ññ+ 3
(
ññ3 4

mainWindow
ññ4 >
)
ññ> ?
)
ññ? @
;
ññ@ A
}
óó 	
private
ôô 
void
ôô '
InviteFriendButtonOnClick
ôô .
(
ôô. /
object
ôô/ 5
sender
ôô6 <
,
ôô< =
RoutedEventArgs
ôô> M
e
ôôN O
)
ôôO P
{
öö 	
FriendsBorder
õõ 
.
õõ 

Visibility
õõ $
=
õõ% &

Visibility
õõ' 1
.
õõ1 2
Hidden
õõ2 8
;
õõ8 9%
SendFriendRequestBorder
úú #
.
úú# $

Visibility
úú$ .
=
úú/ 0

Visibility
úú1 ;
.
úú; <
Visible
úú< C
;
úúC D
}
ùù 	
private
üü 
void
üü ,
SeeFriendsRequestButtonOnClick
üü 3
(
üü3 4
object
üü4 :
sender
üü; A
,
üüA B
RoutedEventArgs
üüC R
e
üüS T
)
üüT U
{
†† 	+
ShowUpdatedFriendRequestsList
°° )
(
°°) *
)
°°* +
;
°°+ ,
FriendsBorder
¢¢ 
.
¢¢ 

Visibility
¢¢ $
=
¢¢% &

Visibility
¢¢' 1
.
¢¢1 2
Hidden
¢¢2 8
;
¢¢8 9#
FriendsRequestsBorder
££ !
.
££! "

Visibility
££" ,
=
££- .

Visibility
££/ 9
.
££9 :
Visible
££: A
;
££A B
}
§§ 	
public
¶¶ 
void
¶¶ $
ShowUpdatedFriendsList
¶¶ *
(
¶¶* +
)
¶¶+ ,
{
ßß 	%
OnlineFriendsStackPanel
®® #
.
®®# $
Children
®®$ ,
.
®®, -
Clear
®®- 2
(
®®2 3
)
®®3 4
;
®®4 5&
OfflineFriendsStackPanel
©© $
.
©©$ %
Children
©©% -
.
©©- .
Clear
©©. 3
(
©©3 4
)
©©4 5
;
©©5 6-
ProfileNonCallbackMethodsClient
´´ +-
profileNonCallbackMethodsClient
´´, K
=
´´L M
new
´´N Q-
ProfileNonCallbackMethodsClient
´´R q
(
´´q r
)
´´r s
;
´´s t
foreach
¨¨ 
(
¨¨ 
Profile
¨¨ 
profile
¨¨ $
in
¨¨% '-
profileNonCallbackMethodsClient
¨¨( G
.
¨¨G H

GetFriends
¨¨H R
(
¨¨R S

MainWindow
¨¨S ]
.
¨¨] ^
loggedProfile
¨¨^ k
.
¨¨k l
Player
¨¨l r
.
¨¨r s
IDPlayer
¨¨s {
)
¨¨{ |
)
¨¨| }
{
≠≠ 
Border
ÆÆ 
friendBorder
ÆÆ #
=
ÆÆ$ %
new
ÆÆ& )
Border
ÆÆ* 0
{
ØØ 
Height
∞∞ 
=
∞∞ 
$num
∞∞ 
,
∞∞  
Margin
±± 
=
±± 
new
±±  
	Thickness
±±! *
(
±±* +
$num
±±+ -
,
±±- .
$num
±±/ 1
,
±±1 2
$num
±±3 5
,
±±5 6
$num
±±7 8
)
±±8 9
,
±±9 :
CornerRadius
≤≤  
=
≤≤! "
new
≤≤# &
CornerRadius
≤≤' 3
(
≤≤3 4
$num
≤≤4 6
)
≤≤6 7
,
≤≤7 8

Background
≥≥ 
=
≥≥  
new
≥≥! $
SolidColorBrush
≥≥% 4
(
≥≥4 5
Colors
≥≥5 ;
.
≥≥; <
Black
≥≥< A
)
≥≥A B
}
¥¥ 
;
¥¥ 

StackPanel
∂∂ &
textAndButtonsStackPanel
∂∂ 3
=
∂∂4 5
new
∂∂6 9

StackPanel
∂∂: D
{
∑∑ 
Orientation
∏∏ 
=
∏∏  !
Orientation
∏∏" -
.
∏∏- .

Horizontal
∏∏. 8
}
ππ 
;
ππ 
	TextBlock
ªª 
idTextBlock
ªª %
=
ªª& '
new
ªª( +
	TextBlock
ªª, 5
{
ºº 

Visibility
ΩΩ 
=
ΩΩ  

Visibility
ΩΩ! +
.
ΩΩ+ ,
	Collapsed
ΩΩ, 5
,
ΩΩ5 6
Text
ææ 
=
ææ 
profile
ææ "
.
ææ" #
	IDProfile
ææ# ,
.
ææ, -
ToString
ææ- 5
(
ææ5 6
)
ææ6 7
}
øø 
;
øø 
Image
¡¡  
friendProfileImage
¡¡ (
=
¡¡) *
new
¡¡+ .
Image
¡¡/ 4
{
¬¬ 
Width
√√ 
=
√√ 
$num
√√ 
,
√√ 
Height
ƒƒ 
=
ƒƒ 
$num
ƒƒ 
,
ƒƒ  
Margin
≈≈ 
=
≈≈ 
new
≈≈  
	Thickness
≈≈! *
(
≈≈* +
$num
≈≈+ -
,
≈≈- .
$num
≈≈/ 0
,
≈≈0 1
$num
≈≈2 3
,
≈≈3 4
$num
≈≈5 6
)
≈≈6 7
,
≈≈7 8
Source
∆∆ 
=
∆∆ 
new
∆∆  
ImageLoader
∆∆! ,
(
∆∆, -
)
∆∆- .
.
∆∆. /&
GetImageByPlayerNickname
∆∆/ G
(
∆∆G H
profile
∆∆H O
.
∆∆O P
Player
∆∆P V
.
∆∆V W
NickName
∆∆W _
)
∆∆_ `
}
«« 
;
«« 
	TextBlock
…… 
nicknameTextBlock
…… +
=
……, -
new
……. 1
	TextBlock
……2 ;
{
   

Foreground
ÀÀ 
=
ÀÀ  
new
ÀÀ! $
SolidColorBrush
ÀÀ% 4
(
ÀÀ4 5
Colors
ÀÀ5 ;
.
ÀÀ; <
White
ÀÀ< A
)
ÀÀA B
,
ÀÀB C
Margin
ÃÃ 
=
ÃÃ 
new
ÃÃ  
	Thickness
ÃÃ! *
(
ÃÃ* +
$num
ÃÃ+ -
,
ÃÃ- .
$num
ÃÃ/ 0
,
ÃÃ0 1
$num
ÃÃ2 3
,
ÃÃ3 4
$num
ÃÃ5 6
)
ÃÃ6 7
,
ÃÃ7 8
Width
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
,
ÕÕ  
TextWrapping
ŒŒ  
=
ŒŒ! "
TextWrapping
ŒŒ# /
.
ŒŒ/ 0
Wrap
ŒŒ0 4
,
ŒŒ4 5
FontSize
œœ 
=
œœ 
$num
œœ !
,
œœ! "
VerticalAlignment
–– %
=
––& '
VerticalAlignment
––( 9
.
––9 :
Center
––: @
,
––@ A
Text
—— 
=
—— 
profile
—— "
.
——" #
Player
——# )
.
——) *
NickName
——* 2
}
““ 
;
““ 
Button
‘‘ $
cancelFriendshipButton
‘‘ -
=
‘‘. /
new
‘‘0 3
Button
‘‘4 :
{
’’ 
Style
÷÷ 
=
÷÷ 
(
÷÷ 
Style
÷÷ "
)
÷÷" #
FindResource
÷÷# /
(
÷÷/ 0
$str
÷÷0 ;
)
÷÷; <
,
÷÷< =
Height
◊◊ 
=
◊◊ 
$num
◊◊ 
,
◊◊  
Width
ÿÿ 
=
ÿÿ 
$num
ÿÿ 
,
ÿÿ  !
HorizontalAlignment
ŸŸ '
=
ŸŸ( )!
HorizontalAlignment
ŸŸ* =
.
ŸŸ= >
Right
ŸŸ> C
,
ŸŸC D
Content
⁄⁄ 
=
⁄⁄ 
resourceManager
⁄⁄ -
.
⁄⁄- .
	GetString
⁄⁄. 7
(
⁄⁄7 8
$str
⁄⁄8 K
,
⁄⁄K L
cultureInfo
⁄⁄M X
)
⁄⁄X Y
,
⁄⁄Y Z
FontSize
€€ 
=
€€ 
$num
€€ !
,
€€! "
}
‹‹ 
;
‹‹ $
cancelFriendshipButton
ﬁﬁ &
.
ﬁﬁ& '
Click
ﬁﬁ' ,
+=
ﬁﬁ- /+
CancelFriendshipButtonOnClick
ﬁﬁ0 M
;
ﬁﬁM N&
textAndButtonsStackPanel
‡‡ (
.
‡‡( )
Children
‡‡) 1
.
‡‡1 2
Add
‡‡2 5
(
‡‡5 6
idTextBlock
‡‡6 A
)
‡‡A B
;
‡‡B C&
textAndButtonsStackPanel
·· (
.
··( )
Children
··) 1
.
··1 2
Add
··2 5
(
··5 6 
friendProfileImage
··6 H
)
··H I
;
··I J&
textAndButtonsStackPanel
‚‚ (
.
‚‚( )
Children
‚‚) 1
.
‚‚1 2
Add
‚‚2 5
(
‚‚5 6
nicknameTextBlock
‚‚6 G
)
‚‚G H
;
‚‚H I&
textAndButtonsStackPanel
„„ (
.
„„( )
Children
„„) 1
.
„„1 2
Add
„„2 5
(
„„5 6$
cancelFriendshipButton
„„6 L
)
„„L M
;
„„M N
friendBorder
ÂÂ 
.
ÂÂ 
Child
ÂÂ "
=
ÂÂ# $&
textAndButtonsStackPanel
ÂÂ% =
;
ÂÂ= >
if
ÁÁ 
(
ÁÁ 
profile
ÁÁ 
.
ÁÁ 
LoginStatus
ÁÁ '
==
ÁÁ( *
Enum
ÁÁ+ /
.
ÁÁ/ 0
GetName
ÁÁ0 7
(
ÁÁ7 8
typeof
ÁÁ8 >
(
ÁÁ> ?"
ProfileLoginStatuses
ÁÁ? S
)
ÁÁS T
,
ÁÁT U"
ProfileLoginStatuses
ÁÁV j
.
ÁÁj k
Logged
ÁÁk q
)
ÁÁq r
)
ÁÁr s
{
ËË %
OnlineFriendsStackPanel
ÈÈ +
.
ÈÈ+ ,
Children
ÈÈ, 4
.
ÈÈ4 5
Add
ÈÈ5 8
(
ÈÈ8 9
friendBorder
ÈÈ9 E
)
ÈÈE F
;
ÈÈF G
}
ÍÍ 
if
ÏÏ 
(
ÏÏ 
profile
ÏÏ 
.
ÏÏ 
LoginStatus
ÏÏ '
==
ÏÏ( *
Enum
ÏÏ+ /
.
ÏÏ/ 0
GetName
ÏÏ0 7
(
ÏÏ7 8
typeof
ÏÏ8 >
(
ÏÏ> ?"
ProfileLoginStatuses
ÏÏ? S
)
ÏÏS T
,
ÏÏT U"
ProfileLoginStatuses
ÏÏV j
.
ÏÏj k
	NotLogged
ÏÏk t
)
ÏÏt u
)
ÏÏu v
{
ÌÌ &
OfflineFriendsStackPanel
ÓÓ ,
.
ÓÓ, -
Children
ÓÓ- 5
.
ÓÓ5 6
Add
ÓÓ6 9
(
ÓÓ9 :
friendBorder
ÓÓ: F
)
ÓÓF G
;
ÓÓG H
}
ÔÔ 
}
ÒÒ -
profileNonCallbackMethodsClient
ÛÛ +
.
ÛÛ+ ,
Close
ÛÛ, 1
(
ÛÛ1 2
)
ÛÛ2 3
;
ÛÛ3 4
}
ÙÙ 	
private
˙˙ 
void
˙˙ !
CancelButtonOnClick
˙˙ (
(
˙˙( )
object
˙˙) /
sender
˙˙0 6
,
˙˙6 7
RoutedEventArgs
˙˙8 G
e
˙˙H I
)
˙˙I J
{
˚˚ 	$
ShowUpdatedFriendsList
¸¸ "
(
¸¸" #
)
¸¸# $
;
¸¸$ %%
SendFriendRequestBorder
˝˝ #
.
˝˝# $

Visibility
˝˝$ .
=
˝˝/ 0

Visibility
˝˝1 ;
.
˝˝; <
Hidden
˝˝< B
;
˝˝B C
FriendsBorder
˛˛ 
.
˛˛ 

Visibility
˛˛ $
=
˛˛% &

Visibility
˛˛' 1
.
˛˛1 2
Visible
˛˛2 9
;
˛˛9 :
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ ,
SendFriendRequestButtonOnClick
ÅÅ 3
(
ÅÅ3 4
object
ÅÅ4 :
sender
ÅÅ; A
,
ÅÅA B
RoutedEventArgs
ÅÅC R
e
ÅÅS T
)
ÅÅT U
{
ÇÇ 	
if
ÉÉ 
(
ÉÉ G
9InvalidNicknameInSendFriendRequestTextFieldsTextGenerator
ÉÉ I
(
ÉÉI J
)
ÉÉJ K
==
ÉÉL N
$str
ÉÉO Q
)
ÉÉQ R
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
new
ÖÖ 
	TextRange
ÖÖ !
(
ÖÖ! " 
MessageRichTextBox
ÖÖ" 4
.
ÖÖ4 5
Document
ÖÖ5 =
.
ÖÖ= >
ContentStart
ÖÖ> J
,
ÖÖJ K 
MessageRichTextBox
ÖÖL ^
.
ÖÖ^ _
Document
ÖÖ_ g
.
ÖÖg h

ContentEnd
ÖÖh r
)
ÖÖr s
.
ÖÖs t
Text
ÖÖt x
.
ÖÖx y
Length
ÖÖy 
<=ÖÖÄ Ç
$numÖÖÉ Ü
)ÖÖÜ á
{
ÜÜ -
ProfileNonCallbackMethodsClient
áá 3-
profileNonCallbackMethodsClient
áá4 S
=
ááT U
new
ááV Y-
ProfileNonCallbackMethodsClient
ááZ y
(
ááy z
)
ááz {
;
áá{ |
if
ââ 
(
ââ -
profileNonCallbackMethodsClient
ââ 7
.
ââ7 8(
GetProfileByPlayerNickname
ââ8 R
(
ââR S
NicknameTextBox
ââS b
.
ââb c
Text
ââc g
)
ââg h
!=
ââi k
null
ââl p
)
ââp q
{
ää 
if
ãã 
(
ãã 
NicknameTextBox
ãã +
.
ãã+ ,
Text
ãã, 0
!=
ãã1 3

MainWindow
ãã4 >
.
ãã> ?
loggedProfile
ãã? L
.
ããL M
Player
ããM S
.
ããS T
NickName
ããT \
)
ãã\ ]
{
åå 3
%FriendRequestNonCallbackMethodsClient
çç A3
%friendRequestNonCallbackMethodsClient
ççB g
=
ççh i
new
ççj m4
%FriendRequestNonCallbackMethodsClientççn ì
(ççì î
)ççî ï
;ççï ñ
if
èè 
(
èè  
!
èè  !3
%friendRequestNonCallbackMethodsClient
èè! F
.
èèF GU
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfileèèG ç
(èèç é

MainWindow
êê  *
.
êê* +
loggedProfile
êê+ 8
.
êê8 9
	IDProfile
êê9 B
,
êêB C-
profileNonCallbackMethodsClient
ëë  ?
.
ëë? @(
GetProfileByPlayerNickname
ëë@ Z
(
ëëZ [
NicknameTextBox
ëë[ j
.
ëëj k
Text
ëëk o
)
ëëo p
.
ëëp q
	IDProfile
ëëq z
)
íí  !
)
íí! "
{
ìì 
bool
îî  $J
<theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow
îî% a
=
îîb c
false
îîd i
;
îîi j
foreach
ïï  '
(
ïï( )
Profile
ïï) 0
p
ïï1 2
in
ïï3 5-
profileNonCallbackMethodsClient
ïï6 U
.
ïïU V

GetFriends
ïïV `
(
ïï` a

MainWindow
ïïa k
.
ïïk l
loggedProfile
ïïl y
.
ïïy z
	IDProfileïïz É
)ïïÉ Ñ
)ïïÑ Ö
{
ññ  !
if
óó$ &
(
óó' (-
profileNonCallbackMethodsClient
óó( G
.
óóG H(
GetProfileByPlayerNickname
óóH b
(
óób c
NicknameTextBox
óóc r
.
óór s
Text
óós w
)
óów x
.
óóx y
Player
óóy 
.óó Ä
NickNameóóÄ à
==óóâ ã
póóå ç
.óóç é
Playeróóé î
.óóî ï
NickNameóóï ù
)óóù û
{
òò$ %J
<theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow
ôô( d
=
ôôe f
true
ôôg k
;
ôôk l
break
öö( -
;
öö- .
}
õõ$ %
}
úú  !
if
ûû  "
(
ûû# $
!
ûû$ %J
<theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow
ûû% a
)
ûûa b
{
üü  !
if
††$ &
(
††' (
!
††( )3
%friendRequestNonCallbackMethodsClient
††) N
.
††N O[
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile††O õ
(††õ ú

MainWindow
°°( 2
.
°°2 3
loggedProfile
°°3 @
.
°°@ A
	IDProfile
°°A J
,
°°J K-
profileNonCallbackMethodsClient
¢¢( G
.
¢¢G H(
GetProfileByPlayerNickname
¢¢H b
(
¢¢b c
NicknameTextBox
¢¢c r
.
¢¢r s
Text
¢¢s w
)
¢¢w x
.
¢¢x y
	IDProfile¢¢y Ç
)
££( )
)
££) *
{
§§$ %@
2ServiceFriendRequestForNonCallbackMethodsReference
••( Z
.
••Z [
FriendRequests
••[ i
friendRequests
••j x
=
••y z
new
••{ ~A
2ServiceFriendRequestForNonCallbackMethodsReference•• ±
.••± ≤
FriendRequests••≤ ¿
{
¶¶( )
Message
ßß, 3
=
ßß4 5
new
ßß6 9
	TextRange
ßß: C
(
ßßC D 
MessageRichTextBox
ßßD V
.
ßßV W
Document
ßßW _
.
ßß_ `
ContentStart
ßß` l
,
ßßl m!
MessageRichTextBoxßßn Ä
.ßßÄ Å
DocumentßßÅ â
.ßßâ ä

ContentEndßßä î
)ßßî ï
.ßßï ñ
Textßßñ ö
,ßßö õ
CreationDate
®®, 8
=
®®9 :
DateTime
®®; C
.
®®C D
Now
®®D G
,
®®G H
AceptationStatus
©©, <
=
©©= >
Enum
©©? C
.
©©C D
GetName
©©D K
(
©©K L
typeof
©©L R
(
©©R S-
FriendRequestAceptationStatuses
©©S r
)
©©r s
,
©©s t.
FriendRequestAceptationStatuses©©u î
.©©î ï
Pendient©©ï ù
)©©ù û
,©©û ü
SendingStatus
™™, 9
=
™™: ;
Enum
™™< @
.
™™@ A
GetName
™™A H
(
™™H I
typeof
™™I O
(
™™O P*
FriendRequestSendingStatuses
™™P l
)
™™l m
,
™™m n+
FriendRequestSendingStatuses™™o ã
.™™ã å
Sent™™å ê
)™™ê ë
}
´´( )
;
´´) *@
2ServiceFriendRequestForNonCallbackMethodsReference
≠≠( Z
.
≠≠Z [
Players
≠≠[ b
players
≠≠c j
=
≠≠k l
new
≠≠m pA
2ServiceFriendRequestForNonCallbackMethodsReference≠≠q £
.≠≠£ §
Players≠≠§ ´
{
ÆÆ( )
IDPlayer
ØØ, 4
=
ØØ5 6

MainWindow
ØØ7 A
.
ØØA B
loggedProfile
ØØB O
.
ØØO P
Player
ØØP V
.
ØØV W
IDPlayer
ØØW _
,
ØØ_ `
Names
∞∞, 1
=
∞∞2 3

MainWindow
∞∞4 >
.
∞∞> ?
loggedProfile
∞∞? L
.
∞∞L M
Player
∞∞M S
.
∞∞S T
Names
∞∞T Y
,
∞∞Y Z
Surnames
±±, 4
=
±±5 6

MainWindow
±±7 A
.
±±A B
loggedProfile
±±B O
.
±±O P
Player
±±P V
.
±±V W
Surnames
±±W _
,
±±_ `
Email
≤≤, 1
=
≤≤2 3

MainWindow
≤≤4 >
.
≤≤> ?
loggedProfile
≤≤? L
.
≤≤L M
Player
≤≤M S
.
≤≤S T
Email
≤≤T Y
,
≤≤Y Z
NickName
≥≥, 4
=
≥≥5 6

MainWindow
≥≥7 A
.
≥≥A B
loggedProfile
≥≥B O
.
≥≥O P
Player
≥≥P V
.
≥≥V W
NickName
≥≥W _
,
≥≥_ `
	BirthDate
¥¥, 5
=
¥¥6 7
(
¥¥8 9
DateTime
¥¥9 A
)
¥¥A B

MainWindow
¥¥B L
.
¥¥L M
loggedProfile
¥¥M Z
.
¥¥Z [
Player
¥¥[ a
.
¥¥a b
	BirthDate
¥¥b k
,
¥¥k l
Password
µµ, 4
=
µµ5 6

MainWindow
µµ7 A
.
µµA B
loggedProfile
µµB O
.
µµO P
Player
µµP V
.
µµV W
Password
µµW _
}
∂∂( )
;
∂∂) *@
2ServiceFriendRequestForNonCallbackMethodsReference
∏∏( Z
.
∏∏Z [
Profiles
∏∏[ c
profiles
∏∏d l
=
∏∏m n
new
∏∏o rA
2ServiceFriendRequestForNonCallbackMethodsReference∏∏s •
.∏∏• ¶
Profiles∏∏¶ Æ
{
ππ( )
	IDProfile
∫∫, 5
=
∫∫6 7

MainWindow
∫∫8 B
.
∫∫B C
loggedProfile
∫∫C P
.
∫∫P Q
	IDProfile
∫∫Q Z
,
∫∫Z [
Coins
ªª, 1
=
ªª2 3

MainWindow
ªª4 >
.
ªª> ?
loggedProfile
ªª? L
.
ªªL M
Coins
ªªM R
,
ªªR S
LoginStatus
ºº, 7
=
ºº8 9

MainWindow
ºº: D
.
ººD E
loggedProfile
ººE R
.
ººR S
LoginStatus
ººS ^
,
ºº^ _
Players
ΩΩ, 3
=
ΩΩ4 5
players
ΩΩ6 =
}
ææ( )
;
ææ) *
Profile
¿¿( /
profile1
¿¿0 8
=
¿¿9 :-
profileNonCallbackMethodsClient
¿¿; Z
.
¿¿Z [(
GetProfileByPlayerNickname
¿¿[ u
(
¿¿u v
NicknameTextBox¿¿v Ö
.¿¿Ö Ü
Text¿¿Ü ä
)¿¿ä ã
;¿¿ã å@
2ServiceFriendRequestForNonCallbackMethodsReference
¬¬( Z
.
¬¬Z [
Players
¬¬[ b
players1
¬¬c k
=
¬¬l m
new
¬¬n qA
2ServiceFriendRequestForNonCallbackMethodsReference¬¬r §
.¬¬§ •
Players¬¬• ¨
{
√√( )
IDPlayer
ƒƒ, 4
=
ƒƒ5 6
profile1
ƒƒ7 ?
.
ƒƒ? @
Player
ƒƒ@ F
.
ƒƒF G
IDPlayer
ƒƒG O
,
ƒƒO P
Names
≈≈, 1
=
≈≈2 3
profile1
≈≈4 <
.
≈≈< =
Player
≈≈= C
.
≈≈C D
Names
≈≈D I
,
≈≈I J
Surnames
∆∆, 4
=
∆∆5 6
profile1
∆∆7 ?
.
∆∆? @
Player
∆∆@ F
.
∆∆F G
Surnames
∆∆G O
,
∆∆O P
Email
««, 1
=
««2 3
profile1
««4 <
.
««< =
Player
««= C
.
««C D
Email
««D I
,
««I J
NickName
»», 4
=
»»5 6
profile1
»»7 ?
.
»»? @
Player
»»@ F
.
»»F G
NickName
»»G O
,
»»O P
	BirthDate
……, 5
=
……6 7
(
……8 9
DateTime
……9 A
)
……A B
profile1
……B J
.
……J K
Player
……K Q
.
……Q R
	BirthDate
……R [
,
……[ \
Password
  , 4
=
  5 6
profile1
  7 ?
.
  ? @
Player
  @ F
.
  F G
Password
  G O
}
ÀÀ( )
;
ÀÀ) *@
2ServiceFriendRequestForNonCallbackMethodsReference
ÕÕ( Z
.
ÕÕZ [
Profiles
ÕÕ[ c
	profiles1
ÕÕd m
=
ÕÕn o
new
ÕÕp sA
2ServiceFriendRequestForNonCallbackMethodsReferenceÕÕt ¶
.ÕÕ¶ ß
ProfilesÕÕß Ø
{
ŒŒ( )
	IDProfile
œœ, 5
=
œœ6 7
profile1
œœ8 @
.
œœ@ A
	IDProfile
œœA J
,
œœJ K
Coins
––, 1
=
––2 3
profile1
––4 <
.
––< =
Coins
––= B
,
––B C
LoginStatus
——, 7
=
——8 9
profile1
——: B
.
——B C
LoginStatus
——C N
,
——N O
Players
““, 3
=
““4 5
players1
““6 >
}
””( )
;
””) *
friendRequests
’’( 6
.
’’6 7
Profiles
’’7 ?
=
’’@ A
profiles
’’B J
;
’’J K
friendRequests
÷÷( 6
.
÷÷6 7
	Profiles1
÷÷7 @
=
÷÷A B
	profiles1
÷÷C L
;
÷÷L M3
%friendRequestNonCallbackMethodsClient
ÿÿ( M
.
ÿÿM N
AddFriendRequest
ÿÿN ^
(
ÿÿ^ _
friendRequests
ÿÿ_ m
)
ÿÿm n
;
ÿÿn o
new
⁄⁄( +!
AlertPopUpGenerator
⁄⁄, ?
(
⁄⁄? @
)
⁄⁄@ A
.
⁄⁄A B/
!OpenInternationalizedSuccessPopUp
⁄⁄B c
(
⁄⁄c d
$str
⁄⁄d p
,
⁄⁄p q
$str⁄⁄r ì
)⁄⁄ì î
;⁄⁄î ï$
ShowUpdatedFriendsList
‹‹( >
(
‹‹> ?
)
‹‹? @
;
‹‹@ A%
SendFriendRequestBorder
››( ?
.
››? @

Visibility
››@ J
=
››K L

Visibility
››M W
.
››W X
Hidden
››X ^
;
››^ _
FriendsBorder
ﬁﬁ( 5
.
ﬁﬁ5 6

Visibility
ﬁﬁ6 @
=
ﬁﬁA B

Visibility
ﬁﬁC M
.
ﬁﬁM N
Visible
ﬁﬁN U
;
ﬁﬁU V
}
‡‡$ %
else
··$ (
{
‚‚$ %
new
„„( +!
AlertPopUpGenerator
„„, ?
(
„„? @
)
„„@ A
.
„„A B-
OpenInternationalizedErrorPopUp
„„B a
(
„„a b
$str
„„b n
,
„„n o
$str„„p √
)„„√ ƒ
;„„ƒ ≈
}
‰‰$ %
}
ÂÂ  !
else
ÊÊ  $
{
ÁÁ  !
new
ËË$ '!
AlertPopUpGenerator
ËË( ;
(
ËË; <
)
ËË< =
.
ËË= >-
OpenInternationalizedErrorPopUp
ËË> ]
(
ËË] ^
$str
ËË^ j
,
ËËj k
$strËËl ∫
)ËË∫ ª
;ËËª º
}
ÈÈ  !
}
ÍÍ 
else
ÎÎ  
{
ÏÏ 
new
ÌÌ  #!
AlertPopUpGenerator
ÌÌ$ 7
(
ÌÌ7 8
)
ÌÌ8 9
.
ÌÌ9 :-
OpenInternationalizedErrorPopUp
ÌÌ: Y
(
ÌÌY Z
$str
ÌÌZ f
,
ÌÌf g
$strÌÌh ú
)ÌÌú ù
;ÌÌù û
}
ÓÓ 3
%friendRequestNonCallbackMethodsClient
ÔÔ A
.
ÔÔA B
Close
ÔÔB G
(
ÔÔG H
)
ÔÔH I
;
ÔÔI J
}
ÒÒ 
else
ÚÚ 
{
ÛÛ 
new
ÙÙ !
AlertPopUpGenerator
ÙÙ  3
(
ÙÙ3 4
)
ÙÙ4 5
.
ÙÙ5 6-
OpenInternationalizedErrorPopUp
ÙÙ6 U
(
ÙÙU V
$str
ÙÙV b
,
ÙÙb c
$strÙÙd ë
)ÙÙë í
;ÙÙí ì
}
ıı 
}
˜˜ 
else
¯¯ 
{
˘˘ 
new
˙˙ !
AlertPopUpGenerator
˙˙ /
(
˙˙/ 0
)
˙˙0 1
.
˙˙1 2-
OpenInternationalizedErrorPopUp
˙˙2 Q
(
˙˙Q R
$str
˙˙R ^
,
˙˙^ _
$str˙˙` õ
)˙˙õ ú
;˙˙ú ù
}
˚˚ -
profileNonCallbackMethodsClient
˝˝ 3
.
˝˝3 4
Close
˝˝4 9
(
˝˝9 :
)
˝˝: ;
;
˝˝; <
}
ˇˇ 
else
ÄÄ 
{
ÅÅ 
new
ÇÇ !
AlertPopUpGenerator
ÇÇ +
(
ÇÇ+ ,
)
ÇÇ, -
.
ÇÇ- .-
OpenInternationalizedErrorPopUp
ÇÇ. M
(
ÇÇM N
$str
ÇÇN Z
,
ÇÇZ [
$strÇÇ\ ë
)ÇÇë í
;ÇÇí ì
}
ÉÉ 
}
ÑÑ 
else
ÖÖ 
{
ÜÜ 
new
áá !
AlertPopUpGenerator
áá '
(
áá' (
)
áá( )
.
áá) *
OpenErrorPopUp
áá* 8
(
áá8 9
$str
áá9 E
,
ááE FH
9InvalidNicknameInSendFriendRequestTextFieldsTextGeneratorááG Ä
(ááÄ Å
)ááÅ Ç
)ááÇ É
;ááÉ Ñ
}
àà 
}
ää 	
private
êê 
void
êê 
BackButtonOnClick
êê &
(
êê& '
object
êê' -
sender
êê. 4
,
êê4 5
RoutedEventArgs
êê6 E
e
êêF G
)
êêG H
{
ëë 	$
ShowUpdatedFriendsList
íí "
(
íí" #
)
íí# $
;
íí$ %#
FriendsRequestsBorder
ìì !
.
ìì! "

Visibility
ìì" ,
=
ìì- .

Visibility
ìì/ 9
.
ìì9 :
Hidden
ìì: @
;
ìì@ A
FriendsBorder
îî 
.
îî 

Visibility
îî $
=
îî% &

Visibility
îî' 1
.
îî1 2
Visible
îî2 9
;
îî9 :
}
ïï 	
private
óó 
void
óó "
DetailsButtonOnClick
óó )
(
óó) *
object
óó* 0
sender
óó1 7
,
óó7 8
RoutedEventArgs
óó9 H
e
óóI J
)
óóJ K
{
òò 	#
FriendsRequestsBorder
ôô !
.
ôô! "

Visibility
ôô" ,
=
ôô- .

Visibility
ôô/ 9
.
ôô9 :
Hidden
ôô: @
;
ôô@ A(
FriendRequestDetailsBorder
öö &
.
öö& '

Visibility
öö' 1
=
öö2 3

Visibility
öö4 >
.
öö> ?
Visible
öö? F
;
ööF G
if
úú 
(
úú 
sender
úú 
is
úú 
Button
úú  
button
úú! '
)
úú' (
{
ùù 

StackPanel
ûû 
parent
ûû !
=
ûû" #
VisualTreeHelper
ûû$ 4
.
ûû4 5
	GetParent
ûû5 >
(
ûû> ?
button
ûû? E
)
ûûE F
as
ûûG I

StackPanel
ûûJ T
;
ûûT U
	TextBlock
†† 
IDTextBlock
†† %
=
††& '
(
††( )
	TextBlock
††) 2
)
††2 3
VisualTreeHelper
††3 C
.
††C D
GetChild
††D L
(
††L M
parent
††M S
,
††S T
$num
††U V
)
††V W
;
††W X3
%FriendRequestNonCallbackMethodsClient
¢¢ 53
%friendRequestNonCallbackMethodsClient
¢¢6 [
=
¢¢\ ]
new
¢¢^ a4
%FriendRequestNonCallbackMethodsClient¢¢b á
(¢¢á à
)¢¢à â
;¢¢â ä
FriendRequest
§§ 
friendRequest
§§ +
=
§§, -3
%friendRequestNonCallbackMethodsClient
§§. S
.
§§S T"
GetFriendRequestByID
§§T h
(
§§h i
long
§§i m
.
§§m n
Parse
§§n s
(
§§s t
IDTextBlock
§§t 
.§§ Ä
Text§§Ä Ñ
)§§Ñ Ö
)§§Ö Ü
;§§Ü á
NicknameLabel
¶¶ 
.
¶¶ 
Content
¶¶ %
=
¶¶& '
friendRequest
¶¶( 5
.
¶¶5 6
Profile
¶¶6 =
.
¶¶= >
Player
¶¶> D
.
¶¶D E
NickName
¶¶E M
;
¶¶M N
CreationDateLabel
ßß !
.
ßß! "
Content
ßß" )
=
ßß* +
friendRequest
ßß, 9
.
ßß9 :
CreationDate
ßß: F
;
ßßF G
MessageTextBlock
®®  
.
®®  !
Text
®®! %
=
®®& '
friendRequest
®®( 5
.
®®5 6
Message
®®6 =
;
®®= >"
IDFriendRequestLabel
©© $
.
©©$ %
Content
©©% ,
=
©©- .
friendRequest
©©/ <
.
©©< =
IDFriendRequest
©©= L
;
©©L M
bool
´´ (
theButtonsAreShowAndHidden
´´ /
=
´´0 1
false
´´2 7
;
´´7 8
foreach
¨¨ 
(
¨¨ 
var
¨¨ )
receivedFriendRequestBorder
¨¨ 8
in
¨¨9 ;/
!ReceivedFriendsRequestsStackPanel
¨¨< ]
.
¨¨] ^
Children
¨¨^ f
)
¨¨f g
{
≠≠ 
if
ÆÆ 
(
ÆÆ )
receivedFriendRequestBorder
ÆÆ 3
is
ÆÆ4 6
FrameworkElement
ÆÆ7 G
frameworkElement
ÆÆH X
)
ÆÆX Y
{
ØØ 
if
∞∞ 
(
∞∞ 
frameworkElement
∞∞ ,
is
∞∞- /
Border
∞∞0 6
border
∞∞7 =
)
∞∞= >
{
±± 

StackPanel
≤≤ &
borderStackPanel
≤≤' 7
=
≤≤8 9
(
≤≤: ;

StackPanel
≤≤; E
)
≤≤E F
border
≤≤F L
.
≤≤L M
Child
≤≤M R
;
≤≤R S
	TextBlock
≥≥ %4
&textBlockOfSelectedFriendRequestBorder
≥≥& L
=
≥≥M N
(
≥≥O P
	TextBlock
≥≥P Y
)
≥≥Y Z
VisualTreeHelper
≥≥Z j
.
≥≥j k
GetChild
≥≥k s
(
≥≥s t
borderStackPanel≥≥t Ñ
,≥≥Ñ Ö
$num≥≥Ü á
)≥≥á à
;≥≥à â
if
µµ 
(
µµ  
long
µµ  $
.
µµ$ %
Parse
µµ% *
(
µµ* +4
&textBlockOfSelectedFriendRequestBorder
µµ+ Q
.
µµQ R
Text
µµR V
)
µµV W
==
µµX Z
long
µµ[ _
.
µµ_ `
Parse
µµ` e
(
µµe f
IDTextBlock
µµf q
.
µµq r
Text
µµr v
)
µµv w
)
µµw x
{
∂∂ '
AcceptFriendRequestButton
∑∑  9
.
∑∑9 :

Visibility
∑∑: D
=
∑∑E F

Visibility
∑∑G Q
.
∑∑Q R
Visible
∑∑R Y
;
∑∑Y Z'
CancelFriendRequestButton
∏∏  9
.
∏∏9 :

Visibility
∏∏: D
=
∏∏E F

Visibility
∏∏G Q
.
∏∏Q R
	Collapsed
∏∏R [
;
∏∏[ \'
RejectFriendRequestButton
ππ  9
.
ππ9 :

Visibility
ππ: D
=
ππE F

Visibility
ππG Q
.
ππQ R
Visible
ππR Y
;
ππY Z
BackButton1
∫∫  +
.
∫∫+ ,

Visibility
∫∫, 6
=
∫∫7 8

Visibility
∫∫9 C
.
∫∫C D
Visible
∫∫D K
;
∫∫K L(
theButtonsAreShowAndHidden
ªª  :
=
ªª; <
true
ªª= A
;
ªªA B
break
ºº  %
;
ºº% &
}
ΩΩ 
}
ææ 
}
øø 
}
¿¿ 
if
¬¬ 
(
¬¬ 
!
¬¬ (
theButtonsAreShowAndHidden
¬¬ /
)
¬¬/ 0
{
√√ 
foreach
ƒƒ 
(
ƒƒ 
var
ƒƒ  %
sentFriendRequestBorder
ƒƒ! 8
in
ƒƒ9 ;+
SentFriendsRequestsStackPanel
ƒƒ< Y
.
ƒƒY Z
Children
ƒƒZ b
)
ƒƒb c
{
≈≈ 
if
∆∆ 
(
∆∆ %
sentFriendRequestBorder
∆∆ 3
is
∆∆4 6
FrameworkElement
∆∆7 G
frameworkElement
∆∆H X
)
∆∆X Y
{
«« 
if
»» 
(
»»  
frameworkElement
»»  0
is
»»1 3
Border
»»4 :
border
»»; A
)
»»A B
{
…… 

StackPanel
    *
borderStackPanel
  + ;
=
  < =
(
  > ?

StackPanel
  ? I
)
  I J
border
  J P
.
  P Q
Child
  Q V
;
  V W
	TextBlock
ÀÀ  )4
&textBlockOfSelectedFriendRequestBorder
ÀÀ* P
=
ÀÀQ R
(
ÀÀS T
	TextBlock
ÀÀT ]
)
ÀÀ] ^
VisualTreeHelper
ÀÀ^ n
.
ÀÀn o
GetChild
ÀÀo w
(
ÀÀw x
borderStackPanelÀÀx à
,ÀÀà â
$numÀÀä ã
)ÀÀã å
;ÀÀå ç
if
ÕÕ  "
(
ÕÕ# $
long
ÕÕ$ (
.
ÕÕ( )
Parse
ÕÕ) .
(
ÕÕ. /4
&textBlockOfSelectedFriendRequestBorder
ÕÕ/ U
.
ÕÕU V
Text
ÕÕV Z
)
ÕÕZ [
==
ÕÕ\ ^
long
ÕÕ_ c
.
ÕÕc d
Parse
ÕÕd i
(
ÕÕi j
IDTextBlock
ÕÕj u
.
ÕÕu v
Text
ÕÕv z
)
ÕÕz {
)
ÕÕ{ |
{
ŒŒ  !'
AcceptFriendRequestButton
œœ$ =
.
œœ= >

Visibility
œœ> H
=
œœI J

Visibility
œœK U
.
œœU V
	Collapsed
œœV _
;
œœ_ `'
CancelFriendRequestButton
––$ =
.
––= >

Visibility
––> H
=
––I J

Visibility
––K U
.
––U V
Visible
––V ]
;
––] ^'
RejectFriendRequestButton
——$ =
.
——= >

Visibility
——> H
=
——I J

Visibility
——K U
.
——U V
	Collapsed
——V _
;
——_ `
BackButton1
““$ /
.
““/ 0

Visibility
““0 :
=
““; <

Visibility
““= G
.
““G H
Visible
““H O
;
““O P(
theButtonsAreShowAndHidden
””$ >
=
””? @
true
””A E
;
””E F
break
‘‘$ )
;
‘‘) *
}
’’  !
}
÷÷ 
}
◊◊ 
}
ÿÿ 
}
ŸŸ 3
%friendRequestNonCallbackMethodsClient
€€ 5
.
€€5 6
Close
€€6 ;
(
€€; <
)
€€< =
;
€€= >
}
‹‹ 
}
›› 	
public
ﬂﬂ 
void
ﬂﬂ +
ShowUpdatedFriendRequestsList
ﬂﬂ 1
(
ﬂﬂ1 2
)
ﬂﬂ2 3
{
‡‡ 	/
!ReceivedFriendsRequestsStackPanel
·· -
.
··- .
Children
··. 6
.
··6 7
Clear
··7 <
(
··< =
)
··= >
;
··> ?+
SentFriendsRequestsStackPanel
‚‚ )
.
‚‚) *
Children
‚‚* 2
.
‚‚2 3
Clear
‚‚3 8
(
‚‚8 9
)
‚‚9 :
;
‚‚: ;3
%FriendRequestNonCallbackMethodsClient
‰‰ 13
%friendRequestNonCallbackMethodsClient
‰‰2 W
=
‰‰X Y
new
‰‰Z ]4
%FriendRequestNonCallbackMethodsClient‰‰^ É
(‰‰É Ñ
)‰‰Ñ Ö
;‰‰Ö Ü0
"FriendRequestCallbackMethodsClient
ÂÂ .0
"friendRequestCallbackMethodsClient
ÂÂ/ Q
=
ÂÂR S
new
ÂÂT W0
"FriendRequestCallbackMethodsClient
ÂÂX z
(
ÂÂz {
new
ÂÂ{ ~
InstanceContextÂÂ é
(ÂÂé è
thisÂÂè ì
)ÂÂì î
)ÂÂî ï
;ÂÂï ñ
foreach
ÊÊ 
(
ÊÊ 
FriendRequest
ÊÊ "
friendRequest
ÊÊ# 0
in
ÊÊ1 33
%friendRequestNonCallbackMethodsClient
ÊÊ4 Y
.
ÊÊY ZC
4GetPendientsForAceptationFriendsRequestsByProfile1IDÊÊZ é
(ÊÊé è

MainWindowÊÊè ô
.ÊÊô ö
loggedProfileÊÊö ß
.ÊÊß ®
	IDProfileÊÊ® ±
)ÊÊ± ≤
)ÊÊ≤ ≥
{
ÁÁ 
Border
ËË )
receivedFriendRequestBorder
ËË 2
=
ËË3 4
new
ËË5 8
Border
ËË9 ?
{
ÈÈ 
Height
ÍÍ 
=
ÍÍ 
$num
ÍÍ 
,
ÍÍ  
Margin
ÎÎ 
=
ÎÎ 
new
ÎÎ  
	Thickness
ÎÎ! *
(
ÎÎ* +
$num
ÎÎ+ -
,
ÎÎ- .
$num
ÎÎ/ 1
,
ÎÎ1 2
$num
ÎÎ3 5
,
ÎÎ5 6
$num
ÎÎ7 8
)
ÎÎ8 9
,
ÎÎ9 :
CornerRadius
ÏÏ  
=
ÏÏ! "
new
ÏÏ# &
CornerRadius
ÏÏ' 3
(
ÏÏ3 4
$num
ÏÏ4 6
)
ÏÏ6 7
,
ÏÏ7 8

Background
ÌÌ 
=
ÌÌ  
new
ÌÌ! $
SolidColorBrush
ÌÌ% 4
(
ÌÌ4 5
Colors
ÌÌ5 ;
.
ÌÌ; <
Black
ÌÌ< A
)
ÌÌA B
}
ÓÓ 
;
ÓÓ 

StackPanel
 &
textAndButtonsStackPanel
 3
=
4 5
new
6 9

StackPanel
: D
{
ÒÒ 
Orientation
ÚÚ 
=
ÚÚ  !
Orientation
ÚÚ" -
.
ÚÚ- .

Horizontal
ÚÚ. 8
}
ÛÛ 
;
ÛÛ 
	TextBlock
ıı 
idTextBlock
ıı %
=
ıı& '
new
ıı( +
	TextBlock
ıı, 5
{
ˆˆ 

Visibility
˜˜ 
=
˜˜  

Visibility
˜˜! +
.
˜˜+ ,
	Collapsed
˜˜, 5
,
˜˜5 6
Text
¯¯ 
=
¯¯ 
friendRequest
¯¯ (
.
¯¯( )
IDFriendRequest
¯¯) 8
.
¯¯8 9
ToString
¯¯9 A
(
¯¯A B
)
¯¯B C
}
˘˘ 
;
˘˘ 
	TextBlock
˚˚ 
fromTextBlock
˚˚ '
=
˚˚( )
new
˚˚* -
	TextBlock
˚˚. 7
{
¸¸ 

Foreground
˝˝ 
=
˝˝  
new
˝˝! $
SolidColorBrush
˝˝% 4
(
˝˝4 5
Colors
˝˝5 ;
.
˝˝; <
White
˝˝< A
)
˝˝A B
,
˝˝B C
Margin
˛˛ 
=
˛˛ 
new
˛˛  
	Thickness
˛˛! *
(
˛˛* +
$num
˛˛+ -
,
˛˛- .
$num
˛˛/ 0
,
˛˛0 1
$num
˛˛2 3
,
˛˛3 4
$num
˛˛5 6
)
˛˛6 7
,
˛˛7 8
Width
ˇˇ 
=
ˇˇ 
$num
ˇˇ 
,
ˇˇ  
TextWrapping
ÄÄ  
=
ÄÄ! "
TextWrapping
ÄÄ# /
.
ÄÄ/ 0
Wrap
ÄÄ0 4
,
ÄÄ4 5
FontSize
ÅÅ 
=
ÅÅ 
$num
ÅÅ !
,
ÅÅ! "
VerticalAlignment
ÇÇ %
=
ÇÇ& '
VerticalAlignment
ÇÇ( 9
.
ÇÇ9 :
Center
ÇÇ: @
,
ÇÇ@ A
Text
ÉÉ 
=
ÉÉ 
resourceManager
ÉÉ *
.
ÉÉ* +
	GetString
ÉÉ+ 4
(
ÉÉ4 5
$str
ÉÉ5 ;
,
ÉÉ; <
cultureInfo
ÉÉ= H
)
ÉÉH I
+
ÉÉJ K
$str
ÉÉL P
+
ÉÉQ R
friendRequest
ÉÉS `
.
ÉÉ` a
Profile
ÉÉa h
.
ÉÉh i
Player
ÉÉi o
.
ÉÉo p
NickName
ÉÉp x
}
ÑÑ 
;
ÑÑ 
	TextBlock
ÜÜ 
dateTextBlock
ÜÜ '
=
ÜÜ( )
new
ÜÜ* -
	TextBlock
ÜÜ. 7
{
áá 

Foreground
àà 
=
àà  
new
àà! $
SolidColorBrush
àà% 4
(
àà4 5
Colors
àà5 ;
.
àà; <
White
àà< A
)
ààA B
,
ààB C
Margin
ââ 
=
ââ 
new
ââ  
	Thickness
ââ! *
(
ââ* +
$num
ââ+ -
,
ââ- .
$num
ââ/ 0
,
ââ0 1
$num
ââ2 3
,
ââ3 4
$num
ââ5 6
)
ââ6 7
,
ââ7 8
Width
ää 
=
ää 
$num
ää 
,
ää  
TextWrapping
ãã  
=
ãã! "
TextWrapping
ãã# /
.
ãã/ 0
Wrap
ãã0 4
,
ãã4 5
FontSize
åå 
=
åå 
$num
åå !
,
åå! "
VerticalAlignment
çç %
=
çç& '
VerticalAlignment
çç( 9
.
çç9 :
Center
çç: @
,
çç@ A
Text
éé 
=
éé 
resourceManager
éé *
.
éé* +
	GetString
éé+ 4
(
éé4 5
$str
éé5 ;
,
éé; <
cultureInfo
éé= H
)
ééH I
+
ééJ K
$str
ééL P
+
ééQ R
friendRequest
ééS `
.
éé` a
CreationDate
ééa m
.
éém n
ToString
één v
(
éév w
)
ééw x
}
èè 
;
èè 
Button
ëë 
detailsButton
ëë $
=
ëë% &
new
ëë' *
Button
ëë+ 1
{
íí 
Style
ìì 
=
ìì 
(
ìì 
Style
ìì "
)
ìì" #
FindResource
ìì# /
(
ìì/ 0
$str
ìì0 <
)
ìì< =
,
ìì= >
Height
îî 
=
îî 
$num
îî 
,
îî  
Width
ïï 
=
ïï 
$num
ïï 
,
ïï 

Background
ññ 
=
ññ  
new
ññ! $
SolidColorBrush
ññ% 4
(
ññ4 5
(
ññ5 6
Color
ññ6 ;
)
ññ; <
ColorConverter
ññ< J
.
ññJ K
ConvertFromString
ññK \
(
ññ\ ]
$str
ññ] h
)
ññh i
)
ññi j
,
ññj k
Margin
óó 
=
óó 
new
óó  
	Thickness
óó! *
(
óó* +
$num
óó+ -
,
óó- .
$num
óó/ 0
,
óó0 1
$num
óó2 3
,
óó3 4
$num
óó5 6
)
óó6 7
,
óó7 8
Content
òò 
=
òò 
resourceManager
òò -
.
òò- .
	GetString
òò. 7
(
òò7 8
$str
òò8 A
,
òòA B
cultureInfo
òòC N
)
òòN O
,
òòO P
FontSize
ôô 
=
ôô 
$num
ôô !
}
öö 
;
öö 
detailsButton
úú 
.
úú 
Click
úú #
+=
úú$ &"
DetailsButtonOnClick
úú' ;
;
úú; <&
textAndButtonsStackPanel
ûû (
.
ûû( )
Children
ûû) 1
.
ûû1 2
Add
ûû2 5
(
ûû5 6
idTextBlock
ûû6 A
)
ûûA B
;
ûûB C&
textAndButtonsStackPanel
üü (
.
üü( )
Children
üü) 1
.
üü1 2
Add
üü2 5
(
üü5 6
fromTextBlock
üü6 C
)
üüC D
;
üüD E&
textAndButtonsStackPanel
†† (
.
††( )
Children
††) 1
.
††1 2
Add
††2 5
(
††5 6
dateTextBlock
††6 C
)
††C D
;
††D E&
textAndButtonsStackPanel
°° (
.
°°( )
Children
°°) 1
.
°°1 2
Add
°°2 5
(
°°5 6
detailsButton
°°6 C
)
°°C D
;
°°D E)
receivedFriendRequestBorder
££ +
.
££+ ,
Child
££, 1
=
££2 3&
textAndButtonsStackPanel
££4 L
;
££L M/
!ReceivedFriendsRequestsStackPanel
•• 1
.
••1 2
Children
••2 :
.
••: ;
Add
••; >
(
••> ?)
receivedFriendRequestBorder
••? Z
)
••Z [
;
••[ \
}
¶¶ 
foreach
©© 
(
©© 
FriendRequest
©© "
friendRequest
©©# 0
in
©©1 33
%friendRequestNonCallbackMethodsClient
©©4 Y
.
©©Y ZI
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID©©Z î
(©©î ï

MainWindow©©ï ü
.©©ü †
loggedProfile©©† ≠
.©©≠ Æ
	IDProfile©©Æ ∑
)©©∑ ∏
)©©∏ π
{
™™ 
Border
´´ %
sentFriendRequestBorder
´´ .
=
´´/ 0
new
´´1 4
Border
´´5 ;
{
¨¨ 
Height
≠≠ 
=
≠≠ 
$num
≠≠ 
,
≠≠  
Margin
ÆÆ 
=
ÆÆ 
new
ÆÆ  
	Thickness
ÆÆ! *
(
ÆÆ* +
$num
ÆÆ+ -
,
ÆÆ- .
$num
ÆÆ/ 1
,
ÆÆ1 2
$num
ÆÆ3 5
,
ÆÆ5 6
$num
ÆÆ7 8
)
ÆÆ8 9
,
ÆÆ9 :
CornerRadius
ØØ  
=
ØØ! "
new
ØØ# &
CornerRadius
ØØ' 3
(
ØØ3 4
$num
ØØ4 6
)
ØØ6 7
,
ØØ7 8

Background
∞∞ 
=
∞∞  
new
∞∞! $
SolidColorBrush
∞∞% 4
(
∞∞4 5
Colors
∞∞5 ;
.
∞∞; <
Black
∞∞< A
)
∞∞A B
}
±± 
;
±± 

StackPanel
≥≥ &
textAndButtonsStackPanel
≥≥ 3
=
≥≥4 5
new
≥≥6 9

StackPanel
≥≥: D
{
¥¥ 
Orientation
µµ 
=
µµ  !
Orientation
µµ" -
.
µµ- .

Horizontal
µµ. 8
}
∂∂ 
;
∂∂ 
	TextBlock
∏∏ 
idTextBlock
∏∏ %
=
∏∏& '
new
∏∏( +
	TextBlock
∏∏, 5
{
ππ 

Visibility
∫∫ 
=
∫∫  

Visibility
∫∫! +
.
∫∫+ ,
	Collapsed
∫∫, 5
,
∫∫5 6
Text
ªª 
=
ªª 
friendRequest
ªª (
.
ªª( )
IDFriendRequest
ªª) 8
.
ªª8 9
ToString
ªª9 A
(
ªªA B
)
ªªB C
}
ºº 
;
ºº 
	TextBlock
ææ 
forTextBlock
ææ &
=
ææ' (
new
ææ) ,
	TextBlock
ææ- 6
{
øø 

Foreground
¿¿ 
=
¿¿  
new
¿¿! $
SolidColorBrush
¿¿% 4
(
¿¿4 5
Colors
¿¿5 ;
.
¿¿; <
White
¿¿< A
)
¿¿A B
,
¿¿B C
Margin
¡¡ 
=
¡¡ 
new
¡¡  
	Thickness
¡¡! *
(
¡¡* +
$num
¡¡+ -
,
¡¡- .
$num
¡¡/ 0
,
¡¡0 1
$num
¡¡2 3
,
¡¡3 4
$num
¡¡5 6
)
¡¡6 7
,
¡¡7 8
Width
¬¬ 
=
¬¬ 
$num
¬¬ 
,
¬¬  
TextWrapping
√√  
=
√√! "
TextWrapping
√√# /
.
√√/ 0
Wrap
√√0 4
,
√√4 5
FontSize
ƒƒ 
=
ƒƒ 
$num
ƒƒ !
,
ƒƒ! "
VerticalAlignment
≈≈ %
=
≈≈& '
VerticalAlignment
≈≈( 9
.
≈≈9 :
Center
≈≈: @
,
≈≈@ A
Text
∆∆ 
=
∆∆ 
resourceManager
∆∆ *
.
∆∆* +
	GetString
∆∆+ 4
(
∆∆4 5
$str
∆∆5 :
,
∆∆: ;
cultureInfo
∆∆< G
)
∆∆G H
+
∆∆I J
$str
∆∆K O
+
∆∆P Q
friendRequest
∆∆R _
.
∆∆_ `
Profile1
∆∆` h
.
∆∆h i
Player
∆∆i o
.
∆∆o p
NickName
∆∆p x
}
«« 
;
«« 
	TextBlock
…… 
dateTextBlock
…… '
=
……( )
new
……* -
	TextBlock
……. 7
{
   

Foreground
ÀÀ 
=
ÀÀ  
new
ÀÀ! $
SolidColorBrush
ÀÀ% 4
(
ÀÀ4 5
Colors
ÀÀ5 ;
.
ÀÀ; <
White
ÀÀ< A
)
ÀÀA B
,
ÀÀB C
Margin
ÃÃ 
=
ÃÃ 
new
ÃÃ  
	Thickness
ÃÃ! *
(
ÃÃ* +
$num
ÃÃ+ -
,
ÃÃ- .
$num
ÃÃ/ 0
,
ÃÃ0 1
$num
ÃÃ2 3
,
ÃÃ3 4
$num
ÃÃ5 6
)
ÃÃ6 7
,
ÃÃ7 8
Width
ÕÕ 
=
ÕÕ 
$num
ÕÕ 
,
ÕÕ  
TextWrapping
ŒŒ  
=
ŒŒ! "
TextWrapping
ŒŒ# /
.
ŒŒ/ 0
Wrap
ŒŒ0 4
,
ŒŒ4 5
FontSize
œœ 
=
œœ 
$num
œœ !
,
œœ! "
VerticalAlignment
–– %
=
––& '
VerticalAlignment
––( 9
.
––9 :
Center
––: @
,
––@ A
Text
—— 
=
—— 
resourceManager
—— *
.
——* +
	GetString
——+ 4
(
——4 5
$str
——5 ;
,
——; <
cultureInfo
——= H
)
——H I
+
——J K
$str
——L P
+
——Q R
friendRequest
——S `
.
——` a
CreationDate
——a m
.
——m n
ToString
——n v
(
——v w
)
——w x
}
““ 
;
““ 
Button
‘‘ 
detailsButton
‘‘ $
=
‘‘% &
new
‘‘' *
Button
‘‘+ 1
{
’’ 
Style
÷÷ 
=
÷÷ 
(
÷÷ 
Style
÷÷ "
)
÷÷" #
FindResource
÷÷# /
(
÷÷/ 0
$str
÷÷0 <
)
÷÷< =
,
÷÷= >
Height
◊◊ 
=
◊◊ 
$num
◊◊ 
,
◊◊  
Width
ÿÿ 
=
ÿÿ 
$num
ÿÿ 
,
ÿÿ 
Margin
ŸŸ 
=
ŸŸ 
new
ŸŸ  
	Thickness
ŸŸ! *
(
ŸŸ* +
$num
ŸŸ+ -
,
ŸŸ- .
$num
ŸŸ/ 0
,
ŸŸ0 1
$num
ŸŸ2 3
,
ŸŸ3 4
$num
ŸŸ5 6
)
ŸŸ6 7
,
ŸŸ7 8
Content
⁄⁄ 
=
⁄⁄ 
resourceManager
⁄⁄ -
.
⁄⁄- .
	GetString
⁄⁄. 7
(
⁄⁄7 8
$str
⁄⁄8 A
,
⁄⁄A B
cultureInfo
⁄⁄C N
)
⁄⁄N O
,
⁄⁄O P
FontSize
€€ 
=
€€ 
$num
€€ !
}
‹‹ 
;
‹‹ 
detailsButton
ﬁﬁ 
.
ﬁﬁ 
Click
ﬁﬁ #
+=
ﬁﬁ$ &"
DetailsButtonOnClick
ﬁﬁ' ;
;
ﬁﬁ; <&
textAndButtonsStackPanel
‡‡ (
.
‡‡( )
Children
‡‡) 1
.
‡‡1 2
Add
‡‡2 5
(
‡‡5 6
idTextBlock
‡‡6 A
)
‡‡A B
;
‡‡B C&
textAndButtonsStackPanel
·· (
.
··( )
Children
··) 1
.
··1 2
Add
··2 5
(
··5 6
forTextBlock
··6 B
)
··B C
;
··C D&
textAndButtonsStackPanel
‚‚ (
.
‚‚( )
Children
‚‚) 1
.
‚‚1 2
Add
‚‚2 5
(
‚‚5 6
dateTextBlock
‚‚6 C
)
‚‚C D
;
‚‚D E&
textAndButtonsStackPanel
„„ (
.
„„( )
Children
„„) 1
.
„„1 2
Add
„„2 5
(
„„5 6
detailsButton
„„6 C
)
„„C D
;
„„D E%
sentFriendRequestBorder
ÂÂ '
.
ÂÂ' (
Child
ÂÂ( -
=
ÂÂ. /&
textAndButtonsStackPanel
ÂÂ0 H
;
ÂÂH I+
SentFriendsRequestsStackPanel
ÁÁ -
.
ÁÁ- .
Children
ÁÁ. 6
.
ÁÁ6 7
Add
ÁÁ7 :
(
ÁÁ: ;%
sentFriendRequestBorder
ÁÁ; R
)
ÁÁR S
;
ÁÁS T
}
ËË 3
%friendRequestNonCallbackMethodsClient
ÍÍ 1
.
ÍÍ1 2
Close
ÍÍ2 7
(
ÍÍ7 8
)
ÍÍ8 9
;
ÍÍ9 :
}
ÎÎ 	
private
ÒÒ 
void
ÒÒ .
 AcceptFriendRequestButtonOnClick
ÒÒ 5
(
ÒÒ5 6
object
ÒÒ6 <
sender
ÒÒ= C
,
ÒÒC D
RoutedEventArgs
ÒÒE T
e
ÒÒU V
)
ÒÒV W
{
ÚÚ 	
if
ÛÛ 
(
ÛÛ 
new
ÛÛ !
AlertPopUpGenerator
ÛÛ '
(
ÛÛ' (
)
ÛÛ( )
.
ÛÛ) *0
"OpenInternationalizedDesicionPopUp
ÛÛ* L
(
ÛÛL M
$str
ÛÛM \
,
ÛÛ\ ]
$strÛÛ^ ì
)ÛÛì î
)ÛÛî ï
{
ÙÙ 3
%FriendRequestNonCallbackMethodsClient
ıı 53
%friendRequestNonCallbackMethodsClient
ıı6 [
=
ıı\ ]
new
ıı^ a4
%FriendRequestNonCallbackMethodsClientııb á
(ııá à
)ııà â
;ııâ ä3
%friendRequestNonCallbackMethodsClient
ˆˆ 5
.
ˆˆ5 6!
AcceptFriendRequest
ˆˆ6 I
(
ˆˆI J4
&FriendRequestToFriendRequestsConverter
ˆˆJ p
(
ˆˆp q4
%friendRequestNonCallbackMethodsClientˆˆq ñ
.ˆˆñ ó$
GetFriendRequestByIDˆˆó ´
(ˆˆ´ ¨
intˆˆ¨ Ø
.ˆˆØ ∞
Parseˆˆ∞ µ
(ˆˆµ ∂$
IDFriendRequestLabelˆˆ∂  
.ˆˆ  À
ContentˆˆÀ “
.ˆˆ“ ”
ToStringˆˆ” €
(ˆˆ€ ‹
)ˆˆ‹ ›
)ˆˆ› ﬁ
)ˆˆﬁ ﬂ
)ˆˆﬂ ‡
)ˆˆ‡ ·
;ˆˆ· ‚
new
¯¯ !
AlertPopUpGenerator
¯¯ '
(
¯¯' (
)
¯¯( )
.
¯¯) */
!OpenInternationalizedSuccessPopUp
¯¯* K
(
¯¯K L
$str
¯¯L X
,
¯¯X Y
$str¯¯Z Ä
)¯¯Ä Å
;¯¯Å Ç(
FriendRequestDetailsBorder
˙˙ *
.
˙˙* +

Visibility
˙˙+ 5
=
˙˙6 7

Visibility
˙˙8 B
.
˙˙B C
Hidden
˙˙C I
;
˙˙I J#
FriendsRequestsBorder
˚˚ %
.
˚˚% &

Visibility
˚˚& 0
=
˚˚1 2

Visibility
˚˚3 =
.
˚˚= >
Visible
˚˚> E
;
˚˚E F3
%friendRequestNonCallbackMethodsClient
¸¸ 5
.
¸¸5 6
Close
¸¸6 ;
(
¸¸; <
)
¸¸< =
;
¸¸= >
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ  
BackButton1OnClick
ÄÄ '
(
ÄÄ' (
object
ÄÄ( .
sender
ÄÄ/ 5
,
ÄÄ5 6
RoutedEventArgs
ÄÄ7 F
e
ÄÄG H
)
ÄÄH I
{
ÅÅ 	+
ShowUpdatedFriendRequestsList
ÇÇ )
(
ÇÇ) *
)
ÇÇ* +
;
ÇÇ+ ,(
FriendRequestDetailsBorder
ÉÉ &
.
ÉÉ& '

Visibility
ÉÉ' 1
=
ÉÉ2 3

Visibility
ÉÉ4 >
.
ÉÉ> ?
Hidden
ÉÉ? E
;
ÉÉE F#
FriendsRequestsBorder
ÑÑ !
.
ÑÑ! "

Visibility
ÑÑ" ,
=
ÑÑ- .

Visibility
ÑÑ/ 9
.
ÑÑ9 :
Visible
ÑÑ: A
;
ÑÑA B
}
ÖÖ 	
private
áá 
void
áá .
 CancelFriendRequestButtonOnClick
áá 5
(
áá5 6
object
áá6 <
sender
áá= C
,
ááC D
RoutedEventArgs
ááE T
e
ááU V
)
ááV W
{
àà 	
if
ââ 
(
ââ 
new
ââ !
AlertPopUpGenerator
ââ '
(
ââ' (
)
ââ( )
.
ââ) *0
"OpenInternationalizedDesicionPopUp
ââ* L
(
ââL M
$str
ââM \
,
ââ\ ]
$strââ^ õ
)ââõ ú
)ââú ù
{
ää 3
%FriendRequestNonCallbackMethodsClient
ãã 53
%friendRequestNonCallbackMethodsClient
ãã6 [
=
ãã\ ]
new
ãã^ a4
%FriendRequestNonCallbackMethodsClientããb á
(ããá à
)ããà â
;ããâ ä3
%friendRequestNonCallbackMethodsClient
åå 5
.
åå5 6!
CancelFriendRequest
åå6 I
(
ååI J4
&FriendRequestToFriendRequestsConverter
ååJ p
(
ååp q4
%friendRequestNonCallbackMethodsClientååq ñ
.ååñ ó$
GetFriendRequestByIDååó ´
(åå´ ¨
longåå¨ ∞
.åå∞ ±
Parseåå± ∂
(åå∂ ∑$
IDFriendRequestLabelåå∑ À
.ååÀ Ã
ContentååÃ ”
.åå” ‘
ToStringåå‘ ‹
(åå‹ ›
)åå› ﬁ
)ååﬁ ﬂ
)ååﬂ ‡
)åå‡ ·
)åå· ‚
;åå‚ „
new
éé !
AlertPopUpGenerator
éé '
(
éé' (
)
éé( )
.
éé) */
!OpenInternationalizedSuccessPopUp
éé* K
(
ééK L
$str
ééL X
,
ééX Y
$strééZ î
)ééî ï
;ééï ñ(
FriendRequestDetailsBorder
êê *
.
êê* +

Visibility
êê+ 5
=
êê6 7

Visibility
êê8 B
.
êêB C
Hidden
êêC I
;
êêI J#
FriendsRequestsBorder
ëë %
.
ëë% &

Visibility
ëë& 0
=
ëë1 2

Visibility
ëë3 =
.
ëë= >
Visible
ëë> E
;
ëëE F3
%friendRequestNonCallbackMethodsClient
íí 5
.
íí5 6
Close
íí6 ;
(
íí; <
)
íí< =
;
íí= >
}
ìì 
}
îî 	
private
ññ 
void
ññ .
 RejectFriendRequestButtonOnClick
ññ 5
(
ññ5 6
object
ññ6 <
sender
ññ= C
,
ññC D
RoutedEventArgs
ññE T
e
ññU V
)
ññV W
{
óó 	
if
òò 
(
òò 
new
òò !
AlertPopUpGenerator
òò '
(
òò' (
)
òò( )
.
òò) *0
"OpenInternationalizedDesicionPopUp
òò* L
(
òòL M
$str
òòM \
,
òò\ ]
$stròò^ ì
)òòì î
)òòî ï
{
ôô 3
%FriendRequestNonCallbackMethodsClient
öö 53
%friendRequestNonCallbackMethodsClient
öö6 [
=
öö\ ]
new
öö^ a4
%FriendRequestNonCallbackMethodsClientööb á
(ööá à
)ööà â
;ööâ ä3
%friendRequestNonCallbackMethodsClient
õõ 5
.
õõ5 6!
RejectFriendRequest
õõ6 I
(
õõI J4
&FriendRequestToFriendRequestsConverter
õõJ p
(
õõp q4
%friendRequestNonCallbackMethodsClientõõq ñ
.õõñ ó$
GetFriendRequestByIDõõó ´
(õõ´ ¨
longõõ¨ ∞
.õõ∞ ±
Parseõõ± ∂
(õõ∂ ∑$
IDFriendRequestLabelõõ∑ À
.õõÀ Ã
ContentõõÃ ”
.õõ” ‘
ToStringõõ‘ ‹
(õõ‹ ›
)õõ› ﬁ
)õõﬁ ﬂ
)õõﬂ ‡
)õõ‡ ·
)õõ· ‚
;õõ‚ „
new
ùù !
AlertPopUpGenerator
ùù '
(
ùù' (
)
ùù( )
.
ùù) */
!OpenInternationalizedSuccessPopUp
ùù* K
(
ùùK L
$str
ùùL X
,
ùùX Y
$str
ùùZ s
)
ùùs t
;
ùùt u(
FriendRequestDetailsBorder
üü *
.
üü* +

Visibility
üü+ 5
=
üü6 7

Visibility
üü8 B
.
üüB C
Hidden
üüC I
;
üüI J#
FriendsRequestsBorder
†† %
.
††% &

Visibility
††& 0
=
††1 2

Visibility
††3 =
.
††= >
Visible
††> E
;
††E F3
%friendRequestNonCallbackMethodsClient
°° 5
.
°°5 6
Close
°°6 ;
(
°°; <
)
°°< =
;
°°= >
}
¢¢ 
}
££ 	
private
©© 
void
©©  
Exit2ButtonOnClick
©© '
(
©©' (
object
©©( .
sender
©©/ 5
,
©©5 6
RoutedEventArgs
©©7 F
e
©©G H
)
©©H I
{
™™ 	
NavigationService
´´ 
navigationService
´´ /
=
´´0 1
NavigationService
´´2 C
.
´´C D"
GetNavigationService
´´D X
(
´´X Y
this
´´Y ]
)
´´] ^
;
´´^ _
navigationService
¨¨ 
.
¨¨ 
Navigate
¨¨ &
(
¨¨& '
new
¨¨' *
	LobbyView
¨¨+ 4
(
¨¨4 5

mainWindow
¨¨5 ?
)
¨¨? @
)
¨¨@ A
;
¨¨A B
}
≠≠ 	
private
ØØ 
void
ØØ 1
#InviteFriendToTheLobbyButtonOnClick
ØØ 8
(
ØØ8 9
object
ØØ9 ?
sender
ØØ@ F
,
ØØF G
RoutedEventArgs
ØØH W
e
ØØX Y
)
ØØY Z
{
∞∞ 	
if
±± 
(
±± 
sender
±± 
is
±± 
Button
±±  
button
±±! '
)
±±' (
{
≤≤ 
if
≥≥ 
(
≥≥ 
new
≥≥ !
AlertPopUpGenerator
≥≥ +
(
≥≥+ ,
)
≥≥, -
.
≥≥- .0
"OpenInternationalizedDesicionPopUp
≥≥. P
(
≥≥P Q
$str
≥≥Q `
,
≥≥` a
$str≥≥b ê
)≥≥ê ë
)≥≥ë í
{
¥¥ 

StackPanel
µµ 
buttonParent
µµ +
=
µµ, -
VisualTreeHelper
µµ. >
.
µµ> ?
	GetParent
µµ? H
(
µµH I
button
µµI O
)
µµO P
as
µµQ S

StackPanel
µµT ^
;
µµ^ _
	TextBlock
∂∂ 
friendNickname
∂∂ ,
=
∂∂- .
(
∂∂/ 0
	TextBlock
∂∂0 9
)
∂∂9 :
VisualTreeHelper
∂∂: J
.
∂∂J K
GetChild
∂∂K S
(
∂∂S T
buttonParent
∂∂T `
,
∂∂` a
$num
∂∂b c
)
∂∂c d
;
∂∂d e

MainWindow
∑∑ 
.
∑∑ *
profileCallbackMethodsClient
∑∑ ;
.
∑∑; <$
InviteFriendToTheLobby
∑∑< R
(
∑∑R S
friendNickname
∑∑S a
.
∑∑a b
Text
∑∑b f
)
∑∑f g
;
∑∑g h
new
∏∏ !
AlertPopUpGenerator
∏∏ +
(
∏∏+ ,
)
∏∏, -
.
∏∏- ./
!OpenInternationalizedSuccessPopUp
∏∏. O
(
∏∏O P
$str
∏∏P \
,
∏∏\ ]
$str
∏∏^ }
)
∏∏} ~
;
∏∏~ 
}
ππ 
}
∫∫ 
}
ªª 	
public
ΩΩ 
void
ΩΩ 6
(ShowConnectedFriendsListForInviteToLobby
ΩΩ <
(
ΩΩ< =
)
ΩΩ= >
{
ææ 	
if
øø 
(
øø 
	LobbyView
øø 
.
øø (
lobbyCallbackMethodsClient
øø 4
!=
øø5 7
null
øø8 <
)
øø< =
{
¿¿ -
OnlineFriendsToInviteStackPanel
¡¡ /
.
¡¡/ 0
Children
¡¡0 8
.
¡¡8 9
Clear
¡¡9 >
(
¡¡> ?
)
¡¡? @
;
¡¡@ A-
ProfileNonCallbackMethodsClient
√√ /-
profileNonCallbackMethodsClient
√√0 O
=
√√P Q
new
√√R U-
ProfileNonCallbackMethodsClient
√√V u
(
√√u v
)
√√v w
;
√√w x+
LobbyNonCallbackMethodsClient
ƒƒ -+
lobbyNonCallbackMethodsClient
ƒƒ. K
=
ƒƒL M
new
ƒƒN Q+
LobbyNonCallbackMethodsClient
ƒƒR o
(
ƒƒo p
)
ƒƒp q
;
ƒƒq r
foreach
≈≈ 
(
≈≈ 
Profile
≈≈  
profile
≈≈! (
in
≈≈) +-
profileNonCallbackMethodsClient
≈≈, K
.
≈≈K L

GetFriends
≈≈L V
(
≈≈V W

MainWindow
≈≈W a
.
≈≈a b
loggedProfile
≈≈b o
.
≈≈o p
Player
≈≈p v
.
≈≈v w
IDPlayer
≈≈w 
)≈≈ Ä
)≈≈Ä Å
{
∆∆ 
if
«« 
(
«« 
!
«« +
lobbyNonCallbackMethodsClient
«« 6
.
««6 7
IsConnected
««7 B
(
««B C
profile
««C J
.
««J K
Player
««K Q
.
««Q R
NickName
««R Z
)
««Z [
)
««[ \
{
»» 
if
…… 
(
…… 
profile
…… #
.
……# $
LoginStatus
……$ /
==
……0 2
Enum
……3 7
.
……7 8
GetName
……8 ?
(
……? @
typeof
……@ F
(
……F G"
ProfileLoginStatuses
……G [
)
……[ \
,
……\ ]"
ProfileLoginStatuses
……^ r
.
……r s
Logged
……s y
)
……y z
)
……z {
{
   
Border
ÀÀ "
friendBorder
ÀÀ# /
=
ÀÀ0 1
new
ÀÀ2 5
Border
ÀÀ6 <
{
ÃÃ 
Height
ÕÕ  &
=
ÕÕ' (
$num
ÕÕ) +
,
ÕÕ+ ,
Margin
ŒŒ  &
=
ŒŒ' (
new
ŒŒ) ,
	Thickness
ŒŒ- 6
(
ŒŒ6 7
$num
ŒŒ7 9
,
ŒŒ9 :
$num
ŒŒ; =
,
ŒŒ= >
$num
ŒŒ? A
,
ŒŒA B
$num
ŒŒC D
)
ŒŒD E
,
ŒŒE F
CornerRadius
œœ  ,
=
œœ- .
new
œœ/ 2
CornerRadius
œœ3 ?
(
œœ? @
$num
œœ@ B
)
œœB C
,
œœC D

Background
––  *
=
––+ ,
new
––- 0
SolidColorBrush
––1 @
(
––@ A
Colors
––A G
.
––G H
Black
––H M
)
––M N
}
—— 
;
—— 

StackPanel
”” &&
textAndButtonsStackPanel
””' ?
=
””@ A
new
””B E

StackPanel
””F P
{
‘‘ 
Orientation
’’  +
=
’’, -
Orientation
’’. 9
.
’’9 :

Horizontal
’’: D
}
÷÷ 
;
÷÷ 
Image
ÿÿ ! 
friendProfileImage
ÿÿ" 4
=
ÿÿ5 6
new
ÿÿ7 :
Image
ÿÿ; @
{
ŸŸ 
Width
⁄⁄  %
=
⁄⁄& '
$num
⁄⁄( *
,
⁄⁄* +
Height
€€  &
=
€€' (
$num
€€) +
,
€€+ ,
Margin
‹‹  &
=
‹‹' (
new
‹‹) ,
	Thickness
‹‹- 6
(
‹‹6 7
$num
‹‹7 9
,
‹‹9 :
$num
‹‹; <
,
‹‹< =
$num
‹‹> ?
,
‹‹? @
$num
‹‹A B
)
‹‹B C
,
‹‹C D
Source
››  &
=
››' (
new
››) ,
ImageLoader
››- 8
(
››8 9
)
››9 :
.
››: ;&
GetImageByPlayerNickname
››; S
(
››S T
profile
››T [
.
››[ \
Player
››\ b
.
››b c
NickName
››c k
)
››k l
}
ﬁﬁ 
;
ﬁﬁ 
	TextBlock
‡‡ %
nicknameTextBlock
‡‡& 7
=
‡‡8 9
new
‡‡: =
	TextBlock
‡‡> G
{
·· 

Foreground
‚‚  *
=
‚‚+ ,
new
‚‚- 0
SolidColorBrush
‚‚1 @
(
‚‚@ A
Colors
‚‚A G
.
‚‚G H
White
‚‚H M
)
‚‚M N
,
‚‚N O
Margin
„„  &
=
„„' (
new
„„) ,
	Thickness
„„- 6
(
„„6 7
$num
„„7 9
,
„„9 :
$num
„„; <
,
„„< =
$num
„„> ?
,
„„? @
$num
„„A B
)
„„B C
,
„„C D
Width
‰‰  %
=
‰‰& '
$num
‰‰( +
,
‰‰+ ,
TextWrapping
ÂÂ  ,
=
ÂÂ- .
TextWrapping
ÂÂ/ ;
.
ÂÂ; <
Wrap
ÂÂ< @
,
ÂÂ@ A
FontSize
ÊÊ  (
=
ÊÊ) *
$num
ÊÊ+ -
,
ÊÊ- .
VerticalAlignment
ÁÁ  1
=
ÁÁ2 3
VerticalAlignment
ÁÁ4 E
.
ÁÁE F
Center
ÁÁF L
,
ÁÁL M
Text
ËË  $
=
ËË% &
profile
ËË' .
.
ËË. /
Player
ËË/ 5
.
ËË5 6
NickName
ËË6 >
}
ÈÈ 
;
ÈÈ 
Button
ÎÎ " 
inviteFriendButton
ÎÎ# 5
=
ÎÎ6 7
new
ÎÎ8 ;
Button
ÎÎ< B
{
ÏÏ 
Style
ÌÌ  %
=
ÌÌ& '
(
ÌÌ( )
Style
ÌÌ) .
)
ÌÌ. /
FindResource
ÌÌ/ ;
(
ÌÌ; <
$str
ÌÌ< I
)
ÌÌI J
,
ÌÌJ K
Height
ÓÓ  &
=
ÓÓ' (
$num
ÓÓ) +
,
ÓÓ+ ,
Width
ÔÔ  %
=
ÔÔ& '
$num
ÔÔ( +
,
ÔÔ+ ,!
HorizontalAlignment
  3
=
4 5!
HorizontalAlignment
6 I
.
I J
Right
J O
,
O P
Content
ÒÒ  '
=
ÒÒ( )
resourceManager
ÒÒ* 9
.
ÒÒ9 :
	GetString
ÒÒ: C
(
ÒÒC D
$str
ÒÒD L
,
ÒÒL M
cultureInfo
ÒÒN Y
)
ÒÒY Z
,
ÒÒZ [
FontSize
ÚÚ  (
=
ÚÚ) *
$num
ÚÚ+ -
}
ÛÛ 
;
ÛÛ  
inviteFriendButton
ıı .
.
ıı. /
Click
ıı/ 4
+=
ıı5 71
#InviteFriendToTheLobbyButtonOnClick
ıı8 [
;
ıı[ \&
textAndButtonsStackPanel
˜˜ 4
.
˜˜4 5
Children
˜˜5 =
.
˜˜= >
Add
˜˜> A
(
˜˜A B 
friendProfileImage
˜˜B T
)
˜˜T U
;
˜˜U V&
textAndButtonsStackPanel
¯¯ 4
.
¯¯4 5
Children
¯¯5 =
.
¯¯= >
Add
¯¯> A
(
¯¯A B
nicknameTextBlock
¯¯B S
)
¯¯S T
;
¯¯T U&
textAndButtonsStackPanel
˘˘ 4
.
˘˘4 5
Children
˘˘5 =
.
˘˘= >
Add
˘˘> A
(
˘˘A B 
inviteFriendButton
˘˘B T
)
˘˘T U
;
˘˘U V
friendBorder
˚˚ (
.
˚˚( )
Child
˚˚) .
=
˚˚/ 0&
textAndButtonsStackPanel
˚˚1 I
;
˚˚I J-
OnlineFriendsToInviteStackPanel
¸¸ ;
.
¸¸; <
Children
¸¸< D
.
¸¸D E
Add
¸¸E H
(
¸¸H I
friendBorder
¸¸I U
)
¸¸U V
;
¸¸V W
}
˝˝ 
}
˛˛ 
}
ˇˇ -
profileNonCallbackMethodsClient
ÅÅ /
.
ÅÅ/ 0
Close
ÅÅ0 5
(
ÅÅ5 6
)
ÅÅ6 7
;
ÅÅ7 8+
lobbyNonCallbackMethodsClient
ÇÇ -
.
ÇÇ- .
Close
ÇÇ. 3
(
ÇÇ3 4
)
ÇÇ4 5
;
ÇÇ5 6
}
ÉÉ 
}
ÑÑ 	
public
ää 
void
ää 9
+ExitFromThisPageForBeingExpeltFromLobbyView
ää ?
(
ää? @
)
ää@ A
{
ãã 	
if
åå 
(
åå )
entryToThisPageViaLobbyView
åå +
)
åå+ ,
{
çç 
	LobbyView
éé 
.
éé '
chatCallbackMethodsClient
éé 3
.
éé3 4
	LeaveChat
éé4 =
(
éé= >

MainWindow
éé> H
.
ééH I
loggedProfile
ééI V
.
ééV W
Player
ééW ]
.
éé] ^
NickName
éé^ f
)
ééf g
;
éég h
NavigationService
èè !
navigationService
èè" 3
=
èè4 5
NavigationService
èè6 G
.
èèG H"
GetNavigationService
èèH \
(
èè\ ]
this
èè] a
)
èèa b
;
èèb c
navigationService
êê !
.
êê! "
Navigate
êê" *
(
êê* +
new
êê+ .
MenuView
êê/ 7
(
êê7 8

mainWindow
êê8 B
)
êêB C
)
êêC D
;
êêD E
new
ëë !
AlertPopUpGenerator
ëë '
(
ëë' (
)
ëë( )
.
ëë) */
!OpenInternationalizedWarningPopUp
ëë* K
(
ëëK L
$str
ëëL T
,
ëëT U
$str
ëëV q
)
ëëq r
;
ëër s
}
íí 
}
ìì 	
private
ïï @
2ServiceFriendRequestForNonCallbackMethodsReference
ïï B
.
ïïB C
FriendRequests
ïïC Q4
&FriendRequestToFriendRequestsConverter
ïïR x
(
ïïx y
FriendRequestïïy Ü
friendRequestïïá î
)ïïî ï
{
ññ 	@
2ServiceFriendRequestForNonCallbackMethodsReference
óó >
.
óó> ?
FriendRequests
óó? M
friendRequests
óóN \
=
óó] ^
new
óó_ bA
2ServiceFriendRequestForNonCallbackMethodsReferenceóóc ï
.óóï ñ
FriendRequestsóóñ §
{
òò 
IDFriendRequest
ôô 
=
ôô  !
(
ôô" #
int
ôô# &
)
ôô& '
friendRequest
ôô' 4
.
ôô4 5
IDFriendRequest
ôô5 D
,
ôôD E
Message
öö 
=
öö 
friendRequest
öö '
.
öö' (
Message
öö( /
,
öö/ 0
CreationDate
õõ 
=
õõ 
friendRequest
õõ ,
.
õõ, -
CreationDate
õõ- 9
,
õõ9 :
AceptationStatus
úú  
=
úú! "
friendRequest
úú# 0
.
úú0 1
AceptationStatus
úú1 A
,
úúA B
SendingStatus
ùù 
=
ùù 
friendRequest
ùù  -
.
ùù- .
SendingStatus
ùù. ;
}
ûû 
;
ûû @
2ServiceFriendRequestForNonCallbackMethodsReference
†† >
.
††> ?
Players
††? F
players
††G N
=
††O P
new
††Q TA
2ServiceFriendRequestForNonCallbackMethodsReference††U á
.††á à
Players††à è
{
°° 
IDPlayer
¢¢ 
=
¢¢ 
friendRequest
¢¢ (
.
¢¢( )
Profile
¢¢) 0
.
¢¢0 1
Player
¢¢1 7
.
¢¢7 8
IDPlayer
¢¢8 @
,
¢¢@ A
Names
££ 
=
££ 
friendRequest
££ %
.
££% &
Profile
££& -
.
££- .
Player
££. 4
.
££4 5
Names
££5 :
,
££: ;
Surnames
§§ 
=
§§ 
friendRequest
§§ (
.
§§( )
Profile
§§) 0
.
§§0 1
Player
§§1 7
.
§§7 8
Surnames
§§8 @
,
§§@ A
Email
•• 
=
•• 
friendRequest
•• %
.
••% &
Profile
••& -
.
••- .
Player
••. 4
.
••4 5
Email
••5 :
,
••: ;
NickName
¶¶ 
=
¶¶ 
friendRequest
¶¶ (
.
¶¶( )
Profile
¶¶) 0
.
¶¶0 1
Player
¶¶1 7
.
¶¶7 8
NickName
¶¶8 @
,
¶¶@ A
	BirthDate
ßß 
=
ßß 
(
ßß 
DateTime
ßß %
)
ßß% &
friendRequest
ßß& 3
.
ßß3 4
Profile
ßß4 ;
.
ßß; <
Player
ßß< B
.
ßßB C
	BirthDate
ßßC L
}
®® 
;
®® @
2ServiceFriendRequestForNonCallbackMethodsReference
™™ >
.
™™> ?
Profiles
™™? G
profiles
™™H P
=
™™Q R
new
™™S VA
2ServiceFriendRequestForNonCallbackMethodsReference™™W â
.™™â ä
Profiles™™ä í
{
´´ 
	IDProfile
¨¨ 
=
¨¨ 
friendRequest
¨¨ )
.
¨¨) *
Profile
¨¨* 1
.
¨¨1 2
	IDProfile
¨¨2 ;
,
¨¨; <
Coins
≠≠ 
=
≠≠ 
friendRequest
≠≠ %
.
≠≠% &
Profile
≠≠& -
.
≠≠- .
Coins
≠≠. 3
,
≠≠3 4
LoginStatus
ÆÆ 
=
ÆÆ 
friendRequest
ÆÆ +
.
ÆÆ+ ,
Profile
ÆÆ, 3
.
ÆÆ3 4
LoginStatus
ÆÆ4 ?
,
ÆÆ? @
Players
ØØ 
=
ØØ 
players
ØØ !
}
∞∞ 
;
∞∞ @
2ServiceFriendRequestForNonCallbackMethodsReference
≤≤ >
.
≤≤> ?
Players
≤≤? F
players1
≤≤G O
=
≤≤P Q
new
≤≤R UA
2ServiceFriendRequestForNonCallbackMethodsReference≤≤V à
.≤≤à â
Players≤≤â ê
{
≥≥ 
IDPlayer
¥¥ 
=
¥¥ 
friendRequest
¥¥ (
.
¥¥( )
Profile1
¥¥) 1
.
¥¥1 2
Player
¥¥2 8
.
¥¥8 9
IDPlayer
¥¥9 A
,
¥¥A B
Names
µµ 
=
µµ 
friendRequest
µµ %
.
µµ% &
Profile1
µµ& .
.
µµ. /
Player
µµ/ 5
.
µµ5 6
Names
µµ6 ;
,
µµ; <
Surnames
∂∂ 
=
∂∂ 
friendRequest
∂∂ (
.
∂∂( )
Profile1
∂∂) 1
.
∂∂1 2
Player
∂∂2 8
.
∂∂8 9
Surnames
∂∂9 A
,
∂∂A B
Email
∑∑ 
=
∑∑ 
friendRequest
∑∑ %
.
∑∑% &
Profile1
∑∑& .
.
∑∑. /
Player
∑∑/ 5
.
∑∑5 6
Email
∑∑6 ;
,
∑∑; <
NickName
∏∏ 
=
∏∏ 
friendRequest
∏∏ (
.
∏∏( )
Profile1
∏∏) 1
.
∏∏1 2
Player
∏∏2 8
.
∏∏8 9
NickName
∏∏9 A
,
∏∏A B
	BirthDate
ππ 
=
ππ 
(
ππ 
DateTime
ππ %
)
ππ% &
friendRequest
ππ& 3
.
ππ3 4
Profile1
ππ4 <
.
ππ< =
Player
ππ= C
.
ππC D
	BirthDate
ππD M
}
∫∫ 
;
∫∫ @
2ServiceFriendRequestForNonCallbackMethodsReference
ºº >
.
ºº> ?
Profiles
ºº? G
	profiles1
ººH Q
=
ººR S
new
ººT WA
2ServiceFriendRequestForNonCallbackMethodsReferenceººX ä
.ººä ã
Profilesººã ì
{
ΩΩ 
	IDProfile
ææ 
=
ææ 
friendRequest
ææ )
.
ææ) *
Profile1
ææ* 2
.
ææ2 3
	IDProfile
ææ3 <
,
ææ< =
Coins
øø 
=
øø 
friendRequest
øø %
.
øø% &
Profile1
øø& .
.
øø. /
Coins
øø/ 4
,
øø4 5
LoginStatus
¿¿ 
=
¿¿ 
friendRequest
¿¿ +
.
¿¿+ ,
Profile1
¿¿, 4
.
¿¿4 5
LoginStatus
¿¿5 @
,
¿¿@ A
Players
¡¡ 
=
¡¡ 
players1
¡¡ "
}
¬¬ 
;
¬¬ 
friendRequests
ƒƒ 
.
ƒƒ 
Profiles
ƒƒ #
=
ƒƒ$ %
profiles
ƒƒ& .
;
ƒƒ. /
friendRequests
≈≈ 
.
≈≈ 
	Profiles1
≈≈ $
=
≈≈% &
	profiles1
≈≈' 0
;
≈≈0 1
return
«« 
friendRequests
«« !
;
««! "
}
»» 	
private
   
string
   G
9InvalidNicknameInSendFriendRequestTextFieldsTextGenerator
   P
(
  P Q
)
  Q R
{
ÀÀ 	
string
ÃÃ 
	finalText
ÃÃ 
=
ÃÃ 
$str
ÃÃ !
;
ÃÃ! "
string
ÕÕ 
nickNamePattern
ÕÕ "
=
ÕÕ# $
$str
ÕÕ% ?
;
ÕÕ? @
Regex
ŒŒ 
nickNameRegex
ŒŒ 
=
ŒŒ  !
new
ŒŒ" %
Regex
ŒŒ& +
(
ŒŒ+ ,
nickNamePattern
ŒŒ, ;
)
ŒŒ; <
;
ŒŒ< =
Match
œœ 
nickNameMatch
œœ 
=
œœ  !
nickNameRegex
œœ" /
.
œœ/ 0
Match
œœ0 5
(
œœ5 6
NicknameTextBox
œœ6 E
.
œœE F
Text
œœF J
)
œœJ K
;
œœK L
if
—— 
(
—— 
!
—— 
nickNameMatch
—— 
.
—— 
Success
—— &
)
——& '
{
““ 
	finalText
”” 
=
”” 
resourceManager
”” +
.
””+ ,
	GetString
””, 5
(
””5 6
$str
””6 H
,
””H I
cultureInfo
””J U
)
””U V
+
””W X
$str
””Y ]
;
””] ^
}
‘‘ 
return
÷÷ 
	finalText
÷÷ 
;
÷÷ 
}
◊◊ 	
public
ŸŸ 
void
ŸŸ 
GoToLobbyView
ŸŸ !
(
ŸŸ! "
)
ŸŸ" #
{
⁄⁄ 	
if
€€ 
(
€€ 
!
€€ )
entryToThisPageViaLobbyView
€€ ,
)
€€, -
{
‹‹ 

mainWindow
›› 
.
›› 
OpenTheLobbyView
›› +
(
››+ ,
this
››, 0
)
››0 1
;
››1 2
}
ﬁﬁ 
}
ﬂﬂ 	
public
‰‰ 
void
‰‰ (
UpdateFriendsRequestsLists
‰‰ .
(
‰‰. /
)
‰‰/ 0
{
ÂÂ 	
if
ÊÊ 
(
ÊÊ 
PageStateManager
ÊÊ  
.
ÊÊ  !
CurrentPage
ÊÊ! ,
is
ÊÊ- /
FriendsView
ÊÊ0 ;
currentPage
ÊÊ< G
)
ÊÊG H
{
ÁÁ 
currentPage
ËË 
.
ËË +
ShowUpdatedFriendRequestsList
ËË 9
(
ËË9 :
)
ËË: ;
;
ËË; <
}
ÈÈ 
}
ÍÍ 	
}
ÏÏ 
}ÌÌ èß
wC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\LobbyView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
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
,) *(
IChatCallbackMethodsCallback+ G
,G H)
ILobbyCallbackMethodsCallbackI f
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
public!! 
static!! %
ChatCallbackMethodsClient!! /%
chatCallbackMethodsClient!!0 I
;!!I J
public"" 
static"" &
LobbyCallbackMethodsClient"" 0&
lobbyCallbackMethodsClient""1 K
;""K L
public(( 
	LobbyView(( 
((( 

MainWindow(( #

mainWindow(($ .
)((. /
{)) 	
PageStateManager** 
.** 
CurrentPage** (
=**) *
this**+ /
;**/ 0
this,, 
.,, 

mainWindow,, 
=,, 

mainWindow,, (
;,,( )%
chatCallbackMethodsClient-- %
=--& '
new--( +%
ChatCallbackMethodsClient--, E
(--E F
new--F I
InstanceContext--J Y
(--Y Z
this--Z ^
)--^ _
)--_ `
;--` a&
lobbyCallbackMethodsClient.. &
=..' (
new..) ,&
LobbyCallbackMethodsClient..- G
(..G H
new..H K
InstanceContext..L [
(..[ \
this..\ `
)..` a
)..a b
;..b c
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
InitializeComponent33 
(33  
)33  !
;33! " 
ShowConnectedPlayers44  
(44  !
)44! "
;44" #)
LobbyNonCallbackMethodsClient66 ))
lobbyNonCallbackMethodsClient66* G
=66H I
new66J M)
LobbyNonCallbackMethodsClient66N k
(66k l
)66l m
;66m n
if77 
(77 )
lobbyNonCallbackMethodsClient77 -
.77- .
IsAdmin77. 5
(775 6

MainWindow776 @
.77@ A
loggedProfile77A N
.77N O
Player77O U
.77U V
NickName77V ^
)77^ _
)77_ `
{88 (
AdminPlayerButtonsStackPanel99 ,
.99, -

Visibility99- 7
=998 9

Visibility99: D
.99D E
Visible99E L
;99L M)
NormalPlayerButtonsStackPanel:: -
.::- .

Visibility::. 8
=::9 :

Visibility::; E
.::E F
	Collapsed::F O
;::O P
};; 
else<< 
{== (
AdminPlayerButtonsStackPanel>> ,
.>>, -

Visibility>>- 7
=>>8 9

Visibility>>: D
.>>D E
	Collapsed>>E N
;>>N O)
NormalPlayerButtonsStackPanel?? -
.??- .

Visibility??. 8
=??9 :

Visibility??; E
.??E F
Visible??F M
;??M N
}@@ )
lobbyNonCallbackMethodsClientBB )
.BB) *
CloseBB* /
(BB/ 0
)BB0 1
;BB1 2
}CC 	
privateII 
voidII "
BanPlayerButtonOnClickII +
(II+ ,
objectII, 2
senderII3 9
,II9 :
RoutedEventArgsII; J
eIIK L
)IIL M
{JJ 	
ifKK 
(KK 
senderKK 
isKK 
ButtonKK 
buttonKK  &
)KK& '
{LL 
ifMM 
(MM 
newMM 
AlertPopUpGeneratorMM +
(MM+ ,
)MM, -
.MM- ..
"OpenInternationalizedDesicionPopUpMM. P
(MMP Q
$strMMQ `
,MM` a
$str	MMb É
)
MMÉ Ñ
)
MMÑ Ö
{NN 

StackPanelOO 
buttonParentOO +
=OO, -
VisualTreeHelperOO. >
.OO> ?
	GetParentOO? H
(OOH I
buttonOOI O
)OOO P
asOOQ S

StackPanelOOT ^
;OO^ _

StackPanelPP 
buttonParentParentPP 1
=PP2 3
VisualTreeHelperPP4 D
.PPD E
	GetParentPPE N
(PPN O
buttonParentPPO [
)PP[ \
asPP] _

StackPanelPP` j
;PPj k

StackPanelQQ  
playerNicknameParentQQ 3
=QQ4 5
(QQ6 7

StackPanelQQ7 A
)QQA B
VisualTreeHelperQQB R
.QQR S
GetChildQQS [
(QQ[ \
buttonParentParentQQ\ n
,QQn o
$numQQp q
)QQq r
;QQr s
	TextBlockRR 
nicknameRR &
=RR' (
(RR) *
	TextBlockRR* 3
)RR3 4
VisualTreeHelperRR4 D
.RRD E
GetChildRRE M
(RRM N 
playerNicknameParentRRN b
,RRb c
$numRRd e
)RRe f
;RRf g&
lobbyCallbackMethodsClientTT .
.TT. /
	BanPlayerTT/ 8
(TT8 9
nicknameTT9 A
.TTA B
TextTTB F
)TTF G
;TTG H
newVV 
AlertPopUpGeneratorVV +
(VV+ ,
)VV, -
.VV- .-
!OpenInternationalizedSuccessPopUpVV. O
(VVO P
$strVVP Y
,VVY Z
$strVV[ x
)VVx y
;VVy z
}WW 
}XX 
}YY 	
private[[ 
void[[ &
BannedPlayersButtonOnClick[[ /
([[/ 0
object[[0 6
sender[[7 =
,[[= >
RoutedEventArgs[[? N
e[[O P
)[[P Q
{\\ 	
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
new^^' *
BannedPlayersView^^+ <
(^^< =

mainWindow^^= G
)^^G H
)^^H I
;^^I J
}__ 	
privateaa 
voidaa 
ChatButtonOnClickaa &
(aa& '
objectaa' -
senderaa. 4
,aa4 5
RoutedEventArgsaa6 E
eaaF G
)aaG H
{bb 	
NavigationServicecc 
navigationServicecc /
=cc0 1
NavigationServicecc2 C
.ccC D 
GetNavigationServiceccD X
(ccX Y
thisccY ]
)cc] ^
;cc^ _
navigationServicedd 
.dd 
Navigatedd &
(dd& '
newdd' *
ChatViewdd+ 3
(dd3 4

mainWindowdd4 >
)dd> ?
)dd? @
;dd@ A
}ee 	
privategg 
voidgg &
ConfigurationButtonOnClickgg /
(gg/ 0
objectgg0 6
sendergg7 =
,gg= >
RoutedEventArgsgg? N
eggO P
)ggP Q
{hh 	
newii 
AlertPopUpGeneratorii #
(ii# $
)ii$ %
.ii% &-
!OpenInternationalizedWarningPopUpii& G
(iiG H
$striiH U
,iiU V
$striiW i
)iii j
;iij k
}jj 	
privatell 
voidll 
ExitButtonOnClickll &
(ll& '
objectll' -
senderll. 4
,ll4 5
RoutedEventArgsll6 E
ellF G
)llG H
{mm 	
	LobbyViewnn 
.nn %
chatCallbackMethodsClientnn /
.nn/ 0
	LeaveChatnn0 9
(nn9 :

MainWindownn: D
.nnD E
loggedProfilennE R
.nnR S
PlayernnS Y
.nnY Z
NickNamennZ b
)nnb c
;nnc d&
lobbyCallbackMethodsClientoo &
.oo& '

Disconnectoo' 1
(oo1 2

MainWindowoo2 <
.oo< =
loggedProfileoo= J
.ooJ K
PlayerooK Q
.ooQ R
NickNameooR Z
)ooZ [
;oo[ \
NavigationServicepp 
navigationServicepp /
=pp0 1
NavigationServicepp2 C
.ppC D 
GetNavigationServiceppD X
(ppX Y
thisppY ]
)pp] ^
;pp^ _
navigationServiceqq 
.qq 
Navigateqq &
(qq& '
newqq' *
MenuViewqq+ 3
(qq3 4

mainWindowqq4 >
)qq> ?
)qq? @
;qq@ A
}rr 	
privatett 
voidtt  
FriendsButtonOnClicktt )
(tt) *
objecttt* 0
sendertt1 7
,tt7 8
RoutedEventArgstt9 H
ettI J
)ttJ K
{uu 	
NavigationServicevv 
navigationServicevv /
=vv0 1
NavigationServicevv2 C
.vvC D 
GetNavigationServicevvD X
(vvX Y
thisvvY ]
)vv] ^
;vv^ _
navigationServiceww 
.ww 
Navigateww &
(ww& '
newww' *
FriendsViewww+ 6
(ww6 7

mainWindowww7 A
,wwA B
truewwC G
)wwG H
)wwH I
;wwI J
}xx 	
privatezz 
voidzz "
MakeAdminButtonOnClickzz +
(zz+ ,
objectzz, 2
senderzz3 9
,zz9 :
RoutedEventArgszz; J
ezzK L
)zzL M
{{{ 	
if|| 
(|| 
sender|| 
is|| 
Button||  
button||! '
)||' (
{}} 
if~~ 
(~~ 
new~~ 
AlertPopUpGenerator~~ +
(~~+ ,
)~~, -
.~~- ..
"OpenInternationalizedDesicionPopUp~~. P
(~~P Q
$str~~Q `
,~~` a
$str	~~b å
)
~~å ç
)
~~ç é
{ 

StackPanel
ÄÄ 
buttonParent
ÄÄ +
=
ÄÄ, -
VisualTreeHelper
ÄÄ. >
.
ÄÄ> ?
	GetParent
ÄÄ? H
(
ÄÄH I
button
ÄÄI O
)
ÄÄO P
as
ÄÄQ S

StackPanel
ÄÄT ^
;
ÄÄ^ _

StackPanel
ÅÅ  
buttonParentParent
ÅÅ 1
=
ÅÅ2 3
VisualTreeHelper
ÅÅ4 D
.
ÅÅD E
	GetParent
ÅÅE N
(
ÅÅN O
buttonParent
ÅÅO [
)
ÅÅ[ \
as
ÅÅ] _

StackPanel
ÅÅ` j
;
ÅÅj k

StackPanel
ÇÇ "
playerNicknameParent
ÇÇ 3
=
ÇÇ4 5
(
ÇÇ6 7

StackPanel
ÇÇ7 A
)
ÇÇA B
VisualTreeHelper
ÇÇB R
.
ÇÇR S
GetChild
ÇÇS [
(
ÇÇ[ \ 
buttonParentParent
ÇÇ\ n
,
ÇÇn o
$num
ÇÇp q
)
ÇÇq r
;
ÇÇr s
	TextBlock
ÉÉ 
nickname
ÉÉ &
=
ÉÉ' (
(
ÉÉ) *
	TextBlock
ÉÉ* 3
)
ÉÉ3 4
VisualTreeHelper
ÉÉ4 D
.
ÉÉD E
GetChild
ÉÉE M
(
ÉÉM N"
playerNicknameParent
ÉÉN b
,
ÉÉb c
$num
ÉÉd e
)
ÉÉe f
;
ÉÉf g(
lobbyCallbackMethodsClient
ÖÖ .
.
ÖÖ. /
SetAdmin
ÖÖ/ 7
(
ÖÖ7 8
nickname
ÖÖ8 @
.
ÖÖ@ A
Text
ÖÖA E
)
ÖÖE F
;
ÖÖF G
new
áá !
AlertPopUpGenerator
áá +
(
áá+ ,
)
áá, -
.
áá- ./
!OpenInternationalizedSuccessPopUp
áá. O
(
ááO P
$str
ááP Y
,
ááY Z
$str
áá[ v
)
ááv w
;
ááw x
}
àà 
}
ââ 
}
ää 	
private
åå 
void
åå 
PlayButtonOnClick
åå &
(
åå& '
object
åå' -
sender
åå. 4
,
åå4 5
RoutedEventArgs
åå6 E
e
ååF G
)
ååG H
{
çç 	
new
éé !
AlertPopUpGenerator
éé #
(
éé# $
)
éé$ %
.
éé% &/
!OpenInternationalizedWarningPopUp
éé& G
(
ééG H
$str
ééH U
,
ééU V
$str
ééW i
)
ééi j
;
ééj k
}
öö 	
public
†† 
void
†† 9
+ExitFromThisPageForBeingExpeltFromLobbyView
†† ?
(
††? @
)
††@ A
{
°° 	
	LobbyView
¢¢ 
.
¢¢ '
chatCallbackMethodsClient
¢¢ /
.
¢¢/ 0
	LeaveChat
¢¢0 9
(
¢¢9 :

MainWindow
¢¢: D
.
¢¢D E
loggedProfile
¢¢E R
.
¢¢R S
Player
¢¢S Y
.
¢¢Y Z
NickName
¢¢Z b
)
¢¢b c
;
¢¢c d
NavigationService
££ 
navigationService
££ /
=
££0 1
NavigationService
££2 C
.
££C D"
GetNavigationService
££D X
(
££X Y
this
££Y ]
)
££] ^
;
££^ _
navigationService
§§ 
.
§§ 
Navigate
§§ &
(
§§& '
new
§§' *
MenuView
§§+ 3
(
§§3 4

mainWindow
§§4 >
)
§§> ?
)
§§? @
;
§§@ A
new
•• !
AlertPopUpGenerator
•• #
(
••# $
)
••$ %
.
••% &/
!OpenInternationalizedWarningPopUp
••& G
(
••G H
$str
••H P
,
••P Q
$str
••R m
)
••m n
;
••n o
}
¶¶ 	
public
®® 
void
®® "
ShowConnectedPlayers
®® (
(
®®( )
)
®®) *
{
©© 	&
ConnectedUsersStackPanel
™™ $
.
™™$ %
Children
™™% -
.
™™- .
Clear
™™. 3
(
™™3 4
)
™™4 5
;
™™5 6+
LobbyNonCallbackMethodsClient
¨¨ )+
lobbyNonCallbackMethodsClient
¨¨* G
=
¨¨H I
new
¨¨J M+
LobbyNonCallbackMethodsClient
¨¨N k
(
¨¨k l
)
¨¨l m
;
¨¨m n
foreach
≠≠ 
(
≠≠ 
string
≠≠ 
profile
≠≠ #
in
≠≠$ &+
lobbyNonCallbackMethodsClient
≠≠' D
.
≠≠D E"
GetConnectedProfiles
≠≠E Y
(
≠≠Y Z
)
≠≠Z [
)
≠≠[ \
{
ÆÆ 
Border
ØØ 
playerBorder
ØØ #
=
ØØ$ %
new
ØØ& )
Border
ØØ* 0
{
∞∞ 
Margin
±± 
=
±± 
new
±±  
	Thickness
±±! *
(
±±* +
$num
±±+ -
,
±±- .
$num
±±/ 0
,
±±0 1
$num
±±2 3
,
±±3 4
$num
±±5 6
)
±±6 7
,
±±7 8
Height
≤≤ 
=
≤≤ 
$num
≤≤  
,
≤≤  !
Width
≥≥ 
=
≥≥ 
$num
≥≥ 
,
≥≥  
CornerRadius
¥¥  
=
¥¥! "
new
¥¥# &
CornerRadius
¥¥' 3
(
¥¥3 4
$num
¥¥4 6
)
¥¥6 7
,
¥¥7 8

Background
µµ 
=
µµ  
new
µµ! $
SolidColorBrush
µµ% 4
(
µµ4 5
Colors
µµ5 ;
.
µµ; <
Black
µµ< A
)
µµA B
}
∂∂ 
;
∂∂ 
playerBorder
∑∑ 
.
∑∑ 

Background
∑∑ '
.
∑∑' (
Opacity
∑∑( /
=
∑∑0 1
$num
∑∑2 5
;
∑∑5 6
Grid
ππ #
playerBorderContainer
ππ *
=
ππ+ ,
new
ππ- 0
Grid
ππ1 5
(
ππ5 6
)
ππ6 7
;
ππ7 8

StackPanel
ªª $
playerBorderStackPanel
ªª 1
=
ªª2 3
new
ªª4 7

StackPanel
ªª8 B
(
ªªB C
)
ªªC D
;
ªªD E
if
ΩΩ 
(
ΩΩ +
lobbyNonCallbackMethodsClient
ΩΩ 1
.
ΩΩ1 2
IsAdmin
ΩΩ2 9
(
ΩΩ9 :
profile
ΩΩ: A
)
ΩΩA B
)
ΩΩB C
{
ææ 
	TextBlock
øø 
	adminText
øø '
=
øø( )
new
øø* -
	TextBlock
øø. 7
{
¿¿ 
Text
¡¡ 
=
¡¡ 
resourceManager
¡¡ .
.
¡¡. /
	GetString
¡¡/ 8
(
¡¡8 9
$str
¡¡9 @
,
¡¡@ A
cultureInfo
¡¡B M
)
¡¡M N
,
¡¡N O
Margin
¬¬ 
=
¬¬  
new
¬¬! $
	Thickness
¬¬% .
(
¬¬. /
$num
¬¬/ 0
,
¬¬0 1
$num
¬¬2 4
,
¬¬4 5
$num
¬¬6 7
,
¬¬7 8
$num
¬¬9 :
)
¬¬: ;
,
¬¬; <
VerticalAlignment
√√ )
=
√√* +
VerticalAlignment
√√, =
.
√√= >
Center
√√> D
,
√√D E

Foreground
ƒƒ "
=
ƒƒ# $
new
ƒƒ% (
SolidColorBrush
ƒƒ) 8
(
ƒƒ8 9
Colors
ƒƒ9 ?
.
ƒƒ? @
Gold
ƒƒ@ D
)
ƒƒD E
,
ƒƒE F
TextWrapping
≈≈ $
=
≈≈% &
TextWrapping
≈≈' 3
.
≈≈3 4
Wrap
≈≈4 8
,
≈≈8 9
TextAlignment
∆∆ %
=
∆∆& '
TextAlignment
∆∆( 5
.
∆∆5 6
Center
∆∆6 <
,
∆∆< =!
HorizontalAlignment
«« +
=
««, -!
HorizontalAlignment
««. A
.
««A B
Center
««B H
,
««H I
FontSize
»»  
=
»»! "
$num
»»# %
,
»»% &
Width
…… 
=
…… 
$num
……  #
}
   
;
   $
playerBorderStackPanel
ÃÃ *
.
ÃÃ* +
Children
ÃÃ+ 3
.
ÃÃ3 4
Add
ÃÃ4 7
(
ÃÃ7 8
	adminText
ÃÃ8 A
)
ÃÃA B
;
ÃÃB C
}
ÕÕ 
if
œœ 
(
œœ 
profile
œœ 
==
œœ 

MainWindow
œœ )
.
œœ) *
loggedProfile
œœ* 7
.
œœ7 8
Player
œœ8 >
.
œœ> ?
NickName
œœ? G
)
œœG H
{
–– 
	TextBlock
—— 
youText
—— %
=
——& '
new
——( +
	TextBlock
——, 5
{
““ 
Text
”” 
=
”” 
resourceManager
”” .
.
””. /
	GetString
””/ 8
(
””8 9
$str
””9 >
,
””> ?
cultureInfo
””@ K
)
””K L
,
””L M
VerticalAlignment
‘‘ )
=
‘‘* +
VerticalAlignment
‘‘, =
.
‘‘= >
Center
‘‘> D
,
‘‘D E

Foreground
’’ "
=
’’# $
new
’’% (
SolidColorBrush
’’) 8
(
’’8 9
Colors
’’9 ?
.
’’? @
White
’’@ E
)
’’E F
,
’’F G
TextWrapping
÷÷ $
=
÷÷% &
TextWrapping
÷÷' 3
.
÷÷3 4
Wrap
÷÷4 8
,
÷÷8 9
TextAlignment
◊◊ %
=
◊◊& '
TextAlignment
◊◊( 5
.
◊◊5 6
Center
◊◊6 <
,
◊◊< =!
HorizontalAlignment
ÿÿ +
=
ÿÿ, -!
HorizontalAlignment
ÿÿ. A
.
ÿÿA B
Center
ÿÿB H
,
ÿÿH I
FontSize
ŸŸ  
=
ŸŸ! "
$num
ŸŸ# %
,
ŸŸ% &
Width
⁄⁄ 
=
⁄⁄ 
$num
⁄⁄  #
}
€€ 
;
€€ 
if
›› 
(
›› +
lobbyNonCallbackMethodsClient
›› 5
.
››5 6
IsAdmin
››6 =
(
››= >
profile
››> E
)
››E F
)
››F G
{
ﬁﬁ 
youText
ﬂﬂ 
.
ﬂﬂ  
Margin
ﬂﬂ  &
=
ﬂﬂ' (
new
ﬂﬂ) ,
	Thickness
ﬂﬂ- 6
(
ﬂﬂ6 7
$num
ﬂﬂ7 8
,
ﬂﬂ8 9
$num
ﬂﬂ: <
,
ﬂﬂ< =
$num
ﬂﬂ> ?
,
ﬂﬂ? @
$num
ﬂﬂA B
)
ﬂﬂB C
;
ﬂﬂC D
}
‡‡ 
else
·· 
{
‚‚ 
youText
„„ 
.
„„  
Margin
„„  &
=
„„' (
new
„„) ,
	Thickness
„„- 6
(
„„6 7
$num
„„7 8
,
„„8 9
$num
„„: ;
,
„„; <
$num
„„= >
,
„„> ?
$num
„„@ A
)
„„A B
;
„„B C
}
‰‰ $
playerBorderStackPanel
ÁÁ *
.
ÁÁ* +
Children
ÁÁ+ 3
.
ÁÁ3 4
Add
ÁÁ4 7
(
ÁÁ7 8
youText
ÁÁ8 ?
)
ÁÁ? @
;
ÁÁ@ A
}
ËË 
Image
ÍÍ 
profileImage
ÍÍ "
=
ÍÍ# $
new
ÍÍ% (
Image
ÍÍ) .
{
ÎÎ 
Source
ÏÏ 
=
ÏÏ 
new
ÏÏ  
ImageLoader
ÏÏ! ,
(
ÏÏ, -
)
ÏÏ- .
.
ÏÏ. /&
GetImageByPlayerNickname
ÏÏ/ G
(
ÏÏG H
profile
ÏÏH O
)
ÏÏO P
}
ÌÌ 
;
ÌÌ 
if
ÔÔ 
(
ÔÔ +
lobbyNonCallbackMethodsClient
ÔÔ 1
.
ÔÔ1 2
IsAdmin
ÔÔ2 9
(
ÔÔ9 :
profile
ÔÔ: A
)
ÔÔA B
||
ÔÔC E+
lobbyNonCallbackMethodsClient
ÔÔF c
.
ÔÔc d
IsAdmin
ÔÔd k
(
ÔÔk l

MainWindow
ÔÔl v
.
ÔÔv w
loggedProfileÔÔw Ñ
.ÔÔÑ Ö
PlayerÔÔÖ ã
.ÔÔã å
NickNameÔÔå î
)ÔÔî ï
)ÔÔï ñ
{
 
profileImage
ÒÒ  
.
ÒÒ  !
Height
ÒÒ! '
=
ÒÒ( )
$num
ÒÒ* -
;
ÒÒ- .
profileImage
ÚÚ  
.
ÚÚ  !
Width
ÚÚ! &
=
ÚÚ' (
$num
ÚÚ) ,
;
ÚÚ, -
if
ÙÙ 
(
ÙÙ 
profile
ÙÙ 
==
ÙÙ  "

MainWindow
ÙÙ# -
.
ÙÙ- .
loggedProfile
ÙÙ. ;
.
ÙÙ; <
Player
ÙÙ< B
.
ÙÙB C
NickName
ÙÙC K
)
ÙÙK L
{
ıı 
profileImage
ˆˆ $
.
ˆˆ$ %
Margin
ˆˆ% +
=
ˆˆ, -
new
ˆˆ. 1
	Thickness
ˆˆ2 ;
(
ˆˆ; <
$num
ˆˆ< =
,
ˆˆ= >
$num
ˆˆ? A
,
ˆˆA B
$num
ˆˆC D
,
ˆˆD E
$num
ˆˆF G
)
ˆˆG H
;
ˆˆH I
}
˜˜ 
else
¯¯ 
{
˘˘ 
profileImage
˙˙ $
.
˙˙$ %
Margin
˙˙% +
=
˙˙, -
new
˙˙. 1
	Thickness
˙˙2 ;
(
˙˙; <
$num
˙˙< =
,
˙˙= >
$num
˙˙? A
,
˙˙A B
$num
˙˙C D
,
˙˙D E
$num
˙˙F G
)
˙˙G H
;
˙˙H I
}
˚˚ 
}
¸¸ 
if
˛˛ 
(
˛˛ 
!
˛˛ +
lobbyNonCallbackMethodsClient
˛˛ 2
.
˛˛2 3
IsAdmin
˛˛3 :
(
˛˛: ;

MainWindow
˛˛; E
.
˛˛E F
loggedProfile
˛˛F S
.
˛˛S T
Player
˛˛T Z
.
˛˛Z [
NickName
˛˛[ c
)
˛˛c d
&&
˛˛e g
!
˛˛h i,
lobbyNonCallbackMethodsClient˛˛i Ü
.˛˛Ü á
IsAdmin˛˛á é
(˛˛é è
profile˛˛è ñ
)˛˛ñ ó
)˛˛ó ò
{
ˇˇ 
profileImage
ÄÄ  
.
ÄÄ  !
Margin
ÄÄ! '
=
ÄÄ( )
new
ÄÄ* -
	Thickness
ÄÄ. 7
(
ÄÄ7 8
$num
ÄÄ8 9
,
ÄÄ9 :
$num
ÄÄ; =
,
ÄÄ= >
$num
ÄÄ? @
,
ÄÄ@ A
$num
ÄÄB C
)
ÄÄC D
;
ÄÄD E
if
ÇÇ 
(
ÇÇ 
profile
ÇÇ 
==
ÇÇ  "

MainWindow
ÇÇ# -
.
ÇÇ- .
loggedProfile
ÇÇ. ;
.
ÇÇ; <
Player
ÇÇ< B
.
ÇÇB C
NickName
ÇÇC K
)
ÇÇK L
{
ÉÉ 
profileImage
ÑÑ $
.
ÑÑ$ %
Height
ÑÑ% +
=
ÑÑ, -
$num
ÑÑ. 1
;
ÑÑ1 2
profileImage
ÖÖ $
.
ÖÖ$ %
Width
ÖÖ% *
=
ÖÖ+ ,
$num
ÖÖ- 0
;
ÖÖ0 1
}
ÜÜ 
else
áá 
{
àà 
profileImage
ââ $
.
ââ$ %
Height
ââ% +
=
ââ, -
$num
ââ. 1
;
ââ1 2
profileImage
ää $
.
ää$ %
Width
ää% *
=
ää+ ,
$num
ää- 0
;
ää0 1
}
ãã 
}
åå $
playerBorderStackPanel
éé &
.
éé& '
Children
éé' /
.
éé/ 0
Add
éé0 3
(
éé3 4
profileImage
éé4 @
)
éé@ A
;
ééA B

StackPanel
êê &
playerNicknameStackPanel
êê 3
=
êê4 5
new
êê6 9

StackPanel
êê: D
{
ëë 
Height
íí 
=
íí 
$num
íí 
,
íí  
Margin
ìì 
=
ìì 
new
ìì  
	Thickness
ìì! *
(
ìì* +
$num
ìì+ ,
,
ìì, -
$num
ìì. 0
,
ìì0 1
$num
ìì2 3
,
ìì3 4
$num
ìì5 6
)
ìì6 7
}
îî 
;
îî 
	TextBlock
ññ 
playerNickname
ññ (
=
ññ) *
new
ññ+ .
	TextBlock
ññ/ 8
{
óó 
Text
òò 
=
òò 
profile
òò "
,
òò" #
VerticalAlignment
ôô %
=
ôô& '
VerticalAlignment
ôô( 9
.
ôô9 :
Center
ôô: @
,
ôô@ A

Foreground
öö 
=
öö  
new
öö! $
SolidColorBrush
öö% 4
(
öö4 5
Colors
öö5 ;
.
öö; <
White
öö< A
)
ööA B
,
ööB C
TextWrapping
õõ  
=
õõ! "
TextWrapping
õõ# /
.
õõ/ 0
Wrap
õõ0 4
,
õõ4 5
TextAlignment
úú !
=
úú" #
TextAlignment
úú$ 1
.
úú1 2
Center
úú2 8
,
úú8 9!
HorizontalAlignment
ùù '
=
ùù( )!
HorizontalAlignment
ùù* =
.
ùù= >
Center
ùù> D
,
ùùD E
FontSize
ûû 
=
ûû 
$num
ûû !
,
ûû! "
Width
üü 
=
üü 
$num
üü 
}
†† 
;
†† &
playerNicknameStackPanel
¢¢ (
.
¢¢( )
Children
¢¢) 1
.
¢¢1 2
Add
¢¢2 5
(
¢¢5 6
playerNickname
¢¢6 D
)
¢¢D E
;
¢¢E F$
playerBorderStackPanel
££ &
.
££& '
Children
££' /
.
££/ 0
Add
££0 3
(
££3 4&
playerNicknameStackPanel
££4 L
)
££L M
;
££M N
if
•• 
(
•• +
lobbyNonCallbackMethodsClient
•• 1
.
••1 2
IsAdmin
••2 9
(
••9 :

MainWindow
••: D
.
••D E
loggedProfile
••E R
.
••R S
Player
••S Y
.
••Y Z
NickName
••Z b
)
••b c
&&
••d f
!
••g h,
lobbyNonCallbackMethodsClient••h Ö
.••Ö Ü
IsAdmin••Ü ç
(••ç é
profile••é ï
)••ï ñ
)••ñ ó
{
¶¶ 

StackPanel
ßß 
buttonsStackPanel
ßß 0
=
ßß1 2
new
ßß3 6

StackPanel
ßß7 A
{
®® 
Margin
©© 
=
©©  
new
©©! $
	Thickness
©©% .
(
©©. /
$num
©©/ 0
,
©©0 1
$num
©©2 4
,
©©4 5
$num
©©6 7
,
©©7 8
$num
©©9 :
)
©©: ;
,
©©; <
Orientation
™™ #
=
™™$ %
Orientation
™™& 1
.
™™1 2

Horizontal
™™2 <
}
´´ 
;
´´ 
	TextBlock
≠≠ !
makeAdminButtonText
≠≠ 1
=
≠≠2 3
new
≠≠4 7
	TextBlock
≠≠8 A
{
ÆÆ 
TextWrapping
ØØ $
=
ØØ% &
TextWrapping
ØØ' 3
.
ØØ3 4
Wrap
ØØ4 8
,
ØØ8 9
TextAlignment
∞∞ %
=
∞∞& '
TextAlignment
∞∞( 5
.
∞∞5 6
Center
∞∞6 <
,
∞∞< =
Text
±± 
=
±± 
resourceManager
±± .
.
±±. /
	GetString
±±/ 8
(
±±8 9
$str
±±9 E
,
±±E F
cultureInfo
±±G R
)
±±R S
}
≤≤ 
;
≤≤ 
Button
¥¥ 
makeAdminButton
¥¥ *
=
¥¥+ ,
new
¥¥- 0
Button
¥¥1 7
{
µµ 
Style
∂∂ 
=
∂∂ 
(
∂∂  !
Style
∂∂! &
)
∂∂& '
FindResource
∂∂' 3
(
∂∂3 4
$str
∂∂4 A
)
∂∂A B
,
∂∂B C
FontSize
∑∑  
=
∑∑! "
$num
∑∑# %
,
∑∑% &
Height
∏∏ 
=
∏∏  
$num
∏∏! #
,
∏∏# $
Width
ππ 
=
ππ 
$num
ππ  "
,
ππ" #
Margin
∫∫ 
=
∫∫  
new
∫∫! $
	Thickness
∫∫% .
(
∫∫. /
$num
∫∫/ 1
,
∫∫1 2
$num
∫∫3 4
,
∫∫4 5
$num
∫∫6 7
,
∫∫7 8
$num
∫∫9 :
)
∫∫: ;
,
∫∫; <
Content
ªª 
=
ªª  !!
makeAdminButtonText
ªª" 5
}
ºº 
;
ºº 
makeAdminButton
ΩΩ #
.
ΩΩ# $
Click
ΩΩ$ )
+=
ΩΩ* ,$
MakeAdminButtonOnClick
ΩΩ- C
;
ΩΩC D
Button
øø 
banPlayerButton
øø *
=
øø+ ,
new
øø- 0
Button
øø1 7
{
¿¿ 
Content
¡¡ 
=
¡¡  !
resourceManager
¡¡" 1
.
¡¡1 2
	GetString
¡¡2 ;
(
¡¡; <
$str
¡¡< A
,
¡¡A B
cultureInfo
¡¡C N
)
¡¡N O
,
¡¡O P
Style
¬¬ 
=
¬¬ 
(
¬¬  !
Style
¬¬! &
)
¬¬& '
FindResource
¬¬' 3
(
¬¬3 4
$str
¬¬4 ?
)
¬¬? @
,
¬¬@ A
Height
√√ 
=
√√  
$num
√√! #
,
√√# $
Width
ƒƒ 
=
ƒƒ 
$num
ƒƒ  "
,
ƒƒ" #
Margin
≈≈ 
=
≈≈  
new
≈≈! $
	Thickness
≈≈% .
(
≈≈. /
$num
≈≈/ 1
,
≈≈1 2
$num
≈≈3 4
,
≈≈4 5
$num
≈≈6 7
,
≈≈7 8
$num
≈≈9 :
)
≈≈: ;
}
∆∆ 
;
∆∆ 
banPlayerButton
«« #
.
««# $
Click
««$ )
+=
««* ,$
BanPlayerButtonOnClick
««- C
;
««C D
buttonsStackPanel
…… %
.
……% &
Children
……& .
.
……. /
Add
……/ 2
(
……2 3
makeAdminButton
……3 B
)
……B C
;
……C D
buttonsStackPanel
   %
.
  % &
Children
  & .
.
  . /
Add
  / 2
(
  2 3
banPlayerButton
  3 B
)
  B C
;
  C D$
playerBorderStackPanel
ÀÀ *
.
ÀÀ* +
Children
ÀÀ+ 3
.
ÀÀ3 4
Add
ÀÀ4 7
(
ÀÀ7 8
buttonsStackPanel
ÀÀ8 I
)
ÀÀI J
;
ÀÀJ K
}
ÃÃ #
playerBorderContainer
ŒŒ %
.
ŒŒ% &
Children
ŒŒ& .
.
ŒŒ. /
Add
ŒŒ/ 2
(
ŒŒ2 3$
playerBorderStackPanel
ŒŒ3 I
)
ŒŒI J
;
ŒŒJ K
playerBorder
œœ 
.
œœ 
Child
œœ "
=
œœ# $#
playerBorderContainer
œœ% :
;
œœ: ;&
ConnectedUsersStackPanel
–– (
.
––( )
Children
––) 1
.
––1 2
Add
––2 5
(
––5 6
playerBorder
––6 B
)
––B C
;
––C D
}
—— +
lobbyNonCallbackMethodsClient
”” )
.
””) *
Close
””* /
(
””/ 0
)
””0 1
;
””1 2
}
‘‘ 	
public
⁄⁄ 
void
⁄⁄ 

UpdateChat
⁄⁄ 
(
⁄⁄ 
)
⁄⁄  
{
€€ 	
if
‹‹ 
(
‹‹ 
PageStateManager
‹‹  
.
‹‹  !
CurrentPage
‹‹! ,
is
‹‹- /
ChatView
‹‹0 8
currentPage
‹‹9 D
)
‹‹D E
{
›› 
currentPage
ﬁﬁ 
.
ﬁﬁ 
ShowUpdatedChat
ﬁﬁ +
(
ﬁﬁ+ ,
)
ﬁﬁ, -
;
ﬁﬁ- .
}
ﬂﬂ 
}
‡‡ 	
public
‚‚ 
void
‚‚ '
UpdateBannedProfilesLists
‚‚ -
(
‚‚- .
)
‚‚. /
{
„„ 	
if
‰‰ 
(
‰‰ 
PageStateManager
‰‰  
.
‰‰  !
CurrentPage
‰‰! ,
is
‰‰- /
BannedPlayersView
‰‰0 A
currentPage
‰‰B M
)
‰‰M N
{
ÂÂ 
currentPage
ÊÊ 
.
ÊÊ 
ShowBannedPlayers
ÊÊ -
(
ÊÊ- .
)
ÊÊ. /
;
ÊÊ/ 0
}
ÁÁ 
}
ËË 	
public
ÍÍ 
void
ÍÍ *
UpdateConnectedProfilesLists
ÍÍ 0
(
ÍÍ0 1
)
ÍÍ1 2
{
ÎÎ 	+
LobbyNonCallbackMethodsClient
ÏÏ )+
lobbyNonCallbackMethodsClient
ÏÏ* G
=
ÏÏH I
new
ÏÏJ M+
LobbyNonCallbackMethodsClient
ÏÏN k
(
ÏÏk l
)
ÏÏl m
;
ÏÏm n
if
ÌÌ 
(
ÌÌ 
PageStateManager
ÌÌ  
.
ÌÌ  !
CurrentPage
ÌÌ! ,
is
ÌÌ- /
	LobbyView
ÌÌ0 9
currentPage
ÌÌ: E
)
ÌÌE F
{
ÓÓ 
currentPage
ÔÔ 
.
ÔÔ "
ShowConnectedPlayers
ÔÔ 0
(
ÔÔ0 1
)
ÔÔ1 2
;
ÔÔ2 3
if
ÒÒ 
(
ÒÒ +
lobbyNonCallbackMethodsClient
ÒÒ 1
.
ÒÒ1 2
IsAdmin
ÒÒ2 9
(
ÒÒ9 :

MainWindow
ÒÒ: D
.
ÒÒD E
loggedProfile
ÒÒE R
.
ÒÒR S
Player
ÒÒS Y
.
ÒÒY Z
NickName
ÒÒZ b
)
ÒÒb c
)
ÒÒc d
{
ÚÚ 
currentPage
ÛÛ 
.
ÛÛ  *
AdminPlayerButtonsStackPanel
ÛÛ  <
.
ÛÛ< =

Visibility
ÛÛ= G
=
ÛÛH I

Visibility
ÛÛJ T
.
ÛÛT U
Visible
ÛÛU \
;
ÛÛ\ ]
currentPage
ÙÙ 
.
ÙÙ  +
NormalPlayerButtonsStackPanel
ÙÙ  =
.
ÙÙ= >

Visibility
ÙÙ> H
=
ÙÙI J

Visibility
ÙÙK U
.
ÙÙU V
	Collapsed
ÙÙV _
;
ÙÙ_ `
}
ıı 
else
ˆˆ 
{
˜˜ 
currentPage
¯¯ 
.
¯¯  *
AdminPlayerButtonsStackPanel
¯¯  <
.
¯¯< =

Visibility
¯¯= G
=
¯¯H I

Visibility
¯¯J T
.
¯¯T U
	Collapsed
¯¯U ^
;
¯¯^ _
currentPage
˘˘ 
.
˘˘  +
NormalPlayerButtonsStackPanel
˘˘  =
.
˘˘= >

Visibility
˘˘> H
=
˘˘I J

Visibility
˘˘K U
.
˘˘U V
Visible
˘˘V ]
;
˘˘] ^
}
˙˙ 
}
˚˚ +
lobbyNonCallbackMethodsClient
˝˝ )
.
˝˝) *
Close
˝˝* /
(
˝˝/ 0
)
˝˝0 1
;
˝˝1 2
}
˛˛ 	
public
ÄÄ 
void
ÄÄ :
,UpdateConnectedProfilesForInviteToLobbyLists
ÄÄ @
(
ÄÄ@ A
)
ÄÄA B
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
PageStateManager
ÇÇ  
.
ÇÇ  !
CurrentPage
ÇÇ! ,
is
ÇÇ- /
FriendsView
ÇÇ0 ;
currentPage
ÇÇ< G
)
ÇÇG H
{
ÉÉ 
currentPage
ÑÑ 
.
ÑÑ 6
(ShowConnectedFriendsListForInviteToLobby
ÑÑ D
(
ÑÑD E
)
ÑÑE F
;
ÑÑF G
}
ÖÖ 
}
ÜÜ 	
public
àà 
void
àà ,
ExpelPlayerFromMultiplayerGame
àà 2
(
àà2 3
)
àà3 4
{
ââ 	
if
ää 
(
ää 
PageStateManager
ää  
.
ää  !
CurrentPage
ää! ,
is
ää- /
	LobbyView
ää0 9
	lobbyView
ää: C
)
ääC D
{
ãã 
	lobbyView
åå 
.
åå 9
+ExitFromThisPageForBeingExpeltFromLobbyView
åå E
(
ååE F
)
ååF G
;
ååG H
}
çç 
else
éé 
if
éé 
(
éé 
PageStateManager
éé %
.
éé% &
CurrentPage
éé& 1
is
éé2 4
BannedPlayersView
éé5 F
bannedPlayersView
ééG X
)
ééX Y
{
èè 
bannedPlayersView
êê !
.
êê! "9
+ExitFromThisPageForBeingExpeltFromLobbyView
êê" M
(
êêM N
)
êêN O
;
êêO P
}
ëë 
else
íí 
if
íí 
(
íí 
PageStateManager
íí %
.
íí% &
CurrentPage
íí& 1
is
íí2 4
FriendsView
íí5 @
friendsView
ííA L
)
ííL M
{
ìì 
friendsView
îî 
.
îî 9
+ExitFromThisPageForBeingExpeltFromLobbyView
îî G
(
îîG H
)
îîH I
;
îîI J
}
ïï 
else
ññ 
if
ññ 
(
ññ 
PageStateManager
ññ %
.
ññ% &
CurrentPage
ññ& 1
is
ññ2 4
ChatView
ññ5 =
chatView
ññ> F
)
ññF G
{
óó 
chatView
òò 
.
òò 9
+ExitFromThisPageForBeingExpeltFromLobbyView
òò D
(
òòD E
)
òòE F
;
òòF G
}
ôô 
else
öö 
if
öö 
(
öö 
PageStateManager
öö %
.
öö% &
CurrentPage
öö& 1
is
öö2 4
ConfigurationView
öö5 F
configurationView
ööG X
)
ööX Y
{
õõ 
}
ùù 
}
ûû 	
}
†† 
}°° ¨_
wC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\LoginView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
	LoginView "
:# $
Page% )
{ 
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
;8 9
public 
	LoginView 
( 

MainWindow #

mainWindow$ .
). /
{   	
PageStateManager!! 
.!! 
CurrentPage!! (
=!!) *
this!!+ /
;!!/ 0
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
this&& 
.&& 

mainWindow&& 
=&& 

mainWindow&& (
;&&( )
InitializeComponent'' 
(''  
)''  !
;''! "
}(( 	
private.. 
void.. "
OpenForgotPasswordPage.. +
(..+ ,
object.., 2
sender..3 9
,..9 : 
MouseButtonEventArgs..; O
e..P Q
)..Q R
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
new11' *
ForgotPassword11+ 9
(119 :

mainWindow11: D
)11D E
)11E F
;11F G
}22 	
private44 
void44 
OpenSignUpPage44 #
(44# $
object44$ *
sender44+ 1
,441 2 
MouseButtonEventArgs443 G
e44H I
)44I J
{55 	
NavigationService66 
navigationService66 /
=660 1
NavigationService662 C
.66C D 
GetNavigationService66D X
(66X Y
this66Y ]
)66] ^
;66^ _
navigationService77 
.77 
Navigate77 &
(77& '
new77' *
CreateAccountView77+ <
(77< =

mainWindow77= G
)77G H
)77H I
;77I J
}88 	
private:: 
void:: 
LoginButton::  
(::  !
object::! '
sender::( .
,::. /
RoutedEventArgs::0 ?
e::@ A
)::A B
{;; 	
if<< 
(<< 2
&InvalidValuesInTextFieldsTextGenerator<< 6
(<<6 7
)<<7 8
==<<9 ;
$str<<< >
)<<> ?
{== 
SecureString>> "
passwordSecurePassword>> 3
=>>4 5
PasswordPasswordBox>>6 I
.>>I J
SecurePassword>>J X
;>>X Y
string?? 
password?? 
=??  !
new??" %
System??& ,
.??, -
Net??- 0
.??0 1
NetworkCredential??1 B
(??B C
string??C I
.??I J
Empty??J O
,??O P"
passwordSecurePassword??Q g
)??g h
.??h i
Password??i q
;??q r+
ProfileNonCallbackMethodsClientAA /+
profileNonCallbackMethodsClientAA0 O
=AAP Q
newAAR U+
ProfileNonCallbackMethodsClientAAV u
(AAu v
)AAv w
;AAw x
ProfileBB 
profileBB 
=BB  !+
profileNonCallbackMethodsClientBB" A
.BBA B&
GetProfileByPlayerNicknameBBB \
(BB\ ]
NicknameTextFieldBB] n
.BBn o
TextBBo s
)BBs t
;BBt u
ifDD 
(DD 
profileDD 
!=DD 
nullDD #
)DD# $
{EE 
stringFF 

storedHashFF %
=FF& '
EncodingFF( 0
.FF0 1
UTF8FF1 5
.FF5 6
	GetStringFF6 ?
(FF? @
EncodingFF@ H
.FFH I
UTF8FFI M
.FFM N
GetBytesFFN V
(FFV W
profileFFW ^
.FF^ _
PlayerFF_ e
.FFe f
PasswordFFf n
)FFn o
)FFo p
;FFp q
ifHH 
(HH 
BCryptHH 
.HH 
NetHH "
.HH" #
BCryptHH# )
.HH) *
VerifyHH* 0
(HH0 1
passwordHH1 9
,HH9 :

storedHashHH; E
)HHE F
)HHF G
{II 
ifJJ 
(JJ 
!JJ +
profileNonCallbackMethodsClientJJ <
.JJ< =
TheProfileIsLoggedJJ= O
(JJO P
profileJJP W
.JJW X
	IDProfileJJX a
)JJa b
)JJb c
{KK +
profileNonCallbackMethodsClientLL ;
.LL; <
ChangeLoginStatusLL< M
(LLM N 
ProfileLoginStatusesLLN b
.LLb c
LoggedLLc i
,LLi j
profileLLk r
.LLr s
	IDProfileLLs |
)LL| }
;LL} ~

MainWindowNN &
.NN& '(
profileCallbackMethodsClientNN' C
.NNC D
ConnectNND K
(NNK L
profileNNL S
.NNS T
PlayerNNT Z
.NNZ [
NickNameNN[ c
)NNc d
;NNd e

mainWindowOO &
.OO& '%
SetProfileTologgedProfileOO' @
(OO@ A
profileOOA H
)OOH I
;OOI J
NavigationServiceQQ -
navigationServiceQQ. ?
=QQ@ A
NavigationServiceQQB S
.QQS T 
GetNavigationServiceQQT h
(QQh i
thisQQi m
)QQm n
;QQn o
navigationServiceRR -
.RR- .
NavigateRR. 6
(RR6 7
newRR7 :
MenuViewRR; C
(RRC D

mainWindowRRD N
)RRN O
)RRO P
;RRP Q
}SS 
elseTT 
{UU 
newVV 
AlertPopUpGeneratorVV  3
(VV3 4
)VV4 5
.VV5 6+
OpenInternationalizedErrorPopUpVV6 U
(VVU V
$strVVV b
,VVb c
$str	VVd Ä
)
VVÄ Å
;
VVÅ Ç
}WW 
}XX 
elseYY 
{ZZ 
new[[ 
AlertPopUpGenerator[[ /
([[/ 0
)[[0 1
.[[1 2+
OpenInternationalizedErrorPopUp[[2 Q
([[Q R
$str[[R ^
,[[^ _
$str[[` |
)[[| }
;[[} ~
}\\ 
}]] 
else^^ 
{__ 
new`` 
AlertPopUpGenerator`` +
(``+ ,
)``, -
.``- .+
OpenInternationalizedErrorPopUp``. M
(``M N
$str``N Z
,``Z [
$str	``\ Ñ
)
``Ñ Ö
;
``Ö Ü
}aa +
profileNonCallbackMethodsClientcc /
.cc/ 0
Closecc0 5
(cc5 6
)cc6 7
;cc7 8
}dd 
elseee 
{ff 
newgg 
AlertPopUpGeneratorgg '
(gg' (
)gg( )
.gg) *
OpenErrorPopUpgg* 8
(gg8 9
$strgg9 E
,ggE F2
&InvalidValuesInTextFieldsTextGeneratorggG m
(ggm n
)ggn o
)ggo p
;ggp q
}hh 
}ii 	
privateoo 
stringoo 2
&InvalidValuesInTextFieldsTextGeneratoroo =
(oo= >
)oo> ?
{pp 	
intqq )
textFieldsWithIncorrectValuesqq -
=qq. /
$numqq0 1
;qq1 2
stringss 
	finalTextss 
=ss 
$strss !
;ss! "
stringuu 
nickNamePatternuu "
=uu# $
$struu% @
;uu@ A
stringvv 
passwordPatternvv "
=vv# $
$strvv% g
;vvg h
Regexxx 
nickNameRegexxx 
=xx  !
newxx" %
Regexxx& +
(xx+ ,
nickNamePatternxx, ;
)xx; <
;xx< =
Regexyy 
passwordRegexyy 
=yy  !
newyy" %
Regexyy& +
(yy+ ,
passwordPatternyy, ;
)yy; <
;yy< =
Match{{ 
nickNameMatch{{ 
={{  !
nickNameRegex{{" /
.{{/ 0
Match{{0 5
({{5 6
NicknameTextField{{6 G
.{{G H
Text{{H L
){{L M
;{{M N
SecureString}} %
newPasswordSecurePassword}} 2
=}}3 4
PasswordPasswordBox}}5 H
.}}H I
SecurePassword}}I W
;}}W X
string~~ 
password~~ 
=~~ 
new~~ !
System~~" (
.~~( )
Net~~) ,
.~~, -
NetworkCredential~~- >
(~~> ?
string~~? E
.~~E F
Empty~~F K
,~~K L%
newPasswordSecurePassword~~M f
)~~f g
.~~g h
Password~~h p
;~~p q
Match
ÄÄ 
passwordMatch
ÄÄ 
=
ÄÄ  !
passwordRegex
ÄÄ" /
.
ÄÄ/ 0
Match
ÄÄ0 5
(
ÄÄ5 6
password
ÄÄ6 >
)
ÄÄ> ?
;
ÄÄ? @
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
nickNameMatch
ÇÇ 
.
ÇÇ 
Success
ÇÇ &
||
ÇÇ' )
!
ÇÇ* +
passwordMatch
ÇÇ+ 8
.
ÇÇ8 9
Success
ÇÇ9 @
)
ÇÇ@ A
{
ÉÉ 
	finalText
ÑÑ 
+=
ÑÑ 
resourceManager
ÑÑ ,
.
ÑÑ, -
	GetString
ÑÑ- 6
(
ÑÑ6 7
$str
ÑÑ7 `
,
ÑÑ` a
cultureInfo
ÑÑb m
)
ÑÑm n
;
ÑÑn o
}
ÖÖ 
if
áá 
(
áá 
!
áá 
nickNameMatch
áá 
.
áá 
Success
áá &
)
áá& '
{
àà 
	finalText
ââ 
=
ââ 
	finalText
ââ %
+
ââ& '
resourceManager
ââ( 7
.
ââ7 8
	GetString
ââ8 A
(
ââA B
$str
ââB L
,
ââL M
cultureInfo
ââN Y
)
ââY Z
+
ââ[ \
$str
ââ] `
;
ââ` a+
textFieldsWithIncorrectValues
ää -
++
ää- /
;
ää/ 0
}
ãã 
if
çç 
(
çç 
!
çç 
passwordMatch
çç 
.
çç 
Success
çç &
)
çç& '
{
éé 
if
èè 
(
èè +
textFieldsWithIncorrectValues
èè 1
>=
èè2 4
$num
èè5 6
)
èè6 7
{
êê 
	finalText
ëë 
=
ëë 
	finalText
ëë  )
.
ëë) *
	Substring
ëë* 3
(
ëë3 4
$num
ëë4 5
,
ëë5 6
	finalText
ëë7 @
.
ëë@ A
Length
ëëA G
-
ëëH I
$num
ëëJ K
)
ëëK L
;
ëëL M
	finalText
íí 
=
íí 
	finalText
íí  )
+
íí* +
$str
íí, 0
+
íí1 2
resourceManager
íí3 B
.
ííB C
	GetString
ííC L
(
ííL M
$str
ííM W
,
ííW X
cultureInfo
ííY d
)
ííd e
+
ííf g
$str
ííh k
;
íík l
}
ìì 
else
îî 
{
ïï 
	finalText
ññ 
=
ññ 
	finalText
ññ  )
+
ññ* +
resourceManager
ññ, ;
.
ññ; <
	GetString
ññ< E
(
ññE F
$str
ññF P
,
ññP Q
cultureInfo
ññR ]
)
ññ] ^
+
ññ_ `
$str
ñña d
;
ññd e
}
óó 
}
òò 
return
öö 
	finalText
öö 
;
öö 
}
õõ 	
}
ùù 
}ûû ñx
xC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\MainWindow.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
,, -+
IProfileCallbackMethodsCallback. M
{ 
public 
static 
Profile 
loggedProfile +
=, -
null. 2
;2 3
public 
static (
ProfileCallbackMethodsClient 2(
profileCallbackMethodsClient3 O
;O P
public!! 

MainWindow!! 
(!! 
)!! 
{"" 	
Application## 
.## 
Current## 
.##  (
DispatcherUnhandledException##  <
+=##= ?(
DispatcherUnhandledException##@ \
;##\ ]
Application$$ 
.$$ 
Current$$ 
.$$  
Exit$$  $
+=$$% '
AppExit$$( /
;$$/ 0
	AppDomain%% 
.%% 
CurrentDomain%% #
.%%# $
ProcessExit%%$ /
+=%%0 2
ProcessExit%%3 >
;%%> ?
this&& 
.&& 
Closing&& 
+=&& 
MainWindowClosing&& -
;&&- .(
profileCallbackMethodsClient(( (
=(() *
new((+ .(
ProfileCallbackMethodsClient((/ K
(((K L
new((L O
InstanceContext((P _
(((_ `
this((` d
)((d e
)((e f
;((f g
InitializeComponent** 
(**  
)**  !
;**! "
NavigationService,, 
navigationService,, /
=,,0 1
	MainFrame,,2 ;
.,,; <
NavigationService,,< M
;,,M N
navigationService-- 
.-- 
Navigate-- &
(--& '
new--' *
	StartView--+ 4
(--4 5
this--5 9
)--9 :
)--: ;
;--; <
}.. 	
private44 
void44 
AppExit44 
(44 
object44 #
sender44$ *
,44* +
	EventArgs44, 5
e446 7
)447 8
{55 	
if66 
(66 

MainWindow66 
.66 
loggedProfile66 (
!=66) +
null66, 0
)660 1
{77 +
ProfileNonCallbackMethodsClient88 /+
profileNonCallbackMethodsClient880 O
=88P Q
new88R U+
ProfileNonCallbackMethodsClient88V u
(88u v
)88v w
;88w x+
profileNonCallbackMethodsClient99 /
.99/ 0
ChangeLoginStatus990 A
(99A B 
ProfileLoginStatuses99B V
.99V W
	NotLogged99W `
,99` a

MainWindow99b l
.99l m
loggedProfile99m z
.99z {
	IDProfile	99{ Ñ
)
99Ñ Ö
;
99Ö Ü

MainWindow:: 
.:: (
profileCallbackMethodsClient:: 7
.::7 8

Disconnect::8 B
(::B C

MainWindow::C M
.::M N
loggedProfile::N [
.::[ \
Player::\ b
.::b c
NickName::c k
)::k l
;::l m+
profileNonCallbackMethodsClient<< /
.<</ 0
Close<<0 5
(<<5 6
)<<6 7
;<<7 8
}== 
}>> 	
private@@ 
void@@ 
ProcessExit@@  
(@@  !
object@@! '
sender@@( .
,@@. /
	EventArgs@@0 9
e@@: ;
)@@; <
{AA 	
ifBB 
(BB 

MainWindowBB 
.BB 
loggedProfileBB (
!=BB) +
nullBB, 0
)BB0 1
{CC +
ProfileNonCallbackMethodsClientDD /+
profileNonCallbackMethodsClientDD0 O
=DDP Q
newDDR U+
ProfileNonCallbackMethodsClientDDV u
(DDu v
)DDv w
;DDw x+
profileNonCallbackMethodsClientEE /
.EE/ 0
ChangeLoginStatusEE0 A
(EEA B 
ProfileLoginStatusesEEB V
.EEV W
	NotLoggedEEW `
,EE` a

MainWindowEEb l
.EEl m
loggedProfileEEm z
.EEz {
	IDProfile	EE{ Ñ
)
EEÑ Ö
;
EEÖ Ü

MainWindowFF 
.FF (
profileCallbackMethodsClientFF 7
.FF7 8

DisconnectFF8 B
(FFB C

MainWindowFFC M
.FFM N
loggedProfileFFN [
.FF[ \
PlayerFF\ b
.FFb c
NickNameFFc k
)FFk l
;FFl m+
profileNonCallbackMethodsClientHH /
.HH/ 0
CloseHH0 5
(HH5 6
)HH6 7
;HH7 8
}II 
}JJ 	
privateLL 
voidLL (
DispatcherUnhandledExceptionLL 1
(LL1 2
objectLL2 8
senderLL9 ?
,LL? @1
%DispatcherUnhandledExceptionEventArgsLLA f
eLLg h
)LLh i
{MM 	
ifNN 
(NN 

MainWindowNN 
.NN 
loggedProfileNN (
!=NN) +
nullNN, 0
)NN0 1
{OO +
ProfileNonCallbackMethodsClientPP /+
profileNonCallbackMethodsClientPP0 O
=PPP Q
newPPR U+
ProfileNonCallbackMethodsClientPPV u
(PPu v
)PPv w
;PPw x+
profileNonCallbackMethodsClientQQ /
.QQ/ 0
ChangeLoginStatusQQ0 A
(QQA B 
ProfileLoginStatusesQQB V
.QQV W
	NotLoggedQQW `
,QQ` a

MainWindowQQb l
.QQl m
loggedProfileQQm z
.QQz {
	IDProfile	QQ{ Ñ
)
QQÑ Ö
;
QQÖ Ü

MainWindowRR 
.RR (
profileCallbackMethodsClientRR 7
.RR7 8

DisconnectRR8 B
(RRB C

MainWindowRRC M
.RRM N
loggedProfileRRN [
.RR[ \
PlayerRR\ b
.RRb c
NickNameRRc k
)RRk l
;RRl m+
profileNonCallbackMethodsClientTT /
.TT/ 0
CloseTT0 5
(TT5 6
)TT6 7
;TT7 8
}UU 
}WW 	
privateYY 
voidYY 
MainWindowClosingYY &
(YY& '
objectYY' -
senderYY. 4
,YY4 5
SystemYY6 <
.YY< =
ComponentModelYY= K
.YYK L
CancelEventArgsYYL [
eYY\ ]
)YY] ^
{ZZ 	
if[[ 
([[ 
new[[ 
AlertPopUpGenerator[[ '
([[' (
)[[( )
.[[) *.
"OpenInternationalizedDesicionPopUp[[* L
([[L M
$str[[M _
,[[_ `
$str[[a v
)[[v w
)[[w x
{\\ 
if]] 
(]] 

MainWindow]] 
.]] 
loggedProfile]] +
!=]], .
null]]/ 3
)]]3 4
{^^ +
ProfileNonCallbackMethodsClient__ 3+
profileNonCallbackMethodsClient__4 S
=__T U
new__V Y+
ProfileNonCallbackMethodsClient__Z y
(__y z
)__z {
;__{ |+
profileNonCallbackMethodsClient`` 3
.``3 4
ChangeLoginStatus``4 E
(``E F 
ProfileLoginStatuses``F Z
.``Z [
	NotLogged``[ d
,``d e

MainWindow``f p
.``p q
loggedProfile``q ~
.``~ 
	IDProfile	`` à
)
``à â
;
``â ä

MainWindowaa 
.aa (
profileCallbackMethodsClientaa ;
.aa; <

Disconnectaa< F
(aaF G

MainWindowaaG Q
.aaQ R
loggedProfileaaR _
.aa_ `
Playeraa` f
.aaf g
NickNameaag o
)aao p
;aap q+
profileNonCallbackMethodsClientcc 3
.cc3 4
Closecc4 9
(cc9 :
)cc: ;
;cc; <
}dd 
}ee 
elseff 
{gg 
ehh 
.hh 
Cancelhh 
=hh 
truehh 
;hh  
}ii 
}jj 	
publicpp 
voidpp "
SetNullTologgedProfilepp *
(pp* +
)pp+ ,
{qq 	

MainWindowrr 
.rr 
loggedProfilerr $
=rr% &
nullrr' +
;rr+ ,
}ss 	
publicuu 
voiduu %
SetProfileTologgedProfileuu -
(uu- .
Profileuu. 5
profileuu6 =
)uu= >
{vv 	

MainWindowww 
.ww 
loggedProfileww $
=ww% &
newww' *
Profileww+ 2
(ww2 3
)ww3 4
;ww4 5

MainWindowxx 
.xx 
loggedProfilexx $
=xx% &
profilexx' .
;xx. /
}yy 	
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
$str	}}v ö
)
}}ö õ
)
}}õ ú
{~~ )
LobbyNonCallbackMethodsClient -)
lobbyNonCallbackMethodsClient. K
=K L
newM P)
LobbyNonCallbackMethodsClientQ n
(n o
)o p
;p q
if
ÄÄ 
(
ÄÄ 
!
ÄÄ +
lobbyNonCallbackMethodsClient
ÄÄ 2
.
ÄÄ2 3!
ThePlayersAreInGame
ÄÄ3 F
(
ÄÄF G
)
ÄÄG H
)
ÄÄH I
{
ÅÅ 
if
ÇÇ 
(
ÇÇ 
!
ÇÇ +
lobbyNonCallbackMethodsClient
ÇÇ 6
.
ÇÇ6 7
IsBanned
ÇÇ7 ?
(
ÇÇ? @

MainWindow
ÇÇ@ J
.
ÇÇJ K
loggedProfile
ÇÇK X
.
ÇÇX Y
Player
ÇÇY _
.
ÇÇ_ `
NickName
ÇÇ` h
)
ÇÇh i
)
ÇÇi j
{
ÉÉ 
if
ÑÑ 
(
ÑÑ +
lobbyNonCallbackMethodsClient
ÑÑ 9
.
ÑÑ9 :"
GetConnectedProfiles
ÑÑ: N
(
ÑÑN O
)
ÑÑO P
.
ÑÑP Q
Length
ÑÑQ W
<
ÑÑX Y
$num
ÑÑZ [
)
ÑÑ[ \
{
ÖÖ 
	LobbyView
ÜÜ %
.
ÜÜ% &'
chatCallbackMethodsClient
ÜÜ& ?
.
ÜÜ? @
JoinChat
ÜÜ@ H
(
ÜÜH I

MainWindow
ÜÜI S
.
ÜÜS T
loggedProfile
ÜÜT a
.
ÜÜa b
Player
ÜÜb h
.
ÜÜh i
NickName
ÜÜi q
)
ÜÜq r
;
ÜÜr s
	LobbyView
áá %
.
áá% &(
lobbyCallbackMethodsClient
áá& @
.
áá@ A
Connect
ááA H
(
ááH I

MainWindow
ááI S
.
ááS T
loggedProfile
ááT a
.
ááa b
Player
ááb h
.
ááh i
NickName
áái q
)
ááq r
;
áár s
NavigationService
àà -
navigationService
àà. ?
=
àà@ A
NavigationService
ààB S
.
ààS T"
GetNavigationService
ààT h
(
ààh i
page
àài m
)
ààm n
;
ààn o
navigationService
ââ -
.
ââ- .
Navigate
ââ. 6
(
ââ6 7
new
ââ7 :
	LobbyView
ââ; D
(
ââD E
this
ââE I
)
ââI J
)
ââJ K
;
ââK L
}
ää 
else
ãã 
{
åå 
new
çç !
AlertPopUpGenerator
çç  3
(
çç3 4
)
çç4 5
.
çç5 6-
OpenInternationalizedErrorPopUp
çç6 U
(
ççU V
$str
ççV b
,
ççb c
$str
ççd z
)
ççz {
;
çç{ |
}
éé 
}
èè 
else
êê 
{
ëë 
new
íí !
AlertPopUpGenerator
íí /
(
íí/ 0
)
íí0 1
.
íí1 2-
OpenInternationalizedErrorPopUp
íí2 Q
(
ííQ R
$str
ííR ^
,
íí^ _
$str
íí` u
)
ííu v
;
íív w
}
ìì 
}
îî 
else
ïï 
{
ññ 
new
óó !
AlertPopUpGenerator
óó +
(
óó+ ,
)
óó, -
.
óó- .-
OpenInternationalizedErrorPopUp
óó. M
(
óóM N
$str
óóN Z
,
óóZ [
$str
óó\ {
)
óó{ |
;
óó| }
}
òò 
}
ôô 
}
öö 	
public
†† 
void
††  
UpdateFriendsLists
†† &
(
††& '
)
††' (
{
°° 	
if
¢¢ 
(
¢¢ 
PageStateManager
¢¢  
.
¢¢  !
CurrentPage
¢¢! ,
is
¢¢- /
FriendsView
¢¢0 ;
currentPage
¢¢< G
)
¢¢G H
{
££ 
currentPage
§§ 
.
§§ $
ShowUpdatedFriendsList
§§ 2
(
§§2 3
)
§§3 4
;
§§4 5
}
•• 
}
¶¶ 	
public
®® 
void
®® )
UpdateFriendsForInviteLists
®® /
(
®®/ 0
)
®®0 1
{
©© 	
if
™™ 
(
™™ 
PageStateManager
™™  
.
™™  !
CurrentPage
™™! ,
is
™™- /
FriendsView
™™0 ;
currentPage
™™< G
)
™™G H
{
´´ 
currentPage
¨¨ 
.
¨¨ 6
(ShowConnectedFriendsListForInviteToLobby
¨¨ D
(
¨¨D E
)
¨¨E F
;
¨¨F G
}
≠≠ 
}
ÆÆ 	
public
∞∞ 
void
∞∞ &
OpenPaneForEnterTheLobby
∞∞ ,
(
∞∞, -
)
∞∞- .
{
±± 	
if
≤≤ 
(
≤≤ 
PageStateManager
≤≤  
.
≤≤  !
CurrentPage
≤≤! ,
is
≤≤- /
MenuView
≤≤0 8
menuView
≤≤9 A
)
≤≤A B
{
≥≥ 
menuView
¥¥ 
.
¥¥ 
GoToLobbyView
¥¥ &
(
¥¥& '
)
¥¥' (
;
¥¥( )
}
µµ 
else
∂∂ 
if
∂∂ 
(
∂∂ 
PageStateManager
∂∂ %
.
∂∂% &
CurrentPage
∂∂& 1
is
∂∂2 4
ModifyProfileView
∂∂5 F
modifyProfileView
∂∂G X
)
∂∂X Y
{
∑∑ 
modifyProfileView
∏∏ !
.
∏∏! "
GoToLobbyView
∏∏" /
(
∏∏/ 0
)
∏∏0 1
;
∏∏1 2
}
ππ 
else
∫∫ 
if
∫∫ 
(
∫∫ 
PageStateManager
∫∫ %
.
∫∫% &
CurrentPage
∫∫& 1
is
∫∫2 4
FriendsView
∫∫5 @
friendsView
∫∫A L
)
∫∫L M
{
ªª 
friendsView
ºº 
.
ºº 
GoToLobbyView
ºº )
(
ºº) *
)
ºº* +
;
ºº+ ,
}
ΩΩ 
else
ææ 
if
ææ 
(
ææ 
PageStateManager
ææ %
.
ææ% &
CurrentPage
ææ& 1
is
ææ2 4
ConfigurationView
ææ5 F
configurationView
ææG X
)
ææX Y
{
øø 
}
¡¡ 
}
¬¬ 	
}
ƒƒ 
public
∆∆ 

class
∆∆ 
PageStateManager
∆∆ !
{
«« 
public
»» 
static
»» 
Page
»» 
CurrentPage
»» &
{
»»' (
get
»») ,
;
»», -
set
»». 1
;
»»1 2
}
»»3 4
}
…… 
}   ¢>
vC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\MenuView.xaml.cs
	namespace		 	"
Renovaci√≥n_LIS_Client		
 
.		  
View		  $
{

 
public 

partial 
class 
MenuView !
:" #
Page$ (
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
public 
MenuView 
( 

MainWindow "

mainWindow# -
)- .
{ 	
PageStateManager 
. 
CurrentPage (
=) *
this+ /
;/ 0
this 
. 

mainWindow 
= 

mainWindow (
;( )
InitializeComponent 
(  
)  !
;! "
WelcomeBackLabel 
. 
Content $
=% &
WelcomeBackLabel' 7
.7 8
Content8 ?
+@ A

MainWindowB L
.L M
loggedProfileM Z
.Z [
Player[ a
.a b
NickNameb j
+k l
$strm p
;p q
} 	
private## 
void##  
FriendsButtonOnClick## )
(##) *
object##* 0
sender##1 7
,##7 8
RoutedEventArgs##9 H
e##I J
)##J K
{$$ 	
NavigationService%% 
navigationService%% /
=%%0 1
NavigationService%%2 C
.%%C D 
GetNavigationService%%D X
(%%X Y
this%%Y ]
)%%] ^
;%%^ _
navigationService&& 
.&& 
Navigate&& &
(&&& '
new&&' *
FriendsView&&+ 6
(&&6 7

mainWindow&&7 A
)&&A B
)&&B C
;&&C D
}'' 	
private)) 
void)) 
PlayButtonOnClick)) &
())& '
object))' -
sender)). 4
,))4 5
RoutedEventArgs))6 E
e))F G
)))G H
{** 	)
LobbyNonCallbackMethodsClient++ ))
lobbyNonCallbackMethodsClient++* G
=++H I
new++J M)
LobbyNonCallbackMethodsClient++N k
(++k l
)++l m
;++m n
if,, 
(,, 
!,, )
lobbyNonCallbackMethodsClient,, .
.,,. /
ThePlayersAreInGame,,/ B
(,,B C
),,C D
),,D E
{-- 
if.. 
(.. 
!.. )
lobbyNonCallbackMethodsClient.. 2
...2 3
IsBanned..3 ;
(..; <

MainWindow..< F
...F G
loggedProfile..G T
...T U
Player..U [
...[ \
NickName..\ d
)..d e
)..e f
{// 
if00 
(00 )
lobbyNonCallbackMethodsClient00 5
.005 6 
GetConnectedProfiles006 J
(00J K
)00K L
.00L M
Length00M S
<00T U
$num00V W
)00W X
{11 
	LobbyView22 !
	lobbyView22" +
=22, -
new22. 1
	LobbyView222 ;
(22; <

mainWindow22< F
)22F G
;22G H
	LobbyView33 !
.33! "%
chatCallbackMethodsClient33" ;
.33; <
JoinChat33< D
(33D E

MainWindow33E O
.33O P
loggedProfile33P ]
.33] ^
Player33^ d
.33d e
NickName33e m
)33m n
;33n o
	LobbyView44 !
.44! "&
lobbyCallbackMethodsClient44" <
.44< =
Connect44= D
(44D E

MainWindow44E O
.44O P
loggedProfile44P ]
.44] ^
Player44^ d
.44d e
NickName44e m
)44m n
;44n o
NavigationService55 )
navigationService55* ;
=55< =
NavigationService55> O
.55O P 
GetNavigationService55P d
(55d e
this55e i
)55i j
;55j k
navigationService66 )
.66) *
Navigate66* 2
(662 3
	lobbyView663 <
)66< =
;66= >
}77 
else88 
{99 
new:: 
AlertPopUpGenerator:: /
(::/ 0
)::0 1
.::1 2+
OpenInternationalizedErrorPopUp::2 Q
(::Q R
$str::R ^
,::^ _
$str::` v
)::v w
;::w x
};; 
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
,??Z [
$str??\ q
)??q r
;??r s
}@@ 
}AA 
elseBB 
{CC 
newDD 
AlertPopUpGeneratorDD '
(DD' (
)DD( )
.DD) *+
OpenInternationalizedErrorPopUpDD* I
(DDI J
$strDDJ V
,DDV W
$strDDX w
)DDw x
;DDx y
}EE )
lobbyNonCallbackMethodsClientGG )
.GG) *
CloseGG* /
(GG/ 0
)GG0 1
;GG1 2
}HH 	
privateJJ 
voidJJ  
ProfileButtonOnClickJJ )
(JJ) *
objectJJ* 0
senderJJ1 7
,JJ7 8
RoutedEventArgsJJ9 H
eJJI J
)JJJ K
{KK 	
NavigationServiceLL 
navigationServiceLL /
=LL0 1
NavigationServiceLL2 C
.LLC D 
GetNavigationServiceLLD X
(LLX Y
thisLLY ]
)LL] ^
;LL^ _
navigationServiceMM 
.MM 
NavigateMM &
(MM& '
newMM' *
ModifyProfileViewMM+ <
(MM< =

mainWindowMM= G
)MMG H
)MMH I
;MMI J
}NN 	
privatePP 
voidPP 
QuitButtonOnClickPP &
(PP& '
objectPP' -
senderPP. 4
,PP4 5
RoutedEventArgsPP6 E
ePPF G
)PPG H
{QQ 	+
ProfileNonCallbackMethodsClientRR ++
profileNonCallbackMethodsClientRR, K
=RRL M
newRRN Q+
ProfileNonCallbackMethodsClientRRR q
(RRq r
)RRr s
;RRs t+
profileNonCallbackMethodsClientSS +
.SS+ ,
ChangeLoginStatusSS, =
(SS= > 
ProfileLoginStatusesSS> R
.SSR S
	NotLoggedSSS \
,SS\ ]

MainWindowSS^ h
.SSh i
loggedProfileSSi v
.SSv w
	IDProfile	SSw Ä
)
SSÄ Å
;
SSÅ Ç

MainWindowUU 
.UU (
profileCallbackMethodsClientUU 3
.UU3 4

DisconnectUU4 >
(UU> ?

MainWindowUU? I
.UUI J
loggedProfileUUJ W
.UUW X
PlayerUUX ^
.UU^ _
NickNameUU_ g
)UUg h
;UUh i

mainWindowWW 
.WW "
SetNullTologgedProfileWW -
(WW- .
)WW. /
;WW/ 0
NavigationServiceYY 
navigationServiceYY /
=YY0 1
NavigationServiceYY2 C
.YYC D 
GetNavigationServiceYYD X
(YYX Y
thisYYY ]
)YY] ^
;YY^ _
navigationServiceZZ 
.ZZ 
NavigateZZ &
(ZZ& '
newZZ' *
	LoginViewZZ+ 4
(ZZ4 5

mainWindowZZ5 ?
)ZZ? @
)ZZ@ A
;ZZA B+
profileNonCallbackMethodsClient\\ +
.\\+ ,
Close\\, 1
(\\1 2
)\\2 3
;\\3 4
}]] 	
publiccc 
voidcc 
GoToLobbyViewcc !
(cc! "
)cc" #
{dd 	

mainWindowee 
.ee 
OpenTheLobbyViewee '
(ee' (
thisee( ,
)ee, -
;ee- .
}ff 	
}hh 
}ii ﬂƒ
C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\ModifyProfileView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class 
ModifyProfileView *
:+ ,
Page- 1
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
public$$ 
ModifyProfileView$$  
($$  !

MainWindow$$! +

mainWindow$$, 6
)$$6 7
{%% 	
this&& 
.&& 

mainWindow&& 
=&& 

mainWindow&& (
;&&( )
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
InitializeComponent++ 
(++  
)++  !
;++! "
NamesTextBox-- 
.-- 
Text-- 
=-- 

MainWindow--  *
.--* +
loggedProfile--+ 8
.--8 9
Player--9 ?
.--? @
Names--@ E
;--E F
SurnamesTextBox.. 
... 
Text..  
=..! "

MainWindow..# -
...- .
loggedProfile... ;
...; <
Player..< B
...B C
Surnames..C K
;..K L
EmailTextBox// 
.// 
Text// 
=// 

MainWindow//  *
.//* +
loggedProfile//+ 8
.//8 9
Player//9 ?
.//? @
Email//@ E
;//E F
NicknameTextBox00 
.00 
Text00  
=00! "

MainWindow00# -
.00- .
loggedProfile00. ;
.00; <
Player00< B
.00B C
NickName00C K
;00K L
BirthDayDatePicker11 
.11 
SelectedDate11 +
=11, -

MainWindow11. 8
.118 9
loggedProfile119 F
.11F G
Player11G M
.11M N
	BirthDate11N W
;11W X
byte33 
[33 
]33 
	imageData33 
=33 J
>GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions33 ]
(33] ^
)33^ _
;33_ `
if55 
(55 
	imageData55 
!=55 
null55 !
)55! "
{66 
try77 
{88 
BitmapImage99 
imageSource99  +
=99, -
new99. 1
BitmapImage992 =
(99= >
)99> ?
;99? @
imageSource:: 
.::  
	BeginInit::  )
(::) *
)::* +
;::+ ,
imageSource;; 
.;;  
StreamSource;;  ,
=;;- .
new;;/ 2
MemoryStream;;3 ?
(;;? @
	imageData;;@ I
);;I J
;;;J K
imageSource<< 
.<<  
EndInit<<  '
(<<' (
)<<( )
;<<) *
ProfilePictureImage>> '
.>>' (
Source>>( .
=>>/ 0
imageSource>>1 <
;>>< =
}?? 
catch@@ 
(@@ 
	Exception@@  
ex@@! #
)@@# $
{AA 

MessageBoxBB 
.BB 
ShowBB #
(BB# $
$strBB$ -
+BB. /
exBB0 2
.BB2 3
MessageBB3 :
)BB: ;
;BB; <
}CC 
}DD 
elseEE 
{FF 
ImageRouteTextBlockGG #
.GG# $
TextGG$ (
=GG) *
$strGG+ -
;GG- .
}HH 
}II 	
privateOO 
voidOO 
CancelButtonOO !
(OO! "
objectOO" (
senderOO) /
,OO/ 0
RoutedEventArgsOO1 @
eOOA B
)OOB C
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
newRR' *
MenuViewRR+ 3
(RR3 4

mainWindowRR4 >
)RR> ?
)RR? @
;RR@ A
}SS 	
privateUU 
voidUU 
ModifyProfileButtonUU (
(UU( )
objectUU) /
senderUU0 6
,UU6 7
RoutedEventArgsUU8 G
eUUH I
)UUI J
{VV 	
ifWW 
(WW 2
&InvalidValuesInTextFieldsTextGeneratorWW 5
(WW5 6
)WW6 7
==WW8 :
$strWW; =
)WW= >
{XX 
ifYY 
(YY 
BirthDayDatePickerYY &
.YY& '
SelectedDateYY' 3
<=YY4 6
DateTimeYY7 ?
.YY? @
NowYY@ C
)YYC D
{ZZ 
PlayerClient[[  
playerClient[[! -
=[[. /
new[[0 3
PlayerClient[[4 @
([[@ A
)[[A B
;[[B C+
ProfileNonCallbackMethodsClient\\ 3+
profileNonCallbackMethodsClient\\4 S
=\\T U
new\\V Y+
ProfileNonCallbackMethodsClient\\Z y
(\\y z
)\\z {
;\\{ |
if^^ 
(^^ 
!^^ 
playerClient^^ %
.^^% &%
TheEmailIsAlreadyRegisted^^& ?
(^^? @
EmailTextBox^^@ L
.^^L M
Text^^M Q
)^^Q R
||^^S U
EmailTextBox^^V b
.^^b c
Text^^c g
==^^h j

MainWindow^^k u
.^^u v
loggedProfile	^^v É
.
^^É Ñ
Player
^^Ñ ä
.
^^ä ã
Email
^^ã ê
)
^^ê ë
{__ 
if`` 
(`` 
!`` 
playerClient`` )
.``) *(
TheNicknameIsAlreadyRegisted``* F
(``F G
NicknameTextBox``G V
.``V W
Text``W [
)``[ \
||``] _
NicknameTextBox``` o
.``o p
Text``p t
==``u w

MainWindow	``x Ç
.
``Ç É
loggedProfile
``É ê
.
``ê ë
Player
``ë ó
.
``ó ò
NickName
``ò †
)
``† °
{aa +
profileNonCallbackMethodsClientbb ;
.bb; <
ModifyImageNamebb< K
(bbK L

MainWindowbbL V
.bbV W
loggedProfilebbW d
.bbd e
Playerbbe k
.bbk l
NickNamebbl t
,bbt u
NicknameTextBox	bbv Ö
.
bbÖ Ü
Text
bbÜ ä
)
bbä ã
;
bbã å"
ServicePlayerReferenceee 2
.ee2 3
Playersee3 :
playersee; B
=eeC D
neweeE H"
ServicePlayerReferenceeeI _
.ee_ `
Playersee` g
{ff 
IDPlayergg  (
=gg) *

MainWindowgg+ 5
.gg5 6
loggedProfilegg6 C
.ggC D
PlayerggD J
.ggJ K
IDPlayerggK S
,ggS T
Nameshh  %
=hh& '
NamesTextBoxhh( 4
.hh4 5
Texthh5 9
,hh9 :
Surnamesii  (
=ii) *
SurnamesTextBoxii+ :
.ii: ;
Textii; ?
,ii? @
Emailjj  %
=jj& '
EmailTextBoxjj( 4
.jj4 5
Textjj5 9
,jj9 :
NickNamekk  (
=kk) *
NicknameTextBoxkk+ :
.kk: ;
Textkk; ?
,kk? @
	BirthDatell  )
=ll* +
(ll, -
DateTimell- 5
)ll5 6
BirthDayDatePickerll6 H
.llH I
SelectedDatellI U
}mm 
;mm 
playerClientoo (
.oo( )
ModifyPlayeroo) 5
(oo5 6
playersoo6 =
)oo= >
;oo> ?
ifqq 
(qq  
ImageRouteTextBlockqq  3
.qq3 4
Textqq4 8
!=qq9 ;
$strqq< >
)qq> ?
{rr 
bytess  $
[ss$ %
]ss% &
	imageDatass' 0
=ss1 2
Filess3 7
.ss7 8
ReadAllBytesss8 D
(ssD E
ImageRouteTextBlockssE X
.ssX Y
TextssY ]
)ss] ^
;ss^ _
stringtt  &
fileExtensiontt' 4
=tt5 6
Pathtt7 ;
.tt; <
GetExtensiontt< H
(ttH I
ImageRouteTextBlockttI \
.tt\ ]
Texttt] a
)tta b
;ttb c
stringuu  &
fileNameuu' /
=uu0 1
NicknameTextBoxuu2 A
.uuA B
TextuuB F
+uuG H
fileExtensionuuI V
;uuV W
ifww  "
(ww# $
	imageDataww$ -
.ww- .
Lengthww. 4
<=ww5 7
$numww8 ?
)ww? @
{xx  !+
profileNonCallbackMethodsClientyy$ C
.yyC D
UploadImageyyD O
(yyO P
fileNameyyP X
,yyX Y
	imageDatayyZ c
)yyc d
;yyd e
}zz  !
else{{  $
{||  !
new}}$ '
AlertPopUpGenerator}}( ;
(}}; <
)}}< =
.}}= >+
OpenInternationalizedErrorPopUp}}> ]
(}}] ^
$str}}^ j
,}}j k
$str	}}l î
)
}}î ï
;
}}ï ñ
return~~$ *
;~~* +
}  !
}
ÄÄ 
new
ÅÅ !
AlertPopUpGenerator
ÅÅ  3
(
ÅÅ3 4
)
ÅÅ4 5
.
ÅÅ5 6/
!OpenInternationalizedSuccessPopUp
ÅÅ6 W
(
ÅÅW X
$str
ÅÅX d
,
ÅÅd e
$strÅÅf à
)ÅÅà â
;ÅÅâ ä

MainWindow
ÉÉ &
.
ÉÉ& '
loggedProfile
ÉÉ' 4
=
ÉÉ5 6-
profileNonCallbackMethodsClient
ÉÉ7 V
.
ÉÉV W"
GetProfileByPlayerID
ÉÉW k
(
ÉÉk l
(
ÉÉl m
int
ÉÉm p
)
ÉÉp q

MainWindow
ÉÉq {
.
ÉÉ{ |
loggedProfileÉÉ| â
.ÉÉâ ä
PlayerÉÉä ê
.ÉÉê ë
IDPlayerÉÉë ô
)ÉÉô ö
;ÉÉö õ

MainWindow
ÖÖ &
.
ÖÖ& '*
profileCallbackMethodsClient
ÖÖ' C
.
ÖÖC D5
'UpdateFriendsListsToAllConnectedClients
ÖÖD k
(
ÖÖk l
)
ÖÖl m
;
ÖÖm n
NavigationService
áá -
navigationService
áá. ?
=
áá@ A
NavigationService
ááB S
.
ááS T"
GetNavigationService
ááT h
(
ááh i
this
áái m
)
áám n
;
áán o
navigationService
àà -
.
àà- .
Navigate
àà. 6
(
àà6 7
new
àà7 :
MenuView
àà; C
(
ààC D

mainWindow
ààD N
)
ààN O
)
ààO P
;
ààP Q
}
ââ 
else
ää 
{
ãã 
new
åå !
AlertPopUpGenerator
åå  3
(
åå3 4
)
åå4 5
.
åå5 6-
OpenInternationalizedErrorPopUp
åå6 U
(
ååU V
$str
ååV b
,
ååb c
$str
ååd }
)
åå} ~
;
åå~ 
}
çç 
}
éé 
else
èè 
{
êê 
new
ëë !
AlertPopUpGenerator
ëë /
(
ëë/ 0
)
ëë0 1
.
ëë1 2-
OpenInternationalizedErrorPopUp
ëë2 Q
(
ëëQ R
$str
ëëR ^
,
ëë^ _
$str
ëë` v
)
ëëv w
;
ëëw x
}
íí 
playerClient
îî  
.
îî  !
Close
îî! &
(
îî& '
)
îî' (
;
îî( )-
profileNonCallbackMethodsClient
ïï 3
.
ïï3 4
Close
ïï4 9
(
ïï9 :
)
ïï: ;
;
ïï; <
}
ññ 
else
óó 
{
òò 
new
ôô !
AlertPopUpGenerator
ôô +
(
ôô+ ,
)
ôô, -
.
ôô- .-
OpenInternationalizedErrorPopUp
ôô. M
(
ôôM N
$str
ôôN Z
,
ôôZ [
$strôô\ é
)ôôé è
;ôôè ê
}
öö 
}
õõ 
else
úú 
{
ùù 
new
ûû !
AlertPopUpGenerator
ûû '
(
ûû' (
)
ûû( )
.
ûû) *
OpenErrorPopUp
ûû* 8
(
ûû8 9
$str
ûû9 E
,
ûûE F4
&InvalidValuesInTextFieldsTextGenerator
ûûG m
(
ûûm n
)
ûûn o
)
ûûo p
;
ûûp q
}
üü 
}
†† 	
private
¢¢ 
void
¢¢ 
SelectImageButton
¢¢ &
(
¢¢& '
object
¢¢' -
sender
¢¢. 4
,
¢¢4 5
RoutedEventArgs
¢¢6 E
e
¢¢F G
)
¢¢G H
{
££ 	
OpenFileDialog
§§ 
openFileDialog
§§ )
=
§§* +
new
§§, /
OpenFileDialog
§§0 >
{
•• 
Filter
¶¶ 
=
¶¶ 
$str
¶¶ O
,
¶¶O P
Title
ßß 
=
ßß 
resourceManager
ßß '
.
ßß' (
	GetString
ßß( 1
(
ßß1 2
$str
ßß2 C
,
ßßC D
cultureInfo
ßßE P
)
ßßP Q
}
®® 
;
®® 
if
™™ 
(
™™ 
openFileDialog
™™ 
.
™™ 

ShowDialog
™™ )
(
™™) *
)
™™* +
==
™™, .
DialogResult
™™/ ;
.
™™; <
OK
™™< >
)
™™> ?
{
´´ 
BitmapImage
¨¨ 
imageSource
¨¨ '
=
¨¨( )
new
¨¨* -
BitmapImage
¨¨. 9
(
¨¨9 :
new
¨¨: =
Uri
¨¨> A
(
¨¨A B
openFileDialog
¨¨B P
.
¨¨P Q
FileName
¨¨Q Y
)
¨¨Y Z
)
¨¨Z [
;
¨¨[ \!
ProfilePictureImage
≠≠ #
.
≠≠# $
Source
≠≠$ *
=
≠≠+ ,
imageSource
≠≠- 8
;
≠≠8 9!
ImageRouteTextBlock
ÆÆ #
.
ÆÆ# $
Text
ÆÆ$ (
=
ÆÆ) *
openFileDialog
ÆÆ+ 9
.
ÆÆ9 :
FileName
ÆÆ: B
;
ÆÆB C
}
ØØ 
}
∞∞ 	
private
∂∂ 
string
∂∂ 4
&InvalidValuesInTextFieldsTextGenerator
∂∂ =
(
∂∂= >
)
∂∂> ?
{
∑∑ 	
int
∏∏ +
textFieldsWithIncorrectValues
∏∏ -
=
∏∏. /
$num
∏∏0 1
;
∏∏1 2
string
∫∫ 
	finalText
∫∫ 
=
∫∫ 
$str
∫∫ !
;
∫∫! "
string
ºº 
namesPattern
ºº 
=
ºº  !
$str
ºº" C
;
ººC D
string
ΩΩ 
surnamesPattern
ΩΩ "
=
ΩΩ# $
$str
ΩΩ% F
;
ΩΩF G
string
ææ 
emailPattern
ææ 
=
ææ  !
$str
ææ" A
;
ææA B
string
øø 
nickNamePattern
øø "
=
øø# $
$str
øø% ?
;
øø? @
Regex
¡¡ 

namesRegex
¡¡ 
=
¡¡ 
new
¡¡ "
Regex
¡¡# (
(
¡¡( )
namesPattern
¡¡) 5
)
¡¡5 6
;
¡¡6 7
Regex
¬¬ 
surnamesRegex
¬¬ 
=
¬¬  !
new
¬¬" %
Regex
¬¬& +
(
¬¬+ ,
surnamesPattern
¬¬, ;
)
¬¬; <
;
¬¬< =
Regex
√√ 

emailRegex
√√ 
=
√√ 
new
√√ "
Regex
√√# (
(
√√( )
emailPattern
√√) 5
)
√√5 6
;
√√6 7
Regex
ƒƒ 
nickNameRegex
ƒƒ 
=
ƒƒ  !
new
ƒƒ" %
Regex
ƒƒ& +
(
ƒƒ+ ,
nickNamePattern
ƒƒ, ;
)
ƒƒ; <
;
ƒƒ< =
Match
∆∆ 

namesMatch
∆∆ 
=
∆∆ 

namesRegex
∆∆ )
.
∆∆) *
Match
∆∆* /
(
∆∆/ 0
NamesTextBox
∆∆0 <
.
∆∆< =
Text
∆∆= A
)
∆∆A B
;
∆∆B C
Match
«« 
surnamesMatch
«« 
=
««  !
surnamesRegex
««" /
.
««/ 0
Match
««0 5
(
««5 6
SurnamesTextBox
««6 E
.
««E F
Text
««F J
)
««J K
;
««K L
Match
»» 

emailMatch
»» 
=
»» 

emailRegex
»» )
.
»») *
Match
»»* /
(
»»/ 0
EmailTextBox
»»0 <
.
»»< =
Text
»»= A
)
»»A B
;
»»B C
Match
…… 
nickNameMatch
…… 
=
……  !
nickNameRegex
……" /
.
……/ 0
Match
……0 5
(
……5 6
NicknameTextBox
……6 E
.
……E F
Text
……F J
)
……J K
;
……K L
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 

namesMatch
ÀÀ 
.
ÀÀ 
Success
ÀÀ #
||
ÀÀ$ &
!
ÀÀ' (
surnamesMatch
ÀÀ( 5
.
ÀÀ5 6
Success
ÀÀ6 =
||
ÀÀ> @
!
ÀÀA B

emailMatch
ÀÀB L
.
ÀÀL M
Success
ÀÀM T
||
ÀÀU W
!
ÃÃ 
nickNameMatch
ÃÃ 
.
ÃÃ 
Success
ÃÃ &
)
ÃÃ& '
{
ÕÕ 
	finalText
ŒŒ 
+=
ŒŒ 
resourceManager
ŒŒ ,
.
ŒŒ, -
	GetString
ŒŒ- 6
(
ŒŒ6 7
$str
ŒŒ7 `
)
ŒŒ` a
;
ŒŒa b
}
œœ 
if
—— 
(
—— 
!
—— 

namesMatch
—— 
.
—— 
Success
—— #
)
——# $
{
““ 
	finalText
”” 
=
”” 
	finalText
”” %
+
””& '
resourceManager
””( 7
.
””7 8
	GetString
””8 A
(
””A B
$str
””B K
,
””K L
cultureInfo
””M X
)
””X Y
+
””Z [
$str
””\ _
;
””_ `+
textFieldsWithIncorrectValues
‘‘ -
++
‘‘- /
;
‘‘/ 0
}
’’ 
if
◊◊ 
(
◊◊ 
!
◊◊ 
surnamesMatch
◊◊ 
.
◊◊ 
Success
◊◊ &
)
◊◊& '
{
ÿÿ 
if
ŸŸ 
(
ŸŸ +
textFieldsWithIncorrectValues
ŸŸ 1
>=
ŸŸ2 4
$num
ŸŸ5 6
)
ŸŸ6 7
{
⁄⁄ 
	finalText
€€ 
=
€€ 
	finalText
€€  )
.
€€) *
	Substring
€€* 3
(
€€3 4
$num
€€4 5
,
€€5 6
	finalText
€€7 @
.
€€@ A
Length
€€A G
-
€€H I
$num
€€J K
)
€€K L
;
€€L M
	finalText
‹‹ 
=
‹‹ 
	finalText
‹‹  )
+
‹‹* +
$str
‹‹, 0
+
‹‹1 2
resourceManager
‹‹3 B
.
‹‹B C
	GetString
‹‹C L
(
‹‹L M
$str
‹‹M Y
,
‹‹Y Z
cultureInfo
‹‹[ f
)
‹‹f g
+
‹‹h i
$str
‹‹j m
;
‹‹m n
}
›› 
else
ﬁﬁ 
{
ﬂﬂ 
	finalText
‡‡ 
=
‡‡ 
	finalText
‡‡  )
+
‡‡* +
resourceManager
‡‡, ;
.
‡‡; <
	GetString
‡‡< E
(
‡‡E F
$str
‡‡F R
,
‡‡R S
cultureInfo
‡‡T _
)
‡‡_ `
+
‡‡a b
$str
‡‡c f
;
‡‡f g
}
·· +
textFieldsWithIncorrectValues
„„ -
++
„„- /
;
„„/ 0
}
‰‰ 
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 

emailMatch
ÊÊ 
.
ÊÊ 
Success
ÊÊ #
)
ÊÊ# $
{
ÁÁ 
if
ËË 
(
ËË +
textFieldsWithIncorrectValues
ËË 1
>=
ËË2 4
$num
ËË5 6
)
ËË6 7
{
ÈÈ 
	finalText
ÍÍ 
=
ÍÍ 
	finalText
ÍÍ  )
.
ÍÍ) *
	Substring
ÍÍ* 3
(
ÍÍ3 4
$num
ÍÍ4 5
,
ÍÍ5 6
	finalText
ÍÍ7 @
.
ÍÍ@ A
Length
ÍÍA G
-
ÍÍH I
$num
ÍÍJ K
)
ÍÍK L
;
ÍÍL M
	finalText
ÎÎ 
=
ÎÎ 
	finalText
ÎÎ  )
+
ÎÎ* +
$str
ÎÎ, 0
+
ÎÎ1 2
resourceManager
ÎÎ3 B
.
ÎÎB C
	GetString
ÎÎC L
(
ÎÎL M
$str
ÎÎM T
,
ÎÎT U
cultureInfo
ÎÎV a
)
ÎÎa b
+
ÎÎc d
$str
ÎÎe h
;
ÎÎh i
}
ÏÏ 
else
ÌÌ 
{
ÓÓ 
	finalText
ÔÔ 
=
ÔÔ 
	finalText
ÔÔ  )
+
ÔÔ* +
resourceManager
ÔÔ, ;
.
ÔÔ; <
	GetString
ÔÔ< E
(
ÔÔE F
$str
ÔÔF M
,
ÔÔM N
cultureInfo
ÔÔO Z
)
ÔÔZ [
+
ÔÔ\ ]
$str
ÔÔ^ a
;
ÔÔa b
}
 +
textFieldsWithIncorrectValues
ÚÚ -
++
ÚÚ- /
;
ÚÚ/ 0
}
ÛÛ 
if
ıı 
(
ıı 
!
ıı 
nickNameMatch
ıı 
.
ıı 
Success
ıı &
)
ıı& '
{
ˆˆ 
if
˜˜ 
(
˜˜ +
textFieldsWithIncorrectValues
˜˜ 1
>=
˜˜2 4
$num
˜˜5 6
)
˜˜6 7
{
¯¯ 
	finalText
˘˘ 
=
˘˘ 
	finalText
˘˘  )
.
˘˘) *
	Substring
˘˘* 3
(
˘˘3 4
$num
˘˘4 5
,
˘˘5 6
	finalText
˘˘7 @
.
˘˘@ A
Length
˘˘A G
-
˘˘H I
$num
˘˘J K
)
˘˘K L
;
˘˘L M
	finalText
˙˙ 
=
˙˙ 
	finalText
˙˙  )
+
˙˙* +
$str
˙˙, 0
+
˙˙1 2
resourceManager
˙˙3 B
.
˙˙B C
	GetString
˙˙C L
(
˙˙L M
$str
˙˙M W
,
˙˙W X
cultureInfo
˙˙Y d
)
˙˙d e
+
˙˙f g
$str
˙˙h k
;
˙˙k l
}
˚˚ 
else
¸¸ 
{
˝˝ 
	finalText
˛˛ 
=
˛˛ 
	finalText
˛˛  )
+
˛˛* +
resourceManager
˛˛, ;
.
˛˛; <
	GetString
˛˛< E
(
˛˛E F
$str
˛˛F P
,
˛˛P Q
cultureInfo
˛˛R ]
)
˛˛] ^
+
˛˛_ `
$str
˛˛a d
;
˛˛d e
}
ˇˇ 
}
ÄÄ 
return
ÇÇ 
	finalText
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
byte
ÖÖ 
[
ÖÖ 
]
ÖÖ L
>GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions
ÖÖ U
(
ÖÖU V
)
ÖÖV W
{
ÜÜ 	-
ProfileNonCallbackMethodsClient
áá +-
profileNonCallbackMethodsClient
áá, K
=
ááL M
new
ááN Q-
ProfileNonCallbackMethodsClient
ááR q
(
ááq r
)
áár s
;
áás t
string
àà 
fileName
àà 
=
àà 

MainWindow
àà (
.
àà( )
loggedProfile
àà) 6
.
àà6 7
Player
àà7 =
.
àà= >
NickName
àà> F
+
ààG H
$str
ààI O
;
ààO P
byte
ââ 
[
ââ 
]
ââ 
	imageData
ââ 
=
ââ -
profileNonCallbackMethodsClient
ââ >
.
ââ> ?
GetImage
ââ? G
(
ââG H
fileName
ââH P
)
ââP Q
;
ââQ R
if
ãã 
(
ãã 
	imageData
ãã 
==
ãã 
null
ãã  
)
ãã  !
{
åå 
fileName
çç 
=
çç 

MainWindow
çç %
.
çç% &
loggedProfile
çç& 3
.
çç3 4
Player
çç4 :
.
çç: ;
NickName
çç; C
+
ççD E
$str
ççF L
;
ççL M
	imageData
éé 
=
éé -
profileNonCallbackMethodsClient
éé ;
.
éé; <
GetImage
éé< D
(
ééD E
fileName
ééE M
)
ééM N
;
ééN O
}
èè 
if
ëë 
(
ëë 
	imageData
ëë 
==
ëë 
null
ëë !
)
ëë! "
{
íí 
fileName
ìì 
=
ìì 

MainWindow
ìì %
.
ìì% &
loggedProfile
ìì& 3
.
ìì3 4
Player
ìì4 :
.
ìì: ;
NickName
ìì; C
+
ììD E
$str
ììF M
;
ììM N
	imageData
îî 
=
îî -
profileNonCallbackMethodsClient
îî ;
.
îî; <
GetImage
îî< D
(
îîD E
fileName
îîE M
)
îîM N
;
îîN O
}
ïï -
profileNonCallbackMethodsClient
óó +
.
óó+ ,
Close
óó, 1
(
óó1 2
)
óó2 3
;
óó3 4
return
ôô 
	imageData
ôô 
;
ôô 
}
öö 	
public
úú 
void
úú 
GoToLobbyView
úú !
(
úú! "
)
úú" #
{
ùù 	

mainWindow
ûû 
.
ûû 
OpenTheLobbyView
ûû '
(
ûû' (
this
ûû( ,
)
ûû, -
;
ûû- .
}
üü 	
}
°° 
}¢¢ é
ÜC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\MultiplayerCrosswordView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
.  
View  $
{ 
public 

partial 
class $
MultiplayerCrosswordView 1
:2 3
Page4 8
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
private 
readonly 
CultureInfo $
cultureInfo% 0
;0 1
private 
readonly 
ResourceManager (
resourceManager) 8
;8 9
public $
MultiplayerCrosswordView '
(' (

MainWindow( 2

mainWindow3 =
)= >
{ 	
} 	
}   
}!! ®
ïC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\RandomMultiplayerCrosswordGeneratorView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
 
.  
View  $
{		 
public 

partial 
class 3
'RandomMultiplayerCrosswordGeneratorView @
:A B
PageC G
{ 
public 3
'RandomMultiplayerCrosswordGeneratorView 6
(6 7

MainWindow7 A

mainWindowB L
)L M
{ 	
}44 	
public66 3
'RandomMultiplayerCrosswordGeneratorView66 6
(666 7

MainWindow667 A

mainWindow66B L
,66L M
int66N Q#
crosswordNumberSelected66R i
,66i j
int66k n
crosswordPlayed66o ~
)66~ 
{77 	
}PP 	
}QQ 
}RR ∂.
wC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\StartView.xaml.cs
	namespace		 	"
Renovaci√≥n_LIS_Client		
 
.		  
View		  $
{

 
public 

partial 
class 
	StartView "
:# $
Page% )
{ 
private 
readonly 

MainWindow #

mainWindow$ .
;. /
public 
	StartView 
( 

MainWindow #

mainWindow$ .
). /
{ 	
string 
incompletePath !
=" #
Path$ (
.( )
GetFullPath) 4
(4 5
$str	5 ü
)
ü †
;
† °
string 
pathPartToDelete #
=$ %
$str& b
;b c
string 
completePath 
=  !
incompletePath" 0
.0 1
Replace1 8
(8 9
pathPartToDelete9 I
,I J
$strK M
)M N
;N O
SoundPlayer 
mainMenuSong $
=% &
new' *
SoundPlayer+ 6
(6 7
completePath7 C
)C D
;D E
mainMenuSong 
. 
Play 
( 
) 
;  
PageStateManager 
. 
CurrentPage (
=) *
this+ /
;/ 0
this 
. 

mainWindow 
= 

mainWindow (
;( )
InitializeComponent!! 
(!!  
)!!  !
;!!! "
ChangeLanguageLabel"" 
(""  
)""  !
;""! "
}## 	
private)) 
void)) 
	StartGame)) 
()) 
object)) %
sender))& ,
,)), -
RoutedEventArgs)). =
e))> ?
)))? @
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
new,,' *
	LoginView,,+ 4
(,,4 5

mainWindow,,5 ?
),,? @
),,@ A
;,,A B
}-- 	
private// 
void// 
ShowLanguages// "
(//" #
object//# )
sender//* 0
,//0 1 
MouseButtonEventArgs//2 F
e//G H
)//H I
{00 	
LanguagePopUp11 
.11 
IsOpen11  
=11! "
true11# '
;11' (
}22 	
private44 
void44 
CloseLanguages44 #
(44# $
object44$ *
sender44+ 1
,441 2
MouseEventArgs443 A
e44B C
)44C D
{55 	
LanguagePopUp66 
.66 
IsOpen66  
=66! "
false66# (
;66( )
}77 	
private99 
void99 
SetSpanishLanguage99 '
(99' (
object99( .
sender99/ 5
,995 6
RoutedEventArgs997 F
e99G H
)99H I
{:: 	
System;; 
.;; 
	Threading;; 
.;; 
Thread;; #
.;;# $
CurrentThread;;$ 1
.;;1 2
CurrentUICulture;;2 B
=;;C D
new;;E H
System;;I O
.;;O P
Globalization;;P ]
.;;] ^
CultureInfo;;^ i
(;;i j
$str;;j n
);;n o
;;;o p
NavigationService== 
navigationService== /
===0 1
NavigationService==2 C
.==C D 
GetNavigationService==D X
(==X Y
this==Y ]
)==] ^
;==^ _
navigationService>> 
.>> 
Navigate>> &
(>>& '
new>>' *
	StartView>>+ 4
(>>4 5

mainWindow>>5 ?
)>>? @
)>>@ A
;>>A B
}?? 	
privateAA 
voidAA 
SetEnglishLanguageAA '
(AA' (
objectAA( .
senderAA/ 5
,AA5 6
RoutedEventArgsAA7 F
eAAG H
)AAH I
{BB 	
SystemCC 
.CC 
	ThreadingCC 
.CC 
ThreadCC #
.CC# $
CurrentThreadCC$ 1
.CC1 2
CurrentUICultureCC2 B
=CCC D
newCCE H
SystemCCI O
.CCO P
GlobalizationCCP ]
.CC] ^
CultureInfoCC^ i
(CCi j
$strCCj n
)CCn o
;CCo p
NavigationServiceEE 
navigationServiceEE /
=EE0 1
NavigationServiceEE2 C
.EEC D 
GetNavigationServiceEED X
(EEX Y
thisEEY ]
)EE] ^
;EE^ _
navigationServiceFF 
.FF 
NavigateFF &
(FF& '
newFF' *
	StartViewFF+ 4
(FF4 5

mainWindowFF5 ?
)FF? @
)FF@ A
;FFA B
}GG 	
privateMM 
voidMM 
ChangeLanguageLabelMM (
(MM( )
)MM) *
{NN 	
CultureInfoOO 
CurrentLanguageOO '
=OO( )
CultureInfoOO* 5
.OO5 6
CurrentUICultureOO6 F
;OOF G
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
}YY 	
}[[ 
}\\ ‘
lC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\App.xaml.cs
	namespace		 	"
Renovaci√≥n_LIS_Client		
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
} ã
yC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\View\WinnersView.xaml.cs
	namespace 	"
Renovaci√≥n_LIS_Client
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
}&& ¬
{C:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Renovaci√≥n LIS Client\Renovaci√≥n LIS Client\Properties\AssemblyInfo.cs
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