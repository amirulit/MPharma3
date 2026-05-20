using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Rep_StockUpdateInfo : System.Web.UI.Page
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
        //SqlConnection connection = new SqlConnection
            //(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) TotalBuyPrice from t_Stock Group By InvoiceNO";




        //String SqlStr = @"usp_StockUpdateInfo";

        //String CompoanyName = Request.QueryString[0].ToString();
        DateTime fdt = Convert.ToDateTime(Request.QueryString[0].ToString());
        DateTime tdt = Convert.ToDateTime(Request.QueryString[1].ToString());
        String typ = (Request.QueryString[2].ToString());


        SqlConnection connection = new SqlConnection
          (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        //command.CommandText = "usp_StockAdd";

        command.CommandText = "usp_StockUpdateInfo";
        command.Connection = connection;

        SqlParameter[] parameters = 
                    {
                        
                        new SqlParameter("@fdt",fdt),
                        new SqlParameter("@tdt",tdt),
                        new SqlParameter("@typ",typ)
                    };

        command.Parameters.AddRange(parameters);

        DataSet ds = new DataSet();

        SqlDataAdapter sda = new SqlDataAdapter(command);
        //DataSet ds = new DataSet();
        sda.Fill(ds);

        GridView1.DataSource = ds;
        GridView1.DataBind();

        GridView1.UseAccessibleHeader = true;
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        GridView1.FooterRow.TableSection = TableRowSection.TableFooter;

    }
}