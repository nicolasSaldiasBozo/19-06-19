<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginD.aspx.cs" Inherits="_0PaginaDeInicio_LoginD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Registration Form</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/> 
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</head>
<body>
      <div class="container" id="registration-form">
       <div class="image"></div>
        <div class="frm">
            <h1>Residente</h1>
              <form  runat="server">

                <div class="form-group">
                    <label for="email">Email:</label>
                     <asp:TextBox ID="txtCorreo" class="form-control"  placeholder="Ingrese correo" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                     <asp:TextBox ID="txtPass" type="password" class="form-control"  placeholder="Ingrese contraseña" runat="server"></asp:TextBox>
                  </div>
                <div class="form-group"  >
                    <asp:Button  class="btn btn-success btn-lg" runat="server" OnClick="btnIngrasar" Text="Entrar" Width="317px"/>     
                </div>

                   <div class="form-group"  >
                    <asp:Button ID="btnVolver" runat="server" Text="Volver" class="btn btn-success btn-lg" BackColor="#009999" Width="317px" />
                </div>

                
            </form>
        </div>
    </div>
</body>
</html>
