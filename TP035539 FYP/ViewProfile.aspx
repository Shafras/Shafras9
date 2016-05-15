<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="TP035539_FYP.ViewProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Styles.css"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body style="height: 453px">
    <div id="wrapper" style="margin-left: 110px;">
       <a href="LibraryHome.aspx"><h1 class="logo">hi</h1></a>
        <div id="navMenu">
            <ul>
                <li>
                    <a href="LibraryHome.aspx">Home</a>
                    <ul>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx">About Us</a>
                    <ul>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Achievements</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx">About Us</a>
                    <ul>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Achievements</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx">About Us</a>
                    <ul>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Achievements</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx">About Us</a>
                    <ul>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Achievements</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx">About Us</a>
                    <ul>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Achievements</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx">About Us</a>
                    <ul>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Achievements</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx">About Us</a>
                    <ul>
                        <li><a href="#">History</a></li>
                        <li><a href="#">Achievements</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                        <li><a href="#">Link Item</a></li>
                    </ul>
                </li>
            </ul>
            </div>
        </div>
    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <table style="margin-left:531px;">
             <tr>
                    <td><asp:Label ID="id" runat="server" Text="Label">ID :</asp:Label></td>
                    <td><asp:Label ID="id_value" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                    <td><asp:Label ID="LibraryID" runat="server" Text="Label">Library ID :</asp:Label></td>
                    <td><asp:Label ID="library_id_value" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
                    <td><asp:Label ID="u_name" runat="server" Text="Label">Name :</asp:Label></td>
                    <td><asp:TextBox ID="Name" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                    <td><asp:Label ID="f_name" runat="server" Text="Label">First Name :</asp:Label></td>
                    <td><asp:TextBox ID="fi_name" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="l_name" runat="server" Text="Label">Last Name :</asp:Label></td>
                <td><asp:TextBox ID="lstName" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="p_Number" runat="server" Text="Label">Phone number :</asp:Label></td>
                <td><asp:TextBox ID="phoneNumber" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="pWord" runat="server" Text="Label">Passowrd :</asp:Label></td>
                <td><asp:TextBox ID="password" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
        </table>
            &nbsp;
        <asp:Button ID="Edit_btn" runat="server" style="margin-left: 514px" Text="Edit" OnClick="Edit_btn_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Update_btn" runat="server" Text="Update" />
        <asp:Button ID="Back_btn" runat="server" style="margin-left: 81px" Text="Back" Width="50px" />
    </form>
</body>
</html>
