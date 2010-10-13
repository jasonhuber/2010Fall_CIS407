using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class securedpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUserName.Text = System.Web.HttpContext.Current.User.Identity.Name;
    }
}