using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _1CrearReserva_Reservas : System.Web.UI.Page
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



        fechauno.Text = DateTime.Now.ToLongDateString();
            fechados.Text = DateTime.Now.ToString("yyy-MM-dd");
        

        nomb = Request.QueryString["nombre"];
        ape = Request.QueryString["apellido"];
        depart = Request.QueryString["departamento_id"];
        corr = Request.QueryString["correo"];

        txtDepartamento.Text = depart;
        txtApe.Text = ape;
        txtNom.Text = nomb;
        txtNombre.Text = nomb;
        txtCorreo.Text = corr;
        conexion.Close();


        tipo.Items.Add("Seleccione...");
        tipo.Items.Add("Estacionamiento");
        tipo.Items.Add("Quincho");
        tipo.Items.Add("Multicancha");
        tipo.Items.Add("Sala de Eventos");


    }

    protected void btnAgregar(object sender, EventArgs e)
    {

        conexion.Open();
        OracleCommand con = new OracleCommand("AGREGA_RESERVA_E", conexion);
        con.CommandType = System.Data.CommandType.StoredProcedure;
        con.Parameters.Add("departamento", OracleType.VarChar).Value = txtDepartamento.Text;
        con.Parameters.Add("h_inicio", OracleType.DateTime).Value = fechauno.Text;
        con.Parameters.Add("h_termino", OracleType.DateTime).Value = fechados.Text;
        con.Parameters.Add("descripcion", OracleType.VarChar).Value = txtDescripcion.Text;
        con.ExecuteNonQuery();

        conexion.Close();


    }



  



    protected void Consultar_Click(object sender, EventArgs e)
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

        Response.Redirect("Consultar.aspx?nombre=" + nomb + "&departamento_id=" + depaInt + "&apellido=" + ape + "&correo=" + corr);

        
    }

    protected void Volver_Click(object sender, EventArgs e)
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


        Response.Redirect("~/1Residente/MenuR.aspx?nombre=" + nomb + "&departmento_id=" + depaInt + "&apellido=" + ape + "&correo=" + corr);

    }

    protected void CerrarSesion_Click(object sender, EventArgs e)
    {
       
            Response.Redirect("~/0PaginaDeInicio/inicio.aspx");
        
    }
}

