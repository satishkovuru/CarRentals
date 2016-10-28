using System;
using System.Web.UI;
using System.Data.SqlClient;

public partial class Account_Register : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CreateUser_Click(object sender, EventArgs e)
    {

        string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1781921;Persist Security Info=True;User ID=z1781921;Password=Bw1243$h11";



        using (SqlConnection conn = new SqlConnection(connString))
        {

            try
            {
                conn.Open();
                using (var cmd = new SqlCommand(" Insert  into customers (cus_fname,cus_lname, cus_email,cus_address,cus_phone,zipcode,login_id,password) values ( @FirstName,@LastName,@EmailID,@Address,@PhoneNumber,@ZipCode,@username ,@password)", conn))
                {
                    cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
                    cmd.Parameters.AddWithValue("@LastName", LastName.Text);
                    cmd.Parameters.AddWithValue("@EmailID", EmailID.Text);
                    cmd.Parameters.AddWithValue("@Address", Address.Text);
                    cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber.Text);
                    cmd.Parameters.AddWithValue("@ZipCode", ZipCode.Text);
                    cmd.Parameters.AddWithValue("@username", UserName.Text);
                    cmd.Parameters.AddWithValue("@password", Password.Text);

                    cmd.ExecuteNonQuery();
                    Status.Text = "Updated successfully";
                    conn.Close();
                    Response.Redirect("Login.aspx", false);

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
