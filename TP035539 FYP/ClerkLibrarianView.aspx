<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClerkLibrarianView.aspx.cs" MasterPageFile="~/Site.Master" Inherits="TP035539_FYP.ClerkLibrarianView" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="style.css" />
  <h2 style="margin-top:100px">Menu</h2>
        <table style="width:80%; align-self:center;display:table-caption;">
      <tr>
        <td>
          <asp:Button Text="Member Search" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
              OnClick="Tab1_Click" />
          <asp:Button Text="Generate member report" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
              OnClick="Tab2_Click" />
          <asp:Button Text="Add resources" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
              OnClick="Tab3_Click" />
          <asp:Button Text="Renew resources" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
              OnClick="Tab4_Click" />
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="width: 1700%; border:none; margin-left:294px;position:absolute;">
                <tr>
                  <td>
                      <asp:Label ID="memSearchLabel" runat="server" Text="Member ID"></asp:Label> <asp:TextBox ID="searchKey" runat="server"></asp:TextBox><asp:Button ID="searchBtn" runat="server" Text="Search"/>
                      <asp:RequiredFieldValidator ID="searchKEyValidator" runat="server" ErrorMessage="*" ControlToValidate="searchKey"></asp:RequiredFieldValidator>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="memberSearch" Height="16px">
            <Columns>
                <asp:BoundField DataField="f_name" HeaderText="First name" SortExpression="f_name" />
                <asp:BoundField DataField="l_name" HeaderText="Last name" SortExpression="l_name" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="library_id" HeaderText="Library ID" SortExpression="library_id" />
                <asp:BoundField DataField="p_number" HeaderText="Phone Number" SortExpression="p_number" />
                <asp:BoundField DataField="m_type" HeaderText="Gender" SortExpression="m_type" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="memberSearch" runat="server" ConnectionString="<%$ ConnectionStrings:LibDBConnectionString %>" SelectCommand="SELECT [f_name], [l_name], [name], [library_id], [p_number], [m_type] FROM [LIbUser] WHERE ([user_id] = @user_id)">
            <SelectParameters>
                <asp:FormParameter FormField="searchKey" Name="user_id" Type="String" />
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
                    <asp:RequiredFieldValidator ID="reportMemberIDValidator" runat="server" ErrorMessage="*" ControlToValidate="memberID"></asp:RequiredFieldValidator>
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
                      <asp:Label ID="resourceTypeLabel" runat="server">Resource type : </asp:Label><asp:DropDownList ID="resourceType" runat="server">
                        <asp:ListItem>Journal</asp:ListItem>
                        <asp:ListItem>Book</asp:ListItem>
                        <asp:ListItem>Report</asp:ListItem>
                        <asp:ListItem>Patent</asp:ListItem>
                      </asp:DropDownList>
                      <br />
                      <br />
                     <asp:Label ID="libraryIDLabel" runat="server">LIbrary ID :</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="libraryID" runat="server" Height="25px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="libraryIDValidator" runat="server" ControlToValidate="libraryID" ErrorMessage="*"></asp:RequiredFieldValidator>
                      <br />
                      <br />
                     <asp:Label ID="descriptionLabel" runat="server">Description :</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="resourceDesc" runat="server" Height="65px" TextMode="MultiLine"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="rDescValid" runat="server" ControlToValidate="resourceDesc" ErrorMessage="*"></asp:RequiredFieldValidator>
                      <br />
                      <br />
                      <asp:Label ID="locationLabel" runat="server">Location :</asp:Label>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <asp:TextBox ID="resourceLocat" runat="server" Width="200px" Height="25px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="locationValidator" runat="server" ControlToValidate="resourceLocat" ErrorMessage="*"></asp:RequiredFieldValidator>
                      <br />
                      <br />
                      <asp:Label ID="accessLabel" runat="server">Access type :</asp:Label>
                      &nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="resourceAccessType" runat="server" Height="25px">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                      </asp:DropDownList>
                      <br />
                      <br />
                     <asp:Button ID="Save" runat="server" OnClick="Save_Click" Text="Save" />
                     <asp:Button ID="Reset" runat="server" Text="Reset" />
                    
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View4" runat="server">
                  <table style="width: 1700%; border:none;position:absolute;margin-left:303px;">
                      <tr>
                        <td>
                            <asp:Label ID="renewMIDLabel" runat="server" Text="Member ID : "></asp:Label><asp:TextBox ID="renewMemberID" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="renMemberValid" runat="server" ControlToValidate="renewMemberID" ErrorMessage="*"></asp:RegularExpressionValidator>
                            <asp:Label ID="renewRIDLabel" runat="server" Text="Resource ID : "></asp:Label><asp:TextBox ID="renewResourceID" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="renResourceID" runat="server" ControlToValidate="renewResourceID" ErrorMessage="*"></asp:RegularExpressionValidator>
                            <asp:Button ID="renew" OnClick="Renew"  Text="Renew" runat="server" />
                            <asp:Label ID="renewerrorLabel" runat="server" Text="Label" ForeColor="Red" Visible="false"></asp:Label>
                        </td>
                      </tr>
                  </table>
               </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
     </asp:Content>
