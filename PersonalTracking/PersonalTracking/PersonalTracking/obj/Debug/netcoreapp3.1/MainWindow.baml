   M S B A M L   `   `   `  ����K  GPersonalTracking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:PersonalTrackingPersonalTracking  5   	   ?$clr-namespace:PersonalTracking.ViewsPersonalTracking.Views  5   	   I)clr-namespace:PersonalTracking.ViewModelsPersonalTracking.ViewModels  5   	   !    PersonalTracking.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   0localclr-namespace:PersonalTracking     5   	   6views$clr-namespace:PersonalTracking.Views     5   	   @
vievmodels)clr-namespace:PersonalTracking.ViewModels     5   	   -   5        $��PersonaMainWindow��5
   '     � Title$  WPF Personal Tracking��6	   $	��540��6@   $
��1200��6M    � WindowStartupLocation$ CenterScreen=�6Z   
�������.��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��3* �6    � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      .+�5   
   �� $��1��6-   $��0,0,0,0q�6=   $��1��6N   $��8��6[   $��Stretch=�6l   $
��Auto��6�   $��Stretch=�6�   $
��Auto��6�   ��6   �� 6�   �� 5   
   -   5         ��Name$ LblWindowName��5      $��Windows Name��6'   $��1��6>   $��24(�6N   $��Italic$�6\   $��Normal&�6o   $��Normal"�6�   
�������$��0,0,0,10q�6�   �� 5   
   $��1��6   $��
0, 2, 0, 0q�6"   .+�5      �� -   5         ��Name$ btnEmployee��5      $��50��6*   $	��250��66   .��5      � $	��230��6    5       �� 5!      $
��auto �6+   �� 5"      $
��auto �6+   .+�5$      �� $��Employee��6    $��Center=�60   $��Center=�6M   $��1��6h   $��80,0,0,0q�6x   5%      5&      5'      �� 5(   
   $��2��6   $��
0, 2, 0, 0q�6"   .+�5)      �� -   5        $ btnDepartment��5)      $��50��6,   $	��250��68   .��5*      � $	��230��6    5+      �� 5,      $
��auto �6+   �� 5-      $
��auto �6+   .+�5/      �� $��
Department��6    $��Center=�62   $��Center=�6O   $��1��6j   $��80,0,0,0q�6z   50      51      52      �� 53   
   $��3��6   $��
0, 2, 0, 0q�6"   .+�54      �� -   5        $ btnPosition��54      $��50��6*   $	��250��66   .��55      � $	��230��6    56      �� 57      $
��auto �6+   �� 58      $
��auto �6+   .+�5:      �� $��Position��6    $��Center=�60   $��Center=�6M   $��1��6h   $��80,0,0,0q�6x   5;      5<      5=      �� 5>   
   $��7��6   $��
0, 2, 0, 0q�6"   �� 5?   
   $��8��6   $��
0, 2, 0, 0q�6"   .+�5@      �� -   5        $��btnExit��5@   "   $��8��6   $��32��61   $	��128��6=   $
��Left=�6I   .��5A      � $	��230��6    5B      �� 5C      $
��auto �6+   �� 5D      $
��auto �6+   .+�5F      �� $
��Exit��6    $��Center=�6,   $��Center=�6I   $��1��6d   $��80,0,0,0q�6t   5G      5H      5I      5J       � 	Resources 5K       �� DataType5   /PersonalTracking.ViewModels.DepartmentViewModel+   %PersonalTracking.Views.DepartmentList3   -PersonalTracking.ViewModels.PositionViewModel)   #PersonalTracking.Views.PositionList3   -PersonalTracking.ViewModels.EmployeeViewModel-   'PersonalTracking.Views.EmployeeListView��%=  (��       5M   3   *, +)(�� R     5R   1   *, +)(�� �     5W   1   *, +)�� 5M   
   DepartmentTemplate��"  63   .R�5N        5P      5Q      �� 5R   
   PositionTemplate��"  61   .R�5S        5U      5V      �� 5W   
   EmployeeTemplate��"  61   .R�5X        5Z      5[      5\      5]      