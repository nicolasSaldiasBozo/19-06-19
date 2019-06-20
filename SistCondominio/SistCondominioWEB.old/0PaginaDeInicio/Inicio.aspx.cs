using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
public partial class Inicio : System.Web.UI.Page
{

    OracleConnection con = new OracleConnection("DATA SOURCE = xe;PASSWORD = root;USER ID = C##Sistema;");

    public Inicio()
    {
        con.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public class MyClass
    {

    }
    protected void Unnamed_Click(object sender, EventArgs e)
    {

        con.Open();
        Response.Redirect("LoginR.aspx");
      /*  var conexion = new OracleConnection("SERVER=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=LAPTOP-H4508DSN)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=XE)));uid = CondominioBD; pwd = condiminio; ");
        conexion.Open(); */
    }
}
 