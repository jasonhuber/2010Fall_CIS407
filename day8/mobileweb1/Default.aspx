<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Devry Mobile CIS 407</title>
    <script src="reui.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="themes/iui/iui.css" />
    <link rel="stylesheet" type="text/css" href="themes/iui/default/default-theme.css" />
     <link rel="apple-touch-icon" href="apple-touch-icon.png" />

    <meta name="apple-mobile-web-app-capable" content="YES" />
    <meta name="apple-touch-fullscreen" content="YES" />
    <meta name="viewport" content="width=device-width" />

    <style type="text/css">
    ul 
    {
    	background: white;
    }
    body
    {
    	background: #eee;
    }
    body > :not(.toolbar)
    {
    	min-height: 0;
    }
    body[orient="landscape"] > :not(.toolbar)
    {
    	min-height: 0;
    }
    * 
    {
    	-webkit-transition-duration: .5s;
    	-webkit-transition-property: none;
    }
    </style>

</head>
<body>

    <div class="toolbar">
    <h1 id="pageTitle"></h1>
    <a id="backButton" class="button" href="#"></a>
    </div>

    <ul id="selections" selected="true" title="Select One">
        <li><a href="#category">By Category</a></li>
        <li><a href="#supplier">By Supplier</a></li>
    </ul>
    <ul id="category" title="Category">
    <asp:Repeater ID="rptCategory" runat="server">
        <ItemTemplate>
            <li><a href="#cat<%# DataBinder.Eval(Container.DataItem,"CategoryID") %>"><%# DataBinder.Eval(Container.DataItem, "CategoryName")%></a></li>
        </ItemTemplate>
    </asp:Repeater>
    </ul>
    <ul id="supplier" title="Supplier">
    <asp:Repeater ID="rptSupplier" runat="server">
        <ItemTemplate>
            <li><a href="#cat<%# DataBinder.Eval(Container.DataItem,"supplierID") %>"><%# DataBinder.Eval(Container.DataItem, "CompanyName")%></a></li>
        </ItemTemplate>
    </asp:Repeater>
    </ul>
   

</body>
</html>
