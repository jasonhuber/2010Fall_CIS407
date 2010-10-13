using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class trycatch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Web.Mail.MailMessage mm = new System.Web.Mail.MailMessage();
        mm.To = "jasonhuber@gmail.com";
        mm.From = "jasonhuber@gmail.com";
        mm.Subject = "Test";
        mm.Body = "Hi";
        mm.BodyFormat = System.Web.Mail.MailFormat.Html;

//        System.Web.Mail.SmtpMail.SmtpServer = "localhost";
        System.Web.Mail.SmtpMail.Send(mm);


    }
}