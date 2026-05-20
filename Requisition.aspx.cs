using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Requisition : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadManufacInfo();
            //LoadMedicineInfo();
            txtRequisitionDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
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

    protected void LoadMedicineInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);

        SqlCommand cmd = new SqlCommand("select MedicineName+'-'+Category+'-'+Strength+'-'+Manufacturer MedicineName,ID from       t_Medicine ", connection);


        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        ddlMedicine.Items.Clear();
        ddlMedicine.DataSource = ds.Tables[0];
        ddlMedicine.DataTextField = "MedicineName";
        ddlMedicine.DataValueField = "ID";
        ddlMedicine.DataBind();
        ddlMedicine.Items.Insert(0, new ListItem("<--Select-->", ""));








    }
    protected void btnRequisition_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_CreateRequisition";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@CompanyName", ddlManufacturer.SelectedItem.ToString()), 
                        new SqlParameter("@MedicineName", txtMedicineName.Text.Trim()), 
                        new SqlParameter("@Strength",  txtStrength.Text.Trim()), 
                        new SqlParameter("@Quantity",   txtQuantity.Text.Trim()), 
                        new SqlParameter("@Remarks",  txtREmarks.Text), 
                        new SqlParameter("@Inputter","Tuhin")
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Requisition Placed Successfully');", true);
            lblStatus.Text = "";
          


            //GetSaleInfo(txtInvoiceNO.Text);




        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
    protected void ddlManufacturer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}