·'
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
 
serviceChatHost

 '
=

( )
new

* -
ServiceHost

. 9
(

9 :
typeof

: @
(

@ A
ServicesTCP

A L
.

L M
Services

M U
.

U V
ServiceChat

V a
)

a b
)

b c
;

c d
serviceChatHost 
. 
Open  
(  !
)! "
;" #
Console 
. 
	WriteLine 
( 
$str :
): ;
;; <
ServiceHost $
serviceFriendRequestHost 0
=1 2
new3 6
ServiceHost7 B
(B C
typeofC I
(I J
ServicesTCPJ U
.U V
ServicesV ^
.^ _ 
ServiceFriendRequest_ s
)s t
)t u
;u v$
serviceFriendRequestHost $
.$ %
Open% )
() *
)* +
;+ ,
Console 
. 
	WriteLine 
( 
$str C
)C D
;D E
ServiceHost 6
*serviceFriendRequestForCallbackMethodsHost B
=C D
newE H
ServiceHostI T
(T U
typeofU [
([ \
ServicesTCP\ g
.g h
Servicesh p
.p q3
&ServiceFriendRequestForCallbackMethods	q ó
)
ó ò
)
ò ô
;
ô ö6
*serviceFriendRequestForCallbackMethodsHost 6
.6 7
Open7 ;
(; <
)< =
;= >
Console 
. 
	WriteLine 
( 
$str U
)U V
;V W
ServiceHost +
serviceMultiplayerCrosswordHost 7
=8 9
new: =
ServiceHost> I
(I J
typeofJ P
(P Q
ServicesTCPQ \
.\ ]
Services] e
.e f(
ServiceMultiplayerCrossword	f Å
)
Å Ç
)
Ç É
;
É Ñ+
serviceMultiplayerCrosswordHost +
.+ ,
Open, 0
(0 1
)1 2
;2 3
Console 
. 
	WriteLine 
( 
$str J
)J K
;K L
ServiceHost &
serviceMultiplayerGameHost 2
=3 4
new5 8
ServiceHost9 D
(D E
typeofE K
(K L
ServicesTCPL W
.W X
ServicesX `
.` a"
ServiceMultiplayerGamea w
)w x
)x y
;y z&
serviceMultiplayerGameHost &
.& '
Open' +
(+ ,
), -
;- .
Console 
. 
	WriteLine 
( 
$str E
)E F
;F G
ServiceHost 
servicePlayerHost )
=* +
new, /
ServiceHost0 ;
(; <
typeof< B
(B C
ServicesTCPC N
.N O
ServicesO W
.W X
ServicePlayerX e
)e f
)f g
;g h
servicePlayerHost 
. 
Open "
(" #
)# $
;$ %
Console   
.   
	WriteLine   
(   
$str   <
)  < =
;  = >
ServiceHost"" 
serviceProfileHost"" *
=""+ ,
new""- 0
ServiceHost""1 <
(""< =
typeof""= C
(""C D
ServicesTCP""D O
.""O P
Services""P X
.""X Y
ServiceProfile""Y g
)""g h
)""h i
;""i j
serviceProfileHost## 
.## 
Open## #
(### $
)##$ %
;##% &
Console$$ 
.$$ 
	WriteLine$$ 
($$ 
$str$$ =
)$$= >
;$$> ?
ServiceHost&& 0
$serviceProfileForCallbackMethodsHost&& <
=&&= >
new&&? B
ServiceHost&&C N
(&&N O
typeof&&O U
(&&U V
ServicesTCP&&V a
.&&a b
Services&&b j
.&&j k-
 ServiceProfileForCallbackMethods	&&k ã
)
&&ã å
)
&&å ç
;
&&ç é0
$serviceProfileForCallbackMethodsHost'' 0
.''0 1
Open''1 5
(''5 6
)''6 7
;''7 8
Console(( 
.(( 
	WriteLine(( 
((( 
$str(( O
)((O P
;((P Q
Console** 
.** 
ReadLine** 
(** 
)** 
;** 
}++ 	
},, 
}-- ˇ
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