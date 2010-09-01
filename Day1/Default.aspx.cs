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

        int i = 0;


        if (Session["mysessionvar"] != null)
        {
            Session["mysessionvar"] = int.Parse(Session["mysessionvar"].ToString()) + 1;
        }
        else
        {
            Session["mysessionvar"] = 1;
        }
        Response.Write("Usercount: ");
        txtUserCount.Text = Session["mysessionvar"].ToString();
        
    }
}
