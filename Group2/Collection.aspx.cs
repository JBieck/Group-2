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
    public partial class Collection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnProfileReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void btnAddToColle_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                var query = String.Format("INSERT INTO [Collections] ([ItemName], [ManufacturedBy], [CountryofOrigin], [Acquisition], [ImageURL]) " +
                    "VALUES ('{0}', '{1}', '{2}', '{3}', '{4}')", txtItemNameC.Text, txtManufacturerC.Text, txtCountryOriginC.Text, txtDateAcqC.Text, txtImageURLC.Text);
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                cmd.ExecuteNonQuery();

                txtItemNameC.Text = "";
                txtManufacturerC.Text = "";
                txtCountryOriginC.Text = "";
                txtDateAcqC.Text = "";
                txtImageURLC.Text = "";
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

        protected void btnRemoveFromColle_Click(object sender, EventArgs e)
        {
            SqlConnection conn = null;
            try
            {
                string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                conn = new SqlConnection(connString);
                var query = String.Format("DELETE FROM [Collections] WHERE [ItemName] = '{0}'", txtItemNameC.Text);
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

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}