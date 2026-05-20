using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Stock : System.Web.UI.Page
{

    public static DataTable TableData = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
        txtStockInDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");

        if (!IsPostBack)
        {

             LoadManufacInfo();
             LoadSupplierInfo();
             LoadMedicineInfo();
             
             LoadCategoryInfo();



            //if (Request.QueryString.AllKeys.Contains("InvNO"))
            //{
            //    Int32 InvoiceNO = Convert.ToInt32(Request.QueryString[0].ToString());
            //    if (InvoiceNO != null)
            //    {
            //        GetSaleInfo(InvoiceNO);
            //    }
            //}
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


        ddlMedicine.Items.Clear();
        ddlMedicine.DataSource = ds.Tables[0];
        ddlMedicine.DataTextField = "MedicineName";
        ddlMedicine.DataValueField = "ID";
        ddlMedicine.DataBind();
        ddlMedicine.Items.Insert(0, new ListItem("<--Select-->", ""));








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




        ddlCategory.Items.Clear();
        ddlCategory.DataSource = ds.Tables[0];
        ddlCategory.DataTextField = "CategoryName";
        ddlCategory.DataValueField = "ID";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, new ListItem("<--Select-->", ""));



    }


    protected void btnAddToStock_Click(object sender, EventArgs e)
    {
        AddToStock();
    }


    private void GetReceiveInvoiceInfo(String InvoiceNO)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalPrice) Total_Price from t_Stock where InvoiceNO ='" + InvoiceNO + "' Group By InvoiceNO";
        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        TableData = ds.Tables[0];
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
    }
    protected void AddToStock()
    {

        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_StockAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@ProductCode",   ddlMedicine.SelectedValue.ToString()), 
                        new SqlParameter("@Manufacturer",ddlManufacturer.SelectedItem.ToString()), 
                        new SqlParameter("@Supplier",ddlSupplier.SelectedItem.ToString()), 
                        new SqlParameter("@PackageType",ddlPakagingType.SelectedItem.ToString() ), 
                        new SqlParameter("@PackageCount",txtIPackageCount.Text), 
                        new SqlParameter("@ItemPerPackage",txtItemPerPackage.Text.Trim()), 
                        new SqlParameter("@QuantityPerItem",txtQuantityPerItem.Text.Trim()),
                        new SqlParameter("@TotalCount",txtTotalPcs.Text ), 
                        new SqlParameter("@UnitPrice",txtUnitPrice.Text),
                        new SqlParameter("@TotalPrice",txtTotalPrice.Text.Trim()), 
                        new SqlParameter("@ManufacDate",txtManufacDate.Text.Trim()),
                        new SqlParameter("@ExpiryDate",txtExpiryDate.Text.Trim() ), 
                        new SqlParameter("@Inputter","Tuhin"),


                        new SqlParameter("@MedicineName",txtMedicineName.Text),
                        new SqlParameter("@GenericName",txtGenerciName.Text),
                        new SqlParameter("@Strength",txtStrength.Text),
                        new SqlParameter("@Details",txtDetails.Text),

                        new SqlParameter("@ManufacturerPrice",txtManufacturerPrice.Text),
                        new SqlParameter("@SellPrice",txtSellPrice.Text),

                        new SqlParameter("@InvoiceNO",   txtReceiveInvoiceNO.Text)

                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Stock Added Successfully');", true);


            ClearControl();


            GetReceiveInvoiceInfo(txtReceiveInvoiceNO.Text);


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
    private void ClearControl()
    {
        ddlCategory.SelectedIndex = 0;
        ddlMedicine.SelectedIndex = 0;
        ddlManufacturer.SelectedIndex = 0;
        ddlSupplier.SelectedIndex = 0;
        ddlPakagingType.SelectedIndex = 0;
        txtIPackageCount.Text = "";
        txtItemPerPackage.Text = "";
        txtQuantityPerItem.Text = "";
        txtTotalPcs.Text = "";
        txtUnitPrice.Text = "";
        txtTotalPrice.Text = "";
        txtManufacDate.Text = "";
        txtExpiryDate.Text = "";
    }
    protected void btnAddToStockAndClear_Click(object sender, EventArgs e)
    {

    }
}