using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP035539_FYP.Class_structure;

namespace TP035539_FYP
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnterFeedBack(object sender, EventArgs e)
        {
            Feedback fb = new Feedback(name_field.Text,email_field.Text,feedBack_field.Text);
            Validate v = new Validate();
            
                fb.setFeedBack(fb);
                fb.saveFeedback();
                lblMessage.Text = "Feedback sent";
        }
    }
}