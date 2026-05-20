using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class StockStatus_ProductWiseV2 : System.Web.UI.Page
{

    public static DataTable TableData = new DataTable();
    //public static string Constr = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;


    protected void LoadProductInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] Order By 2 Asc ", connection);

        SqlCommand cmd = new SqlCommand("Select Distinct MedicineName ProductName  from [dbo].[t_Medicine]  Order by 1 asc ", connection);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        ddlCompanyName.Items.Clear();
        ddlCompanyName.DataSource = ds.Tables[0];
        ddlCompanyName.DataTextField = "ProductName";
        ddlCompanyName.DataValueField = "ProductName";
        ddlCompanyName.DataBind();
        ddlCompanyName.Items.Insert(0, new ListItem("<--Select-->", ""));





    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadProductInfo();
            /*
            String DT = System.DateTime.Now.ToString("yyyy-MM-dd");
            String fdt = DT;
            String tdt = DT;

            txtFromDate.Text = fdt;
            txtToDate.Text = tdt;
            //GetSellInfo(fdt, tdt);
            */
        }
    }

    protected void GetCurrentStock(String ProductName)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");


        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "usp_CurrentStock_ProductWise";
        command.Connection = connection;

        SqlParameter[] parameters = 
                    {
                        new SqlParameter("@ProductName",   ProductName), 
                       

                    };

        command.Parameters.AddRange(parameters);
        connection.Open();
        //Label1.Text = SqlStr;


        SqlDataAdapter sda = new SqlDataAdapter(command);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            //TableData = ds.Tables[0];
            GridView1.DataSource = ds;
            GridView1.DataBind();

            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
        else
        {
            lblStatus.Text = "No Data Found";
        }
    }
    protected void btnView_Click(object sender, EventArgs e)
    {

    }
    protected void ddlCompanyName_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetCurrentStock(ddlCompanyName.SelectedItem.ToString());
    }
}