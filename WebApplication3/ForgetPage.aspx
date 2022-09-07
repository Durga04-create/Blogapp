<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPage.aspx.cs" Inherits="WebApplication3.ForgetPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blogger.com - Reset Password</title>
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

        .auto-style1 {
            width: 198px;
        }
        .auto-style2 {
            width: 238px;
        }
        .auto-style3 {
            width: 198px;
            height: 92px;
        }
        .auto-style4 {
            width: 238px;
            height: 92px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Forgetten? No Problem.." Font-Bold="True" Font-Names="Arial Black" Font-Size="Larger"></asp:Label>
            <br />
            <br />
        </center>
            <center>
                    <table style="width:auto;height:200px">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Enter your Userid:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center">
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Get your password" class="button" OnClick="Button1_Click"></asp:Button>

                    <br />

                </td>
            </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Your Password is:"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td>
                            <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Back to Login</asp:HyperLink>
                </td>
                        </tr>
            </table>
            </center>
        </div>
    </form>
</body>
</html>
