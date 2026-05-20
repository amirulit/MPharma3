using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Rep_DayWiseSell : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DateTime fdt = Convert.ToDateTime(Request.QueryString[0].ToString());
            DateTime tdt = Convert.ToDateTime(Request.QueryString[1].ToString());


            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            //command.CommandText = "usp_StockAdd";

            command.CommandText = "usp_Report_DayWiseSell";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@fdt", fdt), 
                        //new SqlParameter("@Manufacturer",ddlManufacturer.SelectedItem.ToString()), 
                        new SqlParameter("@tdt",tdt),
 

 



                    };

            command.Parameters.AddRange(parameters);

            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(command);
            //DataSet ds = new DataSet();
            sda.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();


            DataTable dt = ds.Tables[0];

            Decimal Tot_InvoiceAmount = dt.AsEnumerable().Sum(row => row.Field<Decimal>("InvoiceAmount"));
            Decimal Avg_InvoiceAmount = dt.AsEnumerable().Average(row => row.Field<Decimal>("InvoiceAmount"));
            //decimal Bal = dt.AsEnumerable().Sum(row => row.Field<decimal>("NetBal"));

            lblTotAmount.Text = Tot_InvoiceAmount.ToString("N2");

            lblAvgPrice.Text = Avg_InvoiceAmount.ToString("N2");
        }
    }
}