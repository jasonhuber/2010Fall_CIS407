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
            //get this from connectionstrings.com/access
            string connstring = 
                @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DropBox\My Dropbox\Devry\CIS407\SU10B\day5\NorthWind.mdb;";
            System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
            conn.ConnectionString = connstring;
            conn.Open();
            //here I can talk to my db...
            Console.WriteLine(conn.State);
            conn.Close();
            conn = null;
        }
    }
}
