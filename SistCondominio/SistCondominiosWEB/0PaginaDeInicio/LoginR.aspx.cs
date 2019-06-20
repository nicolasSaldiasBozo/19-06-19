using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.OracleClient;

public partial class _0PaginaDeInicio_LoginR : System.Web.UI.Page
{
    
   
    public static int depaInt;
    public static String depa;
    public static String nomb;
    public static String ape;
    public static String corr;
    public static String mensaje;



    OracleConnection conexion = new OracleConnection("SERVER=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=LAPTOP-H4508DSN)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=XE)));uid = nicolas ; pwd = nicolas; ");



    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnIngrasar(object sender, EventArgs e)
    {
        conexion.Open();
        OracleCommand con = new OracleCommand("LOGIN_RESIDENTE", conexion);
        con.CommandType = System.Data.CommandType.StoredProcedure;
        con.Parameters.AddWithValue("usuario", OracleType.VarChar).Value = txtCorreo.Text;
        con.Parameters.AddWithValue("pass", OracleType.VarChar).Value = txtPass.Text;
        OracleParameter paramId = new OracleParameter("mensaje", OracleType.VarChar, 1000);
        paramId.Direction = ParameterDirection.Output;
        con.Parameters.Add(paramId);
        con.ExecuteNonQuery();

        mensaje = Convert.ToString(con.Parameters["mensaje"].Value);
        conexion.Close();

        conexion.Open();

        string sql = " select nombre,departamento_id,apellido,correo from RESIDENTE  where correo='" + txtCorreo.Text + "'";
        OracleCommand con2 = new OracleCommand(sql, conexion);
        con2.CommandType = CommandType.Text;
        OracleDataReader dr = con2.ExecuteReader();
        dr.Read();
        nomb = dr.GetString(0);
        depaInt = dr.GetInt32(1);
        ape = dr.GetString(2);
        corr = dr.GetString(3); 
        conexion.Close();

        if (mensaje == "exito")
        {
            depa = depaInt.ToString();

            Response.Redirect("~/1Residente/MenuR.aspx?nombre=" + nomb + "&departmento_id=" + depa + "&apellido="+ape + "&correo=" + corr);
        }
        else
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "alert ('Error en los datos');");


        }

    }
}
