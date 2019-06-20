using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _1GastosComunes_GastosComunes : System.Web.UI.Page
{
    OracleConnection conexion = new OracleConnection("SERVER=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=LAPTOP-H4508DSN)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=XE)));uid = nicolas; pwd = nicolas; ");


    public int depaInt;
    public string depart;
    public String depa;
    public String nomb;
    public String ape;
    public String corr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conexion.Open();


        nomb = Request.QueryString["nombre"];
        ape = Request.QueryString["apellido"];
        depart = Request.QueryString["departamento_id"];
        corr = Request.QueryString["correo"];

        txtDepart.Text = depart;
        txtApe.Text = ape;
        txtNom.Text = nomb;
        //txtNombre.Text = nomb;
        txtCorreo.Text = corr;



        LISTARGRID();


        


    }



    public void LISTARGRID()
    {
    

        OracleCommand con = new OracleCommand("Listar_GASTOSCOMUNES", conexion);
        con.CommandType = System.Data.CommandType.StoredProcedure;
        con.Parameters.Add("registros", OracleType.Cursor).Direction = ParameterDirection.Output;
        con.Parameters.Add("departamento", OracleType.VarChar).Value = txtDepart.Text;


        OracleDataAdapter adaptador = new OracleDataAdapter();
        adaptador.SelectCommand = con;


        DataTable tabla = new DataTable();
        adaptador.Fill(tabla);
        GridView1.DataSource = tabla;

    }


  

}