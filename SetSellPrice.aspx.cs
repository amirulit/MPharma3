using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SetSellPrice : System.Web.UI.Page
{

    public Double old_qty = 0.00;

    public decimal old_count;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductInfo();
        }
    }

    protected void GetProductInfo()
    {


        Int32 Prod_Code = Convert.ToInt32(Request.QueryString[0].ToString());

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock Group By InvoiceNO";

        //String SqlStr = @" Select * from dbo.t_Sell Where Date between '" + fdt + " 00:00:00.000' and '" + tdt + " 23:59:59.999' ";
        //Distinct '<a href=javascript:OpenWin('''+t.InvoiceNO+''')>'+t.InvoiceNO+'</a>' InvoiceNO
        String SqlStr = @"  select * from dbo.t_StockCount  where ProductCode=" + Prod_Code;



 
        //Label1.Text = SqlStr;

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            lblProductCode.Text = ds.Tables[0].Rows[0]["ProductCode"].ToString();
            lblStockID.Text = ds.Tables[0].Rows[0]["StockID"].ToString();
            lblID.Text = ds.Tables[0].Rows[0]["ID"].ToString();
            txtBuyPrice_Present.Text = ds.Tables[0].Rows[0]["BuyPrice"].ToString();
            txtBuyPrice_New.Text = ds.Tables[0].Rows[0]["BuyPrice"].ToString();
            txtSellPrice_Present.Text = ds.Tables[0].Rows[0]["SellPrice"].ToString();
            txtSellPrice_New.Text = ds.Tables[0].Rows[0]["SellPrice"].ToString();

            txtQuantity.Text = ds.Tables[0].Rows[0]["TotalCount"].ToString();

            old_qty = Convert.ToDouble(ds.Tables[0].Rows[0]["TotalCount"].ToString());

        }
        else
        {
            lblStatus.Text = "No Record Found";
        }

        //TableData = ds.Tables[0];
        //GridView1.DataSource = ds;
        //GridView1.DataBind();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        UpdateStockInfo();
    }

    protected void UpdateStockInfo()
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_UpdateStockInfo";
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

            command.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(lblID.Text);
            command.Parameters.Add("@ProductCode", SqlDbType.Int).Value = Convert.ToInt32(lblProductCode.Text);

            //command.Parameters.Add("@StockID_New", SqlDbType.VarChar).Value =(txtStockID.Text.Trim());

            command.Parameters.Add("@BuyPrice_Present", SqlDbType.Decimal).Value = Convert.ToDecimal(txtBuyPrice_Present.Text.Trim());
            command.Parameters.Add("@BuyPrice_New", SqlDbType.Decimal).Value = Convert.ToDecimal(txtBuyPrice_New.Text.Trim());
            command.Parameters.Add("@SellPrice_Present", SqlDbType.Decimal).Value = Convert.ToDecimal(txtSellPrice_Present.Text.Trim());
            command.Parameters.Add("@SellPrice_New", SqlDbType.Decimal).Value = Convert.ToDecimal(txtSellPrice_New.Text.Trim());
            command.Parameters.Add("@Inputter", SqlDbType.VarChar).Value = Session["UserID"].ToString();
            command.Parameters.Add("@Qty", SqlDbType.Decimal).Value = txtQuantity.Text;


            command.Parameters.Add("@old_Qty", SqlDbType.Decimal).Value = old_qty;


            



            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();

            txtSellPrice_Present.Text = "";
            txtSellPrice_New.Text = "";
            txtBuyPrice_Present.Text = "";
            txtBuyPrice_New.Text = "";
            txtQuantity.Text = "";

            lblProductCode.Text = "";
            lblStockID.Text = "";

            lblID.Text = "";
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Invoice Created Successfully');", true);

            //String InvNO = txtInvoiceNO.Text;

            //ControlClear();


            //GetSellInfo("999999");

            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            //Response.Redirect("CustomerInvoiceView.aspx?InvNO=" + InvNO);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Sell Price Updated Successfully');", true);
        }

        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
}