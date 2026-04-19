using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class indexLavalRencontre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnConn_Click(object sender, EventArgs e)
        {

            Response.Redirect("connectionLavalRencontre.aspx");
        }

        protected void btnInsc_Click(object sender, EventArgs e)
        {
            Response.Redirect("inscriptionLavalRencontre.aspx");
        }
    }
}