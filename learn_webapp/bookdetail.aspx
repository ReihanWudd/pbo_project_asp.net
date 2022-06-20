<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookdetail.aspx.cs" Inherits="bookdetail" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>

    <title>Document</title>
    <style>
        .category {
            display:flex;
            flex-wrap: wrap;
        }
        .category .card {
            margin: 10px;
        }
        .container {
          display:flex;
          flex-direction:row;
        }
        #btnpinjam1,#btnpinjam2,#btnpinjam3,#btnpinjam4{
          background-color: rgb(0, 92, 239);
          padding: 10px;
          color: white;
          border-radius: 5px;
          text-decoration: none;
        }
        .desk_button {
          margin-top: 60px;
        }
        .rate {
          text-align: right;
          display: inline;
        }
        .rate #rating{
          padding: 10px;
          margin-left: 10px;
          text-decoration: none;
          background-color:rgb(0, 92, 239);
          color: white;
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
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                  </li> 
                </ul>

              </div>
            </div>
          </nav>

          <div class="container" style="margin-top:30px;margin: 20px;">
            <div class="img">
              <img id="gambar" runat="server" src="" alt="" style="width:50%"/>
            </div>
            <div class="deskripsi " style="margin-left:30px;text-align:center;">
              <h2>Novel</h2>
              <h2>
               <asp:Label ID="judulsatu" runat="server" Text=""></asp:Label>
              </h2>

              <div class="rate">
                <h4>rate<asp:Label ID="rating" runat="server" Text=""></asp:Label></h4>
                
              </div>
              <p><asp:Label ID="deskripsi" runat="server" Text=""></asp:Label></p>
              <div class="desk_button">
                  
                <a href="#"><asp:Button ID="btnpinjam1" runat="server" Text="one week" OnClick="btnpinjam1_Click" /></a>
                <a href="#"><asp:Button ID="btnpinjam2" runat="server" Text="two week" OnClick="btnpinjam2_Click" /></a>
                <a href="#"><asp:Button ID="btnpinjam3" runat="server" Text="three week" OnClick="btnpinjam3_Click" /></a>
                <a href="#"><asp:Button ID="btnpinjam4" runat="server" Text="one month" OnClick="btnpinjam4_Click" /></a>
              </div>
              
            </div>
          </div>
           
    </form>
           
   
</body>
</html>
