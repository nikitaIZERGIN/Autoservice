   M S B A M L   `   `   `  ����G  CAutoStarikov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AutoizerginAutoizergin  5   	       Autoizergin.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Autoizergin     5   	   -   5          �Name$
  Root��5   	    � Title$* $Услуги Авто сервиса��5	   	   $��Arial Black)�5
   	   $
��1200��6"   $	��300��62   $	��450��6B   $	��800��6O   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��150 �6   �� 5      $��1* �6    .+�5   
   ��  �� Orientation$ Vertical=�5      $��Bottom=�5      .+�5      �� -   5        $#��Добавить услугу��5      y�5      �� *AdminVisibility+�� 5      -   5        $��AdminButton��5      $��20��5      ��5      �� *AdminModeCaption+5      �� 5       -   5         ��Name$ 
ExitButton��5!      $��
Выход��5"      5#      5$      �� 5'   
   $��5q�5(      $��./img/service_logo.png��5)      $	��Top=�5*      � 5-   
   $��1��6    � RowDefinitions 5.      �� 5/      $��30 �6    �� 50      $��1* �6    �� 51      $��30 �6    .+�54      &   System.Windows.Controls.DataGrid  -   5          Name$ MainDataGrid��55      $��1��56         CanUserAddRows .     AutoGenerateColumns .  ��57      �� *ServiceList+	   RowStyle	 5:      �� 5;      
 �� 
TargetType)  #System.Windows.Controls.DataGridRow"
  6    �� Triggers 5<      �� 5=       �� Binding 5>   !   �� *HasDiscount+ �� Value True5?   !   .a�5@   "   ��  �� Property � �� �� Value
 ����5B   %   5C      5E         Columns 5H      0  *System.Windows.Controls.DataGridTextColumn  5J      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 250 5K         Header$+ %Наименование услуги��5L      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5M      �� *Title+4  .System.Windows.Controls.DataGridTemplateColumn  5N      $	 100 5O      $ Стоимость��5P         CellTemplate 5R      �� 5S      .R�5U   "   �� ��5V   %   �� *CostTextDecoration+��5W   %   �� *
CostString+5X      5Z        5\      $	 150 5]      $+ %Стоимость cо скидкой��5^       5_      �� *CostWithDiscount+  5a      $	 150 5b      $( "Продолжительность��5c       5d      �� *DurationInSeconds+  5f      $ 64 5g      $  ��5h       5i      �� 5j      .R�5l   "   �� $��64��5m      $��64��5n      ��5o      �� *
ImageUri+5p      5r        5u      $ 60 5v      $ Скидка��5w       5x      �� *
Discount+  5z      $ Действия��5|       5}      �� 5~      .R�5   "   �� $ 
Horizontal=�5�   %   y�5�   %   �� *DataContext.AdminVisibility+ �� ElementName$
 Root��.+�5�   &   �� $��
EditButton��5�   )   -   5        $ ��Редактировать��5�   )   5�   )   �� 5�   &   $��SubscrideButton��5�   )   -   5        $��Записаться��5�   )   5�   )   �� 5�   &   $��DeleteButton��5�   )   -   5        $��Удалить��5�   )   5�   )   5�   #   5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��Center=�5�      .+�5�      �� $��
Цена: ��6   	� 5�      -	   5         	� 	GroupName$ Price��5�      
 � Tag$ 1��5�      $!��по возрастанию��5�       d� 	IsChecked$
 TrueY�5�      $��Center=�5�      	� 5�      -
   5        $ Price��5�      $ 2��5�      $��по убыванию��5�      $��Center=�5�      �� 5�      $&�� Фильтр по скидке: ��6   $��10,0,0,0q�5�      $��Center=�5�      �� 5�      -   5         ��Name$ DiscountFilterComboBox��5�       �� SelectedIndex$ 0��5�      ��5�      �� *FilterByDiscountNamesList+�� 5�      $��
Поиск��6   �� 5�      -   5         ��Name$ SearchFilterTextBox��5�      $	��250��5�      $��Center=�5�      5�      5�      �� 5�      $ 
Horizontal=�5�      $��2��5�      .+�5�      �� ��6   �� *FilteredServicesCount+�� 5�      $��/��6   �� 5�      ��6   �� *ServicesCount+5�      5�      5�      5�      