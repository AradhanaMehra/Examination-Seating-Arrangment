<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
                <h1>LOG IN </h1>
                
                <h3>Log in with the username and password of your institution to create arrangements </h3>
                
                <asp:TextBox  ID="txtBox1" class="field" placeholder="Username" runat="server" ></asp:TextBox>
                <asp:requiredfieldvalidator id="UserNameRequired" runat="server" controltovalidate="txtBox1" errormessage="User Name is required." tooltip="User Name is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
               
                <asp:TextBox ID="txtBox2" class="field" placeholder="Password"  runat="server" textmode="Password"></asp:TextBox>
                <asp:requiredfieldvalidator id="PasswordRequired" runat="server" controltovalidate="txtBox2" errormessage="Password is required." tooltip="Password is required." validationgroup="Login1">*</asp:requiredfieldvalidator>
                
                 <asp:TextBox ID="txtBox3" class="field" placeholder="Name Of Institute"  runat="server" ></asp:TextBox>
                <asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" controltovalidate="txtBox2" errormessage="Name is required." tooltip="Name is required." validationgroup="Login1">*</asp:requiredfieldvalidator>

                <asp:button class="btn" id="LoginButton" runat="server" commandname="Login" text="Log In" validationgroup="Login1"  OnClick="Check_Login"></asp:button>
                <asp:button class="btn" id="Forgot1" runat="server" commandname="Forgot" text="Forgot Password?"></asp:button>
                <asp:Label ID="Label1" runat="server" CssClass="lbl1" ></asp:Label>
                <asp:literal id="FailureText" runat="server" enableviewstate="False"></asp:literal></div>
        </div>
        <div class="box">
            <div class="content">
                
            <h1>Log In as admin into your institution in order to create resources and modify them </h1>
           
            <asp:button class="btn" id="Button1" runat="server" commandname="Login" text="Log In as Admin" PostBackUrl="~/AdminLogin.aspx"></asp:button>
                <br>
                <h1>Sign Up in order to create a new institution</h1>
                 <asp:button class="btn" id="Button2" runat="server" commandname="Login" text="Sign Up" PostBackUrl="~/SignUp.aspx" ></asp:button>
                <br>
                </div>
            </div>
  
        </form>
    <br />


    </body>
</html>
