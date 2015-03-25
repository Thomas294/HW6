<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_simpleRecipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [TGLAVAN_HW6] WHERE [RID] = @RID" InsertCommand="INSERT INTO [TGLAVAN_HW6] ([Recipe Name], [Submited By], [Ingredient #1], [Ingredient #2], [Ingredient #3], [Ingredient #4], [Ingredient #5], [Preperation], [Notes]) VALUES (@Recipe_Name, @Submited_By, @column1, @column2, @column3, @column4, @column5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [TGLAVAN_HW6]" UpdateCommand="UPDATE [TGLAVAN_HW6] SET [Recipe Name] = @Recipe_Name, [Submited By] = @Submited_By, [Ingredient #1] = @column1, [Ingredient #2] = @column2, [Ingredient #3] = @column3, [Ingredient #4] = @column4, [Ingredient #5] = @column5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [RID] = @RID">
            <DeleteParameters>
                <asp:Parameter Name="RID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submited_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submited_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Preperation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="RID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="RID" DataSourceID="sql_simpleRecipes" PageSize="7">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Recipe Name" HeaderText="Recipe Name" SortExpression="Recipe Name" />
                <asp:BoundField DataField="Submited By" HeaderText="Submited By" SortExpression="Submited By" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
