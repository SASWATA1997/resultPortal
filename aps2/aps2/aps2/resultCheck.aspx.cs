using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace aps2
{
    public partial class resultCheck : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strCon);
                SqlCommand cmd = new SqlCommand("select Roll_No,Date_of_birth,Result from dbo.studentList where Roll_No='" + txt_id.Text + "';", conn);
                string a, b, c;
                string d, f;
                Console.WriteLine("connected");

                a = Convert.ToString(txt_id.Text);
                b = Convert.ToString(txt_dob.Text);
                conn.Open();

                DataSet ds = new DataSet();
                SqlDataAdapter sdr = new SqlDataAdapter(cmd);
                sdr.Fill(ds);
                d = ds.Tables[0].Rows[0][0].ToString();
                f = ds.Tables[0].Rows[0][1].ToString();
                c = ds.Tables[0].Rows[0][2].ToString();
                conn.Close();

                if ((a == d) && (b == f))
                {
                    if (c == "FAILED")
                    {
                        lbl_star.Text = "CONTACT WITH COLLEGE";
                    }
                    else
                    {
                        Response.Redirect("resultShow.aspx?Roll_No=" + txt_id.Text + "");
                    }
                }
                else
                {
                    lbl_star.Text = "PLEASE GIVE YOUR VALID DOB AND ID";
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('id mistake')",true);
                Console.WriteLine("not connected");
                
            }
        }
    }
}