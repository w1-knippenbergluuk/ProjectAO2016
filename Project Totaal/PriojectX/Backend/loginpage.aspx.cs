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
    private Int32 id;
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtEmail.Text == "")
        {
            EmailError.Text = "* Gebruikersnaam niet ingevuld";
        }
        else
        {
            EmailError.Text = "";
        }
        if (txtpassword.Text == "")
        {
            WwError.Text = "* Wachtwoord niet ingevuld";
        }
        else if(txtEmail.Text != "" && txtpassword.Text != "")
        {
            WwError.Text = "";
            SqlConnection con = new SqlConnection(@"Data Source=PC-MARK\SQLSERVER2012;Initial Catalog=Project_2;Integrated Security=True; Connect Timeout = 15; Encrypt = False;");

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Account where Email='" + txtEmail.Text + "' and Wachtwoord ='" + txtpassword.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            SqlDataReader dr = cmd.ExecuteReader();
            string rechten;
            // Int32 accountid;
            while (dr.Read())
            {
                id = dr.GetInt32(0);
                rechten = dr.GetString(4);
                string email = dr.GetString(1);
                string wachtwoord = dr.GetString(3);
                if (txtEmail.Text == email && txtpassword.Text == wachtwoord)
                {
                    if (dt.Rows.Count > 0)
                    {
                        if (rechten == "admin")
                        {
                            Response.Redirect("eventToevoegen.aspx");
                        }
                        else if (rechten == "artiest")
                        {
                            Response.Redirect("ArtiestAdmin.aspx?ID=" + id);
                        }
                    }
                }
                else
                {

                }
            }
        }
    }
}


