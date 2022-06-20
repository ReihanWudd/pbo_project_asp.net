<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testweb1.aspx.cs" Inherits="testweb1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OUr Library</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <style type="text/css">
        * {
            padding:0;
            margin:0;
        }
        body {
            background-color: whitesmoke;
        }
        .container {
            height: 513px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        .header {
            height: 82px;
        }
        .container h1 {
            text-align : center;
        }

        .data_btn {
            height: 53px;
        }
        #GridView1 {
            padding:10px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">

            x</div>
        <div class="container">
            <div class="title_text">
                <h1>WELCOME TO OUR LIBRARY</h1>
            </div>
            <div class="display_data_btn" style="margin-left:50px;">
                <h3 >Book List</h3>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="show book list" />
                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="183px" Width="481px">
                    <Columns>
                        
                        <asp:ButtonField ButtonType="Button" CommandName="editdata" Text="edit" />
                        <asp:ButtonField ButtonType="Button" CommandName="deldata" Text="delete" />
                        
                    </Columns>
                </asp:GridView>
                <br />
            </div>
            <div class="insert_data_btn" style="margin-left:50px; height: 140px;">

                <table>  
                    <tr>  
                        <td colspan="2">  
                            <h2>Submit new book</h2>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td>Book Title</td>  
                        <td>:</td>  
                        <td>  
                            <asp:TextBox ID="txttitle" runat="server"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td>Book Page</td>  
                        <td>:</td>  
                        <td>  
                            <asp:TextBox ID="txtpage" runat="server"></asp:TextBox>  
                        </td>  
                    </tr>  
                  
                    
                    <tr>  
                        <td colspan="2">  
                            <asp:Button ID="btnInsertion" runat="server" Text="Insert" OnClick="btnInsertion_Click" Style="width: 48px" />  
                            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>  
                        </td>  
                    </tr>  
                </table>  
                

            </div>
        </div>
    </form>
</body>
</html>
