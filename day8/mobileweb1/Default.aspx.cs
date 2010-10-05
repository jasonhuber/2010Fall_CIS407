using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
            string sql = "";
         string connstring =@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DropBox\My Dropbox\Devry\CIS407\SU10B\day8\mobileweb1\NorthWind.mdb;";
            System.Data.OleDb.OleDbDataReader dr;
            System.Data.OleDb.OleDbCommand comm = new System.Data.OleDb.OleDbCommand();

            //get this from connectionstrings.com/access
            conn.ConnectionString = connstring;
            conn.Open();
            //here I can talk to my db...
            comm.Connection = conn;

            //Console.WriteLine(conn.State);
            sql = "select categoryid, categoryname from categories";
            comm.CommandText = sql;
            dr = comm.ExecuteReader();
            rptCategory.DataSource = dr;
            rptCategory.DataBind();
            dr.Close();
            //Console.WriteLine(conn.State);
            sql = "select supplierid, companyname from suppliers";
            comm.CommandText = sql;
            dr = comm.ExecuteReader();
            rptSupplier.DataSource = dr;
            rptSupplier.DataBind();
        
    }
}