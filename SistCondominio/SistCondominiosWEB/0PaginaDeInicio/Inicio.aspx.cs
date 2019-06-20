using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Data;

public partial class Inicio : System.Web.UI.Page
{
    OracleConnection conexion = new OracleConnection("SERVER=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=LAPTOP-H4508DSN)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=XE)));uid = Condo; pwd = Condo; ");

    //OracleConnection conexion = new OracleConnection("DATA SOURCE = XE;PASSWORD = Condo;USER ID = Condo;");

    //OracleConnection conexion = new OracleConnection("DATA SOURCE = XE;PASSWORD = root;USER ID = C##Sistema;");


    public Inicio()
    {



    }
    //public void prueba()
    //{
    //    conexion.Open();
    //    if (conexion.State!=ConnectionState.Open)
    //    {
    //        Console.WriteLine("no conectada");
    //    }
    //    else
    //    {
    //        Console.WriteLine("conectada");
    //    }

    //}
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public class MyClass
    {

    }
    protected void btnResidente(object sender, EventArgs e)
    {

        // conexion.Open();
        Response.Redirect("LoginR.aspx");
        /*  var conexion = new OracleConnection("SERVER=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=LAPTOP-H4508DSN)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=XE)));uid = CondominioBD; pwd = condiminio; ");
          conexion.Open(); */
    }

    protected void btnAdministrador(object sender, EventArgs e)
    {
        Response.Redirect("LoginA.aspx");
    }

    protected void btnConserje(object sender, EventArgs e)
    {
        Response.Redirect("LoginC.aspx");
    }

    protected void btnDirectiva(object sender, EventArgs e)
    {
        Response.Redirect("LoginD.aspx");
    }
}

 