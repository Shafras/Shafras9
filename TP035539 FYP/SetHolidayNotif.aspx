<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SetHolidayNotif.aspx.cs" Inherits="TP035539_FYP.SetHolidayNotif" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Styles.css"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
    <form id="form1" runat="server">
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
        <table style="margin-left:416px; width: 583px; margin-top: 120px;">
            <tr>
                <td>
                    <p style="position:absolute;height: 24px;">End Date : </p>
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                </td>
                <td>
                    <p style="position:absolute;height: 24px;">&nbsp;&nbsp; Start Date :</p>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="desc" runat="server" Text="Label">Description :</asp:Label>
                <asp:TextBox ID="description" runat="server" Enabled="true" Height="85px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <p style="position:absolute;margin-left:-7px;">Holiday type :</p>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Public" style="margin-left:81px;"/>
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Bank"/>
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Government"/>
                </td>
                
                    
                
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Send notifications" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" style="margin-left: 218px" Text="Reset" />
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
