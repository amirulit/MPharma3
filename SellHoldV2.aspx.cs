using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class SellHoldV2 : System.Web.UI.Page
{


    public static DataTable TableData = new DataTable();
    //public static string Constr = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;

    public double TotalQuantity = 0.00;
    public double TotalSellPrice = 0.0;
    public double TotalDiscount = 0.0;
    public double TotalAdjustAmount = 0.0;
    public double TotalNetReceivable = 0.0;
    public double TotalNetProfit = 0.0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String DT = System.DateTime.Now.ToString("yyyy-MM-dd");
            String fdt = DT;
            String tdt = DT;

            //txtFromDate.Text = fdt;
            //txtToDate.Text = tdt;
            //GetSellInfo(fdt, tdt);
            //LoadCounterList();
            GetHoldSellInfo();
        }
    }

    protected void GetHoldSellInfo()
    {

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        String SqlStr = @" Select 
                            '<a class=''btn btn-primary'' href=javascript:OpenWin2('''+s.InvoiceNO+''')>'+s.InvoiceNO+'</a>' InvoiceNO
                            
                            ,s.*
                        from 
    (
        Select 
	
            Distinct InvoiceNO
	        ,SUM(Quantity) Qty
	        ,SUM(TotalSellPrice) Tot_Sell_Price
	        ,SUM(Discount) Tot_Discount
	        ,SUM(NetReceivable) Tot_Receivable
            ,SUM(NetProfit) NetProfit

    from 
	    dbo.t_Sell t
    Where 
        t.InvoiceNO  not in (Select InvoiceNO from t_Invoice)
    Group By
	    t.InvoiceNO
    )s

 

";
        //Label1.Text = SqlStr;

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //if (ds.Tables[0].Rows.Count > 0)
        //{
        //TableData = ds.Tables[0];
        GridView1.DataSource = ds;
        GridView1.DataBind();

        GridView1.UseAccessibleHeader = true;
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        GridView1.FooterRow.TableSection = TableRowSection.TableFooter;
        lblStatus.Text = "";
        //}
        //else
        //{
        //lblStatus.Text = "No Records Found";
        //}
    }


    protected void LoadCounterList()
    {

        //ddlCounter.Items.Insert(0, new ListItem("ALL", ""));
        //ddlCounter.Items.Insert(1, new ListItem("Counter 1", "Counter 1"));
        //ddlCounter.Items.Insert(2, new ListItem("Counter 2", "Counter 2"));

        /*
        String ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
            ipaddress = Request.ServerVariables["REMOTE_ADDR"];

        String[] counteraArr = ipaddress.Split('.');


        
        ddlCounter.Items.Insert(0, new ListItem("ALL", ""));


        for (int i = 0; i < counteraArr.Length; i++)
        {
            ddlCounter.Items.Add(new ListItem(counteraArr[i],counteraArr[i]);
        
        }
        */
        /*
         ArrayList customers = new ArrayList();
        customers.Add("John Hammond");
        customers.Add("Mudassar Khan");
        customers.Add("Suzanne Mathews");
        customers.Add("Robert Schidner");
 
        //Add blank item at index 0.
        ddlCustomers.Items.Insert(0, new ListItem("", ""));
 
        //Loop and add items from ArrayList.
        foreach (object customer in customers)
        {
            ddlCustomers.Items.Add(new ListItem(customer.ToString(), customer.ToString()));
        } 
        */
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // if row type is DataRow, add ProductSales value to TotalSales

            //TotalQuantity += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Qty"));
            //TotalSellPrice += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Tot_Sell_Price"));
            //TotalDiscount += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "Tot_Discount"));
            //TotalAdjustAmount += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "AdjustAmount"));
            //TotalNetReceivable += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "NetReceived"));

            //TotalNetProfit += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "NetProfit"));

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            // If row type is footer, show calculated total value
            // Since this example uses sales in dollars, I formatted output as currency
            //e.Row.Cells[2].Text = "Total : ";
            //e.Row.Cells[3].Text = String.Format("{0:n2}", TotalQuantity);
            //e.Row.Cells[4].Text = String.Format("{0:n2}", TotalSellPrice);
            //e.Row.Cells[5].Text = String.Format("{0:n2}", TotalDiscount);
            //e.Row.Cells[6].Text = String.Format("{0:n2}", TotalAdjustAmount);
            //e.Row.Cells[7].Text = String.Format("{0:n2}", TotalNetReceivable);
            //e.Row.Cells[8].Text = String.Format("{0:n2}", TotalNetProfit);

            //lblDiscount.Text = TotalDiscount.ToString();

            //double tot_dis = (TotalDiscount + Gross_Dis);

            //lblDiscount.Text = tot_dis.ToString();

            //e.Row.Cells[4].Text = TotalSales.ToString();
        }
    }
}