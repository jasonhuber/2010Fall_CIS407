<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtName" ErrorMessage="You must enter a name">*</asp:RequiredFieldValidator>
    <br />
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator
        ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmail" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email address was malformed</asp:RegularExpressionValidator>
    
    <br />
    
    <asp:Button ID="cmdSubmit" runat="server" Text="Click Me!" />
    
    </div>
    </form>
</body>
</html>
