using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProfilePage
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!Authenticated)
            //{
            //    Response.Redirect("Login.aspx");
            //}
        }

        protected void lblLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnCollections_Click(object sender, EventArgs e)
        {
            Response.Redirect("Collection.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Wishlist.aspx");
        }
    }
}