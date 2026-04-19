using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class fitrler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string sexe = lstSexe.SelectedItem.Text.Trim();
            string raison = lstRaison.SelectedItem.Text.Trim();
            string nvEtud = lstNiveau.SelectedItem.Text.Trim();
            string cat = lstAge.SelectedItem.Text.Trim();
            string lang = lstLangue.SelectedItem.Text.Trim();
            string pay = lstPays.SelectedItem.Text.Trim();
            string situation = lstSituation.SelectedItem.Text.Trim();

            TableRow maLigne = new TableRow();
            TableCell maCellule = new TableCell();
            maCellule.Text = "Nom et prenom";
            maLigne.Cells.Add(maCellule);
            maCellule = new TableCell();
            maCellule.Text = "Genre";
            maLigne.Cells.Add(maCellule);
            maCellule = new TableCell();
            maCellule.Text = "Pays";
            maLigne.Cells.Add(maCellule);
            maCellule = new TableCell();
            maCellule.Text = "La langue";
            maLigne.Cells.Add(maCellule);
            maCellule = new TableCell();
            maCellule.Text = "La Raison";
            maLigne.Cells.Add(maCellule);
            maCellule = new TableCell();
            maCellule.Text = "Age";
            maLigne.Cells.Add(maCellule);
            tabMembres.Rows.Add(maLigne);

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalRencontreDB;Integrated Security=True";
            mycon.Open();

            // Créer la requête SQL
            string sql = "SELECT nom,prenom,sexe,langues_parles,raison,interval_age,pays,courriel FROM Membres WHERE sexe = '"+ sexe + "' AND raison ='"+ raison + "' AND langues_parles ='"+lang+ "'AND interval_age ='"+cat+"'AND situation ='"+ situation + "' AND pays = '"+pay+"'AND niveau_etudes ='"+nvEtud+ "'";

            SqlCommand mycmd = new SqlCommand(sql, mycon);
            SqlDataReader myRder = mycmd.ExecuteReader();

            while (myRder.Read())
            {
                maLigne = new TableRow();
                maCellule = new TableCell();
                maCellule.Text = myRder["nom"].ToString() +" " + myRder["prenom"].ToString();
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                maCellule.Text = myRder["sexe"].ToString();
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                maCellule.Text = myRder["pays"].ToString();
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                maCellule.Text = myRder["langues_parles"].ToString();
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                maCellule.Text = myRder["raison"].ToString();
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                maCellule.Text = myRder["interval_age"].ToString();
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                string mmbrCourriel = myRder["courriel"].ToString();
                string liens = "<a href='ecriremessage.aspx'>Contacter</a>";
                maCellule.Text = liens;
                maLigne.Cells.Add(maCellule);
                tabMembres.Rows.Add(maLigne);
            }



            myRder.Close();
            mycon.Close();
        }
    }
}