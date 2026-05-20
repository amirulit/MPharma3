using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Rep_ProductWiseSellSummary : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //String CompoanyName = Request.QueryString[0].ToString();
            DateTime fdt = Convert.ToDateTime(Request.QueryString[0].ToString());
            DateTime tdt = Convert.ToDateTime(Request.QueryString[1].ToString());
            String typ = (Request.QueryString[2].ToString());
            String cname = (Request.QueryString[3].ToString());


            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            //command.CommandText = "usp_StockAdd";

            command.CommandText = "usp_ProductWiseSellReport";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        
                        new SqlParameter("@fdt",fdt),
                        new SqlParameter("@tdt",tdt),
                        new SqlParameter("@typ",typ),
                        new SqlParameter("@cname",cname)
 

 



                    };

            command.Parameters.AddRange(parameters);

            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(command);
            //DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();


                String Tot_SellPrice= ds.Tables[0].Compute("Sum(Tot_SellPrice)", "").ToString();

                Label2.Text = "Total Sell Price : " + Tot_SellPrice;
            }
            else
            {
                Label1.Text = "No Data Found";
            }
        }
    }
}