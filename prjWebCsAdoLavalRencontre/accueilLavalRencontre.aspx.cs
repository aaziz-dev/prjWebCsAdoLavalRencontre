using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class accueilLavalRencontre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_boite_Click(object sender, EventArgs e)
        {

            Response.Redirect("boite.aspx");
        }

        protected void btn_recherche_Click(object sender, EventArgs e)
        {

            Response.Redirect("rechercheLavalRencontre.aspx");

        }

        protected void btn_message_Click(object sender, EventArgs e)
        {

            Response.Redirect("ecriremessage.aspx");

        }
    }
}