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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineGroceryProjectDBConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //if (txtuserid.Text != string.Empty && txtpass.Text != string.Empty)
            //{
            //    Response.Write("<script>alert('Success')</script>");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Validation Error')</script>");
            //}

            if (IsFormValid())
            {
                //Response.Write("<script>alert('Success')</script>");

                try
                {
                    SqlCommand cmd = new SqlCommand("select Username,Password from AdminMst where Username=@Username and Password=@Password", con);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    cmd.Parameters.AddWithValue("@UserName", txtuserid.Text.Trim());
                    cmd.Parameters.AddWithValue("@Pass", txtpass.Text.Trim());
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        Session["Username"] = dr.GetValue(0).ToString();
                        Response.Write("<script>alert('Success')</script>");
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Login')</script>");
                        Response.Redirect("~/Default.aspx");
                    }
                }

                
                catch(Exception ex) 
                { 
                }




            else
            {
                //Response.Write("<script>alert('Validation Error')</script>");
            }
        }

        private bool IsFormValid()
        {
            if (txtuserid.Text == string.Empty)
            {
                Response.Write("<script>alert('Username Empty')</script>");
                txtuserid.Text = string.Empty;
                txtuserid.Focus();
                return false;

            }

            if (txtpass.Text == string.Empty)
            {
                Response.Write("<script>alert('Password Empty')</script>");
                txtpass.Text = string.Empty;
                txtpass.Focus();
                return false;

            }
            return true;
        }
        }
    }
