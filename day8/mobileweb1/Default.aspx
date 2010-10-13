<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Devry Mobile CIS 407</title>
    <script  type="text/javascript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="reui.js"></script>   
    <script type="text/javascript" src="rml.js"></script>  
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
       <script type="text/javascript">
            function LoadProducts(xSupplier, xCategory) {
            var lis = "";
            var divs = "";
            var url = "products.aspx?"
            if (xSupplier.length > 0) {
                url += "supplier=" + xSupplier; 
            }
            if (xCategory.length > 0) {
                url += "category=" + xCategory;
            }

            $.getJSON(url,
             function (data) {
                 $.each(data.products, function (key, value) {
                    
                     //need to get some rml in here to load up my LIs...
                     lis += RML.li({ content: RML.a({ href: "#prod" + value.id, content: value.Description, _class: "prodahref" }) });
                     divs += RML.div({ id: "prod" + value.id, title: value.Description, content: "Loading..." });
                 });
                 $("#products").html(lis);
                 $('body').append(divs);
                 $(".prodahref").each(function (key) {
                     $(this).bind("click", function () {
                         LoadProduct(this.text);
                     }
                     );
                 });
             });
         }
         function LoadProduct(xProductId) {
             var lis = "";
             var divs = "";
             var url = "product.aspx?productid=" + xProductId;

//             $.getJSON(url,
//             function (data) {
//                 $.each(data.products, function (key, value) {
//                     //need to get some rml in here to load up my LIs...
//                     lis += RML.li({ content: RML.a({ href: "#prod" + value.product, content: value.product, _class: "prodahref" }) });
//                     divs += RML.div({ id: "#prod" + value.product, title: value.product, content: "Loading..." });
//                 });
//                 $("#products").html(lis);
//                 //                 $('body').append(uls);
//                 $(".prodahref").each(function (key) {
//                     $(this).bind("click", function () {
//                         LoadProduct(this.text);
//                     }
//                     );
//                 });
//             });
      }
       </script>
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
            <li><a href="#products" onclick="LoadProducts('','<%# DataBinder.Eval(Container.DataItem, "CategoryId")%>')"><%# DataBinder.Eval(Container.DataItem, "CategoryName")%></a></li>
        </ItemTemplate>
    </asp:Repeater>
    </ul>
    <ul id="supplier" title="Supplier">
    <asp:Repeater ID="rptSupplier" runat="server">
        <ItemTemplate>
            <li><a href="#products"><%# DataBinder.Eval(Container.DataItem, "CompanyName")%></a></li>
        </ItemTemplate>
    </asp:Repeater>
    </ul>

    <ul  id="products" title="Products">
        <li>Please wait. Loading...</li>
    </ul>
   

</body>
</html>
