<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="CaseStudy.students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .div{
	background: #f3e0e2;
	background-image:url(https://images.pexels.com/photos/5088008/pexels-photo-5088008.jpeg?cs=srgb&dl=pexels-olia-danilevich-5088008.jpg&fm=jpg);
	background-size:cover;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 29px;
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            text-align: left;
            height: 26px;
         width: 207px;
     }
        .auto-style7 {
            height: 26px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
        }
     .auto-style8 {
         height: 29px;
         text-align: left;
     }
     .auto-style9 {
            height: 29px;
            text-align: left;
            width: 207px;
        }
     .auto-style10 {
            text-align: left;
            width: 207px;
        }
     .auto-style11 {
         margin-left: 0px;
         margin-top: 0px;
            margin-bottom: 0px;
        }
     .auto-style12 {
         width: 98%;
            height: 17px;
            margin-left: 0px;
        }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div">
      <table align="center" class="auto-style3" style="border-style: groove;background-color:antiquewhite;">
          
          <caption style="font-family:Calibri;font-style:italic;color:rebeccapurple;background-color:antiquewhite;align-content:center;border-style: groove;font-weight:bold" class="auto-style12" bordercolor="Black"> Student Registration</caption>
            <tr>
                <td class="auto-style9" >Roll Number&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextRoll" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextRoll" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style9" >Student Name&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextSname" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextSname" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style9" >Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style8" > 
                   <asp:DropDownList runat="server" ID="TextGender" Height="16px" Width="165px">
                       <asp:ListItem Enabled="False"></asp:ListItem>
                       <asp:ListItem Value="-1"> Select</asp:ListItem>
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                       <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
           <tr>
                <td class="auto-style9" >Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextAdd" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextAdd" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style9" >Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextLoc" runat="server"  ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextLoc" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style9" >Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextPh" runat="server" placeholder="10digits"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextPh" ErrorMessage="*" ValidationExpression="\d{10}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" >Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextEm" runat="server" placeholder="abc@gmail.com"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextEm" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" >Pssword&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextPwd" runat="server" class="auto-style7" Height="21px" Width="159px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextPwd" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        
          <tr>
            <td class="auto-style10">Select Class&nbsp;&nbsp;&nbsp; :</td>
           
              <td style="align-items:center"><asp:DropDownList ID="DropDownListcls" DataTextField="classname" DataValueField="classid" runat="server" CssClass="auto-style11" Width="96%" Height="16px"> </asp:DropDownList>
            </td>
        </tr>
           <!-- <tr>
                <td class="auto-style5" >ClassId :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextCid" runat="server"></asp:TextBox>
                </td>
            </tr>-->
          <tr>
                <td  colspan="2">
                    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Student" ForeColor="Black" BackColor="#FFCC66" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </td>
            </tr>
                       
        </table>
        
            <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style3">
            <asp:GridView ID="GridStudent" runat="server" Width="100%" AutoGenerateColumns="false" BackColor="antiquewhite" ForeColor="Black"  AllowPaging="True" PageSize="3" OnPageIndexChanging="GridStudent_PageIndexChanging">
                <AlternatingRowStyle BackColor="#FFCC66" BorderColor="#FF9900" BorderStyle="Dotted" ForeColor="Blue" />
                <Columns>
                    <asp:TemplateField HeaderText="Roll Number ">                     
                    <ItemTemplate>  
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("rollno") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Student Name">                    
                    <ItemTemplate>  
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("stdname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Gender">                    
                    <ItemTemplate>  
                        <asp:Label ID="p3" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Address">                    
                    <ItemTemplate>  
                        <asp:Label ID="p4" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Location">                     
                    <ItemTemplate>  
                        <asp:Label ID="p5" runat="server" Text='<%#Eval("location") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Phone">                    
                    <ItemTemplate>  
                        <asp:Label ID="p6" runat="server" Text='<%#Eval("phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">                    
                    <ItemTemplate> 
                        <asp:Label ID="p7" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Password">                    
                    <ItemTemplate>  
                        <asp:Label ID="p8" runat="server" Text='<%#Eval("pwd") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
                     <asp:TemplateField HeaderText="Class Name">                    
                    <ItemTemplate>  
                        <asp:Label ID="p9" runat="server" Text='<%#Eval("classname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               
                </Columns>
                <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PreviousPageText="Previous" />
            </asp:GridView>
                </div>
        </div>
        </div>
</asp:Content>