<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="dbreader._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        A DB Reader
    </h2>
  Connection:  <asp:TextBox ID="txtConnString" runat="server"></asp:TextBox><br />
  SQL:  <asp:TextBox ID="txtSQL" runat="server"></asp:TextBox><br />
  <asp:Button ID="btnGo" runat="server" text="Go!" onclick="btnGo_Click" /><br />
  Results:  <asp:TextBox ID="txtresults" runat="server" Rows="20" 
        TextMode="MultiLine" Height="112px" Width="542px"></asp:TextBox><br />
</asp:Content>
