<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UserWelcome.aspx.cs" Inherits="CaseStudy.UserWelcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
  .div{
			
			background:url(https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?cs=srgb&dl=pexels-miguel-%C3%A1-padri%C3%B1%C3%A1n-255379.jpg&fm=jpg);
		   background-size:cover;
			}
	    .auto-style1 {
            margin-right: 0px;
            margin-top: 0px;
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
    width: 400%; 
  }

  to {
    margin-left: 0%;
    width: 100%;
  }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="slide-right">
        <h1 style="color:transparent;color:black;;font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">***********************************************WELCOME ADMIN*****************************************</h1>
    </div>
	<div class="div">
<div>
			<center> <h1>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Jama-ath Residential  Public School
			         </h1></center>
            <table width="100%">
			<tr>
				<td>
					<h2>OUR PRINCIPAL....</h2>
					<img src="fonts/images/vicepr.jpg" width="300" height="410" class="auto-style1"></td>
				
				
				<td>
					<h2>OUR VISION....</h2>
					<p>“The purpose of education should not to be to fill you with knowledge and one to think intensively and to think critically. Intelligence plus character – that is the goal of true education” Mar
Education is not just literacy. It is a much broader concept than that. Imparting the right education is equipping a child not only with the knowledge of various subjects, but also empowering them with abilities and skills to face the various challenges of life. We have always aimed at the holistic development of every student, nurturing every important aspect – physical, cultural, emotional and intellectual.
The state-of-the-art facilities at Jama-ath Residential  Public School, Eranakulam East and our dedicated staff, who are the proponents of the Institution’s ethos, provide our young scholars with innumerable opportunities to evolve as confident and thoughtful individuals, ready to make a place for themselves in this global world ruled by technology. The right balance of academics and co-curricular activities facilitate the development of multiple intelligences, honing the talent and intellect, and thus fostering all round development. Emphasis is also laid on imbibing the virtues of being humble, empathetic, compassionate, just, true, conscious about nature, energy conservation, recycling etc. that will go a long way in helping them to become responsible citizens of our country.
Wishing each one of you an experiential learning year.</p>
				</td>
				<td>
					<h2>OUR CAMPUS....</h2>
					<img src="fonts/images/pic.png" width="900" height="400" style="background-size:cover;">
				</td>
				
				
			</tr>
			<tr>
				
				<td  colspan="2">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eros mauris, cursus faucibus pulvinar eget, mollis ut ipsum. Donec rutrum dapibus ligula, id sagittis ante fringilla sed. Suspendisse sodales venenatis justo, ut euismod neque. Aliquam metus nunc, faucibus id lobortis in, malesuada ac neque. Fusce vestibulum tortor quis tellus ullamcorper, quis commodo felis congue. Etiam a urna eleifend justo varius imperdiet. Nam et convallis libero. Nullam quis est in eros dignissim ultrices vitae aliquam ex. Cras a pharetra augue, nec rutrum eros. Etiam eu fringilla leo, non tristique risus. Praesent accumsan massa a orci tincidunt, non vestibulum dolor sagittis. Nullam rhoncus non tellus in pretium.</p>
				</td>
				<td>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eros mauris, cursus faucibus pulvinar eget, mollis ut ipsum. Donec rutrum dapibus ligula, id sagittis ante fringilla sed. Suspendisse sodales venenatis justo, ut euismod neque. Aliquam metus nunc, faucibus id lobortis in, malesuada ac neque. Fusce vestibulum tortor quis tellus ullamcorper, quis commodo felis congue. Etiam a urna eleifend justo varius imperdiet. Nam et convallis libero. Nullam quis est in eros dignissim ultrices vitae aliquam ex. Cras a pharetra augue, nec rutrum eros. Etiam eu fringilla leo, non tristique risus. Praesent accumsan massa a orci tincidunt, non vestibulum dolor sagittis. Nullam rhoncus non tellus in pretium.</p>
				</td>
				

			</tr>
			<tr>
				<td>
					<img src="fonts/images/student.jpg" width="350" height="400">
				</td>
				<td>
					<iframe width="420" height="400" src="https://www.youtube.com/embed/TU1xedLQJ4E">
</iframe>
				</td>
				<td>
					<img src="fonts/images/grp.jpg" width="760" height="400">
				</td>
				
				<h1>hello</h1>
			</tr>
		</table>
        </div>
		</div>
   
		
</asp:Content>
