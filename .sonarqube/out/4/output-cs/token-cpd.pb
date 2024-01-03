œ8
IC:\Users\wmike\OneDrive\Documentos\Renovaci√≥n LIS\Server\ServerHoster.cs
	namespace 	
ServerHoster
 
{ 
class 	
Program
 
{ 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{		 	
ServiceHost

 0
$serviceChatForNonCallbackMethodsHost

 <
=

= >
new

? B
ServiceHost

C N
(

N O
typeof

O U
(

U V
ServicesTCP

V a
.

a b
Services

b j
.

j k-
 ServiceChatForNonCallbackMethods	

k ã
)


ã å
)


å ç
;


ç é0
$serviceChatForNonCallbackMethodsHost 0
.0 1
Open1 5
(5 6
)6 7
;7 8
Console 
. 
	WriteLine 
( 
$str O
)O P
;P Q
ServiceHost -
!serviceChatForCallbackMethodsHost 9
=: ;
new< ?
ServiceHost@ K
(K L
typeofL R
(R S
ServicesTCPS ^
.^ _
Services_ g
.g h*
ServiceChatForCallbackMethods	h Ö
)
Ö Ü
)
Ü á
;
á à-
!serviceChatForCallbackMethodsHost -
.- .
Open. 2
(2 3
)3 4
;4 5
Console 
. 
	WriteLine 
( 
$str L
)L M
;M N
ServiceHost 9
-serviceFriendRequestForNonCallbackMethodsHost E
=F G
newH K
ServiceHostL W
(W X
typeofX ^
(^ _
ServicesTCP_ j
.j k
Servicesk s
.s t6
)ServiceFriendRequestForNonCallbackMethods	t ù
)
ù û
)
û ü
;
ü †9
-serviceFriendRequestForNonCallbackMethodsHost 9
.9 :
Open: >
(> ?
)? @
;@ A
Console 
. 
	WriteLine 
( 
$str X
)X Y
;Y Z
ServiceHost 6
*serviceFriendRequestForCallbackMethodsHost B
=C D
newE H
ServiceHostI T
(T U
typeofU [
([ \
ServicesTCP\ g
.g h
Servicesh p
.p q3
&ServiceFriendRequestForCallbackMethods	q ó
)
ó ò
)
ò ô
;
ô ö6
*serviceFriendRequestForCallbackMethodsHost 6
.6 7
Open7 ;
(; <
)< =
;= >
Console 
. 
	WriteLine 
( 
$str U
)U V
;V W
ServiceHost @
4serviceMultiplayerCrosswordForNonCallbackMethodsHost L
=M N
newO R
ServiceHostS ^
(^ _
typeof_ e
(e f
ServicesTCPf q
.q r
Servicesr z
.z {=
0ServiceMultiplayerCrosswordForNonCallbackMethods	{ ´
)
´ ¨
)
¨ ≠
;
≠ Æ@
4serviceMultiplayerCrosswordForNonCallbackMethodsHost @
.@ A
OpenA E
(E F
)F G
;G H
Console 
. 
	WriteLine 
( 
$str _
)_ `
;` a
ServiceHost =
1serviceMultiplayerCrosswordForCallbackMethodsHost I
=J K
newL O
ServiceHostP [
([ \
typeof\ b
(b c
ServicesTCPc n
.n o
Serviceso w
.w x:
-ServiceMultiplayerCrosswordForCallbackMethods	x •
)
• ¶
)
¶ ß
;
ß ®=
1serviceMultiplayerCrosswordForCallbackMethodsHost =
.= >
Open> B
(B C
)C D
;D E
Console   
.   
	WriteLine   
(   
$str   \
)  \ ]
;  ] ^
ServiceHost"" 1
%serviceLobbyForNonCallbackMethodsHost"" =
=""> ?
new""@ C
ServiceHost""D O
(""O P
typeof""P V
(""V W
ServicesTCP""W b
.""b c
Services""c k
.""k l.
!ServiceLobbyForNonCallbackMethods	""l ç
)
""ç é
)
""é è
;
""è ê1
%serviceLobbyForNonCallbackMethodsHost## 1
.##1 2
Open##2 6
(##6 7
)##7 8
;##8 9
Console$$ 
.$$ 
	WriteLine$$ 
($$ 
$str$$ P
)$$P Q
;$$Q R
ServiceHost&& .
"serviceLobbyForCallbackMethodsHost&& :
=&&; <
new&&= @
ServiceHost&&A L
(&&L M
typeof&&M S
(&&S T
ServicesTCP&&T _
.&&_ `
Services&&` h
.&&h i+
ServiceLobbyForCallbackMethods	&&i á
)
&&á à
)
&&à â
;
&&â ä.
"serviceLobbyForCallbackMethodsHost'' .
.''. /
Open''/ 3
(''3 4
)''4 5
;''5 6
Console(( 
.(( 
	WriteLine(( 
((( 
$str(( M
)((M N
;((N O
ServiceHost** 
servicePlayerHost** )
=*** +
new**, /
ServiceHost**0 ;
(**; <
typeof**< B
(**B C
ServicesTCP**C N
.**N O
Services**O W
.**W X
ServicePlayer**X e
)**e f
)**f g
;**g h
servicePlayerHost++ 
.++ 
Open++ "
(++" #
)++# $
;++$ %
Console,, 
.,, 
	WriteLine,, 
(,, 
$str,, <
),,< =
;,,= >
ServiceHost.. 3
'serviceProfileForNonCallbackMethodsHost.. ?
=..@ A
new..B E
ServiceHost..F Q
(..Q R
typeof..R X
(..X Y
ServicesTCP..Y d
...d e
Services..e m
...m n0
#ServiceProfileForNonCallbackMethods	..n ë
)
..ë í
)
..í ì
;
..ì î3
'serviceProfileForNonCallbackMethodsHost// 3
.//3 4
Open//4 8
(//8 9
)//9 :
;//: ;
Console00 
.00 
	WriteLine00 
(00 
$str00 R
)00R S
;00S T
ServiceHost22 0
$serviceProfileForCallbackMethodsHost22 <
=22= >
new22? B
ServiceHost22C N
(22N O
typeof22O U
(22U V
ServicesTCP22V a
.22a b
Services22b j
.22j k-
 ServiceProfileForCallbackMethods	22k ã
)
22ã å
)
22å ç
;
22ç é0
$serviceProfileForCallbackMethodsHost33 0
.330 1
Open331 5
(335 6
)336 7
;337 8
Console44 
.44 
	WriteLine44 
(44 
$str44 O
)44O P
;44P Q
Console66 
.66 
ReadLine66 
(66 
)66 
;66 
}77 	
}88 
}99 ˇ
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