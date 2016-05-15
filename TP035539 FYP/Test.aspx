<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="TP035539_FYP.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="MenuStyle.css"/>
    <style type="text/css">
        .Initial
        {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background: url("InitialImage.png") no-repeat right top;
            color: Black;
            font-weight: bold;
        }
        .Initial:hover
        {
            color: White;
            background: url("SelectedButton.png") no-repeat right top;
        }
        .Clicked
        {
            float: left;
            display: block;
            background: url("SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            color: Black;
            font-weight: bold;
            color: White;
        }
        .table{
            display:table-caption;
        }
</style>
    <title></title>
</head>
<body style="font-family: tahoma">
  <form id="form1" runat="server">

   <table style="width:80%; align-self:center;display:table-caption;">
      <tr>
        <td>
          <asp:Button Text="Tab 1" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
              OnClick="Tab1_Click" />
          <asp:Button Text="Tab 2" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
              OnClick="Tab2_Click" />
          <asp:Button Text="Tab 3" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
              OnClick="Tab3_Click" />
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="width: 1700%; border-width: 1px; border-color: #666; border-style: solid; position:absolute;margin-left:68px;">
                <tr>
                  <td>
                       
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 1700%; border-width: 1px; border-color: #666; border-style: solid;position:absolute;margin-left:68px;">
                <tr>
                  <td>
                    <h3>
                      View 2
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="width: 1700%; border-width: 1px; border-color: #666; border-style: solid;position:absolute;margin-left:68px;">
                <tr>
                  <td>
                    <h3>
                      View 3
                    </h3>
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>

    <!--<div id="wrapper">
        <div id="navMenu">
            <ul>
                <li><a href="#">Home</a>
                    <ul>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                    </ul>
                </li><!--End main LI-->
            </ul><!--End main UL-->
            <ul>
                <li><a href="#">Home</a>
                    <ul>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                    </ul>
                </li><!--End main LI-->
            </ul><!--End main UL-->
            <ul>
                <li><a href="#">Home</a>
                    <ul>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                    </ul>
                </li><!--End main LI-->
            </ul><!--End main UL-->
            <ul>
                <li><a href="#">Home</a>
                    <ul>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                        <li><a href="LibraryHome.aspx">Link Item</a></li>
                    </ul>
                </li><!--End main LI-->
            </ul><!--End main UL-->
        </div><!--End navMenu-->
    </div><!--End wrapper-->
      -->
  </form>
</body>
</html>
