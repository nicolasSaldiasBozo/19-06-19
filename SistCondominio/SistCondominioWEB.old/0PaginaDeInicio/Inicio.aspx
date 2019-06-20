<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Registration Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</head>
<body>
  <%--  <form action="/4Residente/Inicio.aspx" method="post"> --%> 
       <form id="form2" runat="server">
         <br />
           <br />

                <div class="form-group">
                    <label  style="margin-left:593px" ><h1>¡Bienvenidos!</h1></label>
                </div>
           <br />
           <br />
           <br />
           <br />
           <br />

                <div style="margin-left:393px" class="form-group">
                    
                    <asp:Button class="btn btn-success btn-lg" runat="server" OnClick="Unnamed_Click" Text="nico"/>
                    <button type="submit" OnClick name='btnAdministrador' class="btn btn-success btn-lg">Administrador</button>
                    
                    <button style="margin-left:70px" type="submit" name='btnConserje'   class="btn btn-success btn-lg">Conserje</button>
                    
                    <button style="margin-left:70px" type="submit" name='btnResidente' class="btn btn-success btn-lg">Residente</button>
                    
                    <button style="margin-left:70px" type="submit" name='btnDirectiva'  class="btn btn-success btn-lg">Directiva</button>
                </div>
            </form>
</body>
</html>
