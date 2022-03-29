using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            lblLoginNameError.Text = String.Empty;
            lblLoginPassError.Text = String.Empty;

            if (txtUserName.Text == String.Empty)
            {
                lblLoginNameError.Text = "Please enter your user name!";
            }

            else if (txtPassword.Text == String.Empty)
            {
                lblLoginPassError.Text = "Please enter your password!";
            }

            else
            {
                Response.Redirect("Profile.aspx");
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}