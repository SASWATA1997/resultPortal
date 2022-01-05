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
    public partial class resultShow : System.Web.UI.Page
    {
        string strCon = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Roll_No"].ToString();
            BindControlValues();
        }
        private void BindControlValues()
        {
            SqlConnection conn = new SqlConnection(strCon);
            SqlCommand cmd = new SqlCommand("select * from dbo.studentList where Roll_No='"+ id +"';", conn);
            conn.Open();
            DataSet ds = new DataSet();
            SqlDataAdapter sdr = new SqlDataAdapter(cmd);
            sdr.Fill(ds);
            lbl_id.Text = ds.Tables[0].Rows[0][0].ToString();
            lbl_name.Text= ds.Tables[0].Rows[0][1].ToString();
            lbl_acc.Text= ds.Tables[0].Rows[0][3].ToString();
            lbl_eng.Text= ds.Tables[0].Rows[0][4].ToString();
            lbl_math.Text= ds.Tables[0].Rows[0][5].ToString();
            lbl_eco.Text= ds.Tables[0].Rows[0][6].ToString();
            lbl_bs.Text= ds.Tables[0].Rows[0][7].ToString();
            lbl_tot.Text= ds.Tables[0].Rows[0][8].ToString();
            lbl_gra.Text= ds.Tables[0].Rows[0][10].ToString();
            lbl_res.Text= ds.Tables[0].Rows[0][11].ToString();
            conn.Close();
        }
    }
}