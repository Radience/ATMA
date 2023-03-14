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
                adapter = new SqlDataAdapter($"SELECT ATM.id_ATM, balance, isConnected, id_sector FROM ATM,Sector_GPS WHERE isConnected is NULL and ATM.id_ATM = Sector_GPS.id_ATM", connection);
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
                adapter = new SqlDataAdapter($"SELECT ATM.id_ATM, balance, isConnected, id_sector FROM ATM,Sector_GPS WHERE isConnected = 1 and ATM.id_ATM = Sector_GPS.id_ATM", connection);
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

        public static DataView SearchConnection(string search, object sectorValue)
        {
            int sector = 0;
            row = sectorValue as DataRowView;
            if (row != null)
            {
                sector = Convert.ToInt32(row.Row.ItemArray[0].ToString());
            }
            try
            {
                if (row == null && search == "%")
                {
                    return ConnectedATM();
                }
                if (sector == 0)
                    adapter = new SqlDataAdapter($"SELECT * FROM ATM WHERE isConnected = '1' and id_ATM LIKE '{search}'", connection);
                else
                    adapter = new SqlDataAdapter($"SELECT ATM.id_ATM, balance, isConnected, id_sector FROM ATM, Sector_GPS WHERE isConnected = '1' and ATM.id_ATM LIKE '{search}' and ATM.id_ATM = Sector_GPS.id_ATM and id_sector = '{sector}'", connection);
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

        public static DataView SearchConnectionALL(string search, object sectorValue)
        {
            int sector = 0;
            row = sectorValue as DataRowView;
            if (row != null)
            {
                sector = Convert.ToInt32(row.Row.ItemArray[0].ToString());
            }
            try
            {
                if (row == null && search == "%")
                {
                    return ConnectedATM();
                }
                if (sector == 0)
                    adapter = new SqlDataAdapter($"SELECT * FROM ATM WHERE isConnected is NULL and id_ATM LIKE '{search}'", connection);
                else
                    adapter = new SqlDataAdapter($"SELECT ATM.id_ATM, balance, isConnected, id_sector FROM ATM, Sector_GPS WHERE isConnected is NULL and ATM.id_ATM LIKE '{search}' and ATM.id_ATM = Sector_GPS.id_ATM and id_sector = '{sector}'", connection);
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

        public static DataView Person(int id)
        {
            try
            {
                adapter = new SqlDataAdapter($"SELECT * FROM Person, Group_Person WHERE Person.id_person = Group_Person.id_person and Group_Person.id_group = '{id}'", connection);
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

        public static DataView InfoATM(object item)
        {
            int id = 0;
            row = item as DataRowView;
            id = Convert.ToInt32(row.Row.ItemArray[0].ToString());
            try
            {
                adapter = new SqlDataAdapter($"SELECT * FROM ATM, Sector_GPS, City, Street, Group_Sector WHERE Sector_GPS.id_ATM = '{id}' and  Sector_GPS.id_ATM = ATM.id_ATM and Sector_GPS.id_city = City.id_city and Sector_GPS.id_street = Street.id_street and Sector_GPS.id_sector = Group_Sector.id_sector", connection);
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
