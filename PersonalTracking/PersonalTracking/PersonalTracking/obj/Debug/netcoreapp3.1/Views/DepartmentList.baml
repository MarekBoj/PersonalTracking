   M S B A M L   `   `   `  ����K  GPersonalTracking, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:PersonalTracking.ViewsPersonalTracking.Views  5      +    %PersonalTracking.Views.DepartmentList   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6local$clr-namespace:PersonalTracking.Views     5      .��5	      �   � RowDefinitions  5
   
   �� 5      $��6* �6   �� 5      $��* �6   .+�5   
   � $��1��6    � ColumnDefinitions 5      �� 5      $��* �6#   �� 5      $��* �6#   �� 5      $��* �6#   .+�5      �� -   5        $��btnAdd��5   *   $��133,5,213,5q�6   $	��Add��68   $��18(�6F   $
��Bold"�6T   $��2��6{   �� 5      -   5        $��	btnUpdate��5   *   $��213,5,133,5q�6   $��Update��6;   $��1��6L   $��18(�6\   $
��Bold"�6j   $��2��6�   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ gridDepartment��5         
IsReadOnly$
 True��6+      AutoGenerateColumns$ False��6=      SelectionUnit$ FullRow=�6Y      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 61   	   
Visibility$	 Hidden=�6R   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6;   �� *id+6R     5      $ Department Name��6%   $
 auto 6>   
 6K   �� *DepartmentName+5      5      5      