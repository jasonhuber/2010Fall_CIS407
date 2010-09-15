using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace DBConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            string connstring =
    @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DropBox\My Dropbox\Devry\CIS407\SU10B\day5\NorthWind.mdb;";
            System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
            string sql = "";
            System.Data.DataSet ds = new System.Data.DataSet();
            System.Data.OleDb.OleDbDataReader dr;
            System.Data.OleDb.OleDbCommand comm = new System.Data.OleDb.OleDbCommand();

            try
            {
                //get this from connectionstrings.com/access
                conn.ConnectionString = connstring;
                conn.Open();
                //here I can talk to my db...
                comm.Connection = conn;
                
                //Console.WriteLine(conn.State);
                sql = Console.ReadLine();
                comm.CommandText = sql;
                if (sql.ToLower().IndexOf("select") == 0)
                {
                    dr = comm.ExecuteReader();
                    while (dr.Read())
                    {
                        Console.WriteLine(dr.GetString(0));
                    }
                }
                else
                {
                    Console.WriteLine(comm.ExecuteNonQuery().ToString());
                }
            }
            catch ( Exception ex)
            {
                Console.WriteLine(ex.Message);
                Console.Read();
            }
            finally
            {
                Console.ReadLine();
                comm.Dispose();
                conn.Close();
                conn = null;
            }
        }
    }
}
