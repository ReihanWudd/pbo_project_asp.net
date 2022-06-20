<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <style>
        .container {
            margin: auto;
            width: 50%;
            font-family:Arial, Helvetica, sans-serif;
            padding: 10px;
            background-color:whitesmoke;
        }
        .signup a{
            background-color: rgb(0, 72, 255);
            padding: 10px;
            text-decoration: none;
            color: white;
            margin-bottom: 20px;
        }
        .login_button{
            display: inline
        }
        .login_button a {
            background-color: rgb(0, 72, 255);
            padding: 10px;
            text-decoration: none;
            color: white;
        }
        .login_form {
            height: 151px;
        }
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="signup" style="text-align:end">
                <a href="signup.aspx">sign up</a>
                <br />
            </div>
            <div class="login_title">
                <div class="login_img"><img src="img/login.png" alt=""/></div>
                <h1 style="color:dodgerblue">Easy way to find Books</h1>
            </div>
            <div class="login_form">
                <table class="auto-style2" style="margin-bottom:30px;">  
                    <tr>  
                        <td colspan="2">  
                            <h2>login</h2>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td>username</td>  
                        <td>:</td>  
                        <td>  
                            <asp:TextBox ID="txtuser" runat="server" Width="240px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style1">Password</td>  
                        <td class="auto-style1">:</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtpass" runat="server" Width="239px"></asp:TextBox>  
                            <br />
                        </td>  
                    </tr> 
                    <tr>  
                        <td>status</td>  
                        <td>:</td>  
                        <td>  
                            <asp:TextBox ID="status" runat="server" Width="240px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="background-color:lightskyblue"/>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                <div class="login_button" style="padding-top:20px">
                  
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
