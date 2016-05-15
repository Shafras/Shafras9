<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LibrarianAdministrationStaff.aspx.cs" MasterPageFile="~/Site.Master" Inherits="TP035539_FYP.LibrarianAdministrationStaff" %>

    
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="style.css"/>

        <h2><br />Menu</h2>
        <table style="width:80%; align-self:center;display:table-caption;">
      <tr>
        <td>
      <asp:Button Text="Add profiles" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
              OnClick="Tab1_Click" />
      <asp:Button Text="Search profiles" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
          OnClick="Tab2_Click" />
      <asp:Button Text="Holiday notifications" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
          OnClick="Tab3_Click" />
            <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="position:absolute; left:490px;">
                <tr>
                  <td>
                        <p>Please key in the data to add profiles</p>
            <table>
                <tr>
                    <td>

                    <asp:Label ID="fName" runat="server" Text="First name : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="f_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="fnameValidate" ControlToValidate="f_name" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                    <td>
                        <asp:Label ID="lName" runat="server" Text="Last name : "></asp:Label>
                        <asp:TextBox ID="l_name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="lnameValidate" ControlToValidate="l_name" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="name" runat="server" Text="Name : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="name_field" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="nameValidate" ControlToValidate="name_field" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="address_label" runat="server" Text="Label">Address : </asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="address_field" runat="server" Height="59px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="addressValidate" runat="server" ControlToValidate="address_field" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="phone_number_label" runat="server" Text="Label">Phone number : </asp:Label>
                        <asp:TextBox ID="phoneNumberField" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="pNumberValidate" runat="server" ControlToValidate="phoneNumberField" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="position_label" runat="server" Text="Label">Position : </asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="position" runat="server">
                            <asp:ListItem Value="Library administrator">Library administrator</asp:ListItem>
                            <asp:ListItem Value="Chief Librarian">Chief Librarian</asp:ListItem>
                            <asp:ListItem Value="Clerk Librarian">Clerk Librarian</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="libraryID" runat="server" Text="Library ID : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="LibID" runat="server">
                            <asp:ListItem Value="LB001">Kegalle</asp:ListItem>
                            <asp:ListItem Value="LB002">Colombo</asp:ListItem>
                      </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label TD="loginName" runat="server" Text="Login name : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="loginNameField" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="loginNameValid" runat="server" ControlToValidate="loginNameField" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="gender_label" runat="server" Text="Gender : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="gender" runat="server">
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                      </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="save_btn" runat="server" Text="Save" OnClick="save_btn_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="reset_btn" runat="server" Text="Reset" />
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="position:absolute; left:490px;">
                <tr>
                  <td>
                     <h3>Search profiles</h3>
      <p>Please key in the ID to search for profiles</p>
            <asp:TextBox ID="searchKey" runat="server" Height="16px"></asp:TextBox><asp:Button ID="searchClick" runat="server" Height="16px"></asp:Button>
            <asp:RequiredFieldValidator ID="searchKeyValidate" ControlToValidate="searchKey" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ProfileSearch">
            <Columns>
                <asp:BoundField DataField="f_name" HeaderText="f_name" SortExpression="f_name" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="p_number" HeaderText="p_number" SortExpression="p_number" />
                <asp:BoundField DataField="library_id" HeaderText="library_id" SortExpression="library_id" />
                <asp:BoundField DataField="u_type" HeaderText="u_type" SortExpression="u_type" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ProfileSearch" runat="server" ConnectionString="<%$ ConnectionStrings:LibDBConnectionString %>" SelectCommand="SELECT [f_name], [password], [name], [p_number], [library_id], [u_type] FROM [LIbUser] WHERE ([user_id] = @user_id)">
            <SelectParameters>
                <asp:FormParameter FormField="searchKey" Name="user_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                        
                        <h3></h3>
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="position:absolute; left:490px;">
                <tr>
                  <td>
                     <h3>Send holiday notifications</h3>
                <table style="margin-left:21px; width: 583px; margin-top: 20px;">
            <tr>
                <td>
                    <p style="position:absolute;height: 24px;">End Date : </p>
                    <asp:TextBox ID="EndDate_Field" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="endDateValidate" ControlToValidate="EndDate_Field" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>
                    <p style="position:absolute;height: 24px;">&nbsp;&nbsp; Start Date :</p>
                    <asp:TextBox ID="StartDate_Field" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="sDateValidate" runat="server" ControlToValidate="StartDate_Field" ErrorMessage="*"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="desc" runat="server" Text="Label">Description :</asp:Label>
                <asp:TextBox ID="description" runat="server" Enabled="true" Height="85px" TextMode="MultiLine"></asp:TextBox></td>
                <asp:RequiredFieldValidator ID="descValidator" runat="server" ErrorMessage="*" ControlToValidate="description"></asp:RequiredFieldValidator>
            </tr>
            <tr>
                <td>
                    <p style="position:absolute;margin-left:-7px;">Holiday type :</p>
                    <asp:RadioButton ID="public_type" runat="server" Text="Public" style="margin-left:81px;"/>
                    <asp:RadioButton ID="bank_type" runat="server" Text="Bank"/>
                    <asp:RadioButton ID="government_type" runat="server" Text="Government"/>
                </td>
                
                    
                
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Send" runat="server" Text="Send notifications" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Reset" />
                    <asp:Label ID="error_Label" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
</asp:Content>
