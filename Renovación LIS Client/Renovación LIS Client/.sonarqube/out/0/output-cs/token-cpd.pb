�
FC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Domain\Crucigram.cs
	namespace 	
domain
 
{ 
public		 

class		 
	Crucigram		 
{

 
public 
int 
IDCrucigram 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
BC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Domain\Level.cs
	namespace 	
domain
 
{ 
public		 

class		 
Level		 
{

 
public 
int 
IDPlayer 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	LevelName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
FirstSurname "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} �
JC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Domain\FriendRequest.cs
	namespace

 	
domain


 
{ 
public 

class 
FriendRequest 
{ 
public 
long 
IDFriendRequest #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
public 
System 
. 
DateTime 
CreationDate +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
string 
SendingStatus #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
AceptationStatus &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
Profile 
Profile &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual 
Profile 
Profile1 '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} �
DC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Domain\Profile.cs
	namespace

 	
domain


 
{ 
public 

class 
Profile 
{ 
public 
long 
	IDProfile 
{ 
get  #
;# $
set% (
;( )
}* +
public 
byte 
[ 
] 
ProfilePicture $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
long 
Coins 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
LoginStatus !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Player 
Player 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
CC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Domain\Player.cs
	namespace 	
domain
 
{ 
public		 

class		 
Player		 
{

 
public 
long 
IDPlayer 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Names 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Surnames 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
NickName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
Nullable 
< 
System 
. 
DateTime '
>' (
	BirthDate) 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
virtual 
Profile 
Profile &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} �
TC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Domain\Properties\AssemblyInfo.cs
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
]$$) *�
AC:\Users\wmike\OneDrive\Documentos\Renovación LIS\Domain\Word.cs
	namespace 	
domain
 
{ 
public		 

class		 
Word		 
{

 
public 
int 
IDWord 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
WordLine 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} 