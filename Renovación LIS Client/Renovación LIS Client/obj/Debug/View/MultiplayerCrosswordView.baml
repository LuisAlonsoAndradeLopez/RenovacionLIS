   M S B A M L   `   `   `  ����Q  MRenovación LIS Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullU/clr-namespace:Renovación_LIS_Client.Properties!Renovación_LIS_Client.Properties  5      I)clr-namespace:Renovación_LIS_Client.ViewRenovación_LIS_Client.View  5      :    4Renovación_LIS_Client.View.MultiplayerCrosswordView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      =p/clr-namespace:Renovación_LIS_Client.Properties     5      ;local)clr-namespace:Renovación_LIS_Client.View     5        N� Title$  MultiplayerCrosswordView��5
      .��5      � .+�5   
   �� -   5        $&�� SelectedCrosswordBackgroundImage��5      $��Center=�68   �� 5   
   .+�5      �� $��0,10,0,0q�5      $y�Visible=�5      $��Center=�5       �� CornerRadius$ 20��5      $��44��5      $	��136��6   ��5      �� 5       �� Color$ Black��6&    �� Opacity$	 0.8Q�64   ._�5      �� .+�5      �� -   5        $#��GameCountdownSecondsTextBlock��5      $��30(�5      
�������$��Center=�5        �� TextAlignment$ Center=�5!      $��Center=�5"      5#      5$      �� 5&      $��0,10,0,0q�5'      $y�Visible=�5(      $ 20��5)      $	��512��5*      $
��1166��6   ��5-      �� 5.      $ Black��6&   $	 0.5Q�64   ._�51      �� $��10,10,10,10q�6   .+�52      �� $	��Top=�53      $y�Visible=�54      $ 20��55      $	��128��56      $
��1136��6&   ��58      �� 59      $ Black��6.   $	 0.5Q�6<   ._�5<      �� -   5        $,��&ConnectedPlayersAndItsPointsStackPanel��5<   %    �� Orientation$ 
Horizontal=�6S   5=      �� 5?      $ 
Horizontal=�6!   $
��1138��6:   $��0,10,0,0q�6G   $	��353��6Y   .+�5@      �� $y�Visible=�5A      $ 20��5B      $	��342��5C      $	��623��6*   ��5E      �� 5F   "   $ Black��62   $	 0.5Q�6@   ._�5I      �� -   5        $*��$SelectedCrosswordQuestionsStackPanel��5I   )   $��0,0,0,2q�6U   5J      �� 5L      $��10,0,0,0q�5M      $y�Visible=�5N      $ 20��5O      $	��344��5P      $	��502��6*   ��5R      �� 5S   "   $ Black��62   $	 0.5Q�6@   ._�5V      �� .+�5W   "   � -   5        $��Crossword105��5W   '   $y�	Collapsed=�6;   .+�5X   &   �� $��10q�6,   $$��/images/GridLevels/Grid105.png��68   $	��480��6`   $	��320��6l   �� 5Y   &   $	��344��6-   $	��502��6:   $��0q�6F   .+�5[   *   �� -   5        $��L105W1��5[   4    � Cursor$
 Hand��6l   $��15.65(�6z   $�� ��6�      Game_TextBlock#��[  6�   $��12��6�   $
��Left=�6�    �� Left$	 207��6�   $��Center=�6�   $��82��6  
 �� Top$ 24��6  �� 5\   *   -   5        $��L105W2��5\   4   $
 Hand��6l   $��15.65(�6z   $�� ��6�   #��[  6�   $��13��6�   $
��Left=�6�   $	 186��6�   $��Center=�6�   $ 45��6  $	��123��6  �� 5]   *   -   5        $��L105W3��5]   4   $
 Hand��6l   $��15.65(�6z   $�� ��6�   #��[  6�   $��13��6�   $
��Left=�6�   $	 268��6�   $��Center=�6�   $ 45��6  $	��245��6  �� 5^   *   -	   5        $��L105W5��5^   4   $
 Hand��6l   $��15.65(�6z   $�� ��6�   #��[  6�   $��12��6�   $��Center=�6�   $	 371��6�   $	��Top=�6�   $	 229��6  $	��101��6  �� 5a   *   -
   5        $��L105W4��5a   4   $
 Hand��6l   $��15.65(�6z   $�� ��6�   #��[  6�   $��Center=�6�   $ 80��6�   $	��Top=�6�   $ 85��6  $	��224��6  $��21��6  �� 5b   *   -   5        $��L105W6��5b   4   $
 Hand��6l   $��15.65(�6z   $�� ��6�   #��[  6�   $��Center=�6�   $ 80��6�   $	��Top=�6�   $	 249��6  $	��348��6  $��20��6  5c   '   5d   #   � 5f   "   -   5        $��CrosswordCC3��5f   '   $y�	Collapsed=�6;   .+�5g   &   �� $$��/images/GridLevels/GridCC3.png��6,   $	��480��6T   $	��320��6`   $��10q�6m   �� 5h   &   $	��344��6-   $	��502��6:   $��0q�6F   .+�5j   *   �� -   5        $��LCC3W1��5j   4   $
 Hand��6l   $
��14.7(�6z   $�� ��6�   #��[  6�   $��16��6�   $
��Left=�6�   $	 352��6�   $��Center=�6�   $	��133��6  $ 25��6  �� 5k   *   -   5        $��LCC3W2��5k   4   $
 Hand��6l   $
��14.7(�6z   $�� ��6�   #��[  6�   $��12��6�   $
��Left=�6�   $	 219��6�   $��Center=�6�   $ 44��6  $	��287��6  �� 5l   *   -   5        $��LCC3W4��5l   4   $
 Hand��6l   $
��14.7(�6z   $�� ��6�   #��[  6�   $��Center=�6�   $	 273��6�   $	��Top=�6�   $	 121��6  $��18��6  $��76��6  �� 5n   *   -   5        $��LCC3W3��5n   4   $
 Hand��6l   $
��14.7(�6z   $�� ��6�   #��[  6�   $��57��6�   $��Center=�6�   $	 331��6�   $	��Top=�6�   $ 44��6  $��18��6  �� 5o   *   -   5        $��LCC3W5��5o   4   $
 Hand��6l   $
��14.7(�6z   $�� ��6�   #��[  6�   $	��231��6�   $��Center=�6�   $	 138��6�   $	��Top=�6�   $	 140��6  $��19��6  �� 5p   *   -   5        $��LCC3W6��5p   4   $
 Hand��6l   $
��14.7(�6z   $�� ��6�   #��[  6�   $��Center=�6�   $	 119��6�   $	��Top=�6�   $	 235��6  $	��153��6  $��18��6  5q   '   5r   #   � 5t   "   -   5        $��CrosswordECONEXBathroom��5t   '   $y�	Collapsed=�6F   .+�5u   &   �� $/��)/images/GridLevels/GridEconexBathroom.png��6,   $	��480��6_   $	��320��6k   $��10q�6x   �� 5v   &   $	��344��6-   $	��502��6:   $��0q�6F   .+�5x   *   �� -   5        $��LECONEXBathroomW1��5x   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $��19��6�   $
��Left=�6�   $	 181��6�   $��Center=�6�   $	��130��6  $ 26��6%  �� 5y   *   -   5        $��LECONEXBathroomW3��5y   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $��19��6�   $
��Left=�6�   $	 247��6�   $��Center=�6�   $	 135��6  $��65��6)  �� 5z   *   -   5        $��LECONEXBathroomW5��5z   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $
��Left=�6�   $	 289��6�   $��Center=�6�   $	 179��6  $��22��6  $	��152��6)  �� 5{   *   -   5        $��LECONEXBathroomW6��5{   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $
��Left=�6�   $	 357��6�   $��Center=�6�   $	 179��6  $��16��6  $	��130��6)  �� 5}   *   -   5        $��LECONEXBathroomW2��5}   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $	��175��6�   $
��Left=�6�   $	 136��6�   $��Center=�6�   $	 135��6  $��21��6*  �� 5~   *   -   5        $��LECONEXBathroomW4��5~   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $	��219��6�   $
��Left=�6�   $	 113��6�   $��Center=�6�   $	 179��6  $��21��6*  �� 5   *   -   5        $��LECONEXBathroomW7��5   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $
��Left=�6�   $	 267��6�   $��Center=�6�   $	 201��6  $	��131��6  $��21��6*  �� 5�   *   -   5        $��LECONEXBathroomW8��5�   4   $
��16.8(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $
��Left=�6�   $	 267��6�   $��Center=�6�   $	 222��6  $��65��6  $��22��6)  5�   '   5�   #   � 5�   "   -   5        $��CrosswordDoctoratedInCS��5�   '   $y�	Collapsed=�6F   .+�5�   &   �� $/��)/images/GridLevels/GridDoctoratedInCS.png��6,   $	��480��6_   $	��320��6k   $��10q�6x   �� 5�   &   $	��344��6-   $	��502��6:   $��0q�6F   .+�5�   *   �� -   5        $��LDoctoratedInCSW1��5�   4   $
��18.1(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $��17��6�   $
��Left=�6�   $	 234��6�   $��Center=�6�   $	��140��6  $ 50��6%  �� 5�   *   -   5        $��LDoctoratedInCSW2��5�   4   $
��18.1(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $��16��6�   $
��Left=�6�   $	 305��6�   $��Center=�6�   $ 50��6  $	��258��6(  �� 5�   *   -   5        $��LDoctoratedInCSW3��5�   4   $
��18.1(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $
��Left=�6�   $	 115��6�   $��Center=�6�   $ 97��6  $��20��6  $	��141��6(  �� 5�   *   -    5        $��LDoctoratedInCSW4��5�   4   $
��18.1(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $	��259��6�   $
��Left=�6�   $	 231��6�   $��Center=�6�   $ 97��6  $��23��6)  �� 5�   *   -!   5        $��LDoctoratedInCSW5��5�   4   $
��18.1(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $	��117��6�   $
��Left=�6�   $ 19��6�   $��Center=�6�   $	 120��6  $��23��6)  �� 5�   *   -"   5        $��LDoctoratedInCSW6��5�   4   $
��18.1(�6w   $
 Hand��6�   $�� ��6�   #��[  6�   $
��Left=�6�   $	 113��6�   $��Center=�6�   $	 167��6  $	��165��6  $��23��6*  5�   '   5�   #   � 5�   "   -#   5        $��CrosswordCrystalSaloon��5�   '   $y�	Collapsed=�6E   .+�5�   &   �� $.��(/images/GridLevels/GridCrystalSaloon.png��6,   $	��480��6^   $	��320��6j   $��11,12,11,12q�6w   �� 5�   &   $	��344��6-   $	��502��6:   $��0q�6F   .+�5�   *   �� -$   5        $��LCrystalSaloonW1��5�   4   $��18.55(�6v   $
 Hand��6�   $�� ��6�   #��[  6�   $��18��6�   $��Center=�6�   $	 230��6�   $	��Top=�6�   $	��290��6  $ 28��6$  �� 5�   *   -%   5        $��LCrystalSaloonW2��5�   4   $��18.55(�6v   $
 Hand��6�   $�� ��6�   #��[  6�   $��23��6�   $��Center=�6�   $	 324��6�   $	��Top=�6�   $	 101��6  $��72��6(  �� 5�   *   -&   5        $��LCrystalSaloonW5��5�   4   $��18.55(�6v   $
 Hand��6�   $�� ��6�   #��[  6�   $
��Left=�6�   $	 209��6�   $��Center=�6�   $	 149��6  $��16��6  $	��168��6)  �� 5�   *   -'   5        $��LCrystalSaloonW3��5�   4   $��18.55(�6v   $
 Hand��6�   $�� ��6�   #��[  6�   $	��145��6�   $��Center=�6�   $	 226��6�   $	��Top=�6   $	 125��6  $��23��6)  �� 5�   *   -(   5        $��LCrystalSaloonW4��5�   4   $��18.55(�6v   $
 Hand��6�   $�� ��6�   #��[  6�   $	��169��6�   $��Center=�6�   $	 181��6�   $	��Top=�6   $	 149��6  $��24��6)  �� 5�   *   -)   5        $��LCrystalSaloonW6��5�   4   $��18.55(�6v   $
 Hand��6�   $�� ��6�   #��[  6�   $��Center=�6�   $	 203��6�   $��Center=�6�   $	 173��6  $	��120��6   $��24��6,  �� 5�   *   -*   5        $��LCrystalSaloonW7��5�   4   $��18.55(�6v   $
 Hand��6�   $�� ��6�   #��[  6�   $��Center=�6�   $	 127��6�   $	��Top=�6�   $	 293��6  $	��193��6  $��23��6)  5�   '   5�   #   5�      5�      5�      5�      5�      �� 5�      $��0,10,0,0q�5�      $y�Visible=�5�      $ 20��5�      $��69��5�      $
��1166��6   ��5�      �� 5�      $ Black��6&   $	 0.5Q�64   ._�5�      �� $ 
Horizontal=�6   .+�5�      �� -+   5        $��SelectedWordTextBlock��5�      1   +Renovación_LIS_Client.Properties.Resources	   Verify_answer#��Z	 5�      $��10q�5�      $��34(�5�      
�������$	��394��5�   ,   �� 5�      -,   5        $3��-SelectedCrosswordRowOrColumnWordAnswerTextBox��5�      $��20,10,10,10q�5�      $��42��5�      $	��548��5�        BorderTextBox#��[ 5�      �� 5�      --   5        #��Z	 5�        GreenButton#��[ 5�      $��9��5�      $��45��5�      $	��149��5�      $��Bottom=�5�      $��10q�5�      5�      5�      5�      5�      �� 5�   
   -.   5        
 ��Name$)
 #GlobalCountdownBlockScreenRectangle��5�      
���   � J� Opacity$ 0Q�6N   $y�Visible=�6Z   �� 5�   
   -/   5        $%��GlobalCountdownSecondsTextBlock��5�      $y�Visible=�5�      $	��200(�5�      
�������$��Center=�5�      $��Center=�5�      5�      5�      