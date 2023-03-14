using System;
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
    /// Логика взаимодействия для PageConnectionATM.xaml
    /// </summary>
    public partial class PageConnectionATM : Page
    {
        public PageConnectionATM()
        {
            InitializeComponent();
            sector.ItemsSource = Model.MainModel.getSector();
            Refresh();
        }

        private void listATM_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            Model.MainModel.ConnectionATM(listATM.SelectedItem);
            Refresh();
        }

        private void Refresh()
        {
            listATM.ItemsSource = Model.MainModel.ATM();
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageATM());
        }

        private void clean_Click(object sender, RoutedEventArgs e)
        {
            sector.SelectedItem = null;
        }

        private void cleanS_Click(object sender, RoutedEventArgs e)
        {
            search.Text = "";
        }

        private void search_TextChanged(object sender, TextChangedEventArgs e)
        {
            listATM.ItemsSource = Model.MainModel.SearchConnectionALL(search.Text + "%", sector.SelectedItem);
        }

        private void sector_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            listATM.ItemsSource = Model.MainModel.SearchConnectionALL(search.Text + "%", sector.SelectedItem);
        }

        private void goMap_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageMAP());
        }
    }
}
