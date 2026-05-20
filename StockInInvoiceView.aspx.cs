using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class StockInInvoiceView : System.Web.UI.Page
{

    public DataSet ds = new DataSet();

    private Int32 Product_Count = 0;
    private double Product_Price = 0.0;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String StockInInvoiceNO = Request.QueryString[0].ToString();

            //String StockInInvoiceNO = "INV-1";

            //Label1.Text = "Stock in Invoice NO # " + StockInInvoiceNO.ToString();


            //throw new NotImplementedException();
            //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

            SqlConnection connection = new SqlConnection
                 (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


            //String SqlStr = @" Select (select MedicineName  from t_Medicine  where ID=ProductCode) Item_Name,* from t_Stock where InvoiceNO ='" + StockInInvoiceNO + "'";

            //String SqlStr = @" Select (select MedicineName  from t_Medicine  where ID=ProductCode) Item_Name,* from t_Stock where InvoiceNO ='" + StockInInvoiceNO + "'";

            String SqlStr = @"
Select 
	s.ID
	,m.MedicineName
	,left(m.GenericName,50)GenericName
	,left(m.Strength,50)Strength
    ,m.Manufacturer
	,s.TotalCount
	,s.TotalBuyPrice
	,Convert(varchar(10),s.ManufacDate,23) ManufacDate
	,Convert(varchar(10),s.ExpiryDate,23) ExpiryDate
    ,s.InvoiceNO
     
    ,CONVERT(varchar(10),s.EntryDate,23) EntryDate

from
	t_Stock s
Join
	t_medicine m
on
	s.ProductCode=m.ID where s.InvoiceNO='" + StockInInvoiceNO + "'";

            SqlCommand cmd = new SqlCommand(SqlStr, connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            sda.Fill(ds);

            

            String InvoiceHeader = @"<table width='100%' cellspacing='2' cellpadding='2' style='border: none;'>
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
                            <td>
                                Address :
                            </td>
                            <td>Plot : 5/A, Main Road, Mohammadi Homes R/A
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
                            <td>Email :
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>Web : 
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style='border-left: 1px Solid Grey; text-align: left;'>
                    <table>
                        <tr>
                            <td>Company Name :
                            </td>
                            <td><b>" + ds.Tables[0].Rows[0]["Manufacturer"].ToString() + @"</b>
                            </td>
                        </tr>
                        <tr>
                            <td>Invoice NO # 
                            </td>
                            <td>" + ds.Tables[0].Rows[0]["InvoiceNO"].ToString() + @"
                            </td>
                        </tr>
                        <tr>
                            <td>Billing Date :
                            </td>
                            <td>" + ds.Tables[0].Rows[0]["EntryDate"].ToString() + @"
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Billing To :
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>Address : 
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td> 
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
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

            


            //TableData = ds.Tables[0];
            GridView1.DataSource = ds;
            GridView1.DataBind();


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

            Product_Count += Convert.ToInt16(DataBinder.Eval(e.Row.DataItem, "TotalCount"));
            Product_Price += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "TotalBuyPrice"));

           
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            // If row type is footer, show calculated total value
            // Since this example uses sales in dollars, I formatted output as currency
            e.Row.Cells[2].Text = "Total : ";
            e.Row.Cells[6].Text = String.Format("{0:D}", Product_Count);
            e.Row.Cells[7].Text = String.Format("{0:n2}", Product_Price);

           

            //e.Row.Cells[4].Text = TotalSales.ToString();
        }
    }
}