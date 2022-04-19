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
                lblLoginNameError.Text.Equals("Please enter your user name!");
            }

            else if (txtPassword.Text == String.Empty)
            {
                lblLoginPassError.Text.Equals("Please enter your password!");
            }

            else
            {
                //checks to see if the password matches the user in the database
                if (!LoginCheck())
                {
                    lblLoginPassError.Text.Equals("Invalid password!");
                    return;
                }

                Session.Add("uname", txtUserName.Text);
                Response.Redirect("Home.aspx");
            }
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected Boolean LoginCheck()
        {
            var ret = false;

            SqlCommand cmd;
            string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            string sql = String.Format("SELECT[Password] FROM[Users] WHERE([UserName] = '{0}')", txtUserName.Text);
            string sql2 = String.Format("SELECT[UserID] FROM[Users] WHERE([UserName] = '{0}')", txtUserName.Text);

            try
            {
                conn.Open();
                cmd = new SqlCommand(sql, conn);
                string value = Convert.ToString(cmd.ExecuteScalar());
                cmd.Dispose();
                Response.Write(value.ToString());



                if (txtPassword.Text.Equals(value))
                {
                    cmd = new SqlCommand(sql2, conn);
                    value = Convert.ToString(cmd.ExecuteScalar());
                    cmd.Dispose();
                    //Response.Write(value.ToString());

                    //create session parameter
                    Session.Add("uid", value);
                    //Response.Cookies["CustomerID"].Value = value;
                    //Response.Cookies["CustomerID"].Expires = DateTime.Now.AddMinutes(15);

                    ret = true;
                }

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