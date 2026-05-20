using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCategoryInfo();
            LoadMedicineInfo();

            LoadManufacInfo();
            LoadSupplierInfo();
        }
    }



    protected void LoadManufacInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Manufacturer] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView3.DataSource = ds;
        GridView3.DataBind();








    }

    protected void LoadSupplierInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Supplier] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView4.DataSource = ds;
        GridView4.DataBind();








    }
    protected void btnManufacSave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_ManufacAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@ManufacturerName",  txtManufacturerName.Text)
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Manufacturer Added Successfully');", true);


            txtManufacturerName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            LoadManufacInfo();




        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }


    protected void btnSupplierSave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_SupplierAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@SupplierName", txtSupplierName.Text) ,
                        new SqlParameter("@SupplierAddress", txtSupplierAddr.Text) 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Supplier Added Successfully');", true);

            txtSupplierName.Text = "";
            txtSupplierAddr.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            LoadSupplierInfo();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
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
        GridView1.DataSource = ds;
        GridView1.DataBind();





        ddlCategoryName.Items.Clear();
        ddlCategoryName.DataSource = ds.Tables[0];
        ddlCategoryName.DataTextField = "CategoryName";
        ddlCategoryName.DataValueField = "ID";
        ddlCategoryName.DataBind();
        ddlCategoryName.Items.Insert(0, new ListItem("<--Select-->", ""));


    }

    protected void LoadMedicineInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();








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
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Category Added Successfully');", true);

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
    protected void btnSubCategorySave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_MedicineAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@MedicineName",txtProductTypeName.Text),
                         new SqlParameter("@CategoryID", ddlCategoryName.SelectedValue.ToString()) 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Product Type Added Successfully');", true);

            //txtInvoiceNO.Text = "";
            txtCategoryName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));


            LoadMedicineInfo();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
}