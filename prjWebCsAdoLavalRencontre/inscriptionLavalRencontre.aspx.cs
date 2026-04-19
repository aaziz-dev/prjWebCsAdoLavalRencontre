using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class inscriptionLavalRencontre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }
        
        

        protected void btnInscr_Click(object sender, EventArgs e)
        {

            string nom = txtNom.Text.Trim();
            string prenom = txtPrenom.Text.Trim();
            string sexe = lstSexe.SelectedItem.Text.Trim();
            string nais = txtDate.Text;
            string raison = lstRaison.SelectedItem.Text.Trim();
            string nvEtud = lstNiveau.SelectedItem.Text.Trim();
            string cat = lstAge.SelectedItem.Text.Trim();
            string lang = lstLangue.SelectedItem.Text.Trim();
            string pays = lstPays.SelectedItem.Text.Trim();
            string situation = lstSituation.SelectedItem.Text.Trim();
            string eml = txtEmail.Text.Trim();
            string mdp = txtMot2passe.Text.Trim();
            string c_eml = txtEmailCheck.Text.Trim();
            string tlphn = txtTlphn.Text.Trim();


            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalRencontreDB;Integrated Security=True";

            mycon.Open();



            string sql = "SELECT nom FROM Membres WHERE telephone='" + tlphn + "'";

            SqlCommand mycmd1 = new SqlCommand(sql, mycon);

            SqlDataReader myrder1 = mycmd1.ExecuteReader();

            if (myrder1.Read() == true)
            {
                lblErreur.Text = "Echec Inscription: Vous etes DEJA membre, Contactez administration.";
                myrder1.Close();
                mycon.Close();
            }
            else
            {
                myrder1.Close();
                if (eml == c_eml)
                {

                    sql = "INSERT INTO Membres(nom,prenom,sexe,date_naissance,courriel,telephone,raison,motdepasse,pays,niveau_etudes,langues_parles,situation,interval_age) ";
                    sql += "VALUES('" + nom + "','" + prenom + "','" + sexe + "','" + nais + "','" + eml + "','" + tlphn + "','" + raison + "','" + mdp +  "','" + pays +  "','" + nvEtud + "','" + lang + "','" + situation + "','" + cat + "');";
                    SqlCommand mycmd2 = new SqlCommand(sql, mycon);
                    mycmd2.ExecuteNonQuery();
                    mycon.Close();


                    Response.Redirect("connectionLavalRencontre.aspx");
                }
                else
                {
                    lblErreur.Text = "Echec Inscription: Vous devez verifier votre email .";

                    mycon.Close();
                }

            }
        }
    }
}
