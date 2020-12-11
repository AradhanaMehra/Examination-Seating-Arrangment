<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayClassroom.aspx.cs" Inherits="DisplayClassroom" %>

<link rel="stylesheet" href="StyleSheet.css" type="text/css" />
<!DOCTYPE html>
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
    <style>
 #classroom {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;

 
  margin-left: auto;
  margin-right: auto;
}

#classroom td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;

}

#classroom tr:nth-child(even){background-color: #f2f2f2;}

#classroom td{
     color: black;
}



#classroom th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #8B0000;
  color: white;
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
.button {
  border-radius: 4px;
  background-color: #8B0000;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 15px;
  padding: 10px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}


    </style>
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
 <h1 class="heading"><span> Display Classroom </span></h1>
        <table id="classroom">  
            <tr>  
                <td>  
                    <asp:PlaceHolder ID="DBDataPlaceHolder" runat="server"></asp:PlaceHolder>  
                </td>  
            </tr>  
        </table> 
    
</body>
</html>

