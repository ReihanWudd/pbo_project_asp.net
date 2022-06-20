<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orderdetail.aspx.cs" Inherits="orderdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    <style>
        .container {
            margin:auto;
            width:50%;
            text-align:center;
            font-family:Arial, Helvetica, sans-serif;
            background-color:whitesmoke;
            border-radius:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg bg-light">
            <div class="container-fluid">
          
                <img src="img/Online library 3.png"/>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="welcomepage.aspx">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li> 
                </ul>

              </div>
            </div>
          </nav>
        <div class="container">
            <h1 style="background-color:dodgerblue;color:white;border-radius:10px">
            <asp:Label ID="Label1" runat="server" Text="Order Detail"></asp:Label>
            </h1>
            <br />
            <br />
            <h2>
            <asp:Label ID="Label2" runat="server" Text="Book Title"></asp:Label>
            </h2>
            <br />
            <h3 style="color:dodgerblue">
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            </h3>
            <br />
            <h2>
            <asp:Label ID="Label4" runat="server" Text="Durasi"></asp:Label>
            </h2>
            <br />
            <h3 style="color:dodgerblue">
            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
            </h3>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="terimakasih telah menggunakan aplikasi kami"></asp:Label>
        </div>
    </form>
</body>
</html>
