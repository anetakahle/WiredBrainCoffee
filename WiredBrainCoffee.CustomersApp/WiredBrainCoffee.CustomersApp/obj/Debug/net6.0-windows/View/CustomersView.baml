   M S B A M L   `   `   `  ����X  TWiredBrainCoffee.CustomersApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullW0clr-namespace:WiredBrainCoffee.CustomersApp.View"WiredBrainCoffee.CustomersApp.View  5      a5clr-namespace:WiredBrainCoffee.CustomersApp.Converter'WiredBrainCoffee.CustomersApp.Converter  5      6    0WiredBrainCoffee.CustomersApp.View.CustomersView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Blocal0clr-namespace:WiredBrainCoffee.CustomersApp.View     5      K	converter5clr-namespace:WiredBrainCoffee.CustomersApp.Converter     5        � 	Resources  5
      Q   KWiredBrainCoffee.CustomersApp.Converter.NavigationSideToGridColumnConverter "  NavigationSideToGridColumnConv  CustomerDataTemplate �� Orientation" �� ValidatesOnNotifyDataErrors��%  &	        &	        5   
   5      �� 5   
   .R�5      �� $ 
Horizontal=�6   .+�5      �� $
��Bold"�5      ��5      �� *	FirstName+$ False��5      �� 5      $��5 0 0 0q�66   ��6   �� *
LastName+66   5      5      5      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      �� 5      $
��Auto �6   .+�5   
   � ���#777$	��260��5      ��5      �� *NavigationSide+ �� 	Converter# [   � RowDefinitions 5       �� 5!      $
��Auto �6    �� 5"      $��* �6    .+�5$      �� $ 
Horizontal=�6   .+�5%      �� $��10q�6   $��75��6%   ��60   �� *
AddCommand+.��5&      �� $ 
Horizontal=�6!   .+�5'      �� $��/Images/add.png��6    $��18��69   $��0 0 5 0q�6E   �� 5(      $	��Add��6$   5)      5*      �� 5+      $��Delete��6   $��75��6*   $��
0 10 10 10q�65   ��5,      �� *DeleteCommand+�� 5-      $��
0 10 10 10q�6   ��6-   �� *MoveNavigationCommand+.��5.      �� $��/Images/move.png��6   $��18��66   5/      50      �� 51      #��[ 53      $��1��54      $��
10 0 10 10q�6$   ��51      �� *	Customers+ �� SelectedItem 52      �� *SelectedCustomer+ �� Mode$ TwoWay=�54   $   55      �� 58   
   $��1��6   $��10q�6%   y�59      �� *IsCustomerSelected+  BooleanToVisibilityConv# [ .+�5;      �� .��6   
Firstname:6    �� 5<      ��6   �� *SelectedCustomer.FirstName+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5>      .��6   	Lastname:6   �� 5?      ��6   �� *SelectedCustomer.LastName+$ TwoWay=�$ PropertyChanged=��� 5A      $��0 20 0 0q�5C      	 d� 	IsChecked	 5A      �� *SelectedCustomer.IsDeveloper+$ TwoWay=�$ PropertyChanged=�.��5C   #   Is developer5E      5F      5G      5H      