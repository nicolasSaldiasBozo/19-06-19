<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgregarMulta.aspx.cs" Inherits="_1Multas_AgregarMulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Registration Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.2/moment.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

<head runat="server">
   <title style="margin-left:135px">Reservas</title>
  
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            height: 55px;
        }
        .auto-style4 {
            font-size: x-large;
            color: #CCFFCC;
        }
        .auto-style5 {
            position: relative;
            -webkit-background-clip: padding-box;
            background-clip: padding-box;
            border-radius: 6px;
            outline-width: 0;
            outline-style: none;
            outline-color: invert;
            -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
            box-shadow: 0 5px 15px rgba(0, 0, 0, .5);
            left: 0px;
            top: 0px;
            height: 284px;
            border: 1px solid #999;
            background-color: #fff;
            width: 417px;
        }
    </style>
  
</head>
<body>
 
       <form   runat="server" >

                <br />
                <em>
               <asp:Label ID="txtNom" runat="server" CssClass="auto-style4"></asp:Label>
           <asp:Label ID="txtApe" runat="server" CssClass="auto-style4"></asp:Label>
                  </em>
                  <asp:Label ID="txtCorreo" Enabled="False" runat="server" Visible="False"></asp:Label>

               <div class="auto-style2" align="center">
                   <strong><em>
                   <asp:Label  ID="Label1" runat="server" Text="Ingresar Multa" CssClass="auto-style1"></asp:Label>
                   </em></strong>
           </div>

               <br />
      
           


    <asp:Table id="Table1" runat="server" CssClass= "auto-style5" border="0" BorderStyle="None"
       
        CellPadding="10"
       
        HorizontalAlign="Center" BorderColor="White" >


        <asp:TableRow>

            <asp:TableCell>

                     <label  style="margin-left:15px">Departamento</label>
            </asp:TableCell>

            <asp:TableCell>
       <asp:TextBox ID="txtDepartamento" placeholder="Ingrese Departamento"  class="form-control"  ReadOnly="false" runat="server" Width="220px"></asp:TextBox>
    

            </asp:TableCell>

        </asp:TableRow>

        <asp:TableRow>

            <asp:TableCell>

                     <label  style="margin-left:15px">Descripción</label>
            </asp:TableCell>

            <asp:TableCell>
         <asp:TextBox ID="txtDescripcion" class="form-control"  placeholder="Ingrese Descripcion" runat="server" Width="220px"></asp:TextBox>

            </asp:TableCell>

        </asp:TableRow>


          <asp:TableRow>

            <asp:TableCell>

                     <label  style="margin-left:15px">Monto</label>
            </asp:TableCell>

            <asp:TableCell>
       <asp:TextBox ID="txtMonto"  class="form-control" placeholder="Ingrese Monto" ReadOnly="false" runat="server" Width="220px"></asp:TextBox>
    

            </asp:TableCell>

        </asp:TableRow>


              <asp:TableRow>

            <asp:TableCell>

                     <label  style="margin-left:15px">  fecha Inicio</label>
            </asp:TableCell>

            <asp:TableCell>

     <div class='input-group date' id='datetimepicker6'>

                <asp:TextBox ID="fechaInicio" class="form-control" runat="server"  ></asp:TextBox>

                <span class="input-group-addon">

                    <span class="glyphicon glyphicon-calendar"></span>

                </span>

            </div>

            </asp:TableCell>

        </asp:TableRow>

    </asp:Table>

           <br />

           <div class="clearfix" align="center" >
               <br /><br /><br />

               <asp:Button Text="Ingresar" ID="btnAgrega" runat="server" class="btn btn-info btn-lg btn-responsive"   Width="300px" BorderColor="#009999" OnClick="btnAgrega_Click"  />
               <br /> <br /> <br />
               <br /><asp:Button ID="Volver" runat="server" class="btn btn-info btn-lg btn-responsive" Text="Volver" Width="300px" BackColor="#009999" BorderColor="#006699" OnClick="Volver_Click" />
                    
               </div>
            
  <asp:Button ID="CerrarSesion" style="position:absolute; top:0;right:0"  runat="server" Text="Cerrar Sesion"  class="btn btn-info btn-lg btn-responsive" Width="150px" BackColor="#009999" BorderColor="#006699" OnClick="CerrarSesion_Click" />      
              

        </form>
        
</body>
</html>

         <script type="text/javascript">

    $(function () {

        $('#datetimepicker6').datetimepicker();

        $('#datetimepicker7').datetimepicker({

            useCurrent: false //Important! See issue #1075

        });

        $("#datetimepicker6").on("dp.change", function (e) {

            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);

        });

        $("#datetimepicker7").on("dp.change", function (e) {

            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);

        });

    });

</script>