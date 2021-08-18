using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace ProjGroceryStore.Admin
{
    public partial class AddCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineGroceryProjectDBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"]!=null)
            {
                if (IsPostBack)
                {
                   // BindingGridView();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into categoryMst(CName) values (@CName)", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.Parameters.AddWithValue("@CName", txtCategory.Text.Trim());
            cmd.ExecuteNonQuery();
            con.Close();
           
            Response.Write("<script>alert('Added Successfully!')</script>");
            //BindingGridView();
            txtCategory.Text = string.Empty;
            txtCategory.Focus();
        }
        private void BindingGridView()
        {
            SqlCommand cmd = new SqlCommand("select * from categoryMst", con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                GridView1.DataSource = null;
                GridView1.DataBind();

            }
        }
    }
}