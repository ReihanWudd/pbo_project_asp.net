<%@ Page Language="C#" AutoEventWireup="true" CodeFile="booklist.aspx.cs" Inherits="booklist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 28px;
            width: 224px;
        }
        .auto-style2 {
            height: 40px;
        }
        .container {
            display:flex;
            flex-direction:row;
            height: 593px;
            margin: auto;
            width: 50%;
            text-align: center;
            padding: 10px;
        }
        .auto-style4 {
            width: 290px;
        }
        .auto-style5 {
            width: 289px;
        }
        .auto-style6 {
            display: flex;
            height: 477px;
            margin: auto;
            width: 80%;
            text-align: center;
            padding: 10px;
            font-family
            
        }
        .addbok a{
            background-color: rgb(0, 72, 255);
            padding: 10px;
            text-decoration: none;
            color: white;
            margin-bottom: 20px;
        }

        .auto-style7 {
            margin-top: 24px;
        }
        .container_veryleft {
            font-family:Arial, Helvetica, sans-serif;
            background-color:skyblue;
        }
        #del_btn {
            background-color:dodgerblue;
            border:none;
            color:white;
        }

    </style>
</head>
<body style="height: 459px">
    <form id="form1" runat="server">
        <div class="auto-style6">
            <div class="container_veryleft">
                <h3>Delete data</h3>
              
                <asp:Label ID="Label2" runat="server" Text="id_buku" ></asp:Label>
                <asp:TextBox ID="txt_del" runat="server"></asp:TextBox>
                <br />
                <br/>
                <asp:Button ID="del_btn" runat="server" Text="Delete" OnClick="delete_Click" />
                <asp:Label ID="dellbl" runat="server" ForeColor="blue"></asp:Label>  

                <div class="auto-style4">
                <h3>update data</h3>
                <br/>
                <table class="auto-style5">  
                    <tr>  
                        <td class="auto-style10">ID</td>  
                        <td class="auto-style7">:</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtid" runat="server" Width="182px"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style11">Title</td>  
                        <td class="auto-style8">:</td>  
                        <td class="auto-style2">  
                            <asp:TextBox ID="txtjudul" runat="server" Width="186px"></asp:TextBox>  
                        </td>  
                    </tr> 
                    <tr>  
                        <td class="auto-style12">Rate</td>  
                        <td class="auto-style13">: </td>  
                        <td class="auto-style14">  
                            <asp:TextBox ID="txtrating" runat="server" style="margin-left: 0px" Width="180px"></asp:TextBox>  
                        </td>  
                    </tr> 
                    <tr>  
                        <td class="auto-style10">Desc</td>  
                        <td class="auto-style7">:</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtdesk" runat="server" Width="180px"></asp:TextBox>  
                        </td>  
                    </tr> 
                    <tr>  
                        <td class="auto-style10">genre</td>  
                        <td class="auto-style7">:</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtgenre" runat="server" Width="180px"></asp:TextBox>  
                        </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style10">author</td>  
                        <td class="auto-style7">:</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtpenulis" runat="server" Width="180px"></asp:TextBox>  
                        </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style10">penerbit</td>  
                        <td class="auto-style7">:</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtpenerbit" runat="server" Width="180px"></asp:TextBox>  
                        </td>  
                    </tr>
                    <tr>  
                        <td class="auto-style10">image</td>  
                        <td class="auto-style7">:</td>  
                        <td class="auto-style1">  
                            <asp:TextBox ID="txtimg" runat="server" Width="180px"></asp:TextBox>  
                        </td>  
                    </tr>

                     </table>  
                
                <asp:Button ID="update" runat="server" Text="update" Width="80px" style="background-color:dodgerblue;color:white;border:none;" OnClick="update_Click"/>
                <asp:Label ID="lblmsg" runat="server" ForeColor="blue"></asp:Label>  
            </div>
                <br/>
                 <div class="auto-style5" style="">
                <h2 class="auto-style4">Enter new data library</h2>
                <br/>
                <h4>create new data</h4>

                    <div class="addbok">
                        <a href="addbooks.aspx">Create new data</a>
                    </div>
            </div>
            </div>

            <div class="container_left" style="border:1px;padding:10px;background-color:whitesmoke;font-family:Arial, Helvetica, sans-serif">
                <h1 class="auto-style2">Book List</h1>
                <p class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Show List" Width="190px" OnClick="Button1_Click" />
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style7" Width="998px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <EmptyDataTemplate>
                            no
                        </EmptyDataTemplate>
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
                </p>
           

            
            </div>

            
        </div>
        
    </form>
</body>
</html>
