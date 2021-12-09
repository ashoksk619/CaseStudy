<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CaseStudy.Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	
	<title>Login Form Using HTML And CSS Only</title>
	<style>
		@import url('https://fonts.googleapis.com/css?family=Montserrat:400,800');

* {
	box-sizing: border-box;
	
}

body {
	background: #f3e0e2;
	background-image:url(https://images.pexels.com/photos/448877/pexels-photo-448877.jpeg?cs=srgb&dl=pexels-akela-photography-448877.jpg&fm=jpg);
	background-size:cover;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}

h1 {
	font-weight: bold;
	margin: 0;
}

p {
	font-size: 14px;
	font-weight: 100;
	line-height: 20px;
	letter-spacing: 0.5px;
	margin: 20px 0 30px;
}

span {
	font-size: 12px;
}

a {
	color: #333;
	font-size: 14px;
	text-decoration: none;
	margin: 15px 0;
}

button {
	border-radius: 20px;
	border: 1px solid #FF4B2B;
	background-color: #FF4B2B;
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	padding: 12px 45px;
	letter-spacing: 1px;
	text-transform: uppercase;
	transition: transform 80ms ease-in;
}

form {
	background: linear-gradient(to right,pink,blue);
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 50px;
	height: 100%;
	text-align: center;
	float:left;
	
}
.button {border-radius: 50%;}
input {
	background-color: #eee;
	border: none;
	padding: 12px 15px;
	margin: 8px 0;
	width: 100%;
}

.container {
	background-color: #fff;
	
	border-radius: 10px;
  	box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22);
	position: relative;
	overflow: hidden;
	width: 700px;
	max-width: 100%;
	min-height: 480px;
	margin-left:50%;
}

.form-container {
	position: absolute;
	top: 0;
	height: 100%;
}

.log-in-container {
	left: 0;
	width: 50%;
	z-index: 2;
	
}


.overlay-container {
	position: absolute;
	top: 0;
	left: 50%;
	width: 50%;
	height: 100%;
}


.overlay {
	
	background-image:linear-gradient(212.38deg, rgb(66 138 207 / 0.70) 0%, rgb(61 113 237 / 0.71) 100%) ,url(https://images.pexels.com/photos/159823/kids-girl-pencil-drawing-159823.jpeg?cs=srgb&dl=pexels-pixabay-159823.jpg&fm=jpg);
	background-size: cover;
	
	background-repeat: no-repeat;
	
	background-position: 0 0;
	color: #FFFFFF;
	position: relative;
	left: -100%;
	height: 100%;
	width: 200%;
}

.overlay-panel {
	position: absolute;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0 40px;
	text-align: center;
	top: 0;
	height: 100%;
	width: 50%;
}


.overlay-right {
	right: 0;
}


.social-container {
	margin: 50px 0;
}

.social-container a {
	border: 1px solid #DDDDDD;
	border-radius: 50%;
	display: inline-flex;
	justify-content: center;
	align-items: center;
	margin: 0 5px;
	height: 40px;
	width: 40px;
}

div.slide-right {
  width:100%;
  overflow:hidden;
}
div.slide-right h1{
  animation: 10s slide-right;
}

@keyframes slide-right {
  from {
    margin-left: -100%;
    width: 300%; 
  }

  to {
    margin-left: 0%;
    width: 100%;
  }
}
</style>


</head>
<body>
	<div class="slide-right">
	<asp:Image ID="Image1" runat="server" src="fonts/images/emblem.jpg" Width="12%"/>

<h1 style="color:blue;position:center;font-family:Bahnschrift">Jama-ath Residential Public School,Kochin-63,Eranakulam</h1>
		</div>
	<div class="container" id="container">
		<div class="form-container log-in-container">
			<form action="#" id="form1" runat="server">
				<table width="100%">
					<tr>
						<th style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif"> Sign In</th>
					</tr>
					<tr></tr>
            <tr>
                
                <td>
                   &nbsp;&nbsp;  <asp:TextBox ID="txtUser" runat="server" placeholder="USERNAME" style="border-radius: 12px" Width="157px" Height="35px"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtUser" ForeColor="#FF3300" Font-Bold="True" Font-Size="Medium"> *</asp:RequiredFieldValidator>
                </td>
            </tr>
					
            <tr>
                
                <td>
                 
					 &nbsp;&nbsp;<asp:TextBox ID="txtPass" runat="server" TextMode="Password" placeholder="PASSWORD" style="border-radius: 12px" Width="157px" Height="35px"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtPass" ForeColor="Red" Font-Bold="True" Font-Size="Medium">*</asp:RequiredFieldValidator>
				</td>
				</tr>
					<tr></tr>
				<tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" placeholder="USER TYPE" Width="158px" Height="35px" style="border-radius: 12px">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
						<asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
            </tr>
				<tr>
					
				</tr>
					<tr></tr>
            <tr>
                <td colspan="3" >
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" style="border-radius: 50% ;background: linear-gradient(to right,blue,pink);" Width="80px"/>
					</td>
                
             <!-- &nbsp;&nbsp; 
              &nbsp;&nbsp; 
              
					<asp:Button ID="Button1" runat="server" Text="Reset" style="border-radius: 50% ;background: linear-gradient(to right,blue,pink);" Width="80px"/>
                </td>-->

            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblinfo" runat="server" ForeColor="Red" />
                </td>
            </tr>
        </table>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-right">
					<br />
					<br />
					<h2><b> Jama-ath Residential  Public School</b></h2>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>