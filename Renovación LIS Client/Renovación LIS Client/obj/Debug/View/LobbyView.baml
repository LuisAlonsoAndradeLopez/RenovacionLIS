   M S B A M L   `   `   `  ����Q  MRenovación LIS Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:Renovación_LIS_Client.Properties!Renovación_LIS_Client.Properties  5      I)clr-namespace:Renovación_LIS_Client.ViewRenovación_LIS_Client.View  5      +    %Renovación_LIS_Client.View.LobbyView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =p/clr-namespace:Renovación_LIS_Client.Properties     5      ;local)clr-namespace:Renovación_LIS_Client.View     5        N� Title$  	LobbyView��5
      .��5      � .+�5   
   �� $��/images/lobbyImage.png��6   $��Center=�60   �� 5   
   -   5        $��IntroduceDataBorder��5      $��28,35,28,35q�5      $	��580��5      $
��1070��5      $��0��5       �� CornerRadius$ 20��5      ��5      �� 5       �� Color$ Black��6"    �� Opacity$	 0.5Q�60   ._�5      �� .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5        1   +Renovación_LIS_Client.Properties.Resources   Exit#��Z 5         	RedButton#��[  5      $��56��5      $��68��5      $��20,7,0,0q�5       6+   �� 5"      $��Lobby��6     K2DBold#��[ 5#      
�������$��	370,0,0,0q�5%      $��50(�5&      5'      �� 5)      
�������$��0 5 0 0q�5*      $��2��5+      �� 5-      -   5        $��ConnectedUsersStackPanel��5-      $	��310��6=   $ 
Horizontal=�6J   �� 5/      
�������$��0 0 0 5q�50      $��2��51      �� 53      -   5        $"��AdminPlayerButtonsStackPanel��53   6   $ 
Horizontal=�6   $y�Visible=�6Z   .+�54      �� $��	45,15,0,0q�6!   .+�55      ��    Banned_players#��Z 6$   #��[ 56      
�������$
��Wrap=�58       �� TextAlignment$ Center=�59      $��Center=�5:      $��20(�5;      $	��115��6+   �� 5=      -   5        $%��/images/bannedPlayersButton.png��5=       $��80��5>      $��80��5?       � Cursor$
 Hand��5A      	 J� RenderTransformOrigin$	 	0.5,0.522&�6+   5B      �� 5D      $��	60,20,0,0q�6!   .+�5E      �� 
   Friends#��Z
 6    #��[ 5F      
�������$��Center=�5H      $��20(�5I      �� 5K      -   5        $��/images/friendsButton.png��5K       $��80��5L      $��80��5M      $
 Hand��5O      $	 	0.5,0.522&�6+   5P      �� 5R      $��
170,10,0,0q�6!   .+�5S      ��    Play#��Z 6    #��[ 5T      
�������$��Center=�5V      $��20(�5W      �� 5Y      -   5        $��/images/playButton.png��5Y       $	��104��5Z      $	��100��5[      $
 Hand��5]      5^      �� 5`      $��
170,20,0,0q�6!   .+�5a      ��    Chat#��Z 6    #��[ 5b      
�������$��Center=�5d      $��20(�5e      �� 5g      -   5        $��/images/chatButton.png��5g       $��80��5h      $��80��5i      $
 Hand��5k      $	 	0.5,0.522&�6+   5l      �� 5n      $��	60,20,0,0q�6!   .+�5o      ��    Configuration#��Z 6    #��[ 5p      
�������$��Center=�5r      $��20(�5s      �� 5u      -	   5        $%��/images/configurationButton.png��5u       $��80��5v      $��80��5w      $
 Hand��5y      $	 	0.5,0.522&�6+   5z      5{      �� 5}      -
   5        $#��NormalPlayerButtonsStackPanel��5}   6   $ 
Horizontal=�6   $y�	Collapsed=�6[   .+�5~      �� $��	115,0,0,0q�6!   .+�5      �� #��Z 6$   #��[ 5�      
�������$
��Wrap=�5�      $ Center=�5�      $��Center=�5�      $��20(�5�      $	��115��6+   �� 5�      -   5        $%��/images/bannedPlayersButton.png��5�       $	��120��5�      $	��120��5�      $
 Hand��5�      $	 	0.5,0.522&�6+   5�      �� 5�      $��
115,15,0,0q�6!   .+�5�      �� #��Z
 6    #��[ 5�      
�������$��Center=�5�      $��20(�5�      �� 5�      -   5        $��/images/friendsButton.png��5�       $	��120��5�      $	��120��5�      $
 Hand��5�      $	 	0.5,0.522&�6+   5�      �� 5�      $��
115,15,0,0q�6!   .+�5�      �� #��Z 6    #��[ 5�      
�������$��Center=�5�      $��20(�5�      �� 5�      -   5        $��/images/chatButton.png��5�       $	��120��5�      $	��120��5�      $
 Hand��5�      $	 	0.5,0.522&�6+   5�      �� 5�      $��
115,15,0,0q�6!   .+�5�      �� #��Z 6    #��[ 5�      
�������$��Center=�5�      $��20(�5�      �� 5�      -   5        $%��/images/configurationButton.png��5�       $	��120��5�      $	��120��5�      $
 Hand��5�      $	 	0.5,0.522&�6+   5�      5�      5�      5�      �� 5�   
   -   5         ��Name$ BlackScreenRectangle��5�      
���   � J� Opacity$ 0Q�6?   $y�	Collapsed=�6K   5�      5�      