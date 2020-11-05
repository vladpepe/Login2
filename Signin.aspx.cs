using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Login2
{
    public partial class WebForm2: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSignErrorMessage.Visible=(false);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-FVE60BB\SQLEXPRESS;initial Catalog=Login; integrated Security = True;"))
            {
                if (txtSignUserName.Text != null && txtSignPassword.Text != null && txtSignPassword2.Text != null)
                {
                    if (txtSignPassword.Text != txtSignPassword2.Text)
                    {
                        lblSignErrorMessage.Visible = (true);
                        lblSignErrorMessage.Text = "Different passwords";
                    }
                    else
                    {
                        sqlCon.Open();
                        string query = "INSERT INTO dbo.tblUser(UserName,Password) VALUES(@username,@password)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@username", txtSignUserName.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@password", txtSignPassword.Text.Trim());
                        sqlCmd.ExecuteNonQuery();
                        sqlCon.Close();
                        lblSignErrorMessage.Visible = (true);
                        lblSignErrorMessage.Text = "Inserted";
                        Response.Redirect("Login.aspx");
                    }
                }  
            }
        }
    }
}