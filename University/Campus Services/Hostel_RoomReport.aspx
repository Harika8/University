<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hostel_RoomReport.aspx.cs" Inherits="University.Campus_Services.Hostel_RoomReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
        .auto-style2 {
            text-decoration: underline;
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Hostel Room Report</span><br />
        <br />
        <span class="auto-style1">From:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="130px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="132px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Room Number:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>select value</asp:ListItem>
            <asp:ListItem>101</asp:ListItem>
            <asp:ListItem>102</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Run Report" OnClick="Button1_Click" />
        <br />
&nbsp;</span></div>
        <asp:SqlDataSource ID="SqlTenant" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [tenent] WHERE [tuser_id] = @original_tuser_id AND [allocation_room_no] = @original_allocation_room_no" InsertCommand="INSERT INTO [tenent] ([tuser_id], [allocation_room_no]) VALUES (@tuser_id, @allocation_room_no)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tenent]" UpdateCommand="UPDATE [tenent] SET [allocation_room_no] = @allocation_room_no WHERE [tuser_id] = @original_tuser_id AND [allocation_room_no] = @original_allocation_room_no">
            <DeleteParameters>
                <asp:Parameter Name="original_tuser_id" Type="Int32" />
                <asp:Parameter Name="original_allocation_room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tuser_id" Type="Int32" />
                <asp:Parameter Name="allocation_room_no" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="allocation_room_no" Type="Int16" />
                <asp:Parameter Name="original_tuser_id" Type="Int32" />
                <asp:Parameter Name="original_allocation_room_no" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="Select * from room where availability between @availability1  and @availability2  and room_no=@room_no;">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="availability1" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="availability2" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList2" Name="room_no" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="room_no" DataSourceID="roomSource2">
            <Columns>
                <asp:BoundField DataField="room_no" HeaderText="room_no" ReadOnly="True" SortExpression="room_no" />
                <asp:BoundField DataField="room_type" HeaderText="room_type" SortExpression="room_type" />
                <asp:BoundField DataField="availability" HeaderText="availability" SortExpression="availability" />
                <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                <asp:BoundField DataField="duration_stay" HeaderText="duration_stay" SortExpression="duration_stay" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

