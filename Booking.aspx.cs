using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class Booking : System.Web.UI.Page
{
    Boolean flag;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Label1.Visible )
        {
            LinkButton1.Visible = false;
                }
        else
        {
            string constr = " Data Source=omisbi3.niunt.niu.edu;Initial Catalog=Z1781921;Initial Catalog=Z1781921;User ID=z1781921;Password=Bw1243$h11";

            using (SqlConnection con = new SqlConnection(constr))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "SELECT max(CustNo) FROM CUSTINFO ";
                        con.Open();
                        cmd.Connection = con;

                        int count = (int)cmd.ExecuteScalar();
                        int count3;
                        count3 = count + 1;


                        using (var cmd1 = new SqlCommand("INSERT INTO[CustInfo]([CustNo],[Name],[Phone],[email],[Address],[PickUpDate],[DropDate],[NoOfDays],[PickInCIty],[DropOffCity],[CarModel],[Rent]) VALUES(@CustNo, @Name, @Phone, @email, @Address, @PickUpDate, @DropDate, @NoOfDays, @PickInCIty, @DropOffCity, @CarModel,@Rent)"))
                        {
                            //String query = "insert into CUSTINFO values(" + count3 + ",'" + CustomerName.Text + "', '" + PhoneNumber.Text + "', '" + EmailID.Text + "', '" + Address.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "','" + Days.Text + "','" + DropDownList11.Text + "','" + DropDownList2.Text + "',' " + DropDownList1.Text + "', '" + Rent.Text + ")";
                            cmd1.Connection = con;
                            cmd1.Parameters.AddWithValue("@CustNo", count3);
                            cmd1.Parameters.AddWithValue("@Name", CustomerName.Text);
                            cmd1.Parameters.AddWithValue("@Phone", PhoneNumber.Text);
                            cmd1.Parameters.AddWithValue("@email", EmailID.Text);
                            cmd1.Parameters.AddWithValue("@Address", Address.Text);
                            cmd1.Parameters.AddWithValue("@PickUpDate", TextBox2.Text);
                            cmd1.Parameters.AddWithValue("@DropDate", TextBox3.Text);
                            cmd1.Parameters.AddWithValue("@NoOfDays", Days.Text);
                            cmd1.Parameters.AddWithValue("@PickInCity", DropDownList11.Text);
                            cmd1.Parameters.AddWithValue("@DropOffCity", DropDownList2.Text);
                            cmd1.Parameters.AddWithValue("@CarModel", DropDownList1.Text);
                            cmd1.Parameters.AddWithValue("@Rent", Rent.Text);
                            cmd1.ExecuteNonQuery();

                            //to update the vehicle availabiltiy
                            String query2 = "update vehicle set Availability=0 where CarModel='" + DropDownList1.Text + "' ";
                            SqlCommand cmd2 = new SqlCommand(query2);
                            cmd2.Connection = con;

                            cmd2.ExecuteNonQuery();
                            Label2.Visible = true;
                            Label3.Visible = true;
                            Label3.Text = count3.ToString();
                            Button1.Visible = true;
                            LinkButton1.Visible = false;

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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
      
            Calendar1.Visible = false;
            Calendar2.Visible = true;
        
    

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;

    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("MODELS.aspx");
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {

        TextBox3.Text = Calendar2.SelectedDate.ToShortDateString();
        Calendar2.Visible = false;


        TimeSpan ts;
        DateTime a, b;
        a = Calendar1.SelectedDate;
        b = Calendar2.SelectedDate;
        ts = b - a;
        string str1 = ts.ToString();
        int l1 = str1.Length;
        if (l1 == 10)
        {
            str1 = str1.Remove(1);
        }
        else
        {
            str1 = str1.Remove(2);
        }
        int ts2 = Int16.Parse(str1);
        if (ts2 < 0)
        {
            Days.Text = " ";
            TextBox3.Text = " ";
            Label5.Visible = true;
            Calendar2.Visible = true;
        }
        if (ts2 == 0)
        {
            Days.Text = "1";
            TextBox3.Text = Calendar2.SelectedDate.ToShortDateString();
            Label5.Visible = false;
            Calendar2.Visible = false;

        }
        if (ts2 >= 1)
        {
            ts2 = ts2 + 1;
            Days.Text = ts2.ToString();
            TextBox3.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
            Label5.Visible = false;

        }
    }




    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)

    {

        string constr = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=Z1781921;Initial Catalog=Z1781921;User ID=z1781921;Password=Bw1243$h11";

        using (SqlConnection con = new SqlConnection(constr))
        {
            try
            {
                using (SqlCommand cmd3 = new SqlCommand())
                {
                    cmd3.CommandText = "select * from vehicle where Carmodel='" + DropDownList1.Text + "' and Availability=1";
                    con.Open();
                    cmd3.Connection = con;

                    SqlDataReader dr;
                    SqlDataReader dr1;

                    dr1 = cmd3.ExecuteReader();

                    if (!(dr1.Read()))
                    {
                        Label1.Visible = true;
                    }
                    else
                    { Label1.Visible = false;
                    }
                    dr1.Close();
                    dr = cmd3.ExecuteReader();
                    if (dr.Read())
                    {
                        int a = Int32.Parse(Days.Text);
                       String b= dr["price"].ToString();
                        string c = Regex.Replace(b, @"[^\d]", string.Empty);
                         int price = Int32.Parse(c);
                        int total = a * price;

                        Rent.Text = total.ToString();
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

    protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
    {
        DateTime a;
        a = Calendar1.TodaysDate;
        if (Convert.ToDateTime(args.Value) >= a)
        {
            args.IsValid = true;
            flag = true;
        }
        else
        {
            args.IsValid = false;
            TextBox2.Text = "";
            Calendar1.Visible = true;
            Calendar2.Visible = false;


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        Response.Redirect("payment.aspx");
    
}
}
  