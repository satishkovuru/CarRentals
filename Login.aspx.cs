using System;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;

public partial class Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoginFailed.Visible = false;
       

    }

    protected void LogIn(object sender, EventArgs e)
    {

        string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1781921;Persist Security Info=True;User ID=z1781921;Password=Bw1243$h11";



        using (SqlConnection conn = new SqlConnection(connString))
        {

            try
            {
                conn.Open();
                using (var cmd = new SqlCommand(" SELECT count(*) FROM admin where username=@username and password=@password", conn))
                {
                    cmd.Parameters.AddWithValue("@username", UserName.Text);
                    cmd.Parameters.AddWithValue("@password", Password.Text);
                    string user = UserName.Text;

                    int count = (int)cmd.ExecuteScalar();
                    conn.Close();
                    if (count >= 1)
                    {

                        // Server.Transfer("SecondPage.aspx");
                        Response.Redirect("Admin.aspx?user=" + user);

                    }
                    else
                    {
                        FailureText.Text = "access denied";
                        LoginFailed.Visible = true;
                    }



                }
            }
            catch (Exception E)
            {
                String s = E.Message;

            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }

            }
        }
    }
}
