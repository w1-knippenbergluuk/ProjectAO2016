using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LT-KNIP\\SQLEXPRESS;Initial Catalog=CodeSolution;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");
        con.Open();
        
    }
}