using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Report : System.Web.UI.Page
{

    public static DataTable TableData = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {
            txtFromDate.Text = txtFDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
            txtToDate.Text = txtTDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
            txtExpiringMonth.Text = System.DateTime.Now.ToString("yyyy-MM");


            TextBox5.Text = System.DateTime.Now.ToString("yyyy-MM-dd");


            //Load();
            LoadSupplierInfo();


            LoadManufacInfo();

        }

        TableData = Menu();
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

        DropDownList4.Items.Clear();
        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "Manufacturer";
        DropDownList4.DataValueField = "Manufacturer";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("<--Select-->", ""));


        



    }

    protected DataTable Menu()
    {
        // Step 2: here we create a DataTable.
        // ... We add 4 columns, each with a Type.
        DataTable table = new DataTable();
        table.Columns.Add("SL", typeof(int));
        table.Columns.Add("ParentMenu", typeof(String));
        table.Columns.Add("ChildMenu", typeof(String));
        table.Columns.Add("MenuLink", typeof(String));

        // Step 3: here we add rows.
        table.Rows.Add(1, "Dashboard", "Dashboard 1", "Dashboard.aspx");
        table.Rows.Add(1, "Dashboard", "Dashboard 2", "Dashboard.aspx");
        table.Rows.Add(2, "Sell", "New Sell", "Sell.aspx");
        table.Rows.Add(3, "Sell", "Sell Manage", "SellManage.aspx");
        table.Rows.Add(4, "Report", "Report 1", "SellManage.aspx");
        table.Rows.Add(5, "Report", "Report 2", "SellManage.aspx");
        return table;
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

        ddlCompany.Items.Clear();
        ddlCompany.DataSource = ds.Tables[0];
        ddlCompany.DataTextField = "Manufacturer";
        ddlCompany.DataValueField = "Manufacturer";
        ddlCompany.DataBind();
        ddlCompany.Items.Insert(0, new ListItem("<--Select-->", ""));








    }
    

    protected void Load()
    {
        SqlConnection connection = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock Group By InvoiceNO";




        String SqlStr = @" Select distinct s.Manufacturer,sum(s.TotalBuyPrice) TotalBuyPrice,sum(s.TotalSellPrice) TotalSellPrice from
(
select s.BuyPrice*s.TotalCount TotalBuyPrice,s.SellPrice*s.TotalCount TotalSellPrice,s.StockID,s.BuyPrice,s.SellPrice,s.ID,s.TotalCount,m.MedicineName,m.Manufacturer from t_StockCount s
join t_Medicine m
on 
s.ProductCode=m.ID	
)s Group By s.Manufacturer";

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //TableData = ds.Tables[0];


        //GridView1.DataSource = ds;
        //GridView1.DataBind();

        //String tot_buy_price = ds.Tables[0].Compute("Sum(TotalBuyPrice)", "").ToString();
        //String tot_sell_price = ds.Tables[0].Compute("Sum(TotalSellPrice)", "").ToString();

        //Label1.Text = tot_buy_price;
        //Label2.Text = tot_sell_price;

        //GridView1.UseAccessibleHeader = true;
        //GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        //GridView1.FooterRow.TableSection = TableRowSection.TableFooter;
    }
}