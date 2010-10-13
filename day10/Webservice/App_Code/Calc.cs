using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for Calc
/// </summary>
[WebService(Namespace = "http://hub3r.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Calc : System.Web.Services.WebService {

    public Calc () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public int Add(int x, int y) {
        return x+y;
    }

    [WebMethod]
    public int Divide(int x, int y)
    {
        return x / y;
    }
    [WebMethod]
    public int Multiply(int x, int y)
    {
        return x * y;
    }
 
    [WebMethod]
    public int Subtract(int x, int y)
    {
        return x - y;
    }
    

}
