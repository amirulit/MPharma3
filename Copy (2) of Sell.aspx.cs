using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Services;

public partial class Sell : System.Web.UI.Page
{

    public static DataTable TableData = new DataTable();
    public static String Constr = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;

    public String dashboard = "100;50;99;60";
    public String tot_inv_amount;


    [WebMethod()]
    public static string getInvoiceNO(String inv_type)
    {
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
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        txtSellDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");

        if (Request.QueryString.AllKeys.Contains("InvNO"))
        {
            txtInvoiceNO.Text = Request.QueryString[0].ToString();
            String InvoiceNO = Request.QueryString[0].ToString();
            if (InvoiceNO != null)
            {
                GetSellInfo(InvoiceNO);
            }
        }

        if (!IsPostBack)
        {
            LoadMedicineInfo();
            ControlClear();
        }
    }

    protected void ControlClear()
    {
        txtCusID.Text = "";
        txtCusName.Text = "";
        ddlDiscountCode.SelectedIndex = 0;


        txtDiscount.Text = "0.00";
        txtInvoiceAmount.Text = "0.00";
        txtTotalDiscount.Text = "0.00";
        txtTAX.Text = "0.00";
        txtVAT.Text = "0.00";
        txtNetTotal.Text = "0.00";
        txtPaidAmount.Text = "0.00";
        txtChange.Text = "0.00";

    }



    protected void LoadMedicineInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);

        //SqlCommand cmd = new SqlCommand("select MedicineName+'-'+Category+'-'+Strength+'-'+Manufacturer MedicineName,ID from       t_Medicine ", connection);

        SqlCommand cmd = new SqlCommand("select StockID+' ~ Available : '+CONVERT(varchar(500),TotalCount) Product,CONVERT(varchar(500),ID)+'~'+CONVERT(varchar(500),ProductCode) StockID from t_StockCount", connection);

         

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        ddlMedicine.Items.Clear();
        ddlMedicine.DataSource = ds.Tables[0];
        ddlMedicine.DataTextField = "Product";
        ddlMedicine.DataValueField = "StockID";
        ddlMedicine.DataBind();
        ddlMedicine.Items.Insert(0, new ListItem("<--Select-->", ""));








    }


    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_SellAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@InvoiceNO",txtInvoiceNO.Text.Trim()), 
                        new SqlParameter("@CustomerID",txtCusID.Text.Trim()), 
                        new SqlParameter("@CustomerName",txtCusName.Text.Trim()),
                        new SqlParameter("@StockID",ddlMedicine.SelectedValue.ToString().Split('~')[0].ToString().Trim()), 
                        new SqlParameter("@ProductCode",ddlMedicine.SelectedValue.ToString().Split('~')[1].ToString().Trim()), 
                        new SqlParameter("@Quantity",txtQuantity.Text.Trim()), 
                        new SqlParameter("@SellPrice",txtUnitPrice.Text.Trim()), 
                        new SqlParameter("@TotalSellPrice",txtTotalPrice.Text.Trim()), 
                        new SqlParameter("@Discount",txtDiscount.Text.Trim()),
                        new SqlParameter("@NetReceivable", txtNetAmount.Text.Trim() ), 
                        new SqlParameter("@Salesman","Tuhin")
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Item Added to Cart Successfully');", true);
            lblStatus.Text = "";
            //txtInvoiceNO.Text = "";
            //txtProductID.Text = "";
            //txtProductName.Text = "";
            txtQuantity.Text = "";
            txtTotalPrice.Text = "";
            txtDiscount.Text = "0.00";
            txtNetAmount.Text = "";
            txtUnitPrice.Text = "";
            ddlDiscountCode.SelectedIndex = 0;

            LoadMedicineInfo();

            GetSellInfo(txtInvoiceNO.Text);




        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }

    private void GetSellInfo(String InvNO)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("Select (Select MedicineName from t_Medicine  where ID=s.ProductCode) ProductName,s.* from [MPharma].[dbo].[t_Sell] s where InvoiceNO='" + InvNO + "'", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        TableData = ds.Tables[0];
        //GridView1.DataSource = ds;
        //GridView1.DataBind();


        tot_inv_amount = TableData.Compute("Sum(NetReceivable)", "").ToString();
        txtInvoiceAmount.Text = tot_inv_amount;
        txtNetTotal.Text = tot_inv_amount;
    }


    protected void btnCreateInvoice_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_InvoiceCreate";
            command.Connection = connection;


            /*
            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@InvoiceNO",       txtInvoiceNO.Text.Trim()), 
                        new SqlParameter("@InvoiceAmount", txtInvoiceAmount.Text.Trim()), 
                        new SqlParameter("@TotalDiscount",  txtTotalDiscount.Text.Trim()), 
                        new SqlParameter("@VAT", txtVAT.Text.Trim()), 
                        new SqlParameter("@TAX",  txtTAX.Text.Trim()), 
                        new SqlParameter("@NetAmount",  txtNetTotal.Text.Trim()), 
                        new SqlParameter("@PaidAmount",  txtPaidAmount.Text.Trim()),
                        new SqlParameter("@Change", txtChange.Text.Trim()), 
                        new SqlParameter("@Inputter","Tuhin")
                    };
            command.Parameters.AddRange(parameters);
            */

            command.Parameters.Add("@InvoiceNO", SqlDbType.VarChar).Value = txtInvoiceNO.Text.Trim();
            command.Parameters.Add("@InvoiceAmount", SqlDbType.Decimal).Value = txtInvoiceAmount.Text.Trim();
            command.Parameters.Add("@TotalDiscount", SqlDbType.Decimal).Value = txtTotalDiscount.Text.Trim();
            command.Parameters.Add("@VAT", SqlDbType.Decimal).Value = txtVAT.Text.Trim();
            command.Parameters.Add("@TAX", SqlDbType.Decimal).Value = txtTAX.Text.Trim();
            command.Parameters.Add("@NetAmount", SqlDbType.Decimal).Value = txtNetTotal.Text.Trim();
            command.Parameters.Add("@PaidAmount", SqlDbType.Decimal).Value = txtPaidAmount.Text.Trim();
            command.Parameters.Add("@Change", SqlDbType.Decimal).Value = txtChange.Text.Trim();
            command.Parameters.Add("@Inputter", SqlDbType.VarChar).Value = "Tuhin";



            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Invoice Created Successfully');", true);

            String InvNO = txtInvoiceNO.Text;

            ControlClear();


            //GetSellInfo("999999");

            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            Response.Redirect("CustomerInvoiceView.aspx?InvNO=" + InvNO);
        }

        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
}