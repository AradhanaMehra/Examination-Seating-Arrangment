<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>
<!DOCTYPE html>
<link rel="stylesheet" href="StyleSheet.css" type="text/css" />
<link rel="stylesheet" href="StyleSheet3.css" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

</script>
</head>
<body style="color: #FFFAF0; font-size: 40px;">
    
    <header>
    	<p>Quick Seat</p>
    </header>
        <nav>
<div id="mySidenav" class="sidenav">
    
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">Homepage</a>
  <a href="#">Classrooms</a>
  <a href="#">Courses</a>
  <a href="#">Subjects</a>
</div>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
</nav>
    <form runat="server">
  
        <div class="box">
            <div class="content">
                <h1>Sign Up </h1>
                
                <h3>Sign Up in order to create a new institution</h3>
                
                <asp:TextBox  ID="textBox1" class="field" placeholder="Name Of institute" runat="server" ></asp:TextBox>
                <asp:requiredfieldvalidator id="NameRequired" runat="server" controltovalidate="textBox1" errormessage="User Name is required." tooltip="User Name is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
               
                <asp:TextBox ID="textBox2" class="field" placeholder="Password"  runat="server" textmode="Password"></asp:TextBox>
                <asp:requiredfieldvalidator id="PasswordRequired" runat="server" controltovalidate="textBox2" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                
                <asp:TextBox ID="textBox3" class="field" placeholder="Re-Enter Password"  runat="server" textmode="Password"></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" controltovalidate="textBox3" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                 <asp:TextBox ID="textBox4" class="field" placeholder="Admin Name"  runat="server" ></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" controltovalidate="textBox4" errormessage="Admin Name is required." tooltip="Admin Name is required." validationgroup="Login1">*</asp:requiredfieldvalidator>

                <asp:TextBox ID="textBox7" class="field" placeholder="Username"  runat="server" ></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator5" runat="server" controltovalidate="textBox7" errormessage="Username is required." tooltip="Username is required." validationgroup="Login1">*</asp:requiredfieldvalidator>

                <asp:TextBox ID="textBox5" class="field" placeholder="Admin E-mail ID"  runat="server" ></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator3" runat="server" controltovalidate="textBox5" errormessage="Email is required." tooltip="Email is required." validationgroup="Login1">*</asp:requiredfieldvalidator>

                <asp:TextBox ID="textBox6" class="field" placeholder="Admin Password"  runat="server" textmode="Password"></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator4" runat="server" controltovalidate="textBox6" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                
                <asp:button class="btn" id="SignUpButton" runat="server" commandname="Login" text="Sign Up" validationgroup="Login1" OnClick="Check_SignUp" ></asp:button>
               
                <asp:Label ID="Label1" runat="server" CssClass="lbl1"></asp:Label>
                <asp:literal id="FailureText" runat="server" enableviewstate="False"></asp:literal></div>
            <asp:CompareValidator id="comparePasswords"
           runat="server"
           ControlToCompare="TextBox2"
           ControlToValidate="TextBox3"
           ErrorMessage="Your passwords do not match up!"
                    ValidationGroup="Login1" />
            <asp:RegularExpressionValidator ID="rgeEmailId" runat="server"
            ControlToValidate="textBox5" 
            ErrorMessage="Please enter valid email id format" 
            SetFocusOnError="True"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" validationgroup="Login1"></asp:RegularExpressionValidator>
        </div>
        <div class="box">
            <div class="content">
                
                 
            <h1> Creating arrangements? Log in with the username and password of your institution to create arrangements</h1>
           
            <asp:button class="btn" id="Button1" runat="server" commandname="Login" text="Log In"  PostBackUrl="~/Login.aspx"></asp:button>
                <br>
                <h1>Log in as Admin of your institution to add resources and modify them </h1>
                 <asp:button class="btn" id="Button2" runat="server" commandname="Login" text="Log In as Admin" ></asp:button>
                <br>
                </div>
            </div>
  
        </form>
    <br />


    </body>
</html>
