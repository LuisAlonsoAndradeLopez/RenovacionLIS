   M S B A M L   `   `   `  ����Q  MRenovación LIS Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:Renovación_LIS_Client.Properties!Renovación_LIS_Client.Properties  5      I)clr-namespace:Renovación_LIS_Client.ViewRenovación_LIS_Client.View  5      U/clr-namespace:Renovación_LIS_Client.Properties!Renovación_LIS_Client.Properties  5      0    *Renovación_LIS_Client.View.ForgotPassword   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =p/clr-namespace:Renovación_LIS_Client.Properties     5      ;local)clr-namespace:Renovación_LIS_Client.View     5      F
Properties/clr-namespace:Renovación_LIS_Client.Properties     5        N� Title$  ForgotPassword��5      .��5      � $��
0,24,0,-24q�6   .+�5   
   �� $%��/images/changePasswordImage.png��6   $
��Fill=�69    J� RenderTransformOrigin$ 0.536,0.512&�6H   �� 5   
   -   5        $��IntroduceDataBorder��5      $��34,64,487,64q�5      $��0��5      ���	#80000000 �� CornerRadius$ 20��5      ._�5      �� .+�5      �� 1   +Renovación_LIS_Client.Properties.Resources   Forgot_Password#��Z 6      K2DBold#��[  5      
�������$��Center=�5      $��43(�6.   �� 5      ���#337CCF$��	0 15 0 15q�5      $��2��5      �� 5        �� Orientation$ 
Horizontal=�6   .+�5!      �� .+�5"      ��    Introduce_your_email#��Z 6      
K2DRegular#��[ 5#      $��16(�5$      
�������$��	35,15,0,0q�5&      �� 5(      -   5         ��Name$ EmailTextField��5(   "     BorderTextBox#��[ 5)      $��45��5*      ���	#FF337CCF$	��425��5+      $
��Left=�5,      $��35,5,0,0q�5-      5.      �� 50      $
��Wrap=�6     �� TextAlignment$ Justify=�51      $	��165��52      $��	20,10,0,0q�53      C   <To_confirm_the_new_password__we_ll_send_a_code_to_your_email#��Z 6(   $��51��6�   $��Center=�6�   $��Center=�6�   
�������6�   55      �� 59      $ 
Horizontal=�6   $��	0,20,0,10q�66   .+�5:      �� ���	#FFB1B1B1$��2��5;      $��0,0,0,0q�5<      $	��245��5=      �� 5?      	   New_Password#��Z	 6   #��[ 5@      $��16(�5A      
�������$
��10,0q�5C      �� 5E      ���	#FFB1B1B1$��2��5F      $	��285��5G      5H      �� 5J      #��Z	 6   #��[ 5K      $��16(�5L      
�������$��30,0,0,0q�5N      G� 5P      -   5        
 G�Name$
 NewPasswordPasswordBox��5P        PasswordBorderTextBox#��[ 5Q      $��45��5R      $	��425��5S      $
��Left=�5T      $��35,5,0,0q�5U      �� 5W          Confirm_your_new_password#��Z 6   #��[ 5X      $��16(�5Y      
�������$��	35,30,0,0q�5[      G� 5]      -   5        $#
 ConfirmNewPasswordPasswordBox��5]      #��[ 5^      $��45��5_      $	��425��5`      $
��Left=�5a      $��35,5,0,0q�5b      �� 5d      $ 
Horizontal=�6   $��0,30,0,0q�66   .+�5f      �� -   5           	Send_code#��Z 5f        GreenButton#��[ 5g      $��45��5h      $	��200��5i      $
��Left=�5j      $��40,0,0,0q�5k      6'   �� 5m      -   5           Cancel#��Z 5m        BlackButton#��[ 5n      $��45��5o      $	��200��5p      $��	200,0,0,0q�5q      6(   5r      5t      5u      �� 5w   
   -   5        $��IntroduceCodeBorder��5x      $��34,206,487,206q�5w      $��0��5y      ���	#80000000$y�Hidden=�5{      $ 20��5|      ._�5~      �� .+�5      �� )   "A_code_has_been_sent_to_your_email#��Z 6   #��[  5�      
�������$��Center=�5�      $��29(�62   $��0,10,0,0q�5�      �� 5�      ���#337CCF$��	0 10 0 15q�5�      $��2��5�      �� 5�      $��0,0,0,0q�6   .+�5�      ��    Introduce_the_code#��Z 6   #��[ 5�      $��16(�5�      
�������$��35,0,0,0q�5�      �� 5�      -   5        $ IntroduceCodeTextField��5�      #��[ 5�      $��45��5�      $	��425��5�      $
��Left=�5�      $��35,5,0,0q�5�      �� 5�      $ 
Horizontal=�6!   $��0,20,0,0q�6:   .+�5�      �� -	   5           Change_password#��Z 5�   !   #��[ 5�      $��45��5�      $	��200��5�      $
��Left=�5�      $��38,0,0,0q�5�      6/   �� 5�      -
   5        #��Z 5�   !   #��[ 5�      $��45��5�      $	��200��5�      
���   �$��	205,0,0,0q�5�      60   5�      5�      5�      5�      5�      5�      