<%@ Page Title="" Language="C#" MasterPageFile="~/Faculty.Master" AutoEventWireup="true" CodeBehind="AddMarks.aspx.cs" Inherits="CaseStudy.AddMarks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
         body{
              background:url("https://images.pexels.com/photos/5428835/pexels-photo-5428835.jpeg?cs=srgb&dl=pexels-olya-kobruseva-5428835.jpg&fm=jpg");
              background-size:cover;
         }
        .container{
            max-width:700px;
            width:100%;
            background:  background:linear-gradient(135deg,pink,blue);
            padding : 25px 30px;
            border-radius:5px;
            margin-left:300px;
              background:url("https://images.pexels.com/photos/5428825/pexels-photo-5428825.jpeg?cs=srgb&dl=pexels-olya-kobruseva-5428825.jpg&fm=jpg");
              background-size:cover;
        }
        .container .title{
            font-size:25px;
            font-weight:500;
            position:relative;
        }
        .container .title::before{
            content:'';
            position:absolute;
            left:0;
            bottom:0;
            height:3px;
            width:30px;
            background:linear-gradient(135deg,pink,blue);
        }
        .user-deatils{
            display:flex;
            flex-wrap:wrap;
            justify-content:space-between;
                margin: 20px 0 12px 0;
        }
        .input-box{
            margin-bottom:15px;
            
            width: calc(100% / 2 - 20px)
        }
        .details{
            display:block;
            font-weight:500;
            margin-bottom:5px;
        }
        .input{
            height:45px;
            width:100%;
            outline:none;
            border-radius:5px;
            border:1px solid #ccc;
            padding-left:15px;
            font-size:16px;
            border-bottom-width:2px;
            transition: all 0.3s ease;
        }
        input:focus,.input:valid{
            border-color:#9b59b6
        }
        .btinput{
            height:45px;
            width:200px;
            outline:none;
            color:#fff;
            border:none;
            font-size:18px;
            font-weight:500;
            border-radius:5px;
            letter-spacing:1px;
             background:linear-gradient(135deg,pink,blue);
            margin-top:25px;
            margin-left:10px;


        }
        .btinput:hover{
             background:linear-gradient(135deg,pink,blue);
        }
        @media(max-width:584px) {
            .container {
                max-width: 100%;
            }

            .input-box {
                margin-bottom: 15px;
                width: 100%;
            }
            .user-deatils{
                max-height:300px;
                overflow-y:scroll;
            }
            
        }
        .Minb{
            width:100%;
    height:100%;
    box-sizing:border-box;
    padding:90px;
    background: rgba(0,0,0,0.5);
    padding:50px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="Minb">
    <div class="container">
        <div class="title">Add Marks</div>
        <div class="user-deatils">
        <div class="input-box">
                <span class="details">Exam Type</span>
               <asp:DropDownList runat="server" ID="DropMark" CssClass="input" required>
                   <asp:ListItem Value="-1">Select</asp:ListItem>
                       <asp:ListItem>Qtrly</asp:ListItem>
                       <asp:ListItem>Halfrly</asp:ListItem>
                       <asp:ListItem>Final</asp:ListItem>
                    </asp:DropDownList>
            </div>
            <div class="input-box">
                Name
               <asp:DropDownList runat="server" ID="TextName" CssClass="input" DataTextField="stdname" DataValueField="rollno" required>
                    </asp:DropDownList>
            </div>
           <div class="input-box">
                <span class="details">Science</span>
                <asp:TextBox ID="TextSc" runat="server" placeholder="Enter Science Marks" CssClass="input" required></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Mathematics</span>
                <asp:TextBox ID="TextMa" runat="server" placeholder="Enter Maths Mark" CssClass="input" required ></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Computers Science</span>
                 <asp:TextBox ID="TextCo" runat="server" placeholder="Enter Computer Science Mark"  CssClass="input" required ></asp:TextBox>
            </div>
            <div class="input-box">
                <span class="details">Class</span>
               <asp:DropDownList runat="server" ID="TextCid" CssClass="input" DataTextField="classname" DataValueField="classid" required>
                    </asp:DropDownList>
            </div>
            <div class="input-box">
   
                 <asp:Button ID="ButtonAdd" runat="server" OnClick="ButtonAdd_Click" Text="Add Mark" CssClass="btinput" />
            </div>
            
        </div>
    </div>
        </div>
</asp:Content>
