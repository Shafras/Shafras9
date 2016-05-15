using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using TP035539_FYP.Class_structure;

namespace TP035539_FYP
{
    public partial class LibrarianAdministrationStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            string query = "insert into LIbUser(library_id,name,f_name,l_name,p_number,m_type,password,loginName,u_type) values ('" + LibID.SelectedValue + "','" + name_field.Text + "','" + f_name.Text + "','" + l_name.Text + "','" + phoneNumberField.Text + "','" + gender.SelectedValue + "','password','" + loginNameField.Text + "','" + position.SelectedValue + "');";
            DatabaseOperator db = new DatabaseOperator ();
            SqlCommand cmd = new SqlCommand(query, db.getConnection());
            cmd.ExecuteNonQuery();
        }
        protected void Send_Click(object sender, EventArgs e)
        {
            string query = "select p_number from User";
            DatabaseOperator db = new DatabaseOperator();
            db.getConnection();
            while (db.executeResultsOperation(query).Read())
            {
                
                if (db.executeResultsOperation(query).GetString(1)==null)
                {
                    error_Label.Text += "No phone numbers are available to send holiday notifications!\n";
                    return;
                }
                //we creating the necessary URL string:
                string ozSURL = "http://127.0.0.1"; //where the SMS Gateway is running
                string ozSPort = "9501"; //port number where the SMS Gateway is listening
                string ozUser = HttpUtility.UrlEncode("admin"); //username for successful login
                string ozPassw = HttpUtility.UrlEncode("abc123"); //user's password
                string ozMessageType = "SMS:TEXT"; //type of message
                string ozRecipients = HttpUtility.UrlEncode(db.executeResultsOperation(query).GetString(1)); //who will get the message
                string ozMessageData = HttpUtility.UrlEncode(
                    "Sri Lanka National Public Library \n HOLIDAY NOTIFICATION \n" + description.Text + "\nFROM :" + StartDate_Field.Text + "To :" + EndDate_Field.Text + "\n Holiday type :" + GetHolidayTypes()); //body of message
                string createdURL = ozSURL + ":" + ozSPort + "/httpapi" +
                    "?action=sendMessage" +
                    "&username=" + ozUser +
                    "&password=" + ozPassw +
                    "&messageType=" + ozMessageType +
                    "&recipient=" + ozRecipients +
                    "&messageData=" + ozMessageData;
                try
                {
                    //Create the request and send data to the SMS Gateway Server by HTTP connection
                    HttpWebRequest myReq = (HttpWebRequest)WebRequest.Create(createdURL);
                    //Get response from the SMS Gateway Server and read the answer
                    HttpWebResponse myResp = (HttpWebResponse)myReq.GetResponse();
                    System.IO.StreamReader respStreamReader = new System.IO.StreamReader(myResp.GetResponseStream());
                    string responseString = respStreamReader.ReadToEnd();
                    respStreamReader.Close();
                    myResp.Close();
                    //inform the user
                    error_Label.Text = responseString;
                    error_Label.Visible = true;
                }
                catch (Exception)
                {
                    //if sending request or getting response is not successful the SMS Gateway Server may do not run
                    error_Label.Text = "The SMS Gateway Server is not running!";
                    error_Label.Visible = true;
                }
            }
            

        }
        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            MainView.ActiveViewIndex = 2;
        }
        public string GetHolidayTypes()
        {
            string holidayType = " Type :";
            if (public_type.Checked)
            {
                return holidayType += public_type.Text;
            }
            else if (bank_type.Checked)
            {
                return holidayType += bank_type.Text;
            }
            else if (government_type.Checked)
            {
                return holidayType += government_type.Text;
            }
            else if (public_type.Checked && bank_type.Checked)
            {
                return holidayType += public_type.Text + " " + bank_type.Text;
            }
            else if (public_type.Checked && government_type.Checked)
            {
                return holidayType += public_type.Text + " " + government_type.Text;
            }
            else if (bank_type.Checked && government_type.Checked)
            {
                return holidayType += bank_type.Text + " " + government_type.Text;
            }
            return "not specified";
        }
    }
}