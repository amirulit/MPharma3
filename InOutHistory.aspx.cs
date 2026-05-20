using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class InOutHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetProductInOutHistory();
        }
    }

    protected void GetProductInOutHistory()
    {


        Int32 Product_Code = Convert.ToInt32(Request.QueryString[0].ToString());


        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");


        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "usp_Product_InOut_History";
        command.Connection = connection;

        SqlParameter[] parameters = 
                    {
                        new SqlParameter("@ProductCode",   Product_Code), 
                       

                    };

        command.Parameters.AddRange(parameters);
        connection.Open();
        //Label1.Text = SqlStr;


        SqlDataAdapter sda = new SqlDataAdapter(command);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //DetailsView1.DataSource = ds.Tables[0];
        //DetailsView1.DataBind();

        Literal1.Text = ds.Tables[0].Rows[0]["ID"].ToString();
        Literal2.Text = ds.Tables[0].Rows[0]["MedicineName"].ToString();
        Literal3.Text = ds.Tables[0].Rows[0]["Category"].ToString();
        Literal4.Text = ds.Tables[0].Rows[0]["Strength"].ToString();
        Literal5.Text = ds.Tables[0].Rows[0]["GenericName"].ToString();
        Literal6.Text = ds.Tables[0].Rows[0]["Remarks"].ToString();
        Literal7.Text = ds.Tables[0].Rows[0]["Manufacturer"].ToString();

        //if (ds.Tables[2].Rows.Count > 0)
        //{
        //TableData = ds.Tables[0];
        GridView2.DataSource = ds.Tables[2];
        GridView2.DataBind();

        String tot_purchase = ds.Tables[2].Compute("Sum(Purchase)", "").ToString();
        String tot_sell = ds.Tables[2].Compute("Sum(Sell)", "").ToString();

        //GridView1.UseAccessibleHeader = true;
        ////GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        //GridView1.FooterRow.TableSection = TableRowSection.TableHeader;
        //}
        //else
        //{
        //lblStatus.Text = "No Data Found";
        //}

        lblTotSell.Text = "Total Purchase : " + tot_purchase.ToString();
        lblTotPurchase.Text = "Total Sell : " + tot_sell.ToString();
    }
}