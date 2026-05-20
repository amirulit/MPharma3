using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class DayClose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //LoadAccount();
        }
    }

    protected void LoadAccount()
    {
        
        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_COA] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //ddlAccount.Items.Clear();
        //ddlAccount.DataSource = ds.Tables[0];
        //ddlAccount.DataTextField = "AccountName";
        //ddlAccount.DataValueField = "AccountNO";
        //ddlAccount.DataBind();
        //ddlAccount.Items.Insert(0, new ListItem("<--Select-->", ""));








    }
    protected void btnTranSave_Click(object sender, EventArgs e)
    {
        /*
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_DayClose";
            command.Connection = connection;

            double amount = Convert.ToDouble(txtAmount.Text);

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@AccountNO",  ddlAccount.SelectedValue.ToString()) 
                        ,new SqlParameter("@Amount",(ddlCRCR.SelectedItem.ToString()=="DR")?(-1)*amount: amount) 
                        ,new SqlParameter("@Narration",txtNarration.Text) 
                        ,new SqlParameter("@Inputter", "Test") 
                        
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Day Closed Successfully');", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";




            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            //LoadCategoryInfo();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
        */

    }
}