<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="Login" %>
<div>
Username: <asp:textbox ID="txtUsername" runat="server"></asp:textbox> <br />
Password: <asp:textbox ID="txtPass" runat="server"></asp:textbox><br />
<asp:button ID="cmdLogon" runat="server" text="logon"></asp:button>
</div>