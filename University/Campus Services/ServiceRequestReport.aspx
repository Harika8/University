<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceRequestReport.aspx.cs" Inherits="University.Campus_Services.Service_RequestReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Service Request Report</span><br />
        <br />
        <br />
        </strong>From<strong> :&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label1" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>To<strong> :&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        </strong>Service Type :
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Electricity</asp:ListItem>
            <asp:ListItem>Plumbing</asp:ListItem>
        </asp:DropDownList>
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp;<strong><br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="Select * from service where service_req_date between @service_req_date1 and @service_req_date2  and service_type=@service_type;">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox4" Name="service_req_date1" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox5" Name="service_req_date2" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="service_type" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="service_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="service_id" HeaderText="service_id" InsertVisible="False" ReadOnly="True" SortExpression="service_id" />
                <asp:BoundField DataField="room_no" HeaderText="room_no" SortExpression="room_no" />
                <asp:BoundField DataField="service_type" HeaderText="service_type" SortExpression="service_type" />
                <asp:BoundField DataField="service_req_time" HeaderText="service_req_time" SortExpression="service_req_time" />
                <asp:BoundField DataField="service_req_date" HeaderText="service_req_date" SortExpression="service_req_date" />
                <asp:BoundField DataField="service_alloted_time" HeaderText="service_alloted_time" SortExpression="service_alloted_time" />
                <asp:BoundField DataField="service_alloted_date" HeaderText="service_alloted_date" SortExpression="service_alloted_date" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Run Report" OnClick="Button1_Click" />
        <br />
        </strong>
    
    </div>
    </form>
</body>
</html>

