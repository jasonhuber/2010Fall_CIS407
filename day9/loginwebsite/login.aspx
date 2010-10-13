<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Username: <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
    Password: <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox><br />
    <asp:button ID="cmdSubmit" runat="server" Text="Logon" onclick="cmdSubmit_Click"></asp:button><br />
    </div>
    </form>
</body>
</html>
