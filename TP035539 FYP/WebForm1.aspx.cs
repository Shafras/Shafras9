using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP035539_FYP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SignUP_Click(object sender, EventArgs e)
        {
            
            Class_structure.Member m = new Class_structure.Member();
            m.LoginName = loginName.Text;
            m.FirstName = f_name.Text;
            m.LastName = l_name.Text;
            m.Address = address.Text;
            m.PhoneNumber = phonenumber.Text;
            m.Password = Password.Text;
            m.Gender = gender.Text;
            m.LibraryID = province.Text;
            m.Name = m.FirstName + " " + m.LastName;
            if (m.Password == c_password.Text)
            {
                m.SignUP(m);
            }
            else
            {
                errorLabel.Visible = true;
                errorLabel.Text += "Passwords do not match !";
            }
                /*
                 * 
                 * Make a strategy  
                 * 
                 */
        }
    }
}