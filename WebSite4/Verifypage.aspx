<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Verifypage.aspx.cs" Inherits="Verifypage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* defaults */

html,
body {
	height: 100%;
}

html {
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	font-size: 24px;
}

*,
*:before,
*:after {
	-moz-box-sizing: inherit;
	box-sizing: inherit;
}

body {
	margin: 0;
	line-height: 1.5;
	background-color: #e7e7e7;
	font-family: Roboto, Helvectica, Arial, sans-serif;
	color:#ff6666;
}


/* headers */

h1 {
	font-family: "Roboto Slab", Times, "Times New Roman", serif;
	font-size: 2em;
}


/* form elements */

label {
	display: block;
}

select,
textarea,
input {
	max-width: 100%;
	padding: 0;
	margin: 0;
	font-family: inherit;
	font-weight: inherit;
	font-size: inherit;
	color: inherit;
}

input[type=submit] {
	border: none;
	cursor: pointer;
}


/* vertical align snippet */

.va-cont {
	display: table;
	table-layout: fixed;
	width: 100%;
	height: 100%;
}

.va-inn {
	display: table-cell;
	vertical-align: middle;
}


/* styles */

.form-container {
	width: 80%;
	padding: 10px;
	margin: auto;
}

.form-heading {
	margin-top: 0;
	margin-bottom: 1.2em;
	text-align: center;
}

.form-heading-highlight {
	color: #ff6666;
}

.form-row {
	position: relative;
	margin-top: 30px;
}

.form-label {
	position: absolute;
	top: 17px;
	left: 20px;
	color: #999;
	cursor: text;
	transition: all .15s ease-in-out 0s;
}

.form-textbox,
.form-submit {
	width: 100%;
	padding: 20px;
}

.form-textbox {	
	box-shadow: inset 0 0 10px rgba(0,0,0,.1);
}

.form-textbox:focus ~ .form-label,
.form-textbox:valid ~ .form-label {
	top: -1.5em;
	left: 0;
	font-size: .8em;
	color: inherit;
	cursor: pointer;
}

.form-submit {
	background-color: #ff4d4d;
	font-weight: 700;
	color: #fff;
	transition: opacity .15s ease-in-out 0s;
}

.form-submit:hover {
	opacity: .75;
}


/* media queries */

@media only screen and (max-width:1366px) {
	.form-container {
		width: 70%;
	}
}

@media only screen and (max-width:1024px) {
	body {
		font-size: .85em;
	}
	.form-container {
		width: 80%;
	}
}

@media only screen and (max-width:768px) {
	body {
		font-size: .7em;
	}
	.form-container {
		width: 90%;
	}
}

@media only screen and (max-width:480px) {
	.form-container {
		width: 100%;
	}
}
    </style>
</head>
<body>
    
    <div class="va-cont">
	<div class="va-inn">
		<form onsubmit="" class="form-container" runat="server">
			<h1 class="form-heading">
				<span class="form-heading-highlight">Verify your account</span><br/>Click on the button bellow to verify your account with Quickseat!!
			</h1>
			<asp:Label ID="Label1" Text=" " runat="server"></asp:Label>
			<div class="form-row">
				
                <asp:button class="form-submit" id="verify1" runat="server" commandname="verify" text="Verify" validationgroup="Login1" OnClick="MyAccount" ></asp:button>
               
			</div>
		</form>
	</div>
</div>
    
</body>
</html>
