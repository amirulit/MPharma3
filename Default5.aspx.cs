using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //LoadAccount();
            LoadManufacInfo();

            txtTransactionDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");

        }
    }

    protected void LoadManufacInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] Order By 2 Asc ", connection);

        SqlCommand cmd = new SqlCommand("select Distinct Manufacturer Manufacturer from [dbo].[t_Medicine] union select  distinct SupplierName Manufacturer  from t_Supplier union select distinct CompanyName from dbo.t_Company   Order by 1 asc ", connection);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        ddlManufacturer.Items.Clear();
        ddlManufacturer.DataSource = ds.Tables[0];
        ddlManufacturer.DataTextField = "Manufacturer";
        ddlManufacturer.DataValueField = "Manufacturer";
        ddlManufacturer.DataBind();
        ddlManufacturer.Items.Insert(0, new ListItem("<--Select-->", ""));





    }

}