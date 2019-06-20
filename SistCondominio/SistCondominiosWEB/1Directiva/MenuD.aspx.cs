using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _1Directiva_MenuD : System.Web.UI.Page
{
    OracleConnection conexion = new OracleConnection("SERVER=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=LAPTOP-H4508DSN)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=XE)));uid = nicolas; pwd = nicolas; ");

    public int depaInt;
    //public string depart;
    public String depa;
    public String nomb;
    public String ape;
    public String corr;

    protected void Page_Load(object sender, EventArgs e)
    {
        conexion.Open();


        nomb = Request.QueryString["nombre"];
        ape = Request.QueryString["apellido"];
        corr = Request.QueryString["correo"];
        //depart = Request.QueryString["departamento_id"];
        txtNom.Text = nomb;
        txtCorreo.Text = corr;
        txtApe.Text = ape;

        conexion.Close();


    }

    protected void btn_cosulta_reserva_Click(object sender, EventArgs e)
    {
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

        depa = depaInt.ToString();

        Response.Redirect("~/1CrearReservaD/Reservas.aspx?nombre=" + nomb + "&departmento_id=" + depaInt + "&apellido=" + ape + "&correo=" + corr);

    }

    protected void CerrarSesion_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/0PaginaDeInicio/inicio.aspx");
    }

    protected void btn_info_pgo_g_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/1GastosComunes/InfoGastos.aspx");
    }

    protected void btn_info_pago_m_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/1Multas/Multas.aspx");
    }

    protected void btn_ingresar_multa_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/1Multas/AgregarMulta.aspx");
    }

    protected void btn_info_residente_Click(object sender, EventArgs e)
    {
         
              Response.Redirect("InfoResidentes.aspx");

    }

    protected void btn_crear_anuncios_Click(object sender, EventArgs e)
    {
        
             Response.Redirect("CrearAnuncio.aspx");

    }
}