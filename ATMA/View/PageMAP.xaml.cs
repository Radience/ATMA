﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ATMA.View
{
    /// <summary>
    /// Логика взаимодействия для PageMAP.xaml
    /// </summary>
    public partial class PageMAP : Page
    {
        public PageMAP()
        {
            InitializeComponent();
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            if(NavigationService.CanGoBack)
                NavigationService.GoBack();
        }
    }
}
