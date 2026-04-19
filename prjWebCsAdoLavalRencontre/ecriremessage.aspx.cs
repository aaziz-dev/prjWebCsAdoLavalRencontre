using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class ecriremessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                // a reviser pour exam
                SqlConnection myCon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalRencontreDB;Integrated Security=True");
                myCon.Open();
                string sql = "SELECT courriel, nom FROM Membres ORDER BY nom";
                SqlCommand myCmd = new SqlCommand(sql, myCon);
                SqlDataReader myRder = myCmd.ExecuteReader();
                // ajouter la 1iere ligne de la liste
                cboDestinataires.Items.Add(new ListItem("Choisir un destinataire", "0"));

                while (myRder.Read() == true)
                {
                    ListItem elm = new ListItem();
                    elm.Text = myRder["nom"].ToString() + " ( " +
                        myRder["courriel"].ToString() + " )";
                    elm.Value = myRder["courriel"].ToString();
                    cboDestinataires.Items.Add(elm);

                }
                myRder.Close();
                myCon.Close();
            }
        }



        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {
            SqlConnection myCon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalRencontreDB;Integrated Security=True");
            myCon.Open();
            string numEnvoy = Session["courriel"].ToString();
            string numRecev = cboDestinataires.SelectedItem.Value;
            string tit = txtTitre.Text.Trim();
            string msg = txtMessage.Text.Trim();
            string today = DateTime.Now.ToString();
            string sql = "INSERT INTO Messages(titre,message,date,envoyeur,receveur,nouveau) ";
            sql += "VALUES('" + tit + "','" + msg + "','" + today + "','" +
                numEnvoy + "','" + numRecev + "','True')";
            SqlCommand myCmd = new SqlCommand(sql, myCon);
            myCmd.ExecuteNonQuery();
            myCon.Close();
            Response.Redirect("boite.aspx");
        }

        protected void btnAnnuler_Click(object sender, EventArgs e)
        {
            Response.Redirect("boite.aspx");
        }
    }
}