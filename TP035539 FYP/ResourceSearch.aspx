<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResourceSearch.aspx.cs" Inherits="TP035539_FYP.ResourceSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Styles.css"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body style="margin-bottom: 387px">
    <form id="form1" runat="server">
    <div>
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
    </div>
        
        <asp:TextBox ID="Search_text" runat="server" Height="21px" Width="709px"></asp:TextBox>
        <asp:Button ID="Search_btn" runat="server" Text="Search" Width="171px" />
        <div id="SearchGrid" style="margin-left:212px;">
        <asp:GridView ID="SearchGridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="247px" Width="713px" BorderColor="DarkBlue" BorderWidth="8px">
            <Columns>
                <asp:BoundField DataField="type" HeaderText="Resource Type" SortExpression="type" />
                <asp:BoundField DataField="library_id" HeaderText="Library" SortExpression="library_id" />
                <asp:BoundField DataField="description" HeaderText="Details" SortExpression="description" />
                <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
                <asp:BoundField DataField="access_type" HeaderText="Accessibility" SortExpression="access_type" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Option" ShowHeader="True" Text="View" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibDBConnectionString %>" SelectCommand="SELECT [type], [library_id], [description], [location], [access_type] FROM [Resource] WHERE ([description] LIKE '%' + @description + '%') ORDER BY [description]">
            <SelectParameters>
                <asp:FormParameter DefaultValue="abc" FormField="Search_text" Name="description" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
    </form>
</body>
</html>
