﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="showmark.aspx.cs" Inherits="CaseStudy.showmark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        body{
              background:url("https://images.pexels.com/photos/5428835/pexels-photo-5428835.jpeg?cs=srgb&dl=pexels-olya-kobruseva-5428835.jpg&fm=jpg");
              background-size:cover;
         }
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            text-align: center;
            margin-left:150px;
        }
        .Mainb{
            width:100%;
    height:550px;
    box-sizing:border-box;
    padding:90px;
    background: rgba(0,0,0,0.5);
        }
        h2{
                color:white;
    padding: 20px;
    text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Mainb">
                        <h2>
        Mark Info
                            <br />
                            Class: <asp:Label ID="Label1" runat="server" ></asp:Label>
    </h2>
         
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style2">
                    <strong>
            <asp:GridView ID="GridFaculty" runat="server" Width="90%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="auto-style1" >
                <Columns>
                    <asp:TemplateField HeaderText="Exam type">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("examtype") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Science">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("science") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Maths">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p3" runat="server" Text='<%#Eval("maths") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Computer">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p4" runat="server" Text='<%#Eval("computers") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Mark">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p5" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Average">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p6" runat="server" Text='<%#Eval("average") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Grade">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p7" runat="server" Text='<%#Eval("grade") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                    </strong>
                </div>
        </div>
</asp:Content>
