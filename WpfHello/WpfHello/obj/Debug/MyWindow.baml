   M S B A M L   `   `   `  ����C  ?WpfHello, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:WpfHelloWpfHello  5   	       WpfHello.MyWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:WpfHello     5   	   -   5          � Title$  MyWindow��5   	   $	��450��6   $	��800��6'      gradientStyle#��[  6c    � 	Resources 5	       �� 
TargetType �� Property �� Value �� 
TargetType � Color � Offset � LayoutTransform	 �� Angle
 �� Triggers P� Property P� Value N� EnterActions ��Name g� Duration �� TargetProperty	 W� To N� ExitActions �� BeginStoryboardName �� Triggers :� RoutedEvent   WpfHello.StudentList  studentCollection#   WpfHello.BoolToBrushConverter  boolToBrushConverter  listBoxTemplate �� Orientation �� Path �� 	Converter��%�  '��       &	 [    &	 n    &	 �    7  �� 5   
   " ��6   .�5      ��  �@�OverridesDefaultStyle . 66   �� 5       � ��$ 50��6*   �� 5       � ��$ 50��6)   �� 5       � �� 5      �� 5      " ��6&   .R�5      � .+�5      �� ��5   "   
� 5   &   .��5   *   � $
 Blue��67   $ 0Q�6D   � 5   *   $ 
BlueViolet��67   $ 1Q�6J   5   '    5   "   �� 5   &   $	 45Q�66   5      �� 5      $��Center=�6/   $��Center=�6L   5       
 5!      P� 5"       �@J�IsMouseOver .  5#   "   �� 5$   &   $ 
Storyboard��66   .��5%   *   �� $ 0:0:1D�65   .��5&   .   W� $ FontSize�6>   $ 20X�6c   W� 5'   .   $ Width�6>   $	 100X�6`   W� 5(   .   $ Height�6>   $	 100X�6a   5)   +   5*   '    5,   "   �� 5-   &   $ 
Storyboard��65   5/      51      53       54      :� 5N      $ Mouse.MouseLeave��6   [�5O      �� 5P      .��5Q      �� $ 0:0:1D�6)   .��5R   "   W� $ FontSize�62   W� 5S   "   $ Width�62   W� 5T   "   $ Height�62   5U      5V      5X      5Z        5[   
   6     5\   
   6%   �� 5]   
   .R�5^      �� $ 
Horizontal=�6   .+�5_      �� $��10��6n   $��10��6{   $��0,0,5,0q�6�   ��6   �� $ 
IsEnrolled�8   6�   �� 5`      ��6   �� $ StudentName�5a      5b      5c      .��5d      �  � ColumnDefinitions 5e   
   �� 5f      �� 5g      $��4* �6   �� 5h      $
��195* �6   .+�5j   
   �� -   5        $��2��5j      $��Button��6!   $
��Left=�62   $��	83,94,0,0q�6M   $	��Top=�6`   $��70��6�   $��70��6�     customButtonTemplate#���  6�   �� 5k   
   -   5         ��Name$ textBox��5k      $��2��6#   $
��Left=�63   $��
204,96,0,0q�6N    �� TextWrapping$
 Wrap=�6b   $��TextBox��6v   $	��Top=�6�   $	��120��6�   $��80��6�   �� 5l   
   -   5        $��listBox1��5l   \   $��2��6   $��60��6"   $
��Left=�6.   $��	12,12,0,0q�6I   $	��Top=�6l   $	��250��6�   #��[ 6�   ��6�   ��  �� Source# [ 6�   5n      5o      