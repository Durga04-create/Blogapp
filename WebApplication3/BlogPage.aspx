<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlogPage.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blogger.com - Create a unique and beautiful blog easily</title>
    <style>
      body {
        -webkit-animation: colorchange 20s infinite;
        animation: colorchange 20s infinite;
      }
      @-webkit-keyframes colorchange {
        0% {
          background: #8ebf42;
        }
        25% {
          background: #e6ebef;
        }
        50% {
          background: #1c87c9;
        }
        75% {
          background: #095484;
        }
        100% {
          background: #d0e2bc;
        }
      }
      @keyframes colorchange {
        0% {
          background: #8ebf42;
        }
        25% {
          background: #e6ebef;
        }
        50% {
          background: #1c87c9;
        }
        75% {
          background: #095484;
        }
        100% {
          background: #d0e2bc;
        }
      }

       .button {
  display: inline-block;
  padding: 5px 5px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <asp:HyperLink ID="HyperLink1" runat="server" style="float: right;" NavigateUrl="~/Login.aspx" Font-Size ="25px">Sign Out</asp:HyperLink>
            <br />
            <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Create Your Blog" Font-Bold="True" Font-Names="Arial Black" Font-Size="30px"></asp:Label></center>
            <br />       
            <center><asp:TextBox ID="TextBox1" runat="server"  TextMode="MultiLine" Height="300px" 
            Width="700px" ></asp:TextBox></center>

                <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="button" Height="40px" Width="120px"  Text="Publish"/>                   
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="button" Height="40px" Width="120px"  Text="View"/> 
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" class="button" Height="40px" Width="120px"  Text="Modify"/> 
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" class="button" Height="40px" Width="120px"  Text="Delete" /> 
                        <br />

               
           </center> 
        </div>   
        <br />
        <center>

            <asp:Label ID="Label2" runat="server" Text="Modifying "></asp:Label>                
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br/><br />
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True">
        </asp:GridView>

        </center> 
             
        
             
    </form>
</body>
</html>
