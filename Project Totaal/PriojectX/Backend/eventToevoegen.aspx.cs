using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cms_eventToevoegen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sqlConnection1 =
    new System.Data.SqlClient.SqlConnection(@"Data Source=PC-MARK\SQLSERVER2012;Initial Catalog=Project_2;Integrated Security=True; Connect Timeout = 15; Encrypt = False;");


        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "INSERT INTO Evenement (EvenementNaam, Adres, Postcode, Plaats, Land, Datum) VALUES ('" + txtEvenementNaam.Text + "', '" + txtAdres.Text + "', '" + txtPostcode.Text + "', '" + txtPlaats.Text + "', '" + txtLand.Text + "', '" + dtDatum + "')";
        cmd.CommandText = "INSERT INTO Programma (EvenementID, ProgrammaID, Podium, ArtiestNaam, Tijdstip) VALUES ('" + txtEvenementID.Text + "', '" + txtProgrammaID.Text + "', '" + txtPodium.Text + "', '" + txtArtiestNaam.Text + "', '" + txtTijdstip.Text + "')";

        cmd.Connection = sqlConnection1;

        sqlConnection1.Open();
        cmd.ExecuteNonQuery();
        sqlConnection1.Close();
    }
}