<%@ Page Language="C#" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

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
        .list_book {
            display: none;
        }
        .detail_book {
            display:none;
        }
        #bookacak,#Button1, #Button2,#Button3,#Button4,#Button5 {
            padding:10px;
            border:none;
            background-color:dodgerblue;
            color:white;
            border-radius:10px;
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

        <div class="container"  runat="server">
            <h2>Many books in here</h2>
            <div class="category" id="category_contain" runat="server">
                <div class="card" id="acak" style="width: 18rem;">
                    <img src="img/f.png" class="card-img-top" alt="..."/>
                    <div class="card-body">
                      <h5 class="card-title">discover genre</h5>
                        <asp:Button ID="bookacak"  runat="server" OnClick="Button8_Click" Text="visit" />
                        
                    </div>
                </div>

                <div class="card" id="nonfiksi" style="width: 18rem;">
                    <img src="img/c.png" class="card-img-top" alt="..."/>
                    <div class="card-body">
                      <h5 class="card-title">discover genre</h5>
                        <asp:Button ID="Button1" runat="server" OnClick="Button9_Click" Text="visit" />                     
                    </div>
                </div>

                <div class="card" id="fiksi-sejarah" style="width: 18rem;">
                    <img src="img/d.png" class="card-img-top" alt="..."/>
                    <div class="card-body">
                      <h5 class="card-title">discover genre</h5>
                        <asp:Button ID="Button2" runat="server" OnClick="Button10_Click" Text="visit" />                      
                    </div>
                </div>

                <div class="card" id="fiksi-ilmiah" style="width: 18rem;">
                    <img src="img/e.png" class="card-img-top" alt="..."/>
                    <div class="card-body">
                      <h5 class="card-title">discover genre</h5>
                        <asp:Button ID="Button3" runat="server" OnClick="Button11_Click" Text="visit" />                     
                    </div>
                </div>

                <div class="card" id="klasik" style="width: 18rem;">
                    <img src="img/a.png" class="card-img-top" alt="..."/>
                    <div class="card-body">
                      <h5 class="card-title">discover genre</h5>
                        <asp:Button ID="Button4" runat="server" OnClick="Button12_Click" Text="visit" />                   
                    </div>
                </div>

                <div class="card" id="fantasi" style="width: 18rem;">
                    <img src="img/s.png" class="card-img-top" alt="..."/>
                    <div class="card-body">
                      <h5 class="card-title">discover genre</h5>
                        <asp:Button ID="Button5" runat="server" OnClick="Button13_Click" Text="Visit" />                        
                    </div>
                </div>
                
            </div>
        </div>

        <div class="list_book" id="list_book">
            <h1>list book</h1>

            <button class="list_btn_page" onclick="changedetail()"></button>
        
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    
        <div class="detail_book" id="detail_book">
            <h1>detail book</h1>
        </div>
    </form>
    <script>
        var category = document.getElementById("category_contain")
        var list_book = document.getElementById("list_book")
        var detail_book = document.getElementById("detail_book")

        function changepage() {
          category.style.display = "none";
          list_book.style.display = "flex";
          
        }
        function changedetail() {
          list_book.style.display = "none";
          detail_book.style.display = "flex";
        }

    </script>
</body>
</html>
