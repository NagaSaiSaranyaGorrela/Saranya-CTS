using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace MovieCruiser
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "Saranya" && txtPassword.Text == "895188")
            {
                Session["name"] = txtName.Text;
                FormsAuthentication.RedirectFromLoginPage(txtName.Text, true);
            }
            else
            {
                Msg.Visible = true;
            }
        }
    }
}