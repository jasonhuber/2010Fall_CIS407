using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace dbreader
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connstring =
   @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\DropBox\My Dropbox\Devry\CIS407\SU10B\day5\NorthWind.mdb;";
            txtConnString.Text = connstring;
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            System.Data.OleDb.OleDbConnection conn = new System.Data.OleDb.OleDbConnection();
            string sql = "";
            System.Data.DataSet ds = new System.Data.DataSet();
            System.Data.OleDb.OleDbDataReader dr;
            System.Data.OleDb.OleDbCommand comm = new System.Data.OleDb.OleDbCommand();

            try
            {
                //get this from connectionstrings.com/access
                conn.ConnectionString = txtConnString.Text;
                conn.Open();
                //here I can talk to my db...
                comm.Connection = conn;

                //Console.WriteLine(conn.State);
                sql = txtSQL.Text;
                comm.CommandText = sql;
                if (sql.ToLower().IndexOf("select") == 0)
                {
                    dr = comm.ExecuteReader();
                    while (dr.Read())
                    {
                        txtresults.Text = dr.GetValue(0).ToString();
                    }
                }
                else
                {
                    txtresults.Text = comm.ExecuteNonQuery().ToString();
                }
            }
            catch (Exception ex)
            {
                txtresults.Text = ex.Message;

            }
            finally
            {
            
                comm.Dispose();
                conn.Close();
                conn = null;
            }
        }
    }
}
