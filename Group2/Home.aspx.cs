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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                //load profile picture
                GetProfile();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            Response.Redirect("Profile.aspx");
        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Collection.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected Boolean GetProfile()
        {
            var ret = false;

            SqlCommand cmd;
            string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connString);

            string sql = String.Format("SELECT[ImageURL] FROM[Users] WHERE([UserID] = '{0}')", Session["uid"]);

            try
            {
                conn.Open();
                cmd = new SqlCommand(sql, conn);
                string value = Convert.ToString(cmd.ExecuteScalar());
                cmd.Dispose();

                imgProfile.ImageUrl = value;

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

        protected void btnPost_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                var sql = String.Format("INSERT INTO [Posts] ([UserID], [Content], [Date]) VALUES ('{0}', '{1}', '{2}')", Session["uid"].ToString(), txtPost.Text, DateTime.Now.ToString());

                SqlCommand cmd = new SqlCommand(sql, conn);
                conn.Open();
                cmd.ExecuteNonQuery();

                cmd.Dispose();
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
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}