using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System;
using System.Web.UI.WebControls;

public partial class Availability : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            // string constr = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=Z1781921;Initial Catalog=Z1781921;User ID=z1781921;Password=Bw1243$h11";
            string constr = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=Z1781921;Initial Catalog=Z1781921;User ID=z1781921;Password=Bw1243$h11";

            using (SqlConnection con = new SqlConnection(constr))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "SELECT CarMake,CarModel,Color,Seating,Economy,Price,Availability FROM Vehicle ";
                        con.Open();
                        cmd.Connection = con;
                        //cmd.Parameters.AddWithValue("@Search", TextBox1.Text);
                        cmd.ExecuteNonQuery();
                        DataTable dt = new DataTable();
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            sda.Fill(dt);
                            CarAvilability.DataSource = dt;
                            CarAvilability.DataBind();
                        }
                    }
                }

                catch (Exception E)
                {
                    String s = E.Message;

                }
                finally
                {
                    if (con != null)
                    {
                        con.Close();
                    }

                }
            }

        }
    }
}




  


