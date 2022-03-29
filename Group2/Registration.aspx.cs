using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group2
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnJoin_Click(object sender, EventArgs e)
        {
            //clear messages
            lblEmailError.Text = String.Empty;
            lblPasswordError.Text = String.Empty;
            lblPasswordConfirmError.Text = String.Empty;
            lblUserNameError.Text = String.Empty;

            if (!txtEmail.Text.Contains("@"))
            {
                lblEmailError.Text = "Please enter a valid email address";
                return;
            }

            if(txtUserName.Text == String.Empty)
            {
                lblUserNameError.Text = "Please enter a unique user name";
            }

            //The entered "password" value must have at least 6 characters
            if (txtPassword.Text.Length < 6)
            {
                lblPasswordError.Text = "Please use at least 6 characters";
                return;
            }

            //The password value must match the "confirm password" value
            if (!txtPassword.Text.Equals(txtPasswordConfirm.Text))
            {
                lblPasswordConfirmError.Text = "Confirm does not match password";
                return;
            }

            Response.Redirect("Home.aspx");
        }
    }
}