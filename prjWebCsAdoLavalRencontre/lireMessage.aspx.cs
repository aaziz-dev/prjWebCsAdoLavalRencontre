using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsAdoLavalRencontre
{
    public partial class lireMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                // recuperer le messageID envoye a partir de acceuil
                Int32 id = Convert.ToInt32(Request.QueryString["refMsg"].ToString());

                SqlConnection myCon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=LavalRencontreDB;Integrated Security=True");
                myCon.Open();
                string sql = "SELECT * FROM Messages WHERE refMessage =" + id;
                SqlCommand myCmd = new SqlCommand(sql, myCon);
                SqlDataReader myRder = myCmd.ExecuteReader();
                if (myRder.Read() == true)
                {
                    string info = "<p>Titre : " + myRder["titre"].ToString() + "</p>";
                    info += "<p>Date : " + myRder["date"].ToString() + "</p>";
                    info += "<p>Message : " + myRder["message"].ToString() + "</p>";

                    lblMessage.Text = info;
                }
                myRder.Close();

                // mettre a jour le champ nouveau a false
                sql = "UPDATE Messages SET nouveau='False' WHERE refMessage =" + id;
                SqlCommand myCmd2 = new SqlCommand(sql, myCon);
                myCmd2.ExecuteNonQuery();

                myCon.Close();
            }


        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect("boite.aspx");
        }
    }
}