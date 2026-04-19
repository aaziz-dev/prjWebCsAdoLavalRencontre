using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class boite : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int nbMsg = 0;
                string numeroMbr = Session["courriel"].ToString();
                // creation de la premier ligne du tableau
                TableRow maLigne = new TableRow();
                TableCell maCellule = new TableCell();
                maCellule.Text = "Titres";
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                maCellule.Text = "Envoyeur";
                maLigne.Cells.Add(maCellule);
                maCellule = new TableCell();
                maCellule.Text = "Actions";
                maLigne.Cells.Add(maCellule);
                maLigne.BackColor = Color.Aquamarine;
                tabMessages.Rows.Add(maLigne);

                lblMessage.Text = "Bienvenue " + Session["Nom"];


                //se connecter a la BD
                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalRencontreDB;Integrated Security=True";
                mycon.Open();

                // interroger avec une requete un objet command
                string sql = "Select Messages.refMessage, Messages.titre,Messages.nouveau,Membres.nom From Messages,Membres Where Messages.Receveur='" + numeroMbr + "'And Membres.courriel=Messages.Envoyeur ; ";
                SqlCommand mycmd = new SqlCommand(sql, mycon);
                SqlDataReader myRder = mycmd.ExecuteReader();

                while (myRder.Read() == true)
                {
                    //creation de ligne pour chaque message
                    maLigne = new TableRow();
                    maCellule = new TableCell();
                    maCellule.Text = myRder["Titre"].ToString();
                    maLigne.Cells.Add(maCellule);
                    maCellule = new TableCell();
                    maCellule.Text = myRder["Nom"].ToString();
                    maLigne.Cells.Add(maCellule);
                    maCellule = new TableCell();
                    Int32 msgID = Convert.ToInt32(myRder["refMessage"].ToString());
                    maCellule.Text = "<a href='lireMessage.aspx?refMsg=" + msgID + "'>Lire</a>";
                    maCellule.Text += "&nbsp;&nbsp;&nbsp;<a href='effacerMessage.aspx?refMsg=" + msgID + "'>Effacer</a>";
                    
                    maLigne.Cells.Add(maCellule);
                    tabMessages.Rows.Add(maLigne);

                    nbMsg++;


                }
                myRder.Close();
                mycon.Close();
                lblMessage.Text += "<br /> Vous avez " + nbMsg + " message(s)";
            }
        }

        protected void btnComposer_Click(object sender, EventArgs e)
        {
            Response.Redirect("ecriremessage.aspx");
        }
    }
        }