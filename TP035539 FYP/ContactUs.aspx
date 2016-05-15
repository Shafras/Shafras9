<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ContactUs.aspx.cs" Inherits="TP035539_FYP.ContactUs" %>
    
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <table style="margin-top:100px">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Name*"></asp:Label><br />
        </td>
        <td>
            <asp:TextBox ID="name_field" runat="server" ValidationGroup = "contact" Width="166px"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
             ControlToValidate = "name_field"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Email*"></asp:Label><br />
        </td>
        <td>
            <asp:TextBox ID="email_field" runat="server" Width="166px"></asp:TextBox><br />
            <asp:RegularExpressionValidator id="valRegEx" runat="server"
            ControlToValidate="email_field"
            ValidationExpression=".*@.*\..*"
            ErrorMessage="*Invalid Email address."
            display="dynamic">
            </asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate = "email_field"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align = "top" >
            <asp:Label ID="Label4" runat="server" Text="Feedback*"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="feedBack_field" runat="server" TextMode = "MultiLine" Height="93px" Width="218px" ></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
            ControlToValidate = "feedBack_field"></asp:RequiredFieldValidator>
        </td>
    </tr>
     <tr>
        <td></td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="EnterFeedBack" />
       </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lblMessage" runat="server" Text="" ForeColor = "Green"></asp:Label>
       </td>
    </tr>
</table>
    
    <div>
        <iframe src="https://www.waze.com/livemap?zoom=17&lat=6.90599&lon=79.86567" style="height:400px; width:100%; margin-left: 0px;"></iframe>    
    </div>
    </asp:Content>
