using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        //if (System.Web.Security.FormsAuthentication.Authenticate(txtUserName.Text, txtPassword.Text))
        //{
        //    System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
        //}
        //else
        //{
        //    txtUserName.BackColor = System.Drawing.Color.Red;        
        //}
                   string connstring =
   @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DropBox\My Dropbox\Devry\CIS407\SU10B\day5\NorthWind.mdb;";
            System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
            string sql = "";
            System.Data.OleDb.OleDbDataReader dr;
            System.Data.OleDb.OleDbCommand comm = new System.Data.OleDb.OleDbCommand();
                //get this from connectionstrings.com/access
            conn.ConnectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("customers.mdb");
            conn.Open();
            //here I can talk to my db...
            comm.Connection = conn;

            //Console.WriteLine(conn.State);
            sql = "select customerid from customers where customerid = ? and customerpassword = ?";
            comm.CommandText = sql;
            comm.Parameters.AddWithValue("@customerid", txtUserName.Text);
            comm.Parameters.AddWithValue("@customerpassword", txtPassword.Text);

            dr = comm.ExecuteReader(System.Data.CommandBehavior.SingleRow);
            if (dr.HasRows)
            {
                //System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
                System.Web.Security.FormsAuthentication.SetAuthCookie(txtUserName.Text, false);

                Response.Redirect("securedpage.aspx");
             
            }
            else
            {
                txtUserName.BackColor = System.Drawing.Color.Red;        
            }

    }
}