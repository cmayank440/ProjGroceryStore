using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Text;

namespace ProjGroceryStore.Admin
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                if (IsPostBack)
                {
                    // BindingGridView();
                    BindCategory();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }


        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["OnlineGroceryProjectDBConnectionString"].ConnectionString;
        }



        protected void btnAddItem_Click(object sender, EventArgs e)
        {
            if (IsFormValidate())
            {
                //Insert record

                //Insert Image first
                FileUpload1.SaveAs(Server.MapPath("~/img/") + FileUpload1.FileName);
                FileUpload2.SaveAs(Server.MapPath("~/img/") + FileUpload2.FileName);
                FileUpload3.SaveAs(Server.MapPath("~/img/") + FileUpload3.FileName);
                SqlConnection con = new SqlConnection(GetConnectionString());
                SqlCommand cmd = new SqlCommand("insert into ItemMst (IName,Detail,Price,Image,Qnt,AvailQnt,SQnt,CategoryName,EntryDate,Image1,Image2) values (@IName,@Detail,@Price,@Image,@Qnt,@AvailQnt,@SQnt,@CategoryName,@EntryDate,@Image1,@Image2) ", con);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                //cmd.Parameters.AddWithValue(" ", );
                //cmd.Parameters.AddWithValue(" ", );
            }
            else
            {
                Response.Write("<script>alert('Validation Error');</script>");
            }
        }

        private bool IsFormValidate()
        {
            if (txtItemName.Text==string.Empty)
            {

                Response.Write("<script>alert('Item name is required');</script>");
                txtItemName.Text = string.Empty;
                txtItemName.Focus();
                return false;
            }

            if (txtDesc.Text==string.Empty)
            {
                Response.Write("<script>alert('Description Details is required');</script>");
                txtDesc.Text = string.Empty;
                txtDesc.Focus();
                return false;
            }

            if (txtPrice.Text==string.Empty)
            {
                Response.Write("<script>alert('Price details is required');</script>");
                txtPrice.Text = string.Empty;
                txtPrice.Focus();
                return false;
            }
            if (txtQty.Text==string.Empty)
            {
                Response.Write("<script>alert('Quantity details is required');</script>");
                txtQty.Text = string.Empty;
                txtQty.Focus();
                return false;
            }
            if (ddlCategory.SelectedItem.Text==" ")
            {
                Response.Write("<script>alert('Category is required');</script>");
                
                ddlCategory.Focus();
                return false;
            }


            return true;
        }

        private void BindCategory()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            SqlCommand cmd = new SqlCommand("",con);
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CName";
                ddlCategory.DataValueField = "CID";
                ddlCategory.DataBind();
            }
            else
            {
                ddlCategory.DataSource = null;
                ddlCategory.DataBind();

            }
        }








    }
}