<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty.Master" AutoEventWireup="true" CodeBehind="FalcPass.aspx.cs" Inherits="CaseStudy.FalcPass"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
         <center>
        
             <table style="width:50%;align-items:center; margin-top:20%;height:200px;border-bottom-color:red;border-block-color:hotpink" border="1">
                <caption style="width:30%;color:mediumvioletred">Change Password</caption>
                 <tr>
                     <td>
                         Enter Your Old Password:
                     </td>
                     <td>
                         <asp:TextBox ID="Txtop" runat="server" placeholder="Enter Your Old Password" CssClass="input" TextMode="Password" required ></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Enter New Password:
                     </td>
                     <td>
                         <asp:TextBox ID="Txtnp" runat="server" placeholder="Enter Your New Password"  CssClass="input" TextMode="Password"  required ></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2" style="align-items:center">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btinput"  ForeColor="#ff3300" BorderColor="pink" style="border-radius: 12px" Width="224px" OnClick="Button1_Click"/>
                     </td>
                 </tr>
             </table>
       
      
            </center>
            </div>


</asp:Content>
