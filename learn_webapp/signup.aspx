<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    <style>
        .container {
            text-align: center;
            font-family: Arial, Helvetica, sans-serif;
            margin-top:10%;
            margin: auto;
            width: 70%;

            padding: 10px;
        }
        .container a {
            text-decoration: none;
            color: #fff;
            margin: 10px;
            padding: 10px;
            background-color: rgb(52, 191, 242);
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 style="background-color:dodgerblue;color:white;padding:10px">Sign up to get started</h1>
            <hr/>
            <!-- <h1 style="color:rgb(0, 162, 255);">Enter book id and title</h1> -->
            <p style="color:rgb(0, 162, 255);">&nbsp;</p>
            &nbsp;Email<br />
            <asp:TextBox ID="usertxt" runat="server" Height="29px" Width="216px"></asp:TextBox>
&nbsp;<br />
&nbsp;Password<br />
            <asp:TextBox ID="passtxt" runat="server" Height="27px" Width="211px"></asp:TextBox>
            <br />
            &nbsp;Status<br />
            <asp:TextBox ID="status" runat="server" Height="29px" Width="216px"></asp:TextBox>
            <br />
            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike"/>
  <label for="vehicle1"> I agree</label><br/>
            <br />
&nbsp;<p>By clicking "I Agree" you agree to our Terms Of Use and Privacy Policy In addition,<br> you also agree to receive email messages from us about your <br>experience with our service, and features you can use.</p>
            <p>&nbsp;</p>
            <asp:Button ID="signupbtn" runat="server" Text="Button" OnClick="signupbtn_Click" />
            <a href="#" onclick="signup_click" runat="server">Sign UP</a><br />
            <br />
&nbsp;<asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>