using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dbreader
{
    public partial class Insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdSubmit_Click(object sender, EventArgs e)
        {
            string connstring =
  @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DropBox\My Dropbox\Devry\CIS407\SU10B\day7\dbreader\dbreader\App_Data\Shoes.mdb;";
            System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
            string sql = "";
            System.Data.OleDb.OleDbCommand comm = new System.Data.OleDb.OleDbCommand();
            conn.ConnectionString = connstring;
            conn.Open();
            comm.Connection = conn;

            //Console.WriteLine(conn.State);
            sql = "Insert into customers (customerid, fname, lname, [password], email)";
            sql += " values  (?, ?, ?, ?, ?)";
            //http://www.4guysfromrolla.com/webtech/092601-1.2.shtml
            comm.CommandText = sql;
            comm.Parameters.AddWithValue("customerid", txtID.Text);
            comm.Parameters.AddWithValue("fname", txtFName.Text);
            comm.Parameters.AddWithValue("lname", txtLName.Text);
            comm.Parameters.AddWithValue("passwd", txtPassWD.Text);
            comm.Parameters.AddWithValue("email", txtEmail.Text);

            comm.ExecuteNonQuery();
        }
    }
}