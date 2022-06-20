<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addbooks.aspx.cs" Inherits="addbooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>addbooks</title>
    <style type="text/css">
        .body-content {
            height: 198px;
            margin: auto;
            width: 50%;
            text-align:center;
            padding: 10px;
        }
        table {
            display:flex;
            justify-content:center;
            width: 327px;
            margin-left: 195px;
            margin-top: 0px;
            height: 258px;
        }
        
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 35px;
        }
        .auto-style3 {
            height: 591px;
        }
        .auto-style4 {
            height: 593px;
            margin: auto;
            width: 50%;
            text-align: center;
            padding: 10px;
        }
        .auto-style5 {
            height: 327px;
        }
        .auto-style7 {
            height: 26px;
            width: 5px;
        }
        .auto-style8 {
            height: 35px;
            width: 5px;
        }
        .auto-style10 {
            height: 26px;
            width: 43px;
        }
        .auto-style11 {
            height: 35px;
            width: 43px;
        }
        .auto-style12 {
            height: 39px;
            width: 43px;
        }
        .auto-style13 {
            height: 39px;
            width: 5px;
        }
        .auto-style14 {
            height: 39px;
        }
        .auto-style15 {
            margin-left: 18px;
            margin-top: 27px;
        }
        .container {
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style3">
        <div class="container">
            <div class="auto-style4">
                <h1>CREATE NEW DATA</h1>
                <br/>
                <h1 style="color:dodgerblue">Enter Book Id and Title</h1>
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
                            <asp:TextBox ID="txtimage" runat="server" Width="180px"></asp:TextBox>  
                        </td>  
                    </tr>

                     </table>  
                
                <asp:Button ID="Button1" runat="server" Text="Save" Width="80px" style="background-color:dodgerblue;color:white;border:none;" OnClick="Button1_Click"/>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Text="Cancel" Width="87px" style="background-color:dodgerblue;color:white;border:none;"/>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>  
            </div>
            
        </div>
    </form>
</body>
</html>
