   M S B A M L   `   `   `  ����Z  VWpf Building Maintenance System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Wpf_Building_Maintenance_SystemWpf_Building_Maintenance_System  5   	   :    4Wpf_Building_Maintenance_System.Super_User_Dashboard   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ?local-clr-namespace:Wpf_Building_Maintenance_System     5   	     � Title$!  Building Maintenance System��5   	   $	��500��6-   $	��600��6:    � WindowStartupLocation$ CenterScreen=�6F   .��5	      �  J� RenderTransformOrigin$ 1.156,0.606&�6    � ColumnDefinitions 5
   
   �� 5      $
��291* �6   �� 5      $��5* �6   ��5   
   �� 5       �� ImageSource$� �C:\Users\hp\Desktop\Wpf Building Maintenance System\Wpf Building Maintenance System\A-desktop-Wallpaper-of-the-sea-loneliness-pier.jpg��6    j� Stretch$ UniformToFill=�6�    �� Opacity$
 0.47Q�6�   .+�5   
   �� -   5         ��Name$ label��5      $	��I.D��6   $
��Left=�6-   $��	29,28,0,0q�6H   $	��Top=�6[   $��14(�6s   $
��Bold"�6�   $��29��6�   $��99��6�   �� 5   
   $
��Name��6   $
��Left=�6   $	��Top=�6:   $��	29,57,0,0q�6R   $��14(�6e   $
��Bold"�6s   $��97��6�   $��29��6�   �� 5   
   $��Contact��6   $
��Left=�6"   $	��Top=�6=   $��
29,115,0,0q�6U   $ 0.474,1.192&�6i   $��97��6�   $��14(�6�   $
��Bold"�6�   $��29��6�   �� 5   
   $��Password��6   $
��Left=�6#   $	��Top=�6>   $��	29,86,0,0q�6V   $��99��6i   $��14(�6t   $
��Bold"�6�   $��29��6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DataGrid��5      $
��Left=�6%   $��
10,170,0,0q�6@   $	��Top=�6T   $	��244��6l   $	��562��6y   6�   �� 5   
   -   5        	 ��Name$	 InsertButton��5      $��Insert��6'   $
��Left=�68   $��
20,429,0,0q�6S   $	��Top=�6g   $��75��6   $��20��6�   6�   �� 5   
   -   5        $	 UpdateButton��5      $��Update��6'   $
��Left=�68   $��140,429,0,0q�6S   $	��Top=�6h   $��75��6�   $��20��6�   6�   �� 5   
   -   5        $	 DeleteButton��5      $��Delete��6'   $
��Left=�68   $��258,429,0,0q�6S   $	��Top=�6h   $��75��6�   $��20��6�   6�   �� 5   
   -   5        $	 ClearButton��5      $��Clear��6&   $
��Left=�66   $��383,429,0,0q�6Q   $	��Top=�6f   $��75��6~   $��20��6�   6�   �� 5   
   -   5        $	 SearchButton��5      $��Search��6'   $
��Left=�68   $	��Top=�6S   $��75��6k   $��
457,28,0,0q�6v   $��24��6�   6�   �� 5   
   -   5        $	 
BackButton��5      $
��Back��6%   $
��Left=�64   $��497,429,0,0q�6O   $	��Top=�6d   $��75��6|   6�   �� 5   
   -	   5        
 ��Name$
 ID_txt��5      $
��Left=�6"   $��23��6=    �� TextWrapping$
 Wrap=�6I   $	��Top=�6]   $	��185��6u   $��
207,29,0,0q�6�   6�   �� 5   
   -
   5        $
 Name_txt��5      $
��Left=�6$   $��23��6?   $
 Wrap=�6K   $��
��6_   $	��Top=�6q   $	��185��6�   $��
207,63,0,0q�6�   6�   �� 5   
   -   5        $
 Password_txt��5      $
��Left=�6(   $��23��6C   $
 Wrap=�6O   $	��Top=�6c   $	��185��6{   $��
207,92,0,0q�6�   �� 5   
   -   5        $
 Contact_txt��5      $
��Left=�6'   $��23��6B   $
 Wrap=�6N   $	��Top=�6b   $	��185��6z   $��207,121,0,0q�6�   5!      5"      