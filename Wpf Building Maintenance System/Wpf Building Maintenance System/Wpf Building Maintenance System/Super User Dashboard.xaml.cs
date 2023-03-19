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
using System.Data.SqlClient;
using System.Data;

namespace Wpf_Building_Maintenance_System
{
    /// <summary>
    /// Interaction logic for Super_User_Dashboard.xaml
    /// </summary>
    public partial class Super_User_Dashboard : Window
    {
        public Super_User_Dashboard()
        {
            InitializeComponent();
            LoadGrid();
        }
        
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-QRK690F\SQLEXPRESS;Initial Catalog=Building Maintenance System;Integrated Security=True");

        public void LoadGrid()
        {
            SqlCommand cmd = new SqlCommand("select * from SuperUser", con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            dt.Load(sdr);
            con.Close();
            DataGrid.ItemsSource = dt.DefaultView;
        }

        public void clear()
        {
            ID_txt.Clear();
            Name_txt.Clear();
            Password_txt.Clear();
            Contact_txt.Clear();
        }

        public bool isValid()
        {
            if (ID_txt.Text == string.Empty)
            {
                MessageBox.Show("I.D Cannot Be Empty", "Failed", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
           
            if (Name_txt.Text==string.Empty)
            {
                MessageBox.Show("Name Cannot Be Empty", "Failed", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }

            if (Password_txt.Text == string.Empty)
            {
                MessageBox.Show("Password Cannot Be Empty", "Failed", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }

            if (Contact_txt.Text == string.Empty)
            {
                MessageBox.Show("Contact Cannot Be Empty", "Failed", MessageBoxButton.OK, MessageBoxImage.Error);
                return false;
            }
        return true;

        }



        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

       

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            if (ID_txt.Text == string.Empty)
            {
                MessageBox.Show("I.D Cannot Be Empty", "Failed", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from SuperUser where ID=" + ID_txt.Text + " ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                LoadGrid();
                MessageBox.Show("Record Deleted From ID :" + ID_txt.Text + "", "Deleted", MessageBoxButton.OK, MessageBoxImage.Information);
                clear();

            }
            catch(SqlException ex)
            {
                MessageBox.Show("Not Deleted " +ex.Message+"","Exception", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            finally
            {
                con.Close();
            }

        }

        private void UpdateButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void InsertButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (isValid())
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO SuperUser VALUES (@ID, @Name, @Password, @Contact)", con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ID", ID_txt.Text);
                    cmd.Parameters.AddWithValue("@Name", Name_txt.Text);
                    cmd.Parameters.AddWithValue("@Password", Password_txt.Text);
                    cmd.Parameters.AddWithValue("@Contact", Contact_txt.Text);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    LoadGrid();
                    MessageBox.Show("Sucessfully Registered", "Saved", MessageBoxButton.OK, MessageBoxImage.Information);
                    clear();
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void ClearButton_Click(object sender, RoutedEventArgs e)
        {
            clear();
        }

        private void ID_txt_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void Name_txt_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void Searchbutton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mw1 = new MainWindow();
            mw1.Show();
            this.Close();
        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }

    
}
