using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class CustomerInvoiceView : System.Web.UI.Page
{

    public DataSet ds = new DataSet();

    public double TotalQuantity = 0;
    public double TotalPrice = 0.0;
    public double TotalDiscount = 0.0;
    public double TotalNetReceivable = 0.0;


    public double Gross_Dis = 0.00;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String StockInInvoiceNO = Request.QueryString[0].ToString();

            //String StockInInvoiceNO = "INV-1";

            //Label1.Text = "Stock in Invoice NO # " + StockInInvoiceNO.ToString();


            //throw new NotImplementedException();
            //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

            String cs = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;
            SqlConnection connection = new SqlConnection(cs);
            
            /*
            SqlConnection connection = new SqlConnection
                 (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);
            */

            /*
            String SqlStr = @" Select (select MedicineName  from t_Medicine  where ID=ProductCode) Item_Name,* from t_Stock where InvoiceNO ='" + StockInInvoiceNO + "'";
            SqlCommand cmd = new SqlCommand(SqlStr, connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            sda.Fill(ds);
            */

 

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_ShowSell";
            command.Connection = connection;


            command.Parameters.Add("@InvoiceNO", SqlDbType.VarChar).Value = StockInInvoiceNO;

            /*
            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@InvoiceNO",StockInInvoiceNO), 
                    };

            command.Parameters.AddRange(parameters);
            */

            connection.Open();

            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            //TableData = ds.Tables[0];
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            //Gross_Dis = Convert.ToDouble(ds.Tables[1].Rows[0]["TotalDiscount"].ToString());
           

            //lblTotalAmount.Text = ds.Tables[1].Rows[0]["InvoiceAmount"].ToString();
            lblAdjustAmount.Text = ds.Tables[1].Rows[0]["TotalDiscount"].ToString();
            lblNetAmount.Text = ds.Tables[1].Rows[0]["NetAmount"].ToString();
            lblPaidAmount.Text = ds.Tables[1].Rows[0]["PaidAmount"].ToString();
            lblChangeAmount.Text = ds.Tables[1].Rows[0]["Change"].ToString();
            lblPaidByCash.Text = ds.Tables[1].Rows[0]["CashAmount"].ToString();
            lblPaidByMFS.Text = ds.Tables[1].Rows[0]["MFSAmount"].ToString();
            lblPaidByCard.Text = ds.Tables[1].Rows[0]["CardAmount"].ToString();
            

            String InvoiceHeader = @"<table style='border: none;'>
            <tr>
                <td style='text-align: left;'>
                    <table style='border: none;'>
                        <tr>
                            <td colspan='2'>
<span style='font-size:24px;'><b>Mohammadi Pharma</b></span>
                             
                                    <br/>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i>Medicine & Department Store</i>
                            </td>
                        </tr>
                         <tr>
                            <td style='vertical-align:top;'>
                                Address :
                            </td>
                            <td>Plot : 5/A, Main Road <br/>Mohammadi Homes R/A
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mobile : 
                            </td>
                            <td>+8801714138122
                            </td>
                        </tr>
                        
             
                        <tr>
                            <td>Invoice NO # 
                            </td>
                            <td>" + ds.Tables[0].Rows[0]["InvoiceNO"].ToString() + @"
                            </td>
                        </tr>
                        <tr>
                            <td>Time :
                            </td>
                            <td>" + Convert.ToDateTime(ds.Tables[1].Rows[0]["DateTime"].ToString()).ToString("dd/MM/yyyy hh:mm") + @"
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                Billing To :
                            </td>
                            <td>" + ds.Tables[1].Rows[0]["CusName"].ToString() + @"
                            </td>
                        </tr>
                        <tr>
                            <td>Cus ID : 
                            </td>
                            <td>" + ds.Tables[1].Rows[0]["MobileNO"].ToString() + @"
                            </td>
                        </tr>
                        <tr>
                            <td colspan='2'><span style='text-align:center;font-size:16px;'><b>" + ds.Tables[1].Rows[0]["Delivery"].ToString() + @" Delivery</b></span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
        </table> ";

            lblHeader.Text = InvoiceHeader;
        }

    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {



        if (e.Row.RowType == DataControlRowType.Header)
        {
            /*
            GridViewRow HeaderRow5 = new GridViewRow(3, 0, DataControlRowType.Header, DataControlRowState.Insert);

            TableCell HeaderCell5 = new TableCell();
            //HeaderCell5.Text = "<table width='100%' Cellspacing='0' Cellpadding='0'><tr><td style='border-right:1px Solid Grey;'><table><tr><td>Billing From</td></tr><tr><td>Address</td></tr><tr><td>Mobile</td></tr></table></td><td><b>Billing To</b></td></tr></table>";

            HeaderCell5.Text = InvoiceHeader;

            //HeaderCell5.Attributes.Add("style", "padding:0;text-align:center");
            HeaderCell5.ColumnSpan = 5;

            HeaderRow5.Cells.Add(HeaderCell5);
            GridView1.Controls[0].Controls.AddAt(0, HeaderRow5);
            */
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // if row type is DataRow, add ProductSales value to TotalSales

            TotalQuantity += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Quantity"));
            TotalPrice += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "TotalSellPrice"));
            TotalDiscount += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Discount"));
            TotalNetReceivable += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "NetReceivable"));


        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            // If row type is footer, show calculated total value
            // Since this example uses sales in dollars, I formatted output as currency
            e.Row.Cells[1].Text = "Total : ";
            e.Row.Cells[2].Text = String.Format("{0:n2}", TotalQuantity);
            e.Row.Cells[4].Text = String.Format("{0:n2}", TotalPrice);
            //e.Row.Cells[5].Text = String.Format("{0:n2}", TotalDiscount);
            //e.Row.Cells[6].Text = String.Format("{0:n2}", TotalNetReceivable);

            //lblDiscount.Text = TotalDiscount.ToString();

            //double tot_dis = (TotalDiscount + Gross_Dis);

            //lblDiscount.Text = tot_dis.ToString();

            //e.Row.Cells[4].Text = TotalSales.ToString();
        }

        lblTotalAmount.Text = TotalPrice.ToString();
        lblTotalDiscount.Text = TotalDiscount.ToString();
    }
}