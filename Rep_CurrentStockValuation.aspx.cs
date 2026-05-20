using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Rep_CurrentStockValuation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            Load();
        }
    }



    protected void Load()
    {
        //SqlConnection connection = new SqlConnection
            //(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock Group By InvoiceNO";


        /*

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

      */
        DateTime dt = Convert.ToDateTime(Request.QueryString[0].ToString());
        String typ = (Request.QueryString[1].ToString());


        SqlConnection connection = new SqlConnection
          (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        //command.CommandText = "usp_StockAdd";

        command.CommandText = "usp_CurrentStockValuation";
        command.Connection = connection;

        SqlParameter[] parameters = 
                    {
                        
                        new SqlParameter("@dt",dt),
                        new SqlParameter("@typ",typ)
                    };

        command.Parameters.AddRange(parameters);

        DataSet ds = new DataSet();

        SqlDataAdapter sda = new SqlDataAdapter(command);
        //DataSet ds = new DataSet();
        sda.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();


        GridView1.DataSource = ds;
        GridView1.DataBind();

        String tot_buy_price = ds.Tables[0].Compute("Sum(TotalBuyPrice)", "").ToString();
        String tot_sell_price = ds.Tables[0].Compute("Sum(TotalSellPrice)", "").ToString();

        Label1.Text = tot_buy_price;
        Label2.Text = tot_sell_price;

        GridView1.UseAccessibleHeader = true;
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        GridView1.FooterRow.TableSection = TableRowSection.TableFooter;
    }
}