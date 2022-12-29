<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task3.aspx.cs" Inherits="WebApplication1.task3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>User Name </label><br>
            <asp:TextBox ID="username" runat="server"></asp:TextBox><br>
             <label>password</label><br>
            <asp:TextBox ID="password" runat="server"></asp:TextBox><br>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" /><br>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
           
        </div>
    </form>
</body>
</html>
