<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="faculty.aspx.cs" Inherits="CaseStudy.faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
     .div{
	background: #f3e0e2;
	background-image:url(https://images.pexels.com/photos/3772511/pexels-photo-3772511.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3772511.jpg&fm=jpg);

	background-size:cover;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}
        .auto-style9 {
            margin-left: 70px;
            width: 100px;
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div">
      <table align="center" class="auto-style3" style="border-style: groove;">
          <caption style="font-family:Calibri;font-style:italic;color:rebeccapurple;background-color:antiquewhite;align-content:center;border-style: groove;font-weight:bold" class="auto-style12" bordercolor="Black"> Staff Registration</caption>
            <tr>
                <td class="auto-style4" >Faculty ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextFid" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextFid" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style4" >Faculty Name :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextFname" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextFname" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style8" >Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style8" > 
                   <asp:DropDownList runat="server" ID="TextGender" Width="166px">
                       <asp:ListItem value="-1">Select</asp:ListItem>
                       <asp:ListItem>Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                       <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
           <tr>
                <td class="auto-style4" >Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextAdd" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextAdd" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style4" >Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextLoc" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextLoc" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           <tr>
                <td class="auto-style4" >Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style4" >
                    <asp:TextBox ID="TextPh" runat="server" placeholder="10 digits"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextPh" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" >Email&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextEm" runat="server" placeholder="abc@gmail.com"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextEm" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" >Password&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td class="auto-style5" >
                    <asp:TextBox ID="TextPwd" runat="server" class="auto-style7" Height="20px" Width="159px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextPwd" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
          <tr>
                <td  colspan="3">
                    <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Faculty" CssClass="auto-style9" style="border-radius: 12px ;background: linear-gradient(to right,gray,white);"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelError" runat="server"></asp:Label>
                </td>
            </tr>
                       
        </table>
            <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style3" >
            <asp:GridView ID="GridFaculty" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PageSize="4" OnPageIndexChanging="GridFaculty_PageIndexChanging" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                <AlternatingRowStyle BackColor="antiquewhite" BorderColor="#3366FF" BorderStyle="Dotted" ForeColor="Black" />
                <Columns>
                    <asp:TemplateField HeaderText="Faculty Id ">                     
                    <ItemTemplate>  
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("fid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Student Name">                    
                    <ItemTemplate>  
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("factname") %>'></asp:Label>
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

               
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                 <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PreviousPageText="Previous" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
                </div>
        </div>
        </div>
</asp:Content>
