<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="University.UserRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js" type="text/javascript"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="LandingPage" />
    <meta name="author" content="Harika" />
    <title>Home | University DBMS Project</title>
    <%-- ------ CSS ------ --%>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/favicon.ico" />
</head>
<body>
    <form id="form2" runat="server">
    <header id="header">
    <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx">University</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li ><a href="Default.aspx">Home</a></li>
                        <li><a href="services.aspx">Registrar</a></li>
                        <li><a href="services.aspx">Academics</a></li>                        
                        <li><a href="contactus.aspx">Financial Aid</a></li> 
                        <li><a href="HR/HRDefault.aspx">HR</a></li>
                        <li><a href="services.aspx">Campus Services</a></li>  
                        <li class="active"><a href="UserRegistration.aspx">User Registration</a></li>                     
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
        <br />
        
        <asp:SqlDataSource ID="SqlUser_info" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionStringA %>" DeleteCommand="DELETE FROM [user_info] WHERE [user_id] = @original_user_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [date_of_birth] = @original_date_of_birth AND [gender] = @original_gender AND [email_id] = @original_email_id AND [contact_no] = @original_contact_no AND [nationality] = @original_nationality AND (([ssn] = @original_ssn) OR ([ssn] IS NULL AND @original_ssn IS NULL)) AND [address_line1] = @original_address_line1 AND (([address_line2] = @original_address_line2) OR ([address_line2] IS NULL AND @original_address_line2 IS NULL)) AND [city] = @original_city AND [state_of_res] = @original_state_of_res AND [zip_code] = @original_zip_code AND [country] = @original_country" InsertCommand="INSERT INTO [user_info] ([first_name], [last_name], [date_of_birth], [gender], [email_id], [contact_no], [nationality], [ssn], [address_line1], [address_line2], [city], [state_of_res], [zip_code], [country]) VALUES (@first_name, @last_name, @date_of_birth, @gender, @email_id, @contact_no, @nationality, @ssn, @address_line1, @address_line2, @city, @state_of_res, @zip_code, @country)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [user_info]" UpdateCommand="UPDATE [user_info] SET [first_name] = @first_name, [last_name] = @last_name, [date_of_birth] = @date_of_birth, [gender] = @gender, [email_id] = @email_id, [contact_no] = @contact_no, [nationality] = @nationality, [ssn] = @ssn, [address_line1] = @address_line1, [address_line2] = @address_line2, [city] = @city, [state_of_res] = @state_of_res, [zip_code] = @zip_code, [country] = @country WHERE [user_id] = @original_user_id AND [first_name] = @original_first_name AND [last_name] = @original_last_name AND [date_of_birth] = @original_date_of_birth AND [gender] = @original_gender AND [email_id] = @original_email_id AND [contact_no] = @original_contact_no AND [nationality] = @original_nationality AND (([ssn] = @original_ssn) OR ([ssn] IS NULL AND @original_ssn IS NULL)) AND [address_line1] = @original_address_line1 AND (([address_line2] = @original_address_line2) OR ([address_line2] IS NULL AND @original_address_line2 IS NULL)) AND [city] = @original_city AND [state_of_res] = @original_state_of_res AND [zip_code] = @original_zip_code AND [country] = @original_country">
            <DeleteParameters>
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_date_of_birth" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_email_id" Type="String" />
                <asp:Parameter Name="original_contact_no" Type="String" />
                <asp:Parameter Name="original_nationality" Type="String" />
                <asp:Parameter Name="original_ssn" Type="Int32" />
                <asp:Parameter Name="original_address_line1" Type="String" />
                <asp:Parameter Name="original_address_line2" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state_of_res" Type="String" />
                <asp:Parameter Name="original_zip_code" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="date_of_birth" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="ssn" Type="Int32" />
                <asp:Parameter Name="address_line1" Type="String" />
                <asp:Parameter Name="address_line2" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state_of_res" Type="String" />
                <asp:Parameter Name="zip_code" Type="String" />
                <asp:Parameter Name="country" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="date_of_birth" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="contact_no" Type="String" />
                <asp:Parameter Name="nationality" Type="String" />
                <asp:Parameter Name="ssn" Type="Int32" />
                <asp:Parameter Name="address_line1" Type="String" />
                <asp:Parameter Name="address_line2" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state_of_res" Type="String" />
                <asp:Parameter Name="zip_code" Type="String" />
                <asp:Parameter Name="country" Type="String" />
                <asp:Parameter Name="original_user_id" Type="Int32" />
                <asp:Parameter Name="original_first_name" Type="String" />
                <asp:Parameter Name="original_last_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_date_of_birth" />
                <asp:Parameter Name="original_gender" Type="String" />
                <asp:Parameter Name="original_email_id" Type="String" />
                <asp:Parameter Name="original_contact_no" Type="String" />
                <asp:Parameter Name="original_nationality" Type="String" />
                <asp:Parameter Name="original_ssn" Type="Int32" />
                <asp:Parameter Name="original_address_line1" Type="String" />
                <asp:Parameter Name="original_address_line2" Type="String" />
                <asp:Parameter Name="original_city" Type="String" />
                <asp:Parameter Name="original_state_of_res" Type="String" />
                <asp:Parameter Name="original_zip_code" Type="String" />
                <asp:Parameter Name="original_country" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    <div style="margin-top:100px;" align="center">
         User Registration Form
        <br /> <br />
         <br />
     </div>
        <div style="margin-left: 100px">
        <asp:Panel ID="PaneladdUser" runat="server">
&nbsp; &nbsp;       <asp:Label ID="lblFirstName" runat="server" Width="150" Text="First Name"></asp:Label>
        <asp:TextBox ID="txtFirstName" Width="250" runat="server"></asp:TextBox>
        &nbsp&nbsp;       
        <asp:Label ID="lblLastName" Width="81px" runat="server" Text="Last Name" style="margin-left: 55px"></asp:Label>
        <asp:TextBox ID="txtLastName" Width="150" runat="server"></asp:TextBox>
        <br /> 
            <br />
            &nbsp; &nbsp; <asp:Label ID="lblDOB" runat="server" Width="150" Text="Date of Birth"></asp:Label> &nbsp;

        <asp:TextBox ID="txtDob" ReadOnly="false" Width="150" runat="server"></asp:TextBox>&nbsp;
        <asp:ImageButton ID="calimgDOB" runat="server" height="30px" ImageUrl="~/images/calender.png" OnClick="calimgDOB_Click" Width="25px" />
        &nbsp; &nbsp;<asp:Panel ID="calpanel" runat="server" Visible="false">
          &nbsp; &nbsp;&nbsp; &nbsp;<asp:Calendar ID="calDOB" runat="server" OnSelectionChanged="calDateofBirth_SelectionChanged"></asp:Calendar>
           
          <br />
          </asp:Panel>
          <br />
            <br />
            
                    
&nbsp; &nbsp;   <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>            
&nbsp; &nbsp;   <asp:RadioButtonList ID="gender"  runat="server" >
               <asp:ListItem Selected="True"  Value="M">Male</asp:ListItem>
                <asp:ListItem Value="F" >Female</asp:ListItem>
            </asp:RadioButtonList>
            <br />
&nbsp; &nbsp;      <asp:Label ID="lblEmail" runat="server" Text="Email Id :"></asp:Label>                 
      <asp:TextBox ID="txtEmail" runat="server" Width="208px"></asp:TextBox>
            <br />
            <br />
&nbsp; &nbsp; <asp:Label ID="lblContactNo" runat="server" Text="Contact No:"></asp:Label>
            <asp:TextBox ID="txtContactno" runat="server" Width="151px"></asp:TextBox>
            <br />
            <br />
&nbsp; &nbsp;        <asp:Label ID="lblNationality" runat="server" Text="Nationality "></asp:Label>
         <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp; &nbsp;        <asp:Label ID="lblSSN" runat="server" Text="social security number:"></asp:Label>                 
      <asp:TextBox ID="txtSSN" runat="server" Width="208px"></asp:TextBox>
            <br />
            <br />
&nbsp; &nbsp;         <asp:Label ID="lblAddressLine1" runat="server" Text="Address Line1:"></asp:Label>
         <asp:TextBox ID="txtAddressLine1" runat="server"></asp:TextBox>
            <br />
            '<br />
&nbsp; &nbsp;        <asp:Label ID="lblAddressLine2" runat="server" Text="Address Line2:"></asp:Label>
         <asp:TextBox ID="txtAddressLine2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp; &nbsp;        <asp:Label ID="lblcity" runat="server" Text="City :"></asp:Label>
         <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br />
            <br />
 &nbsp; &nbsp;        <asp:Label ID="lblState" runat="server" Text="State of Residence :"></asp:Label>
         <asp:TextBox ID="txtState" runat="server"></asp:TextBox>  
            <br />
            <br />
&nbsp; &nbsp;          <asp:Label ID="lblZipcode" runat="server" Text="Zip Code :"></asp:Label>
           <asp:TextBox ID="txtZipcode" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp; &nbsp;           <asp:Label ID="lblCountry" runat="server" Text="Country :"></asp:Label>
            <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
            <br />
            <br />
             <div style="margin-top:100px;" align="center">
              <asp:Button ID="btnSaveUser" runat="server" Text="Save" OnClick="btnSaveUser_Click"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancelUser" runat="server"  OnClick="btnCancelUser_Click" Text="Cancel" />
              </div>
            </asp:Panel>
            </div>
       
    </form>
</body>
</html>
