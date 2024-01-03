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
}MM �
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
} �T
C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\BannedPlayersView.xaml.cs
	namespace

 	"
Renovación_LIS_Client
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
$str	55b �
)
55� �
)
55� �
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
�� 	
	LobbyView
�� 
.
�� '
chatCallbackMethodsClient
�� /
.
��/ 0
	LeaveChat
��0 9
(
��9 :

MainWindow
��: D
.
��D E
loggedProfile
��E R
.
��R S
Player
��S Y
.
��Y Z
NickName
��Z b
)
��b c
;
��c d
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
)
��> ?
)
��? @
;
��@ A
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
}�� ��
vC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\ChatView.xaml.cs
	namespace

 	"
Renovación_LIS_Client
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
Text	88} �
)
88� �
;
88� �
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
$str	==\ �
)
==� �
;
==� �
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
	GetString	SSw �
(
SS� �
$str
SS� �
,
SS� �
cultureInfo
SS� �
)
SS� �
;
SS� �
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
$str	XXx �
,
XX� �
cultureInfo
XX� �
)
XX� �
;
XX� �
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
)	vv �
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
�� 
=
��  !
$num
��" %
}
�� 
;
�� 

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
��* ,

MainWindow
��- 7
.
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
�� *
chatNotCallbackMethodsClient
�� (
.
��( )
Close
��) .
(
��. /
)
��/ 0
;
��0 1
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
�� 	
	LobbyView
�� 
.
�� '
chatCallbackMethodsClient
�� /
.
��/ 0
	LeaveChat
��0 9
(
��9 :

MainWindow
��: D
.
��D E
loggedProfile
��E R
.
��R S
Player
��S Y
.
��Y Z
NickName
��Z b
)
��b c
;
��c d
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
)
��> ?
)
��? @
;
��@ A
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
}&& ��
C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\CreateAccountView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
;	:: �
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
,ServiceProfileForNonCallbackMethodsReference	@@c �
.
@@� �
Players
@@� �
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
,ServiceProfileForNonCallbackMethodsReference	IIe �
.
II� �
Profiles
II� �
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
$str	]]j �
)
]]� �
;
]]� �
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
$str	ddh �
)
dd� �
;
dd� �
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
)	qq �
;
qq� �
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
$str	vv\ �
)
vv� �
;
vv� �
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
�� 	
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
��' *
	LoginView
��+ 4
(
��4 5

mainWindow
��5 ?
)
��? @
)
��@ A
;
��A B
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
�� 
	finalText
�� 
;
�� 
}
�� 	
}
�� 
}�� Ȕ
|C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\ForgotPassword.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
Password	aa} �
;
aa� �
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
verificationCode	ww} �
;
ww� �

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
	namespace 	"
Renovación_LIS_Client
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
$str	XXb �
)
XX� �
)
XX� �
{YY 8
,ServiceProfileForNonCallbackMethodsReferenceZZ @
.ZZ@ A
PlayersZZA H
playersZZI P
=ZZQ R
newZZS V9
,ServiceProfileForNonCallbackMethodsReference	ZZW �
.
ZZ� �
Players
ZZ� �
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
,ServiceProfileForNonCallbackMethodsReference	eeY �
.
ee� �
Profiles
ee� �
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
,ServiceProfileForNonCallbackMethodsReference	rrX �
.
rr� �
Players
rr� �
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
,ServiceProfileForNonCallbackMethodsReference	}}Z �
.
}}� �
Profiles
}}� �
{~~ 
	IDProfile !
=" #
profile1$ ,
., -
	IDProfile- 6
,6 7
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
�� -
profileNonCallbackMethodsClient
�� 3
.
��3 4
CancelFriendship
��4 D
(
��D E
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
;��� �-
profileNonCallbackMethodsClient
�� 3
.
��3 4
Close
��4 9
(
��9 :
)
��: ;
;
��; <
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
�� 	0
"friendRequestCallbackMethodsClient
�� .
.
��. /

Disconnect
��/ 9
(
��9 :

MainWindow
��: D
.
��D E
loggedProfile
��E R
.
��R S
Player
��S Y
.
��Y Z
NickName
��Z b
)
��b c
;
��c d
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
)
��> ?
)
��? @
;
��@ A
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
��5 6-
ProfileNonCallbackMethodsClient
�� +-
profileNonCallbackMethodsClient
��, K
=
��L M
new
��N Q-
ProfileNonCallbackMethodsClient
��R q
(
��q r
)
��r s
;
��s t
foreach
�� 
(
�� 
Profile
�� 
profile
�� $
in
��% '-
profileNonCallbackMethodsClient
��( G
.
��G H

GetFriends
��H R
(
��R S

MainWindow
��S ]
.
��] ^
loggedProfile
��^ k
.
��k l
Player
��l r
.
��r s
IDPlayer
��s {
)
��{ |
)
��| }
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
�� -
profileNonCallbackMethodsClient
�� +
.
��+ ,
Close
��, 1
(
��1 2
)
��2 3
;
��3 4
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
�� 	
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
�� -
ProfileNonCallbackMethodsClient
�� 3-
profileNonCallbackMethodsClient
��4 S
=
��T U
new
��V Y-
ProfileNonCallbackMethodsClient
��Z y
(
��y z
)
��z {
;
��{ |
if
�� 
(
�� -
profileNonCallbackMethodsClient
�� 7
.
��7 8(
GetProfileByPlayerNickname
��8 R
(
��R S
NicknameTextBox
��S b
.
��b c
Text
��c g
)
��g h
!=
��i k
null
��l p
)
��p q
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
��1 3

MainWindow
��4 >
.
��> ?
loggedProfile
��? L
.
��L M
Player
��M S
.
��S T
NickName
��T \
)
��\ ]
{
�� 3
%FriendRequestNonCallbackMethodsClient
�� A3
%friendRequestNonCallbackMethodsClient
��B g
=
��h i
new
��j m4
%FriendRequestNonCallbackMethodsClient��n �
(��� �
)��� �
;��� �
if
�� 
(
��  
!
��  !3
%friendRequestNonCallbackMethodsClient
��! F
.
��F GU
FTheLoggedPlayerAlreadyHasSentAFriendRequestToTheNicknameTextBoxProfile��G �
(��� �

MainWindow
��  *
.
��* +
loggedProfile
��+ 8
.
��8 9
	IDProfile
��9 B
,
��B C-
profileNonCallbackMethodsClient
��  ?
.
��? @(
GetProfileByPlayerNickname
��@ Z
(
��Z [
NicknameTextBox
��[ j
.
��j k
Text
��k o
)
��o p
.
��p q
	IDProfile
��q z
)
��  !
)
��! "
{
�� 
bool
��  $J
<theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow
��% a
=
��b c
false
��d i
;
��i j
foreach
��  '
(
��( )
Profile
��) 0
p
��1 2
in
��3 5-
profileNonCallbackMethodsClient
��6 U
.
��U V

GetFriends
��V `
(
��` a

MainWindow
��a k
.
��k l
loggedProfile
��l y
.
��y z
	IDProfile��z �
)��� �
)��� �
{
��  !
if
��$ &
(
��' (-
profileNonCallbackMethodsClient
��( G
.
��G H(
GetProfileByPlayerNickname
��H b
(
��b c
NicknameTextBox
��c r
.
��r s
Text
��s w
)
��w x
.
��x y
Player
��y 
.�� �
NickName��� �
==��� �
p��� �
.��� �
Player��� �
.��� �
NickName��� �
)��� �
{
��$ %J
<theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow
��( d
=
��e f
true
��g k
;
��k l
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
��$ %J
<theUserIntroducedInTheNicknameTextBoxIsFriendOfTheMainWindow
��% a
)
��a b
{
��  !
if
��$ &
(
��' (
!
��( )3
%friendRequestNonCallbackMethodsClient
��) N
.
��N O[
LTheLoggedPlayerAlreadyHasReceivedAFriendRequestFromTheNicknameTextBoxProfile��O �
(��� �

MainWindow
��( 2
.
��2 3
loggedProfile
��3 @
.
��@ A
	IDProfile
��A J
,
��J K-
profileNonCallbackMethodsClient
��( G
.
��G H(
GetProfileByPlayerNickname
��H b
(
��b c
NicknameTextBox
��c r
.
��r s
Text
��s w
)
��w x
.
��x y
	IDProfile��y �
)
��( )
)
��) *
{
��$ %@
2ServiceFriendRequestForNonCallbackMethodsReference
��( Z
.
��Z [
FriendRequests
��[ i
friendRequests
��j x
=
��y z
new
��{ ~A
2ServiceFriendRequestForNonCallbackMethodsReference�� �
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
��) *@
2ServiceFriendRequestForNonCallbackMethodsReference
��( Z
.
��Z [
Players
��[ b
players
��c j
=
��k l
new
��m pA
2ServiceFriendRequestForNonCallbackMethodsReference��q �
.��� �
Players��� �
{
��( )
IDPlayer
��, 4
=
��5 6

MainWindow
��7 A
.
��A B
loggedProfile
��B O
.
��O P
Player
��P V
.
��V W
IDPlayer
��W _
,
��_ `
Names
��, 1
=
��2 3

MainWindow
��4 >
.
��> ?
loggedProfile
��? L
.
��L M
Player
��M S
.
��S T
Names
��T Y
,
��Y Z
Surnames
��, 4
=
��5 6

MainWindow
��7 A
.
��A B
loggedProfile
��B O
.
��O P
Player
��P V
.
��V W
Surnames
��W _
,
��_ `
Email
��, 1
=
��2 3

MainWindow
��4 >
.
��> ?
loggedProfile
��? L
.
��L M
Player
��M S
.
��S T
Email
��T Y
,
��Y Z
NickName
��, 4
=
��5 6

MainWindow
��7 A
.
��A B
loggedProfile
��B O
.
��O P
Player
��P V
.
��V W
NickName
��W _
,
��_ `
	BirthDate
��, 5
=
��6 7
(
��8 9
DateTime
��9 A
)
��A B

MainWindow
��B L
.
��L M
loggedProfile
��M Z
.
��Z [
Player
��[ a
.
��a b
	BirthDate
��b k
,
��k l
Password
��, 4
=
��5 6

MainWindow
��7 A
.
��A B
loggedProfile
��B O
.
��O P
Player
��P V
.
��V W
Password
��W _
}
��( )
;
��) *@
2ServiceFriendRequestForNonCallbackMethodsReference
��( Z
.
��Z [
Profiles
��[ c
profiles
��d l
=
��m n
new
��o rA
2ServiceFriendRequestForNonCallbackMethodsReference��s �
.��� �
Profiles��� �
{
��( )
	IDProfile
��, 5
=
��6 7

MainWindow
��8 B
.
��B C
loggedProfile
��C P
.
��P Q
	IDProfile
��Q Z
,
��Z [
Coins
��, 1
=
��2 3

MainWindow
��4 >
.
��> ?
loggedProfile
��? L
.
��L M
Coins
��M R
,
��R S
LoginStatus
��, 7
=
��8 9

MainWindow
��: D
.
��D E
loggedProfile
��E R
.
��R S
LoginStatus
��S ^
,
��^ _
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
��9 :-
profileNonCallbackMethodsClient
��; Z
.
��Z [(
GetProfileByPlayerNickname
��[ u
(
��u v
NicknameTextBox��v �
.��� �
Text��� �
)��� �
;��� �@
2ServiceFriendRequestForNonCallbackMethodsReference
��( Z
.
��Z [
Players
��[ b
players1
��c k
=
��l m
new
��n qA
2ServiceFriendRequestForNonCallbackMethodsReference��r �
.��� �
Players��� �
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
��) *@
2ServiceFriendRequestForNonCallbackMethodsReference
��( Z
.
��Z [
Profiles
��[ c
	profiles1
��d m
=
��n o
new
��p sA
2ServiceFriendRequestForNonCallbackMethodsReference��t �
.��� �
Profiles��� �
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
��L M3
%friendRequestNonCallbackMethodsClient
��( M
.
��M N
AddFriendRequest
��N ^
(
��^ _
friendRequests
��_ m
)
��m n
;
��n o
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
�� 3
%friendRequestNonCallbackMethodsClient
�� A
.
��A B
Close
��B G
(
��G H
)
��H I
;
��I J
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
�� -
profileNonCallbackMethodsClient
�� 3
.
��3 4
Close
��4 9
(
��9 :
)
��: ;
;
��; <
}
�� 
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
��W X3
%FriendRequestNonCallbackMethodsClient
�� 53
%friendRequestNonCallbackMethodsClient
��6 [
=
��\ ]
new
��^ a4
%FriendRequestNonCallbackMethodsClient��b �
(��� �
)��� �
;��� �
FriendRequest
�� 
friendRequest
�� +
=
��, -3
%friendRequestNonCallbackMethodsClient
��. S
.
��S T"
GetFriendRequestByID
��T h
(
��h i
long
��i m
.
��m n
Parse
��n s
(
��s t
IDTextBlock
��t 
.�� �
Text��� �
)��� �
)��� �
;��� �
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
�� 3
%friendRequestNonCallbackMethodsClient
�� 5
.
��5 6
Close
��6 ;
(
��; <
)
��< =
;
��= >
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
��: ;3
%FriendRequestNonCallbackMethodsClient
�� 13
%friendRequestNonCallbackMethodsClient
��2 W
=
��X Y
new
��Z ]4
%FriendRequestNonCallbackMethodsClient��^ �
(��� �
)��� �
;��� �0
"FriendRequestCallbackMethodsClient
�� .0
"friendRequestCallbackMethodsClient
��/ Q
=
��R S
new
��T W0
"FriendRequestCallbackMethodsClient
��X z
(
��z {
new
��{ ~
InstanceContext�� �
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
��1 33
%friendRequestNonCallbackMethodsClient
��4 Y
.
��Y ZC
4GetPendientsForAceptationFriendsRequestsByProfile1ID��Z �
(��� �

MainWindow��� �
.��� �
loggedProfile��� �
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
��1 33
%friendRequestNonCallbackMethodsClient
��4 Y
.
��Y ZI
:GetSentAndPendientsForAceptationFriendsRequestsByProfileID��Z �
(��� �

MainWindow��� �
.��� �
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
�� 3
%friendRequestNonCallbackMethodsClient
�� 1
.
��1 2
Close
��2 7
(
��7 8
)
��8 9
;
��9 :
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
�� 3
%FriendRequestNonCallbackMethodsClient
�� 53
%friendRequestNonCallbackMethodsClient
��6 [
=
��\ ]
new
��^ a4
%FriendRequestNonCallbackMethodsClient��b �
(��� �
)��� �
;��� �3
%friendRequestNonCallbackMethodsClient
�� 5
.
��5 6!
AcceptFriendRequest
��6 I
(
��I J4
&FriendRequestToFriendRequestsConverter
��J p
(
��p q4
%friendRequestNonCallbackMethodsClient��q �
.��� �$
GetFriendRequestByID��� �
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
��E F3
%friendRequestNonCallbackMethodsClient
�� 5
.
��5 6
Close
��6 ;
(
��; <
)
��< =
;
��= >
}
�� 
}
�� 	
private
�� 
void
��  
BackButton1OnClick
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
�� 3
%FriendRequestNonCallbackMethodsClient
�� 53
%friendRequestNonCallbackMethodsClient
��6 [
=
��\ ]
new
��^ a4
%FriendRequestNonCallbackMethodsClient��b �
(��� �
)��� �
;��� �3
%friendRequestNonCallbackMethodsClient
�� 5
.
��5 6!
CancelFriendRequest
��6 I
(
��I J4
&FriendRequestToFriendRequestsConverter
��J p
(
��p q4
%friendRequestNonCallbackMethodsClient��q �
.��� �$
GetFriendRequestByID��� �
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
��E F3
%friendRequestNonCallbackMethodsClient
�� 5
.
��5 6
Close
��6 ;
(
��; <
)
��< =
;
��= >
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
�� 3
%FriendRequestNonCallbackMethodsClient
�� 53
%friendRequestNonCallbackMethodsClient
��6 [
=
��\ ]
new
��^ a4
%FriendRequestNonCallbackMethodsClient��b �
(��� �
)��� �
;��� �3
%friendRequestNonCallbackMethodsClient
�� 5
.
��5 6!
RejectFriendRequest
��6 I
(
��I J4
&FriendRequestToFriendRequestsConverter
��J p
(
��p q4
%friendRequestNonCallbackMethodsClient��q �
.��� �$
GetFriendRequestByID��� �
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
��E F3
%friendRequestNonCallbackMethodsClient
�� 5
.
��5 6
Close
��6 ;
(
��; <
)
��< =
;
��= >
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
)
��? @
)
��@ A
;
��A B
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
��d e

MainWindow
�� 
.
�� *
profileCallbackMethodsClient
�� ;
.
��; <$
InviteFriendToTheLobby
��< R
(
��R S
friendNickname
��S a
.
��a b
Text
��b f
)
��f g
;
��g h
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
�� 
	LobbyView
�� 
.
�� (
lobbyCallbackMethodsClient
�� 4
!=
��5 7
null
��8 <
)
��< =
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
��@ A-
ProfileNonCallbackMethodsClient
�� /-
profileNonCallbackMethodsClient
��0 O
=
��P Q
new
��R U-
ProfileNonCallbackMethodsClient
��V u
(
��u v
)
��v w
;
��w x+
LobbyNonCallbackMethodsClient
�� -+
lobbyNonCallbackMethodsClient
��. K
=
��L M
new
��N Q+
LobbyNonCallbackMethodsClient
��R o
(
��o p
)
��p q
;
��q r
foreach
�� 
(
�� 
Profile
��  
profile
��! (
in
��) +-
profileNonCallbackMethodsClient
��, K
.
��K L

GetFriends
��L V
(
��V W

MainWindow
��W a
.
��a b
loggedProfile
��b o
.
��o p
Player
��p v
.
��v w
IDPlayer
��w 
)�� �
)��� �
{
�� 
if
�� 
(
�� 
!
�� +
lobbyNonCallbackMethodsClient
�� 6
.
��6 7
IsConnected
��7 B
(
��B C
profile
��C J
.
��J K
Player
��K Q
.
��Q R
NickName
��R Z
)
��Z [
)
��[ \
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
�� -
profileNonCallbackMethodsClient
�� /
.
��/ 0
Close
��0 5
(
��5 6
)
��6 7
;
��7 8+
lobbyNonCallbackMethodsClient
�� -
.
��- .
Close
��. 3
(
��3 4
)
��4 5
;
��5 6
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
�� 
	LobbyView
�� 
.
�� '
chatCallbackMethodsClient
�� 3
.
��3 4
	LeaveChat
��4 =
(
��= >

MainWindow
��> H
.
��H I
loggedProfile
��I V
.
��V W
Player
��W ]
.
��] ^
NickName
��^ f
)
��f g
;
��g h
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
)
��B C
)
��C D
;
��D E
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
�� @
2ServiceFriendRequestForNonCallbackMethodsReference
�� B
.
��B C
FriendRequests
��C Q4
&FriendRequestToFriendRequestsConverter
��R x
(
��x y
FriendRequest��y �
friendRequest��� �
)��� �
{
�� 	@
2ServiceFriendRequestForNonCallbackMethodsReference
�� >
.
��> ?
FriendRequests
��? M
friendRequests
��N \
=
��] ^
new
��_ bA
2ServiceFriendRequestForNonCallbackMethodsReference��c �
.��� �
FriendRequests��� �
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
�� @
2ServiceFriendRequestForNonCallbackMethodsReference
�� >
.
��> ?
Players
��? F
players
��G N
=
��O P
new
��Q TA
2ServiceFriendRequestForNonCallbackMethodsReference��U �
.��� �
Players��� �
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
�� @
2ServiceFriendRequestForNonCallbackMethodsReference
�� >
.
��> ?
Profiles
��? G
profiles
��H P
=
��Q R
new
��S VA
2ServiceFriendRequestForNonCallbackMethodsReference��W �
.��� �
Profiles��� �
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
�� @
2ServiceFriendRequestForNonCallbackMethodsReference
�� >
.
��> ?
Players
��? F
players1
��G O
=
��P Q
new
��R UA
2ServiceFriendRequestForNonCallbackMethodsReference��V �
.��� �
Players��� �
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
�� @
2ServiceFriendRequestForNonCallbackMethodsReference
�� >
.
��> ?
Profiles
��? G
	profiles1
��H Q
=
��R S
new
��T WA
2ServiceFriendRequestForNonCallbackMethodsReference��X �
.��� �
Profiles��� �
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
string
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
$str	MMb �
)
MM� �
)
MM� �
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
$str	~~b �
)
~~� �
)
~~� �
{ 

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
��f g(
lobbyCallbackMethodsClient
�� .
.
��. /
SetAdmin
��/ 7
(
��7 8
nickname
��8 @
.
��@ A
Text
��A E
)
��E F
;
��F G
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
�� 	
	LobbyView
�� 
.
�� '
chatCallbackMethodsClient
�� /
.
��/ 0
	LeaveChat
��0 9
(
��9 :

MainWindow
��: D
.
��D E
loggedProfile
��E R
.
��R S
Player
��S Y
.
��Y Z
NickName
��Z b
)
��b c
;
��c d
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
)
��> ?
)
��? @
;
��@ A
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
��5 6+
LobbyNonCallbackMethodsClient
�� )+
lobbyNonCallbackMethodsClient
��* G
=
��H I
new
��J M+
LobbyNonCallbackMethodsClient
��N k
(
��k l
)
��l m
;
��m n
foreach
�� 
(
�� 
string
�� 
profile
�� #
in
��$ &+
lobbyNonCallbackMethodsClient
��' D
.
��D E"
GetConnectedProfiles
��E Y
(
��Y Z
)
��Z [
)
��[ \
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
�� +
lobbyNonCallbackMethodsClient
�� 1
.
��1 2
IsAdmin
��2 9
(
��9 :
profile
��: A
)
��A B
)
��B C
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
�� 

MainWindow
�� )
.
��) *
loggedProfile
��* 7
.
��7 8
Player
��8 >
.
��> ?
NickName
��? G
)
��G H
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
�� +
lobbyNonCallbackMethodsClient
�� 5
.
��5 6
IsAdmin
��6 =
(
��= >
profile
��> E
)
��E F
)
��F G
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
�� +
lobbyNonCallbackMethodsClient
�� 1
.
��1 2
IsAdmin
��2 9
(
��9 :
profile
��: A
)
��A B
||
��C E+
lobbyNonCallbackMethodsClient
��F c
.
��c d
IsAdmin
��d k
(
��k l

MainWindow
��l v
.
��v w
loggedProfile��w �
.��� �
Player��� �
.��� �
NickName��� �
)��� �
)��� �
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
��  "

MainWindow
��# -
.
��- .
loggedProfile
��. ;
.
��; <
Player
��< B
.
��B C
NickName
��C K
)
��K L
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
�� +
lobbyNonCallbackMethodsClient
�� 2
.
��2 3
IsAdmin
��3 :
(
��: ;

MainWindow
��; E
.
��E F
loggedProfile
��F S
.
��S T
Player
��T Z
.
��Z [
NickName
��[ c
)
��c d
&&
��e g
!
��h i,
lobbyNonCallbackMethodsClient��i �
.��� �
IsAdmin��� �
(��� �
profile��� �
)��� �
)��� �
{
�� 
profileImage
��  
.
��  !
Margin
��! '
=
��( )
new
��* -
	Thickness
��. 7
(
��7 8
$num
��8 9
,
��9 :
$num
��; =
,
��= >
$num
��? @
,
��@ A
$num
��B C
)
��C D
;
��D E
if
�� 
(
�� 
profile
�� 
==
��  "

MainWindow
��# -
.
��- .
loggedProfile
��. ;
.
��; <
Player
��< B
.
��B C
NickName
��C K
)
��K L
{
�� 
profileImage
�� $
.
��$ %
Height
��% +
=
��, -
$num
��. 1
;
��1 2
profileImage
�� $
.
��$ %
Width
��% *
=
��+ ,
$num
��- 0
;
��0 1
}
�� 
else
�� 
{
�� 
profileImage
�� $
.
��$ %
Height
��% +
=
��, -
$num
��. 1
;
��1 2
profileImage
�� $
.
��$ %
Width
��% *
=
��+ ,
$num
��- 0
;
��0 1
}
�� 
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
�� +
lobbyNonCallbackMethodsClient
�� 1
.
��1 2
IsAdmin
��2 9
(
��9 :

MainWindow
��: D
.
��D E
loggedProfile
��E R
.
��R S
Player
��S Y
.
��Y Z
NickName
��Z b
)
��b c
&&
��d f
!
��g h,
lobbyNonCallbackMethodsClient��h �
.��� �
IsAdmin��� �
(��� �
profile��� �
)��� �
)��� �
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
�� +
lobbyNonCallbackMethodsClient
�� )
.
��) *
Close
��* /
(
��/ 0
)
��0 1
;
��1 2
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
�� 	+
LobbyNonCallbackMethodsClient
�� )+
lobbyNonCallbackMethodsClient
��* G
=
��H I
new
��J M+
LobbyNonCallbackMethodsClient
��N k
(
��k l
)
��l m
;
��m n
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
��2 3
if
�� 
(
�� +
lobbyNonCallbackMethodsClient
�� 1
.
��1 2
IsAdmin
��2 9
(
��9 :

MainWindow
��: D
.
��D E
loggedProfile
��E R
.
��R S
Player
��S Y
.
��Y Z
NickName
��Z b
)
��b c
)
��c d
{
�� 
currentPage
�� 
.
��  *
AdminPlayerButtonsStackPanel
��  <
.
��< =

Visibility
��= G
=
��H I

Visibility
��J T
.
��T U
Visible
��U \
;
��\ ]
currentPage
�� 
.
��  +
NormalPlayerButtonsStackPanel
��  =
.
��= >

Visibility
��> H
=
��I J

Visibility
��K U
.
��U V
	Collapsed
��V _
;
��_ `
}
�� 
else
�� 
{
�� 
currentPage
�� 
.
��  *
AdminPlayerButtonsStackPanel
��  <
.
��< =

Visibility
��= G
=
��H I

Visibility
��J T
.
��T U
	Collapsed
��U ^
;
��^ _
currentPage
�� 
.
��  +
NormalPlayerButtonsStackPanel
��  =
.
��= >

Visibility
��> H
=
��I J

Visibility
��K U
.
��U V
Visible
��V ]
;
��] ^
}
�� 
}
�� +
lobbyNonCallbackMethodsClient
�� )
.
��) *
Close
��* /
(
��/ 0
)
��0 1
;
��1 2
}
�� 	
public
�� 
void
�� :
,UpdateConnectedProfilesForInviteToLobbyLists
�� @
(
��@ A
)
��A B
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
FriendsView
��0 ;
currentPage
��< G
)
��G H
{
�� 
currentPage
�� 
.
�� 6
(ShowConnectedFriendsListForInviteToLobby
�� D
(
��D E
)
��E F
;
��F G
}
�� 
}
�� 	
public
�� 
void
�� ,
ExpelPlayerFromMultiplayerGame
�� 2
(
��2 3
)
��3 4
{
�� 	
if
�� 
(
�� 
PageStateManager
��  
.
��  !
CurrentPage
��! ,
is
��- /
	LobbyView
��0 9
	lobbyView
��: C
)
��C D
{
�� 
	lobbyView
�� 
.
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� E
(
��E F
)
��F G
;
��G H
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
BannedPlayersView
��5 F
bannedPlayersView
��G X
)
��X Y
{
�� 
bannedPlayersView
�� !
.
��! "9
+ExitFromThisPageForBeingExpeltFromLobbyView
��" M
(
��M N
)
��N O
;
��O P
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
FriendsView
��5 @
friendsView
��A L
)
��L M
{
�� 
friendsView
�� 
.
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� G
(
��G H
)
��H I
;
��I J
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
ChatView
��5 =
chatView
��> F
)
��F G
{
�� 
chatView
�� 
.
�� 9
+ExitFromThisPageForBeingExpeltFromLobbyView
�� D
(
��D E
)
��E F
;
��F G
}
�� 
else
�� 
if
�� 
(
�� 
PageStateManager
�� %
.
��% &
CurrentPage
��& 1
is
��2 4
ConfigurationView
��5 F
configurationView
��G X
)
��X Y
{
�� 
}
�� 
}
�� 	
}
�� 
}�� �_
wC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\LoginView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
$str	VVd �
)
VV� �
;
VV� �
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
$str	``\ �
)
``� �
;
``� �
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
��? @
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
��9 @
)
��@ A
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
}�� �x
xC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\MainWindow.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
	IDProfile	99{ �
)
99� �
;
99� �

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
	IDProfile	EE{ �
)
EE� �
;
EE� �

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
	IDProfile	QQ{ �
)
QQ� �
;
QQ� �

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
	IDProfile	`` �
)
``� �
;
``� �

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
$str	}}v �
)
}}� �
)
}}� �
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
�� 
(
�� 
!
�� +
lobbyNonCallbackMethodsClient
�� 2
.
��2 3!
ThePlayersAreInGame
��3 F
(
��F G
)
��G H
)
��H I
{
�� 
if
�� 
(
�� 
!
�� +
lobbyNonCallbackMethodsClient
�� 6
.
��6 7
IsBanned
��7 ?
(
��? @

MainWindow
��@ J
.
��J K
loggedProfile
��K X
.
��X Y
Player
��Y _
.
��_ `
NickName
��` h
)
��h i
)
��i j
{
�� 
if
�� 
(
�� +
lobbyNonCallbackMethodsClient
�� 9
.
��9 :"
GetConnectedProfiles
��: N
(
��N O
)
��O P
.
��P Q
Length
��Q W
<
��X Y
$num
��Z [
)
��[ \
{
�� 
	LobbyView
�� %
.
��% &'
chatCallbackMethodsClient
��& ?
.
��? @
JoinChat
��@ H
(
��H I

MainWindow
��I S
.
��S T
loggedProfile
��T a
.
��a b
Player
��b h
.
��h i
NickName
��i q
)
��q r
;
��r s
	LobbyView
�� %
.
��% &(
lobbyCallbackMethodsClient
��& @
.
��@ A
Connect
��A H
(
��H I

MainWindow
��I S
.
��S T
loggedProfile
��T a
.
��a b
Player
��b h
.
��h i
NickName
��i q
)
��q r
;
��r s
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
)
��I J
)
��J K
;
��K L
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
}�� �>
vC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\MenuView.xaml.cs
	namespace		 	"
Renovación_LIS_Client		
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
	IDProfile	SSw �
)
SS� �
;
SS� �

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
}ii ��
C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\ModifyProfileView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
loggedProfile	^^v �
.
^^� �
Player
^^� �
.
^^� �
Email
^^� �
)
^^� �
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

MainWindow	``x �
.
``� �
loggedProfile
``� �
.
``� �
Player
``� �
.
``� �
NickName
``� �
)
``� �
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
NicknameTextBox	bbv �
.
bb� �
Text
bb� �
)
bb� �
;
bb� �"
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
$str	}}l �
)
}}� �
;
}}� �
return~~$ *
;~~* +
}  !
}
�� 
new
�� !
AlertPopUpGenerator
��  3
(
��3 4
)
��4 5
.
��5 6/
!OpenInternationalizedSuccessPopUp
��6 W
(
��W X
$str
��X d
,
��d e
$str��f �
)��� �
;��� �

MainWindow
�� &
.
��& '
loggedProfile
��' 4
=
��5 6-
profileNonCallbackMethodsClient
��7 V
.
��V W"
GetProfileByPlayerID
��W k
(
��k l
(
��l m
int
��m p
)
��p q

MainWindow
��q {
.
��{ |
loggedProfile��| �
.��� �
Player��� �
.��� �
IDPlayer��� �
)��� �
;��� �

MainWindow
�� &
.
��& '*
profileCallbackMethodsClient
��' C
.
��C D5
'UpdateFriendsListsToAllConnectedClients
��D k
(
��k l
)
��l m
;
��m n
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
)
��N O
)
��O P
;
��P Q
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
��( )-
profileNonCallbackMethodsClient
�� 3
.
��3 4
Close
��4 9
(
��9 :
)
��: ;
;
��; <
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
�� 
return
�� 
	finalText
�� 
;
�� 
}
�� 	
private
�� 
byte
�� 
[
�� 
]
�� L
>GetProfileImageFromServerOnByteArrayCheckingAllValidExtensions
�� U
(
��U V
)
��V W
{
�� 	-
ProfileNonCallbackMethodsClient
�� +-
profileNonCallbackMethodsClient
��, K
=
��L M
new
��N Q-
ProfileNonCallbackMethodsClient
��R q
(
��q r
)
��r s
;
��s t
string
�� 
fileName
�� 
=
�� 

MainWindow
�� (
.
��( )
loggedProfile
��) 6
.
��6 7
Player
��7 =
.
��= >
NickName
��> F
+
��G H
$str
��I O
;
��O P
byte
�� 
[
�� 
]
�� 
	imageData
�� 
=
�� -
profileNonCallbackMethodsClient
�� >
.
��> ?
GetImage
��? G
(
��G H
fileName
��H P
)
��P Q
;
��Q R
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
�� 

MainWindow
�� %
.
��% &
loggedProfile
��& 3
.
��3 4
Player
��4 :
.
��: ;
NickName
��; C
+
��D E
$str
��F L
;
��L M
	imageData
�� 
=
�� -
profileNonCallbackMethodsClient
�� ;
.
��; <
GetImage
��< D
(
��D E
fileName
��E M
)
��M N
;
��N O
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
�� 

MainWindow
�� %
.
��% &
loggedProfile
��& 3
.
��3 4
Player
��4 :
.
��: ;
NickName
��; C
+
��D E
$str
��F M
;
��M N
	imageData
�� 
=
�� -
profileNonCallbackMethodsClient
�� ;
.
��; <
GetImage
��< D
(
��D E
fileName
��E M
)
��M N
;
��N O
}
�� -
profileNonCallbackMethodsClient
�� +
.
��+ ,
Close
��, 1
(
��1 2
)
��2 3
;
��3 4
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
}�� �
�C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\MultiplayerCrosswordView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
}!! �
�C:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\RandomMultiplayerCrosswordGeneratorView.xaml.cs
	namespace 	"
Renovación_LIS_Client
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
}RR �.
wC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Renovación LIS Client\Renovación LIS Client\View\StartView.xaml.cs
	namespace		 	"
Renovación_LIS_Client		
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
$str	5 �
)
� �
;
� �
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
}\\ �
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