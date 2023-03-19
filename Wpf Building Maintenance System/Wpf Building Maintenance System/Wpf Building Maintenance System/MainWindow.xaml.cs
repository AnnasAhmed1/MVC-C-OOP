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

namespace Wpf_Building_Maintenance_System
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            Super_User_Dashboard sim = new Super_User_Dashboard();
            sim.Show();
            
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            Register_Window reg = new Register_Window();
            reg.Show();
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            textBox.Clear();
            passwordBox.Clear();
        }
    }
}
