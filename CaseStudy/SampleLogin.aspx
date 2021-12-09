<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SampleLogin.aspx.cs" Inherits="CaseStudy.SampleLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
  position: relative;
  background-color: #090235;
}

.signinplainbox{
  border:1px solid #090235;
  margin-top: 12%;
  border-top-left-radius: 15px;
  border-bottom-right-radius: 15px;
}

.signinform{
  background-color: #fff;
  padding: 1% 3% 1% 3%;
  border-top-left-radius: 15px;
}

#Backtohome{
margin-bottom: 12%;
}

.logodescription{
background: 
    linear-gradient(
      rgba(203, 196, 245, 0.45), 
      rgba(203, 196, 245, 0.45)
    ),
    url(https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg);
    padding-bottom: 15.2%;
  border-bottom-right-radius: 15px;
  color: #fff;
  text-align: center;
  padding-top: 15.1%;
}

.submit_btn{
  text-align: center;
  margin-bottom: 4%;
  margin-top: 7%;
}

.btn_submit{
  background-color: #090235;
  border-color: #090235;
  color: #fff;
  padding: 2% 12% 2% 12%;
  border-radius: 8px;
}

.signinform h4{
  text-align: center;
  margin-bottom: 10%;
}

input{
  margin-bottom: 7.8%;
}
    </style>
</head>



    <body>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-2"></div>
			<div class="col-xs-12 col-md-8">
				<div class="row signinplainbox">
					<div class="col-md-5 signinform">
				
						<h4>SIGN IN</h4>
						   <form id="form1" runat="server">
							<div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-sm" placeholder="Enter email"></asp:TextBox>
								
							</div>
							<div class="form-group">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" class="form-control form-control-sm" placeholder="Password"></asp:TextBox>
								</div>
							<div class="form-group">
								<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="-1">Select</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Faculty</asp:ListItem>
                    </asp:DropDownList>

							<div class="submit_btn">
							<asp:Button ID="Button1" runat="server" Text="Login "/>
							</div>
						</form>
					</div>
					<div class="col-md-7 logodescription">
						<div class="layer"></div>
						<h2>LOREM</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
				</div>
				<div class="col-xs-12 col-md-2"></div>
			</div>
		</div>
	</div>

</body>

</html>

