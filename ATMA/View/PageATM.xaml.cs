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
    /// Логика взаимодействия для PageATM.xaml
    /// </summary>
    public partial class PageATM : Page
    {
        public PageATM()
        {
            InitializeComponent();
            sector.ItemsSource = Model.MainModel.getSector();
            listATM.ItemsSource = Model.MainModel.ConnectedATM();
        }

        private void listATM_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            if (listATM.SelectedItem != null)
                MessageBox.Show("SELECTED");
        }

        private void connect_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageConnectionATM());
        }

        private void delete_connect_Click(object sender, RoutedEventArgs e)
        {
            if (listATM.SelectedItem != null)
            {
                Model.MainModel.DeleteConnectionATM(listATM.SelectedItem);
                Refresh();
            }
            else
            {
                MessageBox.Show("Выберите элемент", "INFO", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }

        private void Refresh()
        {
            listATM.ItemsSource = Model.MainModel.ConnectedATM();
        }

        private void sector_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }
    }
}
