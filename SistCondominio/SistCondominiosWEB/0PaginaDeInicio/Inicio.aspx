<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Registration Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: "Bauhaus 93";
        }
    </style>
</head>
<body>
  <%--  <form action="/4Residente/Inicio.aspx" method="post"> --%> 
       <form id="form2" runat="server">
         <br />
           <br />  <br />
           <br />  <br />
           <br />

                <div  align="center" class="form-group">
                    <label ><h1>¡<em><strong>Bienvenidos</strong></em>!</h1></label>
                </div>
           <br />
           <br />
           <br />
           <br />
           <br />

             <div align="center" class="form-group">
             
                   <%-- <asp:Button class="btn btn-success btn-lg" runat="server" OnClick="btnAdministrador" Text="Administrador"/>
                    <asp:Button  style="margin-left:70px" class="btn btn-success btn-lg" runat="server" OnClick="btnConserje" Text="Conserje"/>
                   --%> 
                    <asp:Button Style="margin-right: 45px" class="btn btn-success btn-lg" runat="server" OnClick="btnResidente" Text="Residente" Height="150px" Width="250px" />
                    <asp:Button style="margin-left:45px" class="btn btn-success btn-lg" runat="server" OnClick="btnDirectiva" Text="Directiva" Height="150px" Width="250px"/>
              </div>
     </form>
</body>
</html>
