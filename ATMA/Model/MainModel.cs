using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ATMA.Model
{
    class MainModel
    {
        private static SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-DHMQJ5P;Initial Catalog=ATMA;Integrated Security=True");
        private static SqlDataAdapter adapter;
        private static DataTable dataTable;
        private static SqlCommand command;
        private static DataRowView row;

        public static DataView ATM()
        {
            try
            {
                adapter = new SqlDataAdapter($"SELECT * FROM ATM WHERE isConnected is NULL", connection);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                return dataTable.DefaultView;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return null;
        }

        public static DataView ConnectedATM()
        {
            try
            {
                adapter = new SqlDataAdapter($"SELECT * FROM ATM WHERE isConnected = '1'", connection);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                return dataTable.DefaultView;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return null;
        }

        public static void ConnectionATM(object item)
        {
            try
            {
                row = item as DataRowView;
                string id = row.Row.ItemArray[0].ToString();
                connection.Open();
                command = new SqlCommand($"UPDATE ATM SET isConnected = 1 WHERE id_ATM = {id}", connection);
                command.CommandType = CommandType.Text;
                command.ExecuteNonQuery();
                connection.Close();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public static void DeleteConnectionATM(object item)
        {
            try
            {
                row = item as DataRowView;
                string id = row.Row.ItemArray[0].ToString();
                connection.Open();
                command = new SqlCommand($"UPDATE ATM SET isConnected = NULL WHERE id_ATM = '{id}'", connection);
                command.CommandType = CommandType.Text;
                command.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public static DataView getSector()
        {
            try
            {
                adapter = new SqlDataAdapter($"SELECT id_sector FROM Sector", connection);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                return dataTable.DefaultView;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return null;
        }

        public static DataView Person()
        {
            try
            {
                adapter = new SqlDataAdapter($"SELECT * FROM Person", connection);
                dataTable = new DataTable();
                adapter.Fill(dataTable);
                return dataTable.DefaultView;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return null;
        }
    }
}
