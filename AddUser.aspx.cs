using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class AddUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadUserInfo();
        }
    }


    protected void LoadUserInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_User] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();









    }

    protected void LoadProductTypeInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_ProductType] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);









    }
    protected void btnCategorySave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_CategoryAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@CategoryName","") 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Category Added Successfully');", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            //LoadCategoryInfo();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
    protected void btnSaveUserInfo_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_UserCreate";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@UserID", txtUserID.Text), 
                        new SqlParameter("@UserName",  txtUserName.Text ) ,
                        new SqlParameter("@Role", ddlRole.SelectedValue.ToString()) ,
                        new SqlParameter("@Contact", txtContact.Text) ,
                        new SqlParameter("@Address", txtContact.Text) ,
                        new SqlParameter("@Password", txtPassword.Text) ,
                        
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New User Created Successfully');", true);

            txtUserID.Text = "";
            txtUserName.Text = "";
            txtContact.Text = "";





            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            LoadUserInfo();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
}