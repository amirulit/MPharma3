using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

             
            LoadCategoryInfo();
        }
    }

    protected void LoadCategoryInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Category] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        GridView1.DataSource = ds.Tables[0];
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
                        new SqlParameter("@CategoryName", txtCategoryName.Text) 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Category Added Successfully'); window.opener.location.reload(); window.close();", true);

            //txtInvoiceNO.Text = "";
            txtCategoryName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            LoadCategoryInfo();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
}