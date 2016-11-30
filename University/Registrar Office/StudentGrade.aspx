<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentGrade.aspx.cs" Inherits="University.Registrar_Office.Student_Grade_Form" %>

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
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Student Grade Report"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="suser_id,section_id" DataSourceID="GradeTBLDataSource" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="suser_id" HeaderText="suser_id" ReadOnly="True" SortExpression="suser_id" />
                <asp:BoundField DataField="section_id" HeaderText="section_id" ReadOnly="True" SortExpression="section_id" />
                <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="GradeTBLDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [grade] WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))" InsertCommand="INSERT INTO [grade] ([suser_id], [section_id], [grade]) VALUES (@suser_id, @section_id, @grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [suser_id], [section_id], [grade] FROM [grade] WHERE ([section_id] = @section_id)" UpdateCommand="UPDATE [grade] SET [grade] = @grade WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_grade" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="grade" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="SectionIDDDL" Name="section_id" PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_grade" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Section ID"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="SectionIDDDL" runat="server" Height="37px" Width="133px" DataSourceID="SectionIDsListDataSource" DataTextField="section_id" DataValueField="section_id" >
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SectionIDsListDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [section]"></asp:SqlDataSource>
        <br />
&nbsp;<asp:SqlDataSource ID="SqlGrade" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [grade] WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))" InsertCommand="INSERT INTO [grade] ([suser_id], [section_id], [grade]) VALUES (@suser_id, @section_id, @grade)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [grade]" UpdateCommand="UPDATE [grade] SET [grade] = @grade WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND (([grade] = @original_grade) OR ([grade] IS NULL AND @original_grade IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_grade" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="grade" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="grade" Type="String" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_grade" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Button ID="GradeButton" runat="server" OnClick="GradeButton_Click" Text="Submit" Width="83px" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    
        <br />
    
    </div>
    </form>
</body>
</html>
