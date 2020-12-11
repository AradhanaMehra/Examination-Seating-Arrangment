<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassroomDashboard.aspx.cs" Inherits="ClassroomDashboard" %>

<!DOCTYPE html>
<link rel="stylesheet" href="StyleSheet.css" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
       .block1 {
    display: block;
    width: 50%;
    height: 150px;
    border: none;
     background-color: #FFFAF0;
    color: #8D0000;
    padding: 14px 28px;
    font-size: 30px;
    cursor: pointer;
    text-align: center;
    float: left;

font-family:'Times New Roman', Times, serif;
}
  
   .block2 {
    display: block;
    width: 50%;
    height: 150px;
    border: none;
    background-color:#000000;
     color: white;
    padding: 14px 28px;
    font-size: 30px;
    cursor: pointer;
    text-align: center;
    float: left;
    font-family:'Times New Roman', Times, serif;
}

        .heading {
            border-radius: 4px;
            background-color: #FFFAF0;
            border: none;
            color: #8B0000;
            text-align: center;
            font-size: 28px;
            padding: 20px;
            width: 100%;
            transition: all 0.5s;
            cursor: pointer;
            margin: 5px;
            text-transform: uppercase;
            font-variant: small-caps;
        }
         .heading span {
        cursor: pointer;
        display: inline-block;
        position: relative;
        transition: 0.5s;
    }
         .heading span:after {
            content: '\00bb';
            position: absolute;
            opacity: 0;
            top: 0;
            right: -20px;
            transition: 0.5s;
        }
         .footer {
   
    background-color: #000000;
   width: 100%;
  position: relative;
  height: auto;
}

.footer .col {
  width: 190px;
  height: auto;
  float: left;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  padding: 0px 20px 20px 20px;
}
.footer .col h1 {
  margin: 0;
  padding: 0;
  font-family: inherit;
  font-size: 12px;
  line-height: 17px;
  padding: 20px 0px 5px 0px;
  color: rgba(255,255,255,0.2);
  font-weight: normal;
  text-transform: uppercase;
  letter-spacing: 0.250em;
}
.footer .col ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
.footer .col ul li {
  color: #999999;
  font-size: 14px;
  font-family: inherit;
  font-weight: bold;
  padding: 5px 0px 5px 0px;
  cursor: pointer;
  transition: .2s;
  -webkit-transition: .2s;
  -moz-transition: .2s;
}
.social ul li {
  display: inline-block;
  padding-right: 5px !important;
}

.footer .col ul li:hover {
  color: #ffffff;
  transition: .1s;
  -webkit-transition: .1s;
  -moz-transition: .1s;
}
.clearfix {
  clear: both;
}
@media only screen and (min-width: 1280px) {
  .contain {
    width: 1200px;
    margin: 0 auto;
  }
}
@media only screen and (max-width: 1139px) {
  .contain .social {
    width: 1000px;
    display: block;
  }
  .social h1 {
    margin: 0px;
  }
}
@media only screen and (max-width: 950px) {
  .footer .col {
    width: 33%;
  }
  .footer .col h1 {
    font-size: 14px;
  }
  .footer .col ul li {
    font-size: 13px;
  }
}
@media only screen and (max-width: 500px) {
    .footer .col {
      width: 50%;
    }
    .footer .col h1 {
      font-size: 14px;
    }
    .footer .col ul li {
      font-size: 13px;
    }
}
@media only screen and (max-width: 340px) {
  .footer .col {
    width: 100%;
  }
}



         
    </style>
</head>
    
<body style="color: #FFFAF0; font-size: 40px;">
    <form id="form1" runat="server">
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
        <h1 class="heading"><span> Classroom Dashboard </span></h1>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
        
        <asp:Button runat="server" class="block1" onClick="Classroom" Text="Create"></asp:Button>
        <asp:Button runat="server" class="block2" onClick="Edit" Text="Edit"></asp:Button>
        <asp:Button runat="server" class="block2" onClick="Delete" Text="Delete"></asp:Button>
        <asp:Button runat="server" class="block1" onClick="Display"  Text="Display"></asp:Button>
      <br />
        <br />
        <br />
        <br />
        <br />
        <br />
       <br />
       
      
        
    
    <div class="footer">
  <div class="contain">
  <div class="col">
    <h1>Classrooms</h1>
    <ul>
      <li>Create</li>
      <li>Show</li>
      <li>Edit</li>
      <li>Delete</li>
    </ul>
  </div>
  <div class="col">
    <h1>Courses</h1>
    <ul>
      <li>Create</li>
      <li>Show</li>
      <li>Edit</li>
      <li>Delete</li>
    </ul>
  </div>
  <div class="col">
    <h1>Examinations</h1>
    <ul>
      <li>Create</li>
      <li>Book a classroom</li>
      <li>Upcoming Examinations</li>
    </ul>
  </div>
  <div class="col">
    <h1>COVID-19</h1>
    <ul>
      <li>Create an arrangement</li>
      <li>COVID-19 policies</li>
    </ul>
  </div>
  <div class="col">
    <h1>Support</h1>
    <ul>
      <li>Contact Us</li>
      <li>About Us</li>
        <li>Guide to creating an arrangement</li>
    </ul>
  </div>
  <div class="col social">
    <h1>Social</h1>
    <ul>
      <li><img src="https://svgshare.com/i/5fq.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5eA.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5f_.svg" width="32" style="width: 32px;"></li>
    </ul>
  </div>
<div class="clearfix"></div>
</div>
</div>
        </form>
</body>
</html>
