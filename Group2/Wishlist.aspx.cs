using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Group2
{
    public partial class Wishlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturnProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void btnAddtoWL_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                var query = String.Format("INSERT INTO [Wishlist] ([ItemName], [Manufacturer], [CountryofOrigin], [ImageURL], [DateRequested]) " +
                    "VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", txtItemNameWL.Text, txtManufacturererWL.Text, txtCountryOriginWL.Text, txtImageURLWL.Text, DateTime.Now);
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
       
        protected void btnRemoveFromWL_Click1(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                var query = String.Format("DELETE FROM [WishList] WHERE [ItemName] = '{0}'", txtItemNameWL.Text);
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
    }
}