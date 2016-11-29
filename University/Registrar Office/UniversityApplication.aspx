<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UniversityApplication.aspx.cs" Inherits="University.Registrar_Office.UniversityApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <iframe src="RegistrarHome.aspx" onload="this.width=screen.width;"> 
         <p>Your browser does not support iframes.</p>
    </iframe>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Application For University"></asp:Label>
        <br />
        (Please Fill out the Application form carefully)<br />
        <br />
         SUserID:&nbsp;
        <asp:TextBox ID="TextBox35" runat="server" Width="184px"></asp:TextBox>
         <br />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Course Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Degree Applying"></asp:Label>
        :<br />
        <br />
        <asp:RadioButton ID="RadioButton3" runat="server" Text="Under-Graduate" />
        <br />
        <asp:RadioButton ID="RadioButton4" runat="server" Text="Graduate" />
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Major field of Study"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Width="132px">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Education Background"></asp:Label>
        <br />
        (List your previous schools beginning with the most recent)<br />
        <br />
        <asp:Label ID="Label16" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox16" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label17" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox17" runat="server" Width="80px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label18" runat="server" Font-Size="Large" Text="Graduated"></asp:Label>
        <br />
        <br />
        <asp:RadioButton ID="RadioButton5" runat="server" Text="Yes" />
        <br />
        <asp:RadioButton ID="RadioButton6" runat="server" Text="No" />
        <br />
        <br />
&nbsp;<asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Graduated Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label22" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox20" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox21" runat="server" Width="65px"></asp:TextBox>
         <br />
        <br />
         <asp:Label ID="Label49" runat="server" Font-Size="Large" Text="Graduated Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label50" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;&nbsp;
         &nbsp;
        <br />
        <br />
&nbsp;&nbsp;
        <br />
    
    </div>
    <div>
    
        <br />
        <asp:Label ID="Label30" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox24" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label31" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox25" runat="server" Width="64px"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Label ID="Label33" runat="server" Font-Size="Large" Text="Graduated year"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label34" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
&nbsp;<br />
        <br />
        <asp:Label ID="Label37" runat="server" Font-Size="X-Large" Text="GRE Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label38" runat="server" Font-Size="Large" Text="GRE Score Combined"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox28" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label39" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label40" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label41" runat="server" Font-Size="X-Large" Text="TOEFL Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label42" runat="server" Font-Size="Large" Text="TOEFL Score"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox30" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label43" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label44" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label45" runat="server" Font-Size="X-Large" Text="IELTS Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label46" runat="server" Font-Size="Large" Text="IELTS Score"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox32" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label47" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label48" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Size="Large" Height="48px" Text="Submit" Width="157px" />
        <br />
    
    
    </div>
    </form>
</body>
</html>
