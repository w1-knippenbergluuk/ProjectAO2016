using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login2_cms_AccountAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection(@"Data Source=PC-MARK\SQLSERVER2012;Initial Catalog=Project_2;Integrated Security=True; Connect Timeout = 15; Encrypt = False;");

            SqlCommand cmd = new SqlCommand("Select * from Account where AccountID='" + Request.QueryString["ID"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtEmail.Text = dr.GetString(1);
                txtGebruikersnaam.Text = dr.GetString(2);
                txtWachtwoord.Text = dr.GetString(3);
            }
            con.Close();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        System.Data.SqlClient.SqlConnection sqlConnection1 =
    new System.Data.SqlClient.SqlConnection(@"Data Source=PC-MARK\SQLSERVER2012;Initial Catalog=Project_2;Integrated Security=True; Connect Timeout = 15; Encrypt = False;");

        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "Update Account set Email='" + txtEmail.Text + "', Gebruikersnaam='" + txtGebruikersnaam.Text + "', Wachtwoord='" + txtWachtwoord.Text + "', Rechten ='artiest' where AccountID= '" + Request.QueryString["ID"] + "'";
        //cmd.CommandText = "Update Account set Email='" + txtEmail.Text + "',Gebruikersnaam='" + txtGebruikersnaam.Text + "',Wachtwoord='" + txtWachtwoord + "', rechten'" + txtRechten.Text + "' where Email='" + Request.QueryString["Parameter"].ToString() + "'";
        cmd.Connection = sqlConnection1;

        sqlConnection1.Open();

        if (cmd.ExecuteNonQuery() == 1)
        {
            PasAanFeedback.Text = "<span class='green'>Gegevens succesvol aangepast!</span>";
        }
        else
        {
            PasAanFeedback.Text = "<span class='red'>excuses er is een probleem opetreden met het aanpassen van uw gegevens, probeer het later opnieuw</span>";
        }
        sqlConnection1.Close();
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginpage.aspx");
    }
    protected void mijnGegevens_Click(object sender, EventArgs e)
    {
        Response.Redirect("ArtiestAdmin.aspx?ID=" + Request.QueryString["ID"]);
    }
}