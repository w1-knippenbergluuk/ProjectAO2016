using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class registreren : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection sqlConnection1 =
    new System.Data.SqlClient.SqlConnection("Data Source=LT-KNIP\\SQLEXPRESS;Initial Catalog=Project_2;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");

        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "INSERT INTO Account (Gebruikersnaam, Wachtwoord, Email) VALUES ('" + txtusername.Text + "', '" + txtpassword.Text + "', '" + txtEmail.Text + "')";
        cmd.Connection = sqlConnection1;

        sqlConnection1.Open();
        cmd.ExecuteNonQuery();
        sqlConnection1.Close();
    }
}