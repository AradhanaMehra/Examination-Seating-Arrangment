<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateArrangement.aspx.cs" Inherits="CreateArrangement" %>

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
     height:490px;
     font-family: Cambria;

}
        .Label{
            font-size:20px;
            color:white;
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
            <table>  
                <tr>  
                    <td>Select Examination </td>  
                    <td>  
                         <asp:DropDownList ID="DropDownList1" runat="server">  
                        </asp:DropDownList> 
                        
                    </td>  
               </tr>  
                
                
                  <tr>  
                    <td>Select Classroom </td>  
                    <td>  
                        <asp:DropDownList ID="DropDownList2" runat="server">  
                        </asp:DropDownList>  
                        
                    </td>  
                </tr>  
          <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" class="Label" Text=" "></asp:Label>
                    </td>
                </tr>
           
                <tr>  

                    <td>  
                       <asp:Button runat="server" class="button" Text="Create Arrangement" OnClick="btnsubmit1"></asp:Button>
                      
                    </td>  
                </tr>
             </table>  
           
        
        </div>  
        
  
        <div  class="card2">  
            <h5>Guide to creating an Arrangement</h5>
            <h6>Please choose the examination from the available examinations and the classrooms from the available classrooms.</h6>
         
             </div> 
             
        </form>
    
        </body>
    
    </html>