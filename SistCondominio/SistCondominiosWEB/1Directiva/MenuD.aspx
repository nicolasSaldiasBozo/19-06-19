<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MenuD.aspx.cs" Inherits="_1Directiva_MenuD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Directiva Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</head>
<body>
         <form id="form2" runat="server">


                <br />
           <br />
           <br />




                 

                 <div class="form-group" align="center">
                    <label > 
                        <em> 
                        <asp:Label ID="Label1" runat="server" Text="Bienvenido : " CssClass="auto-style2" style="font-size: xx-large" ></asp:Label>
                        <asp:Label ID="txtNom" runat="server" CssClass="auto-style3" style="font-size: x-large" ></asp:Label>
                        <asp:Label ID="txtApe" runat="server" CssClass="auto-style3" style="font-size: x-large" ></asp:Label>
                       <asp:Label ID="txtCorreo" runat="server" Enabled="False" Visible="False"></asp:Label>
                    </label>
                     

                </div>

           <br />
           <br />
           <br />
           <br />
           <br />

            <div align="center" class="form-group"  >

                <asp:Button  Style="margin-right: 45px"  ID="btn_cosulta_reserva" runat="server" class="btn btn-success btn-lg" Text="Cosultar Reservas" Width="400px" Height="85px" OnClick="btn_cosulta_reserva_Click"  />
                <asp:Button  style="margin-left:45px" ID="btn_ingresar_multa" runat="server" class="btn btn-success btn-lg" Text="Ingresar Multa" Width="400px"  Height="85px" OnClick="btn_ingresar_multa_Click"   /><br /> <br />

                <asp:Button  Style="margin-right: 45px"  ID="btn_crear_anuncios" runat="server" class="btn btn-success btn-lg" Text="Crear Anuncio"  Width="400px" Height="85px" OnClick="btn_crear_anuncios_Click"   />
                <asp:Button  style="margin-left:45px" ID="btn_info_residente" runat="server"  class="btn btn-success btn-lg" Text="Informacion Residentes" Width="400px"  Height="85px" OnClick="btn_info_residente_Click"   /> <br /> <br />
               
                <asp:Button   Style="margin-right: 45px"  ID="btn_info_pago_m" runat="server" class="btn btn-success btn-lg" Text ="Informacion pago Multas"  Width="400px" Height="85px" OnClick="btn_info_pago_m_Click"   /> 
                <asp:Button  style="margin-left:45px" ID="btn_info_pgo_g" runat="server" class="btn btn-success btn-lg" Text="Informacion pago GastosComuntes" Width="400px" Height="85px" OnClick="btn_info_pgo_g_Click"   /><br /> <br />

                <asp:Button  style="margin-left:45px" ID="CerrarSesion" runat="server" Text="Cerrar Sesion"   class="btn btn-success btn-lg"  Width="400px" BackColor="#009999" BorderColor="#006699" OnClick="CerrarSesion_Click"  Height="85px"   />
      

              </div>
     </form>
</body>
</html>
