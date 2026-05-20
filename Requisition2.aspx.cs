using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Requisition2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           

            LoadGenericInfo();
            LoadManufaqInfo();
            LoadCategoryInfo();

            txtRequisitionDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
        }
    }
    protected void LoadManufaqInfo()
    {

        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);





        ddlManufacturer.Items.Clear();
        ddlManufacturer.DataSource = ds.Tables[0];
        ddlManufacturer.DataTextField = "CompanyName";
        ddlManufacturer.DataValueField = "CompanyName";
        ddlManufacturer.DataBind();
        ddlManufacturer.Items.Insert(0, new ListItem("<--Select-->", ""));


        //DropDownList1.Items.Clear();
        //DropDownList1.DataSource = ds.Tables[0];
        //DropDownList1.DataTextField = "CompanyName";
        //DropDownList1.DataValueField = "CompanyName";
        //DropDownList1.DataBind();
        //DropDownList1.Items.Insert(0, new ListItem("<--Select-->", ""));
    }



    protected void LoadCompanyInfo()
    {

        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Company] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);





        ddlManufacturer.Items.Clear();
        ddlManufacturer.DataSource = ds.Tables[0];
        ddlManufacturer.DataTextField = "CompanyName";
        ddlManufacturer.DataValueField = "ID";
        ddlManufacturer.DataBind();
        ddlManufacturer.Items.Insert(0, new ListItem("<--Select-->", ""));
    }

    protected void LoadGenericInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_GenericName] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);





        ddlGeneric.Items.Clear();
        ddlGeneric.DataSource = ds.Tables[0];
        ddlGeneric.DataTextField = "GenericName";
        ddlGeneric.DataValueField = "GenericName";
        ddlGeneric.DataBind();
        ddlGeneric.Items.Insert(0, new ListItem("<--Select-->", ""));


    }

    protected void LoadCategoryInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Category] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);





        ddlCategory.Items.Clear();
        ddlCategory.DataSource = ds.Tables[0];
        ddlCategory.DataTextField = "CategoryName";
        ddlCategory.DataValueField = "CategoryName";
        ddlCategory.DataBind();
        ddlCategory.Items.Insert(0, new ListItem("<--Select-->", ""));


    }
    protected void btnRequisition_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    SqlConnection connection = new SqlConnection
        //      (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //    SqlCommand command = new SqlCommand();
        //    command.CommandType = CommandType.StoredProcedure;
        //    command.CommandText = "usp_CreateRequisition";
        //    command.Connection = connection;

        //    SqlParameter[] parameters = 
        //            {
        //                new SqlParameter("@CompanyName", ddlManufacturer.SelectedItem.ToString()), 
        //                new SqlParameter("@MedicineName", txtDrugName.Text.Trim()), 
        //                new SqlParameter("@Strength",  txtStrength.Text.Trim()), 
        //                new SqlParameter("@Quantity",   txtQuantity.Text.Trim()), 
        //                new SqlParameter("@Remarks",  txtREmarks.Text), 
        //                new SqlParameter("@Inputter","Tuhin")
        //            };

        //    command.Parameters.AddRange(parameters);
        //    connection.Open();
        //    command.ExecuteNonQuery();
        //    connection.Close();
        //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Requisition Placed Successfully');", true);
        //    lblStatus.Text = "";
          


        //    //GetSaleInfo(txtInvoiceNO.Text);




        //}
        //catch (Exception ex)
        //{
        //    lblStatus.Text = ex.Message;
        //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        //}
    }
    protected void btnNewReq_Click(object sender, EventArgs e)
    {
        String Out = String.Empty;
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_CreateRequisition2";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@Manufacturer",ddlManufacturer.SelectedItem.ToString()),
                        new SqlParameter("@MedicineName",txtDrugName.Text),
                        new SqlParameter("@Category",ddlCategory.SelectedValue.ToString()),
                        new SqlParameter("@Strength",txtStrength.Text),
                        new SqlParameter("@GenericName",ddlGeneric.SelectedValue.ToString()),
                        new SqlParameter("@ProductType",ddlProductType.SelectedValue.ToString()),
                        new SqlParameter("@Remarks",txtRemarks.Text),
                        new SqlParameter("@MINQTY",txtMINQTY.Text),
                        new SqlParameter("@REQQTY",txtQuantity.Text),
                        new SqlParameter("@Inputter","Tuhen")
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Medicine Info Added Successfully');opener.location.reload();window.close();", true);
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Medicine Info Added Successfully');", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";




            Out = "Ok";


            ddlCategory.SelectedIndex = 0;
            ddlGeneric.SelectedIndex = 0;
            ddlProductType.SelectedIndex = 0;


            txtDrugName.Text = "";
            txtMINQTY.Text = "";
            txtQuantity.Text = "";
        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            Out = "Error : " + ex.Message;

        }

        //return Out;

        lblStatus.Text = Out;
    }
}