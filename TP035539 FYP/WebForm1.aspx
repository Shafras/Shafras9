<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TP035539_FYP.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="Styles.css"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <style type="text/css">
        #form1 {
            height: 512px;
        }
        #Password1 {
            width: 149px;
            margin-top: 4px;
        }
        .auto-style1 {
            width: 162px;
        }
        .auto-style2 {
            width: 92px;
        }
        .auto-style3 {
            height: 50px;
        }
        .auto-style4 {
            width: 196px;
        }
        .auto-style5 {
            height: 50px;
            width: 196px;
        }
    </style>
</head>
<body style="height: 461px">
    <div id="wrapper" style="margin-left: 110px;">
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
        <br />
        <br />
        <table style="width:1030px;">
            <tr>
                <td class="auto-style1">
                    <label for="first_name">First name :</label>
                </td>
                <td class="auto-style4"><asp:TextBox runat="server" ID="f_name" />

                </td>
                <td class="auto-style2">
                    <label for="last_name" style="float:left">Last name :</label>
                </td>
                <td><asp:TextBox style="float:left" runat="server" ID="l_name" /></td>
            </tr>
            <tr>
                <td>
                    <label for="email">Email :</label>
                    
                </td>
                <td class="auto-style4"><asp:TextBox ID="email" style="float:left" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label runat="server">Gender : </asp:Label></td>
                <td>
                    <asp:DropDownList ID="gender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="address">Address :</label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="address" runat="server" style="float:left;" Height="57px" TextMode="MultiLine" Width="157px" ></asp:TextBox>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                </td>
                
            </tr>
            <tr>
                <td><label for="address">Province :</label></td>
                <td>
                    <asp:DropDownList ID="province" runat="server">
                        <asp:ListItem Value="LB002">Kegalle</asp:ListItem>
                        <asp:ListItem Value="LB001">Colombo</asp:ListItem>
                        <asp:ListItem Value="LB003">Jaffna</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="phonenumber">Phone number :</label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="phonenumber" style="float:left;" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="NIC">NIC :</label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="NIC" style="float:left;" runat="server"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <label for="password">Password :</label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="Password" style="float:left;" runat="server" TextMode="Password" />
                </td>
            </tr>
            <tr>
                <td>
                    <label for="password_c">Confirm password :</label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="c_password" style="float:left;" runat="server" />
                </td>
            </tr>
            <tr>
                <td><label for="loginName">Login Name : </label></td>
                <td><asp:TextBox ID="loginName" style="float:left;" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <p></p>
                </td>
                <td>
                    <asp:Button ID="sign_up" Text="Sign Up" style="margin-left:100px" runat="server" onclick="SignUP_Click" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="reset" runat="server" Text="Reset" style="margin-left:200px"></asp:Button>
                </td>
            </tr>
            
        </table>
        <asp:Label ID="errorLabel" visible="false" ForeColor="#ff0000" runat="server">Error : </asp:Label>
    </form>
</body>
</html>
