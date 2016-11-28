<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Section Registration.aspx.cs" Inherits="University.Registrar_Office.Course_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label8" runat="server" Font-Size="XX-Large" Text="Course Application/Drop Form:"></asp:Label>
        <br />
        <br />
        Student ID: <asp:TextBox ID="TextBox19" runat="server" Width="398px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        Register/Drop:&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <br />
        Register/Drop:&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Semester:<br />
        <br />
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Spring" />
        <br />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="Maymester" />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Summer" />
        <br />
        <asp:RadioButton ID="RadioButton4" runat="server" Text="Long Summer" />
        <br />
        <asp:RadioButton ID="RadioButton5" runat="server" Text="Fall" />
        <br />
        <br />
        Year:&nbsp;
        <asp:TextBox ID="TextBox17" runat="server" Width="398px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        Courses:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>MIS</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Psychology</asp:ListItem>
            <asp:ListItem>Physics</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <br />
        <br />
        Courses:&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>MIS</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Psychology</asp:ListItem>
            <asp:ListItem>Physics</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <br />
        <br />
        AdditionaAdditional Comments:<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox18" runat="server" Height="119px" Width="320px"></asp:TextBox>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="41px" Text="Submit Application" Width="167px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Size="Medium" Height="40px" Text="Clear Fields" Width="183px" />
        <br />
    </div>
    </form>
</body>
</html>
