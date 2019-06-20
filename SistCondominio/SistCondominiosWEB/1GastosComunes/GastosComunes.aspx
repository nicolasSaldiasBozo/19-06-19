<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GastosComunes.aspx.cs" Inherits="_1GastosComunes_GastosComunes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles.css">
    <title>Advanced Search Form</title>


</head>
<body>
    <div class="container" id="advanced-search-form">
         <form id="form1" runat="server">


              
        <h2><em>
            <asp:Label ID="txtNom" runat="server"></asp:Label>
            <asp:Label ID="txtApe" runat="server"></asp:Label>
            </em>
            <asp:Label ID="txtCorreo" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="txtDepart" runat="server" Visible="False"></asp:Label>
              <asp:TextBox ID="txtDepartamento" runat="server" Visible="False"></asp:TextBox>
              </h2>
             <asp:GridView ID="GridView1" runat="server" Width="1066px">
             </asp:GridView>
             <br />
             <br />
             <br />

              
              <%-- <div class="form-group">
                <label><h3 >TipoConsulta</h3></label>
                   <asp:RadioButtonList id="rbTipoReserva" runat="server">
                       <asp:ListItem Text="gastosComunes" Value="Gastos"/>
                       <asp:ListItem Text="multas" Value="Multas"/>
                   </asp:RadioButtonList>
             </div>--%>         


<%--    <table id="dgListar" data-source="/Players/Get" data-ui-library="bootstrap">
        <thead>
            <tr>
                <th >Nombre</th>
                <th>Dpto</th>
                <th data-field="fechaI" data-min-width="250" data-priority="1">Fecha Inicio</th>
                <th data-field="fechaT" data-type="date" data-min-width="250" data-priority="2">Fecha Termino</th>
            </tr>
        </thead>
    </table>
    <script type="text/javascript">
        $(document).ready(function () {
            var $grid = $('#grid').grid({
                detailTemplate: '<div class="row"></div>',
                responsive: true,
                showHiddenColumnsAsDetails: true
            });
        });
    </script>--%>

             <div class="clearfix">
           <asp:button runat="server" text="Volver" ID ="btnVolver"  class="btn btn-info btn-lg btn-responsive" Height="63px"   />
               </div>
             
         </form>
    </div>
</body>
