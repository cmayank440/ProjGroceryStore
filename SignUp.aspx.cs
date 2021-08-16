using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace ProjGroceryStore
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Registration();
        }
        private void Registration() 
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineGroceryProjectDBConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into Login (Name,SurName,Address,City,Pincode,Mobile,Password,Email,Gender,EntryDate) values(@Name,@SurName,@Address,@City,@Pincode,@Mobile,@Password,@Email,@Gender,GETDATE())", con);
                if (con.State ==ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.Parameters.AddWithValue("@Name", txtname.Text);
                cmd.Parameters.AddWithValue("@SurName", txtSurname.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@City", TxtCity.Text);
                cmd.Parameters.AddWithValue("@Pincode", TxtPincode.Text);
                cmd.Parameters.AddWithValue("@Mobile", TxtMobile.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Clr();
                Response.Write("<script>alert('Success')</script>");


            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }

        }
        private void Clr()
        {
            txtname.Text = string.Empty;
            //txtname.Text = string.Empty;
            txtSurname.Text = string.Empty;
            //txtSurname.Text = string.Empty;
            txtAddress.Text = string.Empty;
            //txtAddress.Text = string.Empty;
            TxtCity.Text = string.Empty;
            //TxtCity.Text = string.Empty;
            TxtPincode.Text = string.Empty;
            //TxtPincode.Text = string.Empty;
            TxtMobile.Text = string.Empty;
            //TxtMobile.Text = string.Empty;
            //txtpass.Text = string.Empty;
            //txtpass.Text = string.Empty;
            txtEmail.Text = string.Empty;
            //txtEmail.Text = string.Empty;
            ddlGender.SelectedIndex = -1 ;
            txtDate.Text = string.Empty;
            txtname.Focus();
        }
    }
}