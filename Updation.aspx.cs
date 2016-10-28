using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System;
using System.Web.UI.WebControls;

public partial class Updation : System.Web.UI.Page
{
    String constr = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=Z1781921;Initial Catalog=Z1781921;User ID=z1781921;Password=Bw1243$h11";

    protected void Page_Load(object sender, EventArgs e)
    {
        Update.Visible = false;
        VehicleDetails.Visible = false;


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        using (SqlConnection conn = new SqlConnection(constr))
        {
            try
            {
              using (var cmd1 = new SqlCommand("insert into CityNames(CityName) values(@CityName)"))
                {
                    conn.Open();
                    //cmd1.Parameters.AddWithValue("@CityID", count3);
                    cmd1.Parameters.AddWithValue("@CityName", TextBox1.Text);
                    cmd1.Connection = conn;
                    cmd1.ExecuteNonQuery();
                    Button1.Visible = false;
                    Update.Visible = true;

                    conn.Close();


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
    protected void Button2_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(constr))
        {
            try
            {
          
                using (var cmd1 = new SqlCommand("INSERT INTO [Vehicle] ([CarMake],[CarModel],[Color],[Seating],[Economy],[Price],[Availability]) VALUES(@Make,@Model,@Color,@Seating,@Economy,@Price,@Avail)"))
                {

                    //cmd1.CommandText = "INSERT INTO [Vehicle] ([CarMake],[CarModel],[Color],[Seating],Economy],[Price],[Availability]) VALUES(@Make,@Model,@Color,@Seating,@Economy,@Price,@Avail)";
                    cmd1.Connection = conn;
                    cmd1.Parameters.AddWithValue("@Make", TextBox3.Text);
                    cmd1.Parameters.AddWithValue("@Model", TextBox4.Text);
                    cmd1.Parameters.AddWithValue("@Color", TextBox7.Text);
                    cmd1.Parameters.AddWithValue("@Seating", TextBox8.Text);
                    cmd1.Parameters.AddWithValue("@Economy", TextBox9.Text);
                    cmd1.Parameters.AddWithValue("@Price", TextBox5.Text);
                    cmd1.Parameters.AddWithValue("@Avail", TextBox6.Text);

                    //cmd1.Connection = conn1;
                    cmd1.ExecuteNonQuery();
                    //conn1.Close();
                    Button2.Visible = false;
                    VehicleDetails.Visible = true;
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