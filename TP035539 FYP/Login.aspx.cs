using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP035539_FYP
{
    public partial class Login : System.Web.UI.Page
    {
        public static string libraryID;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login_Click(object sender, EventArgs e)
        {

            Class_structure.Member m = new Class_structure.Member(userName.Text,userPassword.Text);
            string type = m.Login(m).Split(';')[0];
            TestLabel.Text = type;
            if (type != null)
            {
                Session["Username"] = userName.Text;
                Session["LibraryID"] = libraryID = m.Login(m).Split(';')[1];
                /*
                 * Set the response parameter according to the user type; 
                 * 
                 */
                if (type == "ClerkLibrarian")
                {
                    Response.Redirect("ClerkLibrarianView.aspx");
                }
                else if (type == "ChiefLibrarian")
                {
                    Response.Redirect("ChiefLibrarianView.aspx");
                }
                else if (type == "Librarian Administration")
                {
                    Response.Redirect("");
                }
                else if (type == "Member")
                {
                    Response.Redirect("");
                }
            }

            /*
             * 
             *Login code implementation by checking the user type 
             * 
             */
        }
    }
}