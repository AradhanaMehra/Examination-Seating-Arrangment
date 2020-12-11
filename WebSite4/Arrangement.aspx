<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Arrangement.aspx.cs" Inherits="Arrangement" %>

<!DOCTYPE html>
<link rel="stylesheet" href="StyleSheet2.css" type="text/css" />
<link rel="stylesheet" href="StyleSheet.css" type="text/css" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>.button {
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

    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(function () {

            $('#btnSeating').on('click', createseating);


        });
        //Note:In js the outer loop runs first then the inner loop runs completely so it goes o.l. then i.l. i.l .i.l .i.l. i.l etc and repeat

        function createseating() {
            var column = document.getElementById('BOX1').value;
            var seat = document.getElementById('BOX2').value;
            var ID = document.getElementById('BOX3').value;
            console.log(column);
            console.log(seat);
            var arr = seat.split(',');
            var ids = ID.split(',');
            var arr2 = arr.reverse();
            var k = 0;
            

            var seatingValue = [];
            var h = 0;

            for (var i = 0; i < column; i++) {

                for (var j = 0; j < arr2[k]; j++) {

                    if(h<ids.length){
                   
                        var seatingStyle = "<div class='seat selected'><font size='1pt'>" + ids[h] + "</font></div>";
                        seatingValue.push(seatingStyle);
                   
                }
                       else if (h >= ids.length) {
                            var seatingStyle = "<div class='seat available'><font size='1pt'></font></div>";
                            seatingValue.push(seatingStyle);
                       }
                    h++;
                   
                }

                console.log("hi");
                var seatingStyle = "<div class='clearfix'></div>";
                seatingValue.push(seatingStyle);
                k++;
            }




            $('#messagePanel').html(seatingValue);

            $(function () {
                $('.seat').on('click', function () {


                    if ($(this).hasClass("selected")) {
                        $(this).removeClass("selected");
                    } else {
                        $(this).addClass("selected");
                    }

                });

                $('.seat').mouseenter(function () {
                    $(this).addClass("hovering");

                    $('.seat').mouseleave(function () {
                        $(this).removeClass("hovering");

                    });
                });


            });

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
        <script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
</script>
  <center>
     <div>
        <button id="btnSeating" class="button" >Create Arrangement</button>
        <div id="messagePanel" class="messagePanel"></div>
        </div>
      <h6 style="color:black">All students facing this way</h6>
      <form id="form1" runat="server">
       
        <asp:TextBox ID="BOX1" runat="server" ></asp:TextBox>
        
        <asp:TextBox ID="BOX2" runat="server" ></asp:TextBox>
          
        <asp:TextBox ID="BOX3" runat="server" ></asp:TextBox>
          
      </form>
      </center>
    </body>
    
</html>
