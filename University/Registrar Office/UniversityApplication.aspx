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
        <asp:DropDownList ID="SuseridDropDown" runat="server" Width="132px" DataSourceID="SqlSuserId" DataTextField="user_id" DataValueField="user_id">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
         <asp:SqlDataSource ID="SqlSuserId" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [user_info]"></asp:SqlDataSource>
         <br />
        <br />
        <asp:Label ID="Label12" runat="server" Font-Size="X-Large" Text="Course Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Degree Applying"></asp:Label>
        :<br />
         <asp:RadioButtonList ID="DegreeRadioButton" runat="server">
             <asp:ListItem>Graduate</asp:ListItem>
             <asp:ListItem>UnderGraduate</asp:ListItem>
         </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Major field of Study"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="MajorDropDown" runat="server" Width="132px" DataSourceID="SqlMajor" DataTextField="program_name" DataValueField="program_id">
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
         <asp:SqlDataSource ID="SqlMajor" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [program]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Label ID="Label15" runat="server" Font-Size="X-Large" Text="Education Background"></asp:Label>
        <br />
        (List your previous schools beginning with the most recent)<br />
        <br />
        <asp:Label ID="Label16" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="Schoolname1TextBox" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label17" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="GPA1TextBox" runat="server" Width="80px"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Label ID="Label21" runat="server" Font-Size="Large" Text="Graduated Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="Graddate1TextBox" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label22" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label23" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="Schoolname2TextBox" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="GPA2TextBox" runat="server" Width="65px"></asp:TextBox>
         <br />
        <br />
         <asp:Label ID="Label49" runat="server" Font-Size="Large" Text="Graduated Year"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="Graddate2TextBox" runat="server"></asp:TextBox>
&nbsp;YYYY<br />
        <br />
&nbsp;&nbsp;
        <br />
    
    </div>
    <div>
    
        <br />
        <asp:Label ID="Label30" runat="server" Font-Size="Large" Text="School name"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="Schoolname3TextBox" runat="server" Width="354px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label31" runat="server" Font-Size="Large" Text="GPA"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="GPA3TextBox" runat="server" Width="64px"></asp:TextBox>
        <br />
        <br />
&nbsp;<asp:Label ID="Label33" runat="server" Font-Size="Large" Text="Graduated year"></asp:Label>
        :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Graddate3TextBox" runat="server"></asp:TextBox>
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
        <asp:TextBox ID="GRETextBox" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label39" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="GDATETextBox" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label51" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label41" runat="server" Font-Size="X-Large" Text="TOEFL Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label42" runat="server" Font-Size="Large" Text="TOEFL Score"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TOEFLTextBox" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label43" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="TDATETextBox" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label52" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;
        <br />
        <br />
        <asp:Label ID="Label45" runat="server" Font-Size="X-Large" Text="IELTS Information"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label46" runat="server" Font-Size="Large" Text="IELTS Score"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="IELTSTextBox" runat="server" Width="102px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label47" runat="server" Font-Size="Large" Text="Test Date"></asp:Label>
        :&nbsp;
        <asp:TextBox ID="IDATETextBox" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label53" runat="server" Text="YYYY-MM-DD"></asp:Label>
&nbsp;<br />
        Application Status:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Submit</asp:ListItem>
            <asp:ListItem>Save for later</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlStudentAppli" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [student_application] WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL)) AND [admission_status] = @original_admission_status" InsertCommand="INSERT INTO [student_application] ([suser_id], [degree], [major], [gre_score], [gre_test_date], [ielts_score], [ielts_test_date], [toefl], [toefl_test_date], [admission_status]) VALUES (@suser_id, @degree, @major, @gre_score, @gre_test_date, @ielts_score, @ielts_test_date, @toefl, @toefl_test_date, @admission_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [student_application]" UpdateCommand="UPDATE [student_application] SET [suser_id] = @suser_id, [degree] = @degree, [major] = @major, [gre_score] = @gre_score, [gre_test_date] = @gre_test_date, [ielts_score] = @ielts_score, [ielts_test_date] = @ielts_test_date, [toefl] = @toefl, [toefl_test_date] = @toefl_test_date, [admission_status] = @admission_status WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL)) AND [admission_status] = @original_admission_status">
            <DeleteParameters>
                <asp:Parameter Name="original_application_id" Type="Int16" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_gre_test_date" />
                <asp:Parameter Name="original_ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_ielts_test_date" />
                <asp:Parameter Name="original_toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_toefl_test_date" />
                <asp:Parameter Name="original_admission_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="gre_test_date" />
                <asp:Parameter Name="ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ielts_test_date" />
                <asp:Parameter Name="toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="toefl_test_date" />
                <asp:Parameter Name="admission_status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="gre_test_date" />
                <asp:Parameter Name="ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ielts_test_date" />
                <asp:Parameter Name="toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="toefl_test_date" />
                <asp:Parameter Name="admission_status" Type="String" />
                <asp:Parameter Name="original_application_id" Type="Int16" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_gre_test_date" />
                <asp:Parameter Name="original_ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_ielts_test_date" />
                <asp:Parameter Name="original_toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_toefl_test_date" />
                <asp:Parameter Name="original_admission_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlEdu" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [education_history] WHERE [user_id] = @original_user_id AND [school_name] = @original_school_name AND [degree] = @original_degree AND [major] = @original_major AND [gpa] = @original_gpa AND [graduated_year] = @original_graduated_year" InsertCommand="INSERT INTO [education_history] ([user_id], [school_name], [degree], [major], [gpa], [graduated_year]) VALUES (@user_id, @school_name, @degree, @major, @gpa, @graduated_year)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [education_history]" UpdateCommand="UPDATE [education_history] SET [degree] = @degree, [major] = @major, [gpa] = @gpa, [graduated_year] = @graduated_year WHERE [user_id] = @original_user_id AND [school_name] = @original_school_name AND [degree] = @original_degree AND [major] = @original_major AND [gpa] = @original_gpa AND [graduated_year] = @original_graduated_year">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_school_name" Type="String" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gpa" Type="Decimal" />
                <asp:Parameter Name="original_graduated_year" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="school_name" Type="String" />
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gpa" Type="Decimal" />
                <asp:Parameter Name="graduated_year" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gpa" Type="Decimal" />
                <asp:Parameter Name="graduated_year" Type="Int16" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_school_name" Type="String" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gpa" Type="Decimal" />
                <asp:Parameter Name="original_graduated_year" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="SubButton" runat="server" Font-Size="Large" Height="48px" Text="Submit" Width="157px" OnClick="SubButton_Click" />
        <br />
    
    
    </div>
    </form>
</body>
</html>
