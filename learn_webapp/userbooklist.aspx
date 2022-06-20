<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userbooklist.aspx.cs" Inherits="userbooklist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous"/>
    <title></title>
     <style type="text/css">
         .auto-style1 {
             left: 4px;
             top: 0px;
             width: 1529px;
         }
         .grid_container {
            margin:auto;
            width:50%;
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

        <div class="container_main">

        </div>
            
        <div class="grid_container">
            <h1>
               <asp:Label ID="judulsatu" runat="server" Text=""></asp:Label>
            </h1>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True" DataKeyNames="id_buku" UseAccessibleHeader="False">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("id_buku", "~/{0}.aspx") %>' Text=""></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>

    </form>
</body>
</html>
