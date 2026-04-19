using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class connectionLavalRencontre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnection_Click(object sender, EventArgs e)
        {
           
            string mail = txtEmail.Text.Trim();
            string mdp = txtMot2passe.Text.Trim();

            
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalRencontreDB;Integrated Security=True";
            mycon.Open();

            
            string sql = "SELECT courriel, nom FROM Membres WHERE courriel='" + mail + "' AND motdepasse = '" + mdp + "'";
            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myRder = mycmd.ExecuteReader();
            if (myRder.Read() == true) 
            {
                
                Session["courriel"] = myRder["courriel"];
                Session["nom"] = myRder["nom"];
                myRder.Close();
                mycon.Close();

                Response.Redirect("accueilLavalRencontre.aspx");

            }
            else
            {
                myRder.Close();
                mycon.Close();
                lblErreur.Text = "Email ou Mot de passe invalide, Essayez de nouveau !!";
            }
            
        }
    }
}