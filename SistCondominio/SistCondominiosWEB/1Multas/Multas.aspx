<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Multas.aspx.cs" Inherits="_1Multas_Multas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>listar Multa Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.2/moment.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

    
</head>
<body>
         <form   runat="server" >

                <br />
                <em>
                <strong>
               <asp:Label ID="txtNom" runat="server" CssClass="auto-style4" style="font-size: x-large"></asp:Label>
           <asp:Label ID="txtApe" runat="server" CssClass="auto-style4" style="font-size: x-large"></asp:Label>
                  </strong>
                  </em>
                  <asp:Label ID="txtCorreo" Enabled="False" runat="server" Visible="False"></asp:Label>

               <div class="auto-style2" align="center">
                   <strong><em>
                   <asp:Label  ID="Label1" runat="server" Text="Ingresar Multa" CssClass="auto-style1"></asp:Label>
                   </em></strong>
           </div>

               <br />
      
           

 
           <br />

           <div class="clearfix" align="center" >
               <br /><br /><br />

               <asp:Button Text="Ingresar" ID="btnAgrega" runat="server" class="btn btn-info btn-lg btn-responsive"   Width="300px" BorderColor="#009999"   />
               <br /> <br /> 
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MULTAS_ID" DataSourceID="SqlDataSource1">
                   <Columns>
                       <asp:BoundField DataField="MULTAS_ID" HeaderText="MULTAS_ID" ReadOnly="True" SortExpression="MULTAS_ID" />
                       <asp:BoundField DataField="DEPARTAMENTO_ID" HeaderText="DEPARTAMENTO_ID" SortExpression="DEPARTAMENTO_ID" />
                       <asp:BoundField DataField="DESCRIPCION_MULTA" HeaderText="DESCRIPCION_MULTA" SortExpression="DESCRIPCION_MULTA" />
                       <asp:BoundField DataField="VALOR_MULTA" HeaderText="VALOR_MULTA" SortExpression="VALOR_MULTA" />
                       <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                       <asp:BoundField DataField="FECHA_MULTA" HeaderText="FECHA_MULTA" SortExpression="FECHA_MULTA" />
                   </Columns>
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT MULTAS_ID, DEPARTAMENTO_ID, DESCRIPCION_MULTA, VALOR_MULTA, ESTADO, FECHA_MULTA FROM MULTAS"></asp:SqlDataSource>
               <br />
               <br /><asp:Button ID="Volver" runat="server" class="btn btn-info btn-lg btn-responsive" Text="Volver" Width="300px" BackColor="#009999" BorderColor="#006699" OnClick="Volver_Click" />
                    
               </div>
            
  <asp:Button ID="CerrarSesion" style="position:absolute; top:0;right:0"  runat="server" Text="Cerrar Sesion"  class="btn btn-info btn-lg btn-responsive" Width="150px" BackColor="#009999" BorderColor="#006699" OnClick="CerrarSesion_Click" />      
              

        </form>
        
</body>
</html>
