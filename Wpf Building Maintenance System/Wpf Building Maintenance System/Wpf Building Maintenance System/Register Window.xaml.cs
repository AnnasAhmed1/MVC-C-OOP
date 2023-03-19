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
using System.Windows.Shapes;

namespace Wpf_Building_Maintenance_System
{
    /// <summary>
    /// Interaction logic for Register_Window.xaml
    /// </summary>
    public partial class Register_Window : Window
    {
        public Register_Window()
        {
            InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            
            this.Close();
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            textBox.Clear();
            textBox1.Clear();
            textBox2.Clear();
            textBox3.Clear();
        }
    }
}
