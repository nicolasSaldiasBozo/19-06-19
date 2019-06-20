<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuR.aspx.cs" Inherits="_0PaginaDeInicio_1Residente_MenuR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Directiva Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">

           <br />
           <br />
           <br />

                <div class="form-group" align="center">
                    <label > 
                        <asp:Label ID="Label1" runat="server" Text="Bienvenido : " CssClass="auto-style2" ></asp:Label>
                        <em>
                        <asp:Label ID="txtNom" runat="server" CssClass="auto-style3" ></asp:Label>
                        <asp:Label ID="txtApe" runat="server" CssClass="auto-style3" ></asp:Label>
                    </em>
                    </label>
                     

                </div>

           <br />
           <br />
           <asp:Label ID="txtCorreo" runat="server" Enabled="False" Visible="False"></asp:Label>
           <br />
           <br />
           <br />

            <div align="center" class="form-group"  >

                <asp:Button ID="btn_cosulta_reserva" runat="server" class="btn btn-success btn-lg" Text="Cosultar Reservas" OnClick="btn_cosulta_reserva_Click" Height="80px" Width="340px" /> <br /> <br />
                <asp:Button ID="btn_ingresar_multa" runat="server" class="btn btn-success btn-lg" Text="Ver Multas" Height="80px" Width="340px" OnClick="btn_ingresar_multa_Click" /><br /> <br />
                <asp:Button ID="btn_info_pgo_g" runat="server" class="btn btn-success btn-lg" Text="Informacion pago GastosComuntes" Height="80px" Width="340px" OnClick="btn_info_pgo_g_Click" /><br /> <br />
                <asp:Button ID="CerrarSesion" runat="server" Text="Cerrar Sesion"   class="btn btn-success btn-lg" Height="80px" Width="340px" BackColor="#009999" BorderColor="#006699" OnClick="CerrarSesion_Click"  />
      

              </div>
     </form>
</body>
</html>
