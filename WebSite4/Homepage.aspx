<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>
<!DOCTYPE html>
<link rel="stylesheet" href="StyleSheet.css" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    
<body style="color: #FFFAF0; font-size: 40px;">
    <form id="form1" runat="server">
    <header>
    	<p>Quick Seat</p>
    </header>
        <nav>
<div id="mySidenav" class="sidenav">
    
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="Homepage.aspx">Homepage</a>
  <a href="ClassroomDashboard.aspx">Classrooms</a>
  <a href="CoursesDashboard.aspx">Courses</a>
  <a href="ExaminationDashboard.aspx">Examination</a>
</div>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
</nav>
        <button class="button"><span><a class="button" href="ArrangementChoice.aspx"> Create an arrangement </a></span></button>

<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>


<div class="row">
  <div class="column">
    <div class="card">
      <p><i></i></p>
      <h3><asp:Label ID="Label1" runat="server"></asp:Label>+</h3>
      <p>Upcoming Examination</p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <p><i ></i></p>
      <h3><asp:Label ID="Label2" runat="server"></asp:Label>+</h3>
      <p>Total Classrooms Created</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <p><i></i></p>
      <h3><asp:Label ID="Label3" runat="server"></asp:Label>+</h3>
      <p>Total Courses Created</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <p><i ></i></p>
      <h3>100+</h3>
      <p>Arrangements created</p>
    </div>
  </div>
</div>
        <br />
        <button class="block">LOG IN AS ADMIN</button>
        <button class="block">Log in as admin to create and add classrooms and courses to your institution. Create subjects and assign faculty to various examinations.</button>
        <br />
    &nbsp;
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

