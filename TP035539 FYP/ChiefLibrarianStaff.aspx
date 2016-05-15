<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ChiefLibrarianStaff.aspx.cs" Inherits="TP035539_FYP.ChiefLibrarianStaff" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


     <asp:Content ContentPlaceHolderID="MainContent" runat="server">
         <link rel="stylesheet" type="text/css" href="style.css"/>
  <!--      <div id="wrapper" style="margin-left:100px">
            <div id="navMenu" style="width:100%;">
                 <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>Home</strong></a>
                    <ul>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>About Us</strong></a>
                    <ul>
                        <li><a href="#"><strong>History</strong></a></li>
                        <li><a href="#"><strong>Achievements</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>About Us</strong></a>
                    <ul>
                        <li><a href="#"><strong>History</strong></a></li>
                        <li><a href="#"><strong>Achievements</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>About Us</strong></a>
                    <ul>
                        <li><a href="#"><strong>History</strong></a></li>
                        <li><a href="#"><strong>Achievements</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>About Us</strong></a>
                    <ul>
                        <li><a href="#"><strong>History</strong></a></li>
                        <li><a href="#"><strong>Achievements</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>About Us</strong></a>
                    <ul>
                        <li><a href="#"><strong>History</strong></a></li>
                        <li><a href="#"><strong>Achievements</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>About Us</strong></a>
                    <ul>
                        <li><a href="#"><strong>History</strong></a></li>
                        <li><a href="#"><strong>Achievements</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>
                    <a href="LibraryHome.aspx"><strong>About Us</strong></a>
                    <ul>
                        <li><a href="#"><strong>History</strong></a></li>
                        <li><a href="#"><strong>Achievements</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                        <li><a href="#"><strong>Link Item</strong></a></li>
                    </ul>
                </li>
            </ul>
            </div>
        </div>-->
        <h2><br />Menu</h2>
        <h2>&nbsp;</h2>
        <h2>
            <asp:Label ID="SessionLabel" runat="server" Visible="False"></asp:Label>
        </h2>
     <table style="width:80%; align-self:center;display:table-caption;">
      <tr>
        <td>
          <asp:Button Text="Search library resources" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
              OnClick="Tab1_Click" />
          <asp:Button Text="Generate member report" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
              OnClick="Tab2_Click" />
          <asp:Button Text="Generate monthly report" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
              OnClick="Tab3_Click" />
          <asp:Button Text="Approve membership" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
              OnClick="Tab4_Click" />
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="width: 1700%; border:none; margin-left:294px;position:absolute;">
                <tr>
                  <td>
                      <p>Please key in member ID to search :</p>
            <asp:TextBox ID="searchKey" runat="server"></asp:TextBox>
            <asp:Button ID="searchButton" runat="server" Text="Search"/>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ResourceSearch">
          <Columns>
              <asp:BoundField DataField="description" HeaderText="Details" SortExpression="description" />
              <asp:BoundField DataField="type" HeaderText="Resource type" SortExpression="type" />
              <asp:BoundField DataField="location" HeaderText="Resource location" SortExpression="location" />
              <asp:BoundField DataField="library_id" HeaderText="Library ID" SortExpression="library_id" />
              <asp:BoundField DataField="access_type" HeaderText="Access type" SortExpression="access_type" />
          </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="ResourceSearch" runat="server" ConnectionString="<%$ ConnectionStrings:LibDBConnectionString %>" SelectCommand="SELECT [description], [type], [location], [library_id], [access_type] FROM [Resource] WHERE ([description] LIKE '%' + @description + '%')">
              <SelectParameters>
                  <asp:FormParameter FormField="searchKey" Name="description" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 1700%; border:none;position:absolute;margin-left:213px;">
                <tr>
                  <td>
                    <asp:Label ID="memID" runat="server" Text="Member ID : " style="margin-left:75px;" ></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="memberID" runat="server"></asp:TextBox>
                    <asp:Button ID="generate" runat="server" OnClick="generate_Click" Text="Generate" />
                    <asp:Label ID="reportMemberID" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="label_name" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="reportPhoneNumber" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="reportMemberName" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="reportLibraryID" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="reportMemberFine" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="reportFineDesc" runat="server" Text="Label" Visible="false"></asp:Label>
                    <asp:Label ID="errorLabel" runat="server" BackColor="White" ForeColor="Red" Visible="False"></asp:Label>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="width: 1700%; border:none;position:absolute;margin-left:289px;">
                <tr>
                  <td>
                      <span>Generate monthly report</span> 
                       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                      <asp:Button ID="btnDisplayReport" runat="server" Text="DisplayReport" OnClick="MonthlyReportDisplay_Click" />
                      <rsweb:ReportViewer ID="monthlyReport" runat="server" DataSource="" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="80%">
                      
                      </rsweb:ReportViewer>
                             
                      <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="LibDBDataSetTableAdapters.MonthlyWiseFinesTableAdapter"></asp:ObjectDataSource>
                      <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" TypeName="MonthlyReportTableAdapters."></asp:ObjectDataSource>
                             
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View4" runat="server">
                  <table style="width: 1700%; border:none;position:absolute;margin-left:303px;">
                      <tr>
                        <td>
                            <span>Approve membership</span>
                        </td>
                      </tr>
                  </table>
               </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
</asp:Content>


