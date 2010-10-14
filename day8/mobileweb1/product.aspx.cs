using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
             
        System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
        string sql = "";
        string connstring = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DropBox\My Dropbox\Devry\CIS407\SU10B\day8\mobileweb1\NorthWind.mdb;";
        System.Data.OleDb.OleDbDataReader dr;
        System.Data.OleDb.OleDbCommand comm = new System.Data.OleDb.OleDbCommand();

        //get this from connectionstrings.com/access
        conn.ConnectionString = connstring;
        conn.Open();
        //here I can talk to my db...
        comm.Connection = conn;

        //Console.WriteLine(conn.State);
        sql = "select * from products";
        sql += " where productid =?";

            comm.CommandText = sql;
            comm.Parameters.AddWithValue("@productid", Request.Params["productid"].ToString()); 

        
        dr = comm.ExecuteReader();


        string stringout = "";
           while (dr.Read())
        {
            stringout += "Productid: " + dr.GetValue(0).ToString() + "<br />";
            stringout += "QPU: " + dr.GetValue(2).ToString() + "<br />";
            stringout += "Units in stock: " + dr.GetValue(4).ToString() + "<br />";

        }

        Response.Write(stringout);


    }
}