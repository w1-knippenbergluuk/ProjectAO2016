using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login2_cms_ArtiestAdmin : System.Web.UI.Page
{
    private Int32 id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack){

        
            SqlConnection con = new SqlConnection(@"Data Source=PC-MARK\SQLSERVER2012;Initial Catalog=Project_2;Integrated Security=True; Connect Timeout = 15; Encrypt = False;");

            SqlCommand cmd = new SqlCommand("Select * from Artiest where AccountID='"+ Request.QueryString["ID"] +"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Open();

            cmd.ExecuteNonQuery();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
            id = dr.GetInt32(0);
                txtArtiestNaam.Text = dr.GetString(3);
                lblWelkom.Text = "Welkom <span class='bold'>" + dr.GetString(3) + "</span>";
                ArtiestFoto.ImageUrl = dr.GetString(4);
                txtEmail.Text = dr.GetString(5);
                txtTekst.Text = dr.GetString(6);
                txtProfielstijl.Text = dr.GetString(7);
            }
        }
    }
    private string path;
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text == "")
        {
            PasAanFeedback.Text = "<span class='red'>Email adres niet ingvuld</span>";
        }
         else if (txtProfielstijl.Text.ToLower() == "default" || txtProfielstijl.Text.ToLower() == "kleurvol" || txtProfielstijl.Text.ToLower() == "donker")
        {
            if (IsPostBack && FileUpload1.PostedFile != null)
            {
                if (FileUpload1.PostedFile.FileName.Length > 0)
                {
                    string str = FileUpload1.PostedFile.FileName;
                    path = "../img/" + str.ToString();
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("../img/") + str);
                    ArtiestFoto.ImageUrl = path;
                }
            }
            System.Data.SqlClient.SqlConnection sqlConnection1 =
        new System.Data.SqlClient.SqlConnection(@"Data Source=PC-MARK\SQLSERVER2012;Initial Catalog=Project_2;Integrated Security=True; Connect Timeout = 15; Encrypt = False;");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "Update Artiest set ArtiestNaam='" + txtArtiestNaam.Text + "',ArtiestFoto='" + path + "',Tekst='" + txtTekst.Text + "', Profielstijl='" + txtProfielstijl.Text + "' where AccountID='" + Request.QueryString["ID"] + "'";
            //cmd.CommandText = "Update Account set Email='" + txtEmail.Text + "',Gebruikersnaam='" + txtGebruikersnaam.Text + "',Wachtwoord='" + txtWachtwoord + "', rechten'" + txtRechten.Text + "' where Email='" + Request.QueryString["Parameter"].ToString() + "'";
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();

            if (cmd.ExecuteNonQuery() == 1)
            {
                PasAanFeedback.Text = "<span class='green'>Gegevens succesvol aangepast!</span>";
            }
            else
            {
                PasAanFeedback.Text = "<span class='red'>er is een probleem met het aanpassen van uw gegevens</span>";
            }
            sqlConnection1.Close();
        }
        else
        {
            PasAanFeedback.Text = "<span class='red'>Geen geldige profielstijl gekozen</span>";
            
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginpage.aspx");
    }
    protected void mijnAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("AccountAdmin.aspx?ID=" + Request.QueryString["ID"]);//txtEmail.Text);
    }
    
    } 