<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="facultyclass.aspx.cs" Inherits="CaseStudy.facultyclass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 39%;
        }
        .auto-style3 {
            width: 1290px;
        }
        .auto-style4 {
            text-align: center;
            margin-left: 40px;
        }
        .auto-style5 {
            width: 1458px;
        }
              .div{
	background: #f3e0e2;
	background-image:url(https://images.pexels.com/photos/5212703/pexels-photo-5212703.jpeg?cs=srgb&dl=pexels-max-fischer-5212703.jpg&fm=jpg);
	background-size:cover;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	font-family: 'Montserrat', sans-serif;
	height: 100vh;
	margin: -20px 0 50px;
}
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div">
    <table align="center" class="auto-style1" border="1">
        <caption style="font-family:Calibri;font-style:italic;color:rebeccapurple;background-color:antiquewhite;align-content:center;border-style: groove;font-weight:bold;font:400px" class="auto-style12" bordercolor="Black" > Class Teacher Selection</caption>
        <tr>
            <td class="auto-style5" style="color:blue">Select Faculty:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownListf" DataTextField="factname" DataValueField="fid" runat="server" Width="157px" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="color:blue">Select Class&nbsp; :</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownListc" DataTextField="classname" DataValueField="classid" runat="server" Width="157px" >
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Map Class" Width="158px" style="border-radius: 12px ;background: linear-gradient(to right,violet,antiquewhite);"/>
                <asp:Label ID="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <center>   <asp:GridView ID="GridClass" runat="server" Width="101%" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ForeColor="#333333" CssClass="auto-style6" Height="241px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Class Name ">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("classname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Faculty Name">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("factname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </center>
        </div>

 
     </asp:Content>
