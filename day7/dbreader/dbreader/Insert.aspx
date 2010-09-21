<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="dbreader.Insert" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Desired Username: <asp:TextBox ID="txtID" runat="server"></asp:TextBox><br />
        First Name: <asp:TextBox ID="txtFName" runat="server"></asp:TextBox><br />
        Last Name: <asp:TextBox ID="txtLName" runat="server"></asp:TextBox><br />
        Password: <asp:TextBox ID="txtPassWD" runat="server"></asp:TextBox><br />
        Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
        <asp:Button runat="server" ID="cmdSubmit" Text="Sign up!" 
            onclick="cmdSubmit_Click" />
<hr />

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            AutoGenerateEditButton="True" DataKeyNames="customerid" 
            DataSourceID="AccessDataSource1" ViewStateMode="Disabled" 
            EnableViewState="False">
            <Columns>
                <asp:BoundField DataField="customerid" HeaderText="customerid" ReadOnly="True" 
                    SortExpression="customerid" />
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="lname" SortExpression="lname" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="password" HeaderText="password" 
                    SortExpression="password" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Shoes.mdb" 
            DeleteCommand="DELETE FROM [Customers] WHERE (([customerid] = ?) OR ([customerid] IS NULL AND ? IS NULL))" 
            InsertCommand="INSERT INTO [Customers] ([customerid], [fname], [lname], [email], [password]) VALUES (?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [Customers]" 
            UpdateCommand="UPDATE [Customers] SET [fname] = ?, [lname] = ?, [email] = ?, [password] = ? WHERE (([customerid] = ?) OR ([customerid] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="customerid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="customerid" Type="String" />
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="lname" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="[password]" Type="String" />
                <asp:Parameter Name="customerid" Type="String" />
            </UpdateParameters>
        </asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
