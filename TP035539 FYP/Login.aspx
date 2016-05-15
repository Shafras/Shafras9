<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TP035539_FYP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style type="text/css">
        #Password1 {
            margin-top: 0px;
        }
        .BlackBorder{
            
            border-color:#000000;
            border-width:15px;
            border:solid;
            margin-left:400px;
        }
    </style>
</head>
<body style="height: 211px">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="TestLabel" runat="server" Text="Something to test"></asp:Label>
    
    <table class="BlackBorder"><tr><td>
        <asp:Label ID="Label1" runat="server" Text="User name :"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="userName" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password : " ></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox id="userPassword"  runat="server" TextMode="Password"/>
            <br />
        <asp:Button ID="Button1" runat="server" Text="Login" style="margin-left: 101px" OnClick="Login_Click" />
        </td></tr>
        </table>
    </div>
    </form>
</body>
</html>
