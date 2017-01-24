<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebHome.aspx.cs" Inherits="WebApplication.WebHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" width="120px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" Display="Dynamic" ErrorMessage="Campo Obbligatorio" ForeColor="Red" ValidationGroup="Salva"></asp:RequiredFieldValidator>
        <br/>

        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:TextBox ID="txtCognome" runat="server" width="120px"/>
        <br/>

        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="0">Italia</asp:ListItem>
            <asp:ListItem Value="1">Francese</asp:ListItem>
        </asp:DropDownList>


        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nome" DataValueField="ID"></asp:DropDownList>





        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProvaDBConnectionString2 %>" SelectCommand="SELECT [Nome], [ID] FROM [TabellaProva]"></asp:SqlDataSource>

        <!--Sql parameter nel tag select-->
        
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.google.it">HyperLink</asp:HyperLink>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            </Columns>
        </asp:GridView>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" ValidationGroup="Salva" />

        <br/>
        
    </div>
        
    </form>
</body>
</html>
