<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="請輸入花費日期"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="確定" />
        <p>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            ***記帳網頁APP***</p>
        <p>
            新增花費</p>
        <p>
            -----------------------------------------------------</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="*請輸入花費的名稱: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="*請輸入花費的日期: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="*請輸入花費的金額: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            -----------------------------------------------------</p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="請輸入修改的金額:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            -----------------------------------------------------<asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" Text="新增" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="修改" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="刪除" OnClick="Button4_Click" />
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
        </p>
    </form>
</body>
</html>
