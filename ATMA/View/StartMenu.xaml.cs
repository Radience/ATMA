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
    /// Логика взаимодействия для StartMenu.xaml
    /// </summary>
    public partial class StartMenu : Page
    {
        public StartMenu()
        {
            InitializeComponent();
        }

        private void listATM_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageATM());
        }

        private void mapATM_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageMAP());
        }
    }
}