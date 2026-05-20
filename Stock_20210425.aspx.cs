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
             //LoadMedicineInfo();
             
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


        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Supplier] Order By 2 Asc", connection);
        SqlCommand cmd = new SqlCommand("select Distinct Manufacturer Manufacturer from [dbo].[t_Medicine] union select  distinct SupplierName Manufacturer  from t_Supplier union select distinct CompanyName from dbo.t_Company   Order by 1 asc", connection);
        


        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        ddlSupplier.Items.Clear();
        ddlSupplier.DataSource = ds.Tables[0];
        ddlSupplier.DataTextField = "Manufacturer";
        ddlSupplier.DataValueField = "Manufacturer";
        ddlSupplier.DataBind();
        ddlSupplier.Items.Insert(0, new ListItem("<--Select-->", ""));








    }
    protected void LoadManufacInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] Order By 2 Asc ", connection);

        SqlCommand cmd = new SqlCommand("select Distinct Manufacturer Manufacturer from [dbo].[t_Medicine] union select  distinct SupplierName Manufacturer  from t_Supplier union select distinct CompanyName from dbo.t_Company   Order by 1 asc ", connection);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        
        ddlManufacturer.Items.Clear();
        ddlManufacturer.DataSource = ds.Tables[0];
        ddlManufacturer.DataTextField = "Manufacturer";
        ddlManufacturer.DataValueField = "Manufacturer";
        ddlManufacturer.DataBind();
        ddlManufacturer.Items.Insert(0, new ListItem("<--Select-->", ""));
        




    }

    protected void LoadMedicineInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);

        //SqlCommand cmd = new SqlCommand("select MedicineName+'-'+Category+'-'+Strength+'-'+Manufacturer MedicineName,ID from t_Medicine ", connection);

        SqlCommand cmd = new SqlCommand("select MedicineName+'-'+Category+'-'+Strength+'-'+Manufacturer MedicineName,ID from t_Medicine ", connection);


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

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Category] Order By 2 Asc ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        /*

        ddlCategory.Items.Clear();
        ddlCategory.DataSource = ds.Tables[0];
        ddlCategory.DataTextField = "CategoryName";
        ddlCategory.DataValueField = "ID";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, new ListItem("<--Select-->", ""));
        */


    }


    protected void btnAddToStock_Click(object sender, EventArgs e)
    {
        AddToStock();
    }


    protected void btnEdit_Click(object sender, EventArgs e)
    {
        /*
        try
        {
            ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;
            hidCustomerID.Value = (grow.FindControl("lblCustomerID") as Label).Text;
            txtCustomerName.Text = (grow.FindControl("lblCustomerName") as Label).Text;
            txtPhoneNumber.Text = (grow.FindControl("lblPhoneNumber") as Label).Text;
            txtAddress.Text = (grow.FindControl("lblAddress") as Label).Text;
            btnSave.Visible = false;
            btnUpdate.Visible = true;
        }
        catch
        {

        }
        */
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        try
        {
            //ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;
            SqlCommand cmd = new SqlCommand();
            String ID = (grow.FindControl("ID") as Label).Text;
            //cmd.CommandText = "update tblCustomers set IsActive=0 where CustomerID=@CustomerID";
            //cmd.Parameters.AddWithValue("@CustomerID", (grow.FindControl("lblCustomerID") as Label).Text);
            //cmd.Connection = con;
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            //FillGrid();
            //lblStatus.Text = "Deleted Successfully.";
            lblStatus.Text = ID;


            try
            {
                SqlConnection connection = new SqlConnection
                  (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

                SqlCommand command = new SqlCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "usp_StokDelete";
                command.Connection = connection;

                SqlParameter[] parameters = 
                    {
                        new SqlParameter("@ID",ID)


                        //new SqlParameter("@Inputter","Tuhin"),
                        

                    };

                command.Parameters.AddRange(parameters);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Stock Deleted Successfully');", true);
                lblStatus.Text = "";

                ClearControl();


                GetReceiveInvoiceInfo(txtReceiveInvoiceNO.Text);


            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.Message;
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            }


        }
        catch
        {

        }
        finally
        {
            //if (con.State == ConnectionState.Open)
            //con.Close();
        }

    }

    private void GetReceiveInvoiceInfo(String InvoiceNO)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) Total_Price from t_Stock where InvoiceNO ='" + InvoiceNO + "' Group By InvoiceNO";

        //String SqlStr = @" select * from dbo.t_Stock Where  InvoiceNO ='" + InvoiceNO + "' order by ID ";

        String SqlStr = @"
                            Select
		
		t.ID
        ,t.ProductCode
		,m.MedicineName
		,m.Strength
		,m.GenericName
		,t.Supplier
		,t.TotalCount
		,t.UnitPrice
		,t.TotalBuyPrice
		,t.TotalSellPrice
		,Convert(varchar(10),t.ManufacDate,112) ManufacDate
		,Convert(varchar(10),t.ExpiryDate,112) ExpiryDate
	from 
		t_Stock t
	Join
		t_Medicine m
	on
		t.ProductCode=m.ID
	Where
		t.InvoiceNO='" + InvoiceNO + "' Order By 1 Asc";

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //TableData = ds.Tables[0];
        GridView1.DataSource = ds;
        GridView1.DataBind();
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
                        //new SqlParameter("@Manufacturer",ddlManufacturer.SelectedItem.ToString()), 
                        new SqlParameter("@Supplier",ddlSupplier.SelectedItem.ToString()), 
                        new SqlParameter("@PackageType",ddlPakagingType.SelectedItem.ToString() ), 
                        new SqlParameter("@PackageCount",txtIPackageCount.Text), 
                        new SqlParameter("@ItemPerPackage",txtItemPerPackage.Text.Trim()), 
                        new SqlParameter("@QuantityPerItem",txtQuantityPerItem.Text.Trim()),
                        
                        new SqlParameter("@UnitPrice",txtUnitPrice.Text.Trim()),
                        new SqlParameter("@TotalCount",txtTotalPcs.Text.Trim()), 
                        new SqlParameter("@TotalBuyPrice",txtTotalBuyPrice.Text.Trim()), 
                        new SqlParameter("@ManufacDate",txtManufacDate.Text.Trim()),
                        new SqlParameter("@ExpiryDate",txtExpiryDate.Text.Trim() ), 
                        new SqlParameter("@Inputter","Tuhin"),


                        //new SqlParameter("@MedicineName",txtMedicineName.Text),
                        //new SqlParameter("@GenericName",txtGenerciName.Text),
                        new SqlParameter("@Strength",ddlMedicine.SelectedItem.ToString().Split('-')[2].Trim()),
                        //new SqlParameter("@Details",txtDetails.Text),

                        //new SqlParameter("@ManufacturerPrice",txtManufacturerPrice.Text),
                        new SqlParameter("@SellPrice",txtSellPrice.Text),
                        new SqlParameter("@TotalSellPrice",  txtTotalSellPrice.Text),
                        new SqlParameter("@InvoiceNO",   txtReceiveInvoiceNO.Text)

                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Stock Added Successfully');", true);
            lblStatus.Text = "";

            ClearControl();


            GetReceiveInvoiceInfo(txtReceiveInvoiceNO.Text);


        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
    private void ClearControl()
    {
        //ddlCategory.SelectedIndex = 0;
        ddlMedicine.SelectedIndex = 0;
        //ddlManufacturer.SelectedIndex = 0;
        ddlSupplier.SelectedIndex = 0;
        ddlPakagingType.SelectedIndex = 0;
        txtIPackageCount.Text = "";
        txtItemPerPackage.Text = "";
        txtQuantityPerItem.Text = "";
        txtTotalPcs.Text = "";
        txtUnitPrice.Text = "";
        txtTotalBuyPrice.Text = "";
        txtManufacDate.Text = "";
        txtExpiryDate.Text = "";

        txtManufacturerPrice.Text = "";
        txtSellPrice.Text = "";
        txtMRP.Text = "";
         
        txtTotalSellPrice.Text = "";
    }
    protected void btnAddToStockAndClear_Click(object sender, EventArgs e)
    {

    }



    protected void btnPrint_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        try
        {
            //ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;
            SqlCommand cmd = new SqlCommand();
            String ID = (grow.FindControl("ID") as Label).Text;
            //cmd.CommandText = "update tblCustomers set IsActive=0 where CustomerID=@CustomerID";
            //cmd.Parameters.AddWithValue("@CustomerID", (grow.FindControl("lblCustomerID") as Label).Text);
            //cmd.Connection = con;
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            //FillGrid();
            //lblStatus.Text = "Deleted Successfully.";
            lblStatus.Text = ID;

            Response.Redirect("StockInInvoiceView.aspx?InvNO=" + txtReceiveInvoiceNO.Text + "");
        }
        catch
        {

        }
        finally
        {
            //if (con.State == ConnectionState.Open)
            //con.Close();
        }

    }
    protected void ddlManufacturer_SelectedIndexChanged(object sender, EventArgs e)
    {
        String Sel = ddlManufacturer.SelectedValue.ToString();


        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);

        //SqlCommand cmd = new SqlCommand("select MedicineName+'-'+Category+'-'+Strength+'-'+Manufacturer MedicineName,ID from t_Medicine ", connection);

        //String sql = @"  select  MedicineName+'-'+Category+'-'+Strength+'-'+Manufacturer MedicineName ,ID from t_Medicine      where Manufacturer like '%" + Sel + "%'";

        String sql = @"  select  MedicineName+'-'+ProductType+'-'+Strength MedicineName ,ID from t_Medicine      where Manufacturer like '%" + Sel + "%'";

        

        //lblStatus.Text = sql;

        SqlCommand cmd = new SqlCommand(sql, connection);


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
    protected void btnPrint_Click1(object sender, EventArgs e)
    {
        Response.Redirect("StockInInvoiceView.aspx?InvNO=" + txtReceiveInvoiceNO.Text + "");
        //StockInInvoiceView.aspx?InvNO
    }
}