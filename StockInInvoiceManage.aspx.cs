using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class StockInInvoiceManage : System.Web.UI.Page
{

    public static DataTable TableData = new DataTable();
    public static string Constr = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;



    protected void Page_Load(object sender, EventArgs e)
    {
        //GetStockInInvoiceInfo();
        if (!IsPostBack)
        {

            String DT = System.DateTime.Now.ToString("yyyy-MM-dd");
            String fdt = DT;
            String tdt = DT;

            txtFromDate.Text = fdt;
            txtToDate.Text = tdt;

            LoadManufacInfo();
        }
    }
    protected void LoadManufacInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] Order By 2 Asc ", connection);

        SqlCommand cmd = new SqlCommand("select Distinct Supplier from t_stock ", connection);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        ddlSupplier.Items.Clear();
        ddlSupplier.DataSource = ds.Tables[0];
        ddlSupplier.DataTextField = "Supplier";
        ddlSupplier.DataValueField = "Supplier";
        ddlSupplier.DataBind();
        ddlSupplier.Items.Insert(0, new ListItem("<--Select-->", ""));





    }
    private void GetStockInInvoiceInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock Group By InvoiceNO";

        String WhereSupplierClause = String.Empty;

        String WhereInvoiceNOClause = String.Empty;

        String Supplier = ddlSupplier.SelectedValue.ToString();

        String InvoiceNO = txtInvoiceNO.Text;

       
        if (Supplier == "")
            WhereSupplierClause = "";
        else
            WhereSupplierClause = "Where Supplier like '%" + Supplier + "%' ";

        String WhereEntryDateClause = String.Empty;

        if (WhereSupplierClause == "")
            WhereEntryDateClause = "Where EntryDate between '" + txtFromDate.Text + " 00:00:00.000' and  '" + txtToDate.Text + " 23:59:59.999'";
        else
            WhereEntryDateClause = "and EntryDate between '" + txtFromDate.Text + " 00:00:00.000' and  '" + txtToDate.Text + " 23:59:59.999'";

        if (InvoiceNO == "")
            WhereInvoiceNOClause = "";
        else
            WhereInvoiceNOClause = " and InvoiceNO like '%" + InvoiceNO + "%' ";

        //String SqlStr = @" Select Distinct InvoiceNO, Supplier ,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock  where Supplier='" + ddlSupplier.SelectedValue + "' Group By InvoiceNO,Supplier order by 2 asc";\

        String SqlStr = @" Select Distinct Supplier,InvoiceNO,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock " + WhereSupplierClause + WhereEntryDateClause + WhereInvoiceNOClause + " Group By Supplier, InvoiceNO order by 2 asc";

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        TableData = ds.Tables[0];

        if (ds.Tables[0].Rows.Count > 0)
        {

            GridView1.DataSource = ds;
            GridView1.DataBind();

            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            GridView1.FooterRow.TableSection = TableRowSection.TableFooter;
        }
        
    }
    protected void btnView_Click(object sender, EventArgs e)
    {
        GetStockInInvoiceInfo();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

    }
}