<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Classroom.aspx.cs" Inherits="Classroom" %>
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
    height:530px;
    font-family: Cambria;

}
        .card2 {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    padding: 16px;
    text-align: center;
    background-color:	#FFFFFF;
    color: black;
    align-self:center;
    float:right;
    width:50%;
     height:530px;
     font-family: Cambria;

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
       <div  class="card1"> 
           <br /> 
            <table style="align-content:center">  
                
                <tr>  
                    <td>Name of classroom </td>  
                    <td>  
                        <asp:TextBox ID="Text1" runat="server"></asp:TextBox>  
                         
                    </td>  
               </tr>  
                <tr>  
                    <td>Total seats</td>  
                     <td> <asp:TextBox ID="Text2" runat="server"></asp:TextBox></td> 
                    
                </tr>  
                <tr>  
                    <td>Total columns </td>  
                    <td>  
                        <asp:TextBox ID="Text3" runat="server"></asp:TextBox> 
                         
                    </td>  
                </tr>  
           <tr>  
                    <td>Seats Per Column</td>  
                    <td>  
                        <asp:TextBox ID="Text4" runat="server" placeholder="For Eg: 5,5,6" ></asp:TextBox>
                        
                          
                    </td>  
                </tr>  
                         
                <tr>  
                    <td>Floor</td>  
                    <td>  
                        <asp:TextBox ID="Text5" runat="server"></asp:TextBox>  
                    </td>  
                </tr>  
                <tr>  
                    <td>Section number</td>  
                    <td>  
                        <asp:TextBox ID="Text6" runat="server"></asp:TextBox>  
                    </td>  
                </tr> 
               
                 <tr>  
                    <td>Building name</td>  
                    <td>  
                        <asp:TextBox ID="Text7" runat="server"></asp:TextBox>
                    </td>  
               </tr>  
                <tr>  

                    <td>  
                       <asp:Button runat="server" class="button" Text="Create Classroom" OnClick="btnsubmit"></asp:Button> 
                    </td>  
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" class="Label" Text=" "></asp:Label>
                    </td>
                </tr>
                
              

            </table>  
           
        
        </div>  
        
  
        <div  class="card2">  
            <h6>Guide to creating a classroom</h6>
            <h6>Kindly specify the total seats in your classroom. As per this number please specify the columns and the seats per column in the format specified.  For example if total seats in the classroom are 50 and columns are 5 then there will be 10 seats per column.If the total seats and the number of columns per seat do not add up to the same value the classroom will not be created.</h6>
   
         
             </div> 
             
        </form>
    
        </body>
    
    </html>