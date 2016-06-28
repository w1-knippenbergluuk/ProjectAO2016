using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LT-KNIP\\SQLEXPRESS;Initial Catalog=Project_2;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from Account where Gebruikersnaam='" + txtusername.Text + "' and Wachtwoord ='" + txtpassword.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("cms/loggedinhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Please enter valid Username and Password')</script>");
        }
    }
}

