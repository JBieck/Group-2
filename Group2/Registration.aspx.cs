using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//SQL
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

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

            //add to database
            if(CreateUser())
            {
                Response.Redirect("Home.aspx");
            }
        }

        private Boolean CreateUser()
        {
            var ret = false;

            SqlConnection conn = null;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                var query = String.Format("INSERT INTO [Users] ([UserName], [Email], [Password]) VALUES ('{0}', '{1}', '{2}')", txtUserName.Text, txtEmail.Text, txtPassword.Text);

                Session.Add("uname", txtUserName.Text);

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                ret = true;
            }
            catch (Exception ex)
            {
                //handle error
                Response.Write("Error: " + ex.ToString());
            }
            finally
            {
                conn.Close();
            }

            return ret; 
        }
    }
}