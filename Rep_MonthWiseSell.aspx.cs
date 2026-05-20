using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Rep_MonthWiseSell : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Int32 Yr = Convert.ToInt32(Request.QueryString[0].ToString());
            


            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            //command.CommandText = "usp_StockAdd";

            command.CommandText = "usp_Report_MonthWiseSell";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@Yr", Yr)
                        //new SqlParameter("@Manufacturer",ddlManufacturer.SelectedItem.ToString()), 
                        
 

 



                    };

            command.Parameters.AddRange(parameters);

            DataSet ds = new DataSet();

            SqlDataAdapter sda = new SqlDataAdapter(command);
            //DataSet ds = new DataSet();
            sda.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}