   M S B A M L   `   `   `  ����K  GPersonalTracking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:PersonalTrackingPersonalTracking  5   	   )    #PersonalTracking.Pages.PositionPage   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:PersonalTracking     5   	   -   5          � Title$  Position Page��5   	    � WindowStartupLocation$ CenterScreen=�6   $	��200��6D   $	��350��6Q    � 
ResizeMode$ NoResize=�6]   $��18(�6s   $
��Bold"�6�   .��5	      �  � ColumnDefinitions 5
   
   �� 5      $��* �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��
Department��6   $��Center=�6%   $��Center=�6B   �� 5   
   $��Position Name��6   $��1��6(   $��Center=�65   $��Center=�6R   �� 5   
   -   5        $��cmbDepartment��5      $��1��6(   $	��120��68   $
��Left=�6D   $��center=�6_   �� 5   
   -   5         ��Name$ txtPositionName��5      $��1��6+   $��1��68   $	��120��6H   $��Center=�6T   $��Center=�6q    �� TextWrapping$
 Wrap=�6�   �� 5   
   -   5         ��Name$ btnSave��5      $
��Save��6"   $��2��61   $	��100��6>   $��50,0,0,0q�6J   $��Center=�6\   $��Center=�6y   6�   �� 5   
   -   5        $ btnClose��5      $��Close��6#   $��1��63   $��2��6C   $	��100��6P   $��0,0,50,0q�6\   $��Center=�6n   $��Center=�6�   6�   5      5      