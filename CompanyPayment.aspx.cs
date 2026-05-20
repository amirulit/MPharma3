using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class CompanyPayment : System.Web.UI.Page
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



    /*
    protected void LoadAccount()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_COA] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        ddlAccount.Items.Clear();
        ddlAccount.DataSource = ds.Tables[0];
        ddlAccount.DataTextField = "AccountName";
        ddlAccount.DataValueField = "AccountNO";
        ddlAccount.DataBind();
        ddlAccount.Items.Insert(0, new ListItem("<--Select-->", ""));


    }
    */


    protected void btnTranSave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_Payment";
            command.Connection = connection;



            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@TransactionDate",txtTransactionDate.Text) 
                        ,new SqlParameter("@DR_CR",   ddlCRDR.SelectedValue.ToString() ) 
                        ,new SqlParameter("@InvoiceNO",txtInvoiceNO.Text)  
                        ,new SqlParameter("@Amount",  Convert.ToDouble(txtAmount.Text )) 
                        ,new SqlParameter("@CompanyName",    ddlManufacturer.SelectedValue.ToString() ) 
                        ,new SqlParameter("@Narration",  txtNarration.Text ) 
                        ,new SqlParameter("@CompanyOfficials",   txtCompanyOffcials.Text ) 
                        ,new SqlParameter("@Inputter","Tuhen") 

                        
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();

            ClearControl();


            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Transaction Saved Successfully'); window.opener.location.reload(); window.close();", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            //LoadCategoryInfo();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }

    protected void ClearControl()
    {
        //txtInvoiceDate.Text = "";
        txtAmount.Text = "";
        txtNarration.Text = "";
        txtCompanyOffcials.Text = "";
        txtInvoiceNO.Text = "";

    }
}