<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcomepage.aspx.cs" Inherits="welcomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .container {
            margin: auto;
            width: 70%;
            display: flex;
            padding: 10px;
        }
        .text_btn {
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            margin-top:150px;
        }
        .text_btn a {
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
            <div class="text_btn">
                <h1>Welcome to the online Library</h1>
                <p>please choose to borro a book or return a book</p>
                <div class="btn-group" style="margin-top:50px">
                    <a href="category.aspx">Borrow</a>
                </div>
            </div>
            <img src="img/book.png" alt=""/>
        </div>
    </form>
</body>
</html>
