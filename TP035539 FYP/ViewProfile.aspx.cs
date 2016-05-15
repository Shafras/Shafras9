using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP035539_FYP
{
    public partial class ViewProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Edit_btn_Click(object sender, EventArgs e)
        {
            Name.Enabled = true;
            fi_name.Enabled = true;
            lstName.Enabled = true;
            phoneNumber.Enabled = true;
            password.Enabled = true;
        }
    }
}