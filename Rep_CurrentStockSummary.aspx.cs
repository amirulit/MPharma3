using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Rep_CurrentStockSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (!IsPostBack)
            {
                

                Load();
              

            }

          
        }
    }



    protected void Load()
    {
        SqlConnection connection = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock Group By InvoiceNO";




        String SqlStr = @"usp_StockSummary";

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //TableData = ds.Tables[0];


        GridView1.DataSource = ds;
        GridView1.DataBind();

        //String tot_buy_price = ds.Tables[0].Compute("Sum(TotalBuyPrice)", "").ToString();
        //String tot_sell_price = ds.Tables[0].Compute("Sum(TotalSellPrice)", "").ToString();

        //Label1.Text = tot_buy_price;
        //Label2.Text = tot_sell_price;

        GridView1.UseAccessibleHeader = true;
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        GridView1.FooterRow.TableSection = TableRowSection.TableFooter;
    }
}