<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="authorization.aspx.cs" Inherits="WebApplication5.Models.authorization" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="../Content/bootstrap.js"></script>
    <script src="../Content/jquery-1.10.2.min.js"></script>
    <script src="../Content/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/1.css" rel="stylesheet" />
    <link href="../Content/auth.css" rel="stylesheet" />
</head>
<body>
    <div runat="server" id="msg">

    </div>

    <div id="bg">
        <form class="form-horizontal" runat="server" id="form">
            <div class="form-group">
              <label for="inputLogin" class="col-xs-3 control-label">Login</label>
              <div class="col-xs-9">
                <asp:TextBox type="login" CssClass="form-control bgtextbox" id="inputLogin" placeholder="Login" runat="server"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <label for="inputPassword" class="col-xs-3 control-label">Пароль</label>
              <div class="col-xs-9">
                <asp:TextBox type="password" CssClass="form-control bgtextbox" id="inputPassword" placeholder="Password" runat="server"></asp:TextBox>
              </div>
            </div>
            
            <div class="form-group">
                <div class="col-xs-3"></div>
              <div class="col-xs-9">
                <asp:Button type="submit" CssClass="btn btn-default bgtextbox" runat="server" Text="Увійти"></asp:Button>
              </div>

            </div>
        </form>
    </div>

    
</body>
</html>
