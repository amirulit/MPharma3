using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            LoadCategoryInfo();
            LoadProductTypeInfo();
            LoadManufacInfo();
            LoadSupplierInfo();
        }
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

        ddlSupplier.Items.Clear();
        ddlSupplier.DataSource = ds.Tables[0];
        ddlSupplier.DataTextField = "SupplierName";
        ddlSupplier.DataValueField = "ID";
        ddlSupplier.DataBind();
        ddlSupplier.Items.Insert(0, new ListItem("<--Select-->", ""));








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






        ddlCategoryName.Items.Clear();
        ddlCategoryName.DataSource = ds.Tables[0];
        ddlCategoryName.DataTextField = "CategoryName";
        ddlCategoryName.DataValueField = "ID";
        ddlCategoryName.DataBind();
        ddlCategoryName.Items.Insert(0, new ListItem("<--Select-->", ""));


    }

    protected void LoadProductTypeInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        ddlProductType.Items.Clear();
        ddlProductType.DataSource = ds.Tables[0];
        ddlProductType.DataTextField = "MedicineName";
        ddlProductType.DataValueField = "ID";
        ddlProductType.DataBind();
        ddlProductType.Items.Insert(0, new ListItem("<--Select-->", ""));






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


        ddlManufacturer.Items.Clear();
        ddlManufacturer.DataSource = ds.Tables[0];
        ddlManufacturer.DataTextField = "ManufacturerName";
        ddlManufacturer.DataValueField = "ID";
        ddlManufacturer.DataBind();
        ddlManufacturer.Items.Insert(0, new ListItem("<--Select-->", ""));





    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {

        Label1.Text = ddlProductType.SelectedValue.ToString() + "-" + ddlManufacturer.SelectedItem.ToString() + "-" + ddlSupplier.SelectedItem.ToString();

        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_SearchProduct";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@ProductCode",ddlProductType.SelectedValue.ToString()), 
                        new SqlParameter("@ManufaqName",ddlManufacturer.SelectedItem.ToString()), 
                        new SqlParameter("@SupplierName",ddlSupplier.SelectedItem.ToString())
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();

            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {

                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();



                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Total " + ds.Tables[0].Rows.Count + " Items Found');", true);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('No Item Found');", true);
            }





        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }

}