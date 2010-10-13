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
        Response.Write (@"{""products"":[");
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
        sql = "select productid, productname from products";
        if (Request.Params["category"] != null && Request.Params["category"].ToString().Length > 0)
        {
            sql += " where categoryid =?";

            comm.CommandText = sql;
            comm.Parameters.AddWithValue("@category", Request.Params["category"].ToString()); 

        }
        dr = comm.ExecuteReader();

        string stringout = "";


        while (dr.Read())
        {
            stringout += @"{""id"": " + 
                dr.GetValue(0).ToString() +  
                    @",""Description"":""" + 
                    dr.GetValue(1).ToString() + @"""}, ";

        }

        stringout = stringout.Substring(0, stringout.Length - 2);
        Response.Write(stringout + "]}");


    }
}