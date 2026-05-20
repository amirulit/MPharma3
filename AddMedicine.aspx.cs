using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services;

public partial class AddMedicine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //LoadMedicineInfo();
            LoadGenericInfo();
            LoadManufaqInfo();
            LoadCategoryInfo();
        }
    }



    protected void LoadManufaqInfo()
    {

        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);





        ddlManufacturer.Items.Clear();
        ddlManufacturer.DataSource = ds.Tables[0];
        ddlManufacturer.DataTextField = "CompanyName";
        ddlManufacturer.DataValueField = "CompanyName";
        ddlManufacturer.DataBind();
        ddlManufacturer.Items.Insert(0, new ListItem("<--Select-->", ""));


        DropDownList1.Items.Clear();
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "CompanyName";
        DropDownList1.DataValueField = "CompanyName";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("<--Select-->", ""));
    }



    protected void LoadCompanyInfo()
    {

        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);





        ddlManufacturer.Items.Clear();
        ddlManufacturer.DataSource = ds.Tables[0];
        ddlManufacturer.DataTextField = "CompanyName";
        ddlManufacturer.DataValueField = "ID";
        ddlManufacturer.DataBind();
        ddlManufacturer.Items.Insert(0, new ListItem("<--Select-->", ""));
    }

    protected void LoadGenericInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_GenericName] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);





        ddlGeneric.Items.Clear();
        ddlGeneric.DataSource = ds.Tables[0];
        ddlGeneric.DataTextField = "GenericName";
        ddlGeneric.DataValueField = "GenericName";
        ddlGeneric.DataBind();
        ddlGeneric.Items.Insert(0, new ListItem("<--Select-->", ""));


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
        ddlCategory.DataValueField = "CategoryName";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, new ListItem("<--Select-->", ""));


    }

    public class Category
    {

        public string Name { get; set; }
         
        public string Remarks { get; set; }
    }

    [WebMethod()]
    public static string CatyegoryInfoSave(Category Cat)
    {

        String Out = String.Empty;
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
                        new SqlParameter("@CategoryName", Cat.Name) 
                        ,new SqlParameter("@CategoryRemarks", Cat.Remarks) 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Category Added Successfully'); window.opener.location.reload(); window.close();", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            //LoadCategoryInfo();

            Out = "Ok";


        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            Out = "Error";
        }

        return Out;
    }

    public class Company
    {

        public string Name { get; set; }
        public string Address { get; set; }
        public string Remarks { get; set; }
    }


    public class Medicine
    {

        public string MedicineName { get; set; }
        public string ProductType { get; set; }
        public string Category { get; set; }
        public string Strength { get; set; }
        public string GenericName { get; set; }
        public string Manufacturer { get; set; }
        public string Remarks { get; set; }
        public string MINQTY { get; set; }

    }


    [WebMethod()]
    public static string MedicineInfoSave(Medicine Med)
    {
        String Out = String.Empty;
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
                        new SqlParameter("@MedicineName", Med.MedicineName),
                        new SqlParameter("@Category", Med.Category ),
                        new SqlParameter("@Strength",  Med.Strength),
                        new SqlParameter("@GenericName",Med.GenericName),
                        new SqlParameter("@ProductType",Med.ProductType),
                        new SqlParameter("@Manufacturer", Med.Manufacturer ),
                        new SqlParameter("@Remarks",   Med.Remarks ),
                        new SqlParameter("@MINQTY",   Med.MINQTY )
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Medicine Info Added Successfully');opener.location.reload();window.close();", true);
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Medicine Info Added Successfully');", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";




            Out = "Ok";
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            Out = "Error";

        }

        return Out;
    }

    [WebMethod()]
    public static string CompanyInfoSave(Company Com)
    {
        String Out = String.Empty;
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_CompanyAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@CompanyName",  Com.Name), 
                        new SqlParameter("@CompanyAddress",  Com.Address), 
                        new SqlParameter("@Remarks",Com.Remarks) 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Company Added Successfully');opener.location.reload();window.close();", true);

            //LoadCompanyInfo();

            //txtCompanyName.Text = "";
            //txtCompanyAddress.Text = "";
            //txtRemarks.Text = "";

            Out = "Ok";
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            Out = "Error";
        
        }

        return Out;
    }

    [WebMethod()]
    public static string UpdateMedicineInfo(Int32 ID, String MedName, String Strength, String GenericName, String MedicineType, String MINQTY)
    {
        String Out = String.Empty;
        /*
        String Sql = @"UPDATE [MPharma].[dbo].[t_Medicine]
     SET [MedicineName] = '" + MedName + "' , [Strength] ='" + Strength + "' ,[GenericName] ='" + GenericName + "' ,[ProductType]='" + MedicineType + "'  WHERE ID= " + ID;

        Sql = Sql + "";
         */
        

        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_MedicineInfoUpdate";
            command.Connection = connection;

            command.Parameters.Add("@ID", SqlDbType.Int).Value = ID;
            command.Parameters.Add("@NewMedicineName", SqlDbType.VarChar).Value = MedName;
            command.Parameters.Add("@NewStrength", SqlDbType.VarChar).Value = Strength;
            command.Parameters.Add("@NewGenenricName", SqlDbType.VarChar).Value = GenericName;
            command.Parameters.Add("@NewProductType", SqlDbType.VarChar).Value = MedicineType;

            command.Parameters.Add("@NewMINQTY", SqlDbType.Decimal).Value = MINQTY;



            connection.Open();
            Int32 i = command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Generic Added Successfully');opener.location.reload();window.close();", true);

            //LoadGenericInfo();


            //txtGenericName.Text = "";
            //txtRemarks.Text = "";
            if (i > 0)
                Out = "Ok";
            else
                Out = "Error";
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            Out = "Error :" + ex.Message;
        }
        return Out;
    }

    [WebMethod()]
    public static string SaveGenericInfo(Generic Gen)
    {


        /*
        
        //return "100";

        //String branchcode = HttpContext.Current.Session["BranchCode"].ToString();
        String InvoiceNO = String.Empty;


        try
        {

            String cs = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = cs;


            //SqlConnection connection = new SqlConnection
            //(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_InvoiceNOGen";
            command.Connection = connection;
            connection.Open();
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            connection.Close();

            InvoiceNO = ds.Tables[0].Rows[0][0].ToString();



        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }

        return InvoiceNO.ToString();
        //return "testing";
        */
        String Out = String.Empty;
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_GenericNameAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@GenericName",Gen.Name), 
                        new SqlParameter("@Remarks",Gen.Remarks) 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Generic Added Successfully');opener.location.reload();window.close();", true);

            //LoadGenericInfo();


            //txtGenericName.Text = "";
            //txtRemarks.Text = "";
            Out = "Ok";
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            Out = "Error";
        }

        return Out;

    }


    public class Generic
    {

        public string Name { get; set; }
        public string Remarks { get; set; }  
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
                        new SqlParameter("@MedicineName",txtDrugName.Text),
                        new SqlParameter("@Category", ddlCategory.SelectedValue.ToString()),
                        new SqlParameter("@Strength",  txtStrength.Text.ToLower()),
                        new SqlParameter("@GenericName", ddlGeneric.SelectedValue.ToString()),
                        new SqlParameter("@ProductType", ddlProductType.SelectedValue),
                        new SqlParameter("@Manufacturer", ddlManufacturer.SelectedValue.ToString()),
                        new SqlParameter("@Remarks",  txtRemarks.Text),
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Medicine Info Added Successfully');opener.location.reload();window.close();", true);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Medicine Info Added Successfully');", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));


            LoadMedicineInfo();

            ClearControl();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }


    }


    protected void ClearControl()
    {
        txtDrugName.Text = "";
        ddlGeneric.SelectedIndex = 0;
        ddlManufacturer.SelectedIndex = 0;
        txtRemarks.Text = "";
        txtStrength.Text = "";

        ddlCategory.SelectedIndex = 0;
        ddlProductType.SelectedIndex = 0;
    }

    protected void LoadMedicineInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);
        String Str = @" Select   
	t.ID
	,left(t.MedicineName,100) MedicineName
	,left(t.Strength,30) Strength
	,left(t.GenericName,30) GenericName
	,t.ProductType
    ,left(t.Manufacturer,30) Manufacturer
from 
	[MPharma].[dbo].[t_Medicine] t Order by 1 Asc ";

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);
        SqlCommand cmd = new SqlCommand(Str, connection);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();




        GridView2.UseAccessibleHeader = true;
        GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;



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

    [WebMethod()]
    public static string getMedicineInfo(Int32 ID)
    {
        //return "100";

        //String branchcode = HttpContext.Current.Session["BranchCode"].ToString();
        String MedInfo = String.Empty;


        try
        {

            String cs = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = cs;


            //SqlConnection connection = new SqlConnection
            //(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            String Sql = @"Select * from t_Medicine  where  ID=" + ID;

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.Text;
            command.CommandText = Sql;
            command.Connection = connection;
            connection.Open();
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            connection.Close();

            MedInfo = ds.Tables[0].Rows[0][1].ToString() + "~" + ds.Tables[0].Rows[0][3].ToString() + "~" + ds.Tables[0].Rows[0][4].ToString() + "~" + ds.Tables[0].Rows[0][5].ToString() + "~" + ds.Tables[0].Rows[0][8].ToString();



        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }

        return MedInfo.ToString();
        //return "testing";
    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String Sel = DropDownList1.SelectedValue.ToString();

        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);
        String Str = @" Select   
	t.ID
	,left(t.MedicineName,100) MedicineName
	,left(t.Strength,30) Strength
	,left(t.GenericName,30) GenericName
	,t.ProductType
,ALERT_MIN_QTY
    --,left(t.Manufacturer,30) Manufacturer
from 
	[MPharma].[dbo].[t_Medicine] t Where Manufacturer like '%" + Sel + "%' Order by 1 Asc ";

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);
        SqlCommand cmd = new SqlCommand(Str, connection);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //if (ds.Tables[0].Rows.Count > 0)
        //{
            GridView2.DataSource = ds;
            GridView2.DataBind();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView2.UseAccessibleHeader = true;
                GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;

                lblStatus.Text = "";
            }
        //}
        //else
        //{
            //lblStatus.Text = "No Product Found.";
            
        //}
    }
    protected void btnReload_Click(object sender, EventArgs e)
    {

    }
}