œ8
IC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Server\ServerHoster.cs
	namespace 	
ServerHoster
 
{ 
class 	
Program
 
{		 
static

 
void

 
Main

 
(

 
string

 
[

  
]

  !
args

" &
)

& '
{ 	
ServiceHost 0
$serviceChatForNonCallbackMethodsHost <
== >
new? B
ServiceHostC N
(N O
typeofO U
(U V
ServicesTCPV a
.a b
Servicesb j
.j k-
 ServiceChatForNonCallbackMethods	k ã
)
ã å
)
å ç
;
ç é0
$serviceChatForNonCallbackMethodsHost 0
.0 1
Open1 5
(5 6
)6 7
;7 8
Console 
. 
	WriteLine 
( 
$str O
)O P
;P Q
ServiceHost -
!serviceChatForCallbackMethodsHost 9
=: ;
new< ?
ServiceHost@ K
(K L
typeofL R
(R S
ServicesTCPS ^
.^ _
Services_ g
.g h*
ServiceChatForCallbackMethods	h Ö
)
Ö Ü
)
Ü á
;
á à-
!serviceChatForCallbackMethodsHost -
.- .
Open. 2
(2 3
)3 4
;4 5
Console 
. 
	WriteLine 
( 
$str L
)L M
;M N
ServiceHost 9
-serviceFriendRequestForNonCallbackMethodsHost E
=F G
newH K
ServiceHostL W
(W X
typeofX ^
(^ _
ServicesTCP_ j
.j k
Servicesk s
.s t6
)ServiceFriendRequestForNonCallbackMethods	t ù
)
ù û
)
û ü
;
ü †9
-serviceFriendRequestForNonCallbackMethodsHost 9
.9 :
Open: >
(> ?
)? @
;@ A
Console 
. 
	WriteLine 
( 
$str X
)X Y
;Y Z
ServiceHost 6
*serviceFriendRequestForCallbackMethodsHost B
=C D
newE H
ServiceHostI T
(T U
typeofU [
([ \
ServicesTCP\ g
.g h
Servicesh p
.p q3
&ServiceFriendRequestForCallbackMethods	q ó
)
ó ò
)
ò ô
;
ô ö6
*serviceFriendRequestForCallbackMethodsHost 6
.6 7
Open7 ;
(; <
)< =
;= >
Console 
. 
	WriteLine 
( 
$str U
)U V
;V W
ServiceHost @
4serviceMultiplayerCrosswordForNonCallbackMethodsHost L
=M N
newO R
ServiceHostS ^
(^ _
typeof_ e
(e f
ServicesTCPf q
.q r
Servicesr z
.z {=
0ServiceMultiplayerCrosswordForNonCallbackMethods	{ ´
)
´ ¨
)
¨ ≠
;
≠ Æ@
4serviceMultiplayerCrosswordForNonCallbackMethodsHost @
.@ A
OpenA E
(E F
)F G
;G H
Console 
. 
	WriteLine 
( 
$str _
)_ `
;` a
ServiceHost   =
1serviceMultiplayerCrosswordForCallbackMethodsHost   I
=  J K
new  L O
ServiceHost  P [
(  [ \
typeof  \ b
(  b c
ServicesTCP  c n
.  n o
Services  o w
.  w x:
-ServiceMultiplayerCrosswordForCallbackMethods	  x •
)
  • ¶
)
  ¶ ß
;
  ß ®=
1serviceMultiplayerCrosswordForCallbackMethodsHost!! =
.!!= >
Open!!> B
(!!B C
)!!C D
;!!D E
Console"" 
."" 
	WriteLine"" 
("" 
$str"" \
)""\ ]
;""] ^
ServiceHost$$ 1
%serviceLobbyForNonCallbackMethodsHost$$ =
=$$> ?
new$$@ C
ServiceHost$$D O
($$O P
typeof$$P V
($$V W
ServicesTCP$$W b
.$$b c
Services$$c k
.$$k l.
!ServiceLobbyForNonCallbackMethods	$$l ç
)
$$ç é
)
$$é è
;
$$è ê1
%serviceLobbyForNonCallbackMethodsHost%% 1
.%%1 2
Open%%2 6
(%%6 7
)%%7 8
;%%8 9
Console&& 
.&& 
	WriteLine&& 
(&& 
$str&& P
)&&P Q
;&&Q R
ServiceHost(( .
"serviceLobbyForCallbackMethodsHost(( :
=((; <
new((= @
ServiceHost((A L
(((L M
typeof((M S
(((S T
ServicesTCP((T _
.((_ `
Services((` h
.((h i+
ServiceLobbyForCallbackMethods	((i á
)
((á à
)
((à â
;
((â ä.
"serviceLobbyForCallbackMethodsHost)) .
.)). /
Open))/ 3
())3 4
)))4 5
;))5 6
Console** 
.** 
	WriteLine** 
(** 
$str** M
)**M N
;**N O
ServiceHost,, 
servicePlayerHost,, )
=,,* +
new,,, /
ServiceHost,,0 ;
(,,; <
typeof,,< B
(,,B C
ServicesTCP,,C N
.,,N O
Services,,O W
.,,W X
ServicePlayer,,X e
),,e f
),,f g
;,,g h
servicePlayerHost-- 
.-- 
Open-- "
(--" #
)--# $
;--$ %
Console.. 
... 
	WriteLine.. 
(.. 
$str.. <
)..< =
;..= >
ServiceHost00 3
'serviceProfileForNonCallbackMethodsHost00 ?
=00@ A
new00B E
ServiceHost00F Q
(00Q R
typeof00R X
(00X Y
ServicesTCP00Y d
.00d e
Services00e m
.00m n0
#ServiceProfileForNonCallbackMethods	00n ë
)
00ë í
)
00í ì
;
00ì î3
'serviceProfileForNonCallbackMethodsHost11 3
.113 4
Open114 8
(118 9
)119 :
;11: ;
Console22 
.22 
	WriteLine22 
(22 
$str22 R
)22R S
;22S T
ServiceHost44 0
$serviceProfileForCallbackMethodsHost44 <
=44= >
new44? B
ServiceHost44C N
(44N O
typeof44O U
(44U V
ServicesTCP44V a
.44a b
Services44b j
.44j k-
 ServiceProfileForCallbackMethods	44k ã
)
44ã å
)
44å ç
;
44ç é0
$serviceProfileForCallbackMethodsHost55 0
.550 1
Open551 5
(555 6
)556 7
;557 8
Console66 
.66 
	WriteLine66 
(66 
$str66 O
)66O P
;66P Q
Console88 
.88 
ReadLine88 
(88 
)88 
;88 
}99 	
}:: 
};; ˇ
TC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Server\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str !
)! "
]" #
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
$str #
)# $
]$ %
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
]$$) *