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

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ProductID" DataSourceID="AccessDataSource2">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                SortExpression="ProductName" />
            <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" 
                SortExpression="SupplierID" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" 
                SortExpression="CategoryID" />
            <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" 
                SortExpression="QuantityPerUnit" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                SortExpression="UnitPrice" />
            <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" 
                SortExpression="UnitsInStock" />
            <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" 
                SortExpression="UnitsOnOrder" />
            <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" 
                SortExpression="ReorderLevel" />
            <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" 
                SortExpression="Discontinued" />
        </Columns>
    </asp:GridView>

    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/Northwind.mdb" SelectCommand="SELECT * FROM [Products]">
    </asp:AccessDataSource>

</asp:Content>
