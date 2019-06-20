<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Consultar.aspx.cs" Inherits="_1CrearReserva_Consultar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta charset="utf-8" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Registration Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.2/moment.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<head runat="server">
  <title>Consultar</title>

    <style type="text/css">
        .auto-style1 {
            width: 390px;
        }
        .nuevoEstilo1 {
            font-family: "Yu Gothic UI Semibold";
        }
        .nuevoEstilo2 {
            color: #06AED9;
        }
        .auto-style3 {
            font-size: xx-large;
            color: #CCFFCC;
        }
        .auto-style4 {
            color: #000000;
        }
    </style>

</head>
<body>


 

       <h1 style="margin-left:545px" class="auto-style1" ><strong class="auto-style4"><em>Reservas Registradas</em></strong></h1>
    
     <form  runat="server">

           <br />
         
            

               
                <div class="form-group">
                    <em>
                   <asp:Label ID="txtNom" runat="server" CssClass="auto-style3"></asp:Label>
           <asp:Label ID="txtApe" runat="server" CssClass="auto-style3"></asp:Label>
                    </em>
                  <asp:Label ID="txtCorreo" Enabled="False" runat="server" Visible="False"></asp:Label>

                <br />
           <br />
           <br /> 
                     

                </div>

         <div style="margin-left:345px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RESERVA_E_ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="743px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="RESERVA_E_ID" HeaderText="N° " ReadOnly="True" SortExpression="RESERVA_E_ID" />
                 <asp:BoundField DataField="DEPARTAMENTO_ID" HeaderText="Departamento" SortExpression="DEPARTAMENTO_ID" />
                 <asp:BoundField DataField="VALOR_MONTO" HeaderText="Monto" SortExpression="VALOR_MONTO" />
                 <asp:BoundField DataField="HORARIO_INICIO" HeaderText="Inicio" SortExpression="HORARIO_INICIO" />
                 <asp:BoundField DataField="HORARIO_FIN" HeaderText="Termino" SortExpression="HORARIO_FIN" />
                 <asp:BoundField DataField="DESCRIPCION_RESERVA" HeaderText="Descripcion" SortExpression="DESCRIPCION_RESERVA" />
             </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionListarReservaE %>" ProviderName="<%$ ConnectionStrings:ConnectionListarReservaE.ProviderName %>" SelectCommand="SELECT &quot;RESERVA_E_ID&quot;, &quot;DEPARTAMENTO_ID&quot;, &quot;VALOR_MONTO&quot;, &quot;HORARIO_INICIO&quot;, &quot;HORARIO_FIN&quot;, &quot;DESCRIPCION_RESERVA&quot; FROM &quot;RESERVAESTACIONAMIENTO&quot;"></asp:SqlDataSource>

         </div>
  
        <div class="clearfix" align="center" >
           <asp:button runat="server" text="Volver" ID ="btnVolver"  class="btn btn-info btn-lg btn-responsive" OnClick="btnVolver_Click" Width="200px"  />
            <br />
            <asp:Button ID="CerrarSesion" runat="server" Text="Cerrar Sesion"  class="btn btn-info btn-lg btn-responsive" OnClick="CerrarSesion_Click" BackColor="#009999" Width="200px" />
               </div>
              
            </form>

            
</body>

</html>
