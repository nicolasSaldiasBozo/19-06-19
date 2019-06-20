<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginR.aspx.cs" Inherits="_0PaginaDeInicio_LoginR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div class="container" id="registration-form">
        <div class="image"></div>
        <div class="frm">
            <h1>Sign up</h1>

              <form action="/0PaginaDeInicio/Inicio.aspx" method="post">
              
  
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Ingrese email">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="Ingrese password">
                </div>
                <div class="form-group">

                    <button type="submit"  class="btn btn-success btn-lg">Submit</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
