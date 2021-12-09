<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="CaseStudy.Class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .div {
            background: #f3e0e2;
            background-image: url(https://images.pexels.com/photos/5212345/pexels-photo-5212345.jpeg?cs=srgb&dl=pexels-max-fischer-5212345.jpg&fm=jpg);
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            font-family: 'Montserrat', sans-serif;
            height: 100vh;
            
        }
	</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="div">
        <asp:GridView ID="gvStd" runat="server" AutoGenerateColumns="False" Width="100%"  AllowPaging="True" PageSize="8"  ShowFooter="True" Backcolor="#ffffff" OnRowCommand="gvStd_RowCommand" OnRowEditing="gvStd_RowEditing" OnPageIndexChanging="gvStd_PageIndexChanging" OnRowDeleting="gvStd_RowDeleting" OnRowUpdating="gvStd_RowUpdating" >
           <AlternatingRowStyle BorderStyle="Dotted" BorderColor="#ff0066" />
            <Columns>
                <asp:TemplateField HeaderText="Class Id">
                    <ItemTemplate>
                        <asp:Label ID="lblRno" runat="server" Text='<%#Eval("classid")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Class Name">
                    <ItemTemplate>
                        <asp:Label ID="lblSname" runat="server" Text='<%#Eval("classname") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtSname" runat="server" ></asp:TextBox>
                    </FooterTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txteSname" runat="server" Text='<%#Eval("classname") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText="Operations">
                 <ItemTemplate>
                     <asp:LinkButton ID="lnkedit" runat="server" Text="Edit" CommandName="edit"></asp:LinkButton>
                     &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:LinkButton ID="lnkdel"  runat="server" Text="Delete" CommandName="delete"></asp:LinkButton>
                 </ItemTemplate>

                   <FooterTemplate>
                       
                        <asp:Button ID="btnAdd"  runat="server"  Text="Add New Class" CommandName="NewStd"/>  
                  
                       
               
     
                   </FooterTemplate>

                 <EditItemTemplate>
                     <asp:LinkButton ID="lnkupdate" Text="Update" runat="server" CommandName="update" ></asp:LinkButton>
                     &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:LinkButton ID="lnkcan" Text="Cancel" runat="server" CommandName="cancel" ></asp:LinkButton>
                 </EditItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#999999" Font-Bold="True" ForeColor="White" />
            <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PreviousPageText="Previous" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:Label ID="txtlab" runat="server" Text="" ForeColor="violet"></asp:Label>
     </div>
</asp:Content>
