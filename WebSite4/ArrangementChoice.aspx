<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArrangementChoice.aspx.cs" Inherits="ArrangementChoice" %>



<!DOCTYPE html>
<link rel="stylesheet" href="StyleSheet.css" type="text/css" />

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .card1 {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    padding: 16px;
    text-align: center;
    background-color: #000000;
    color: white;
    align-self:center;
    float:left;
    width:50%;
    height:490px;

}
        .card2 {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    padding: 16px;
    text-align: center;
    background-color: #000000;
    color: white;
    align-self:center;
    float:right;
    width:50%;
     height:490px;

}
        .Label{
            font-size:20px;
        }
        .button {
  border-radius: 4px;
  background-color: #8B0000;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
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
        <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
        <h1 class="heading">Choose Arrangement</h1>
<div style="text-align: center;">
        <asp:Button ID="Button1" runat="server" class="button" Text="One Course" OnClick="oneCourse"  />
           <asp:Button ID="Button2" runat="server" class="button" Text="Two Courses"  />
    </div>

        
    </form>
</body>
</html>

