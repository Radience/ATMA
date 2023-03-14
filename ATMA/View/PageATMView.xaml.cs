using System;
using System.Collections.Generic;
using System.Data;
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
    /// Логика взаимодействия для PageATMView.xaml
    /// </summary>
    public partial class PageATMView : Page
    {
        public PageATMView(DataView dataView)
        {
            InitializeComponent();
            DataContext = dataView;
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new PageATM());
        }

        private void showGroup_Click(object sender, RoutedEventArgs e)
        {
            listPerson.ItemsSource = Model.MainModel.Person(Convert.ToInt32(showGroup.Content.ToString()));
        }
    }
}
