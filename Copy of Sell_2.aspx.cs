using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Services;

public partial class Sell_2 : System.Web.UI.Page
{

    public static DataTable TableData = new DataTable();
    public static String Constr = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;

    public String dashboard = "100;50;99;60";
    public String tot_inv_amount;


    [WebMethod()]
    public static string getInvoiceNO(String inv_type)
    {
        //return "100";

        //String branchcode = HttpContext.Current.Session["BranchCode"].ToString();
        String InvoiceNO = String.Empty;
        

        try
        {
            
             String cs = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;
             SqlConnection connection = new SqlConnection();
             connection.ConnectionString = cs; 
            

            //SqlConnection connection = new SqlConnection
              //(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_InvoiceNOGen";
            command.Connection = connection;
            connection.Open();
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            connection.Close();

            InvoiceNO = ds.Tables[0].Rows[0][0].ToString();



        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }

        return InvoiceNO.ToString();
        //return "testing";
    }

    protected String  getInvoiceNO_2(String inv_type)
    {
        //return "100";

        //String branchcode = HttpContext.Current.Session["BranchCode"].ToString();
        String InvoiceNO = String.Empty;


        try
        {

            String cs = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;
            SqlConnection connection = new SqlConnection();
            connection.ConnectionString = cs;


            //SqlConnection connection = new SqlConnection
            //(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_InvoiceNOGen";
            command.Connection = connection;
            connection.Open();
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            connection.Close();

            InvoiceNO = ds.Tables[0].Rows[0][0].ToString();



        }
        catch (Exception ex)
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }

        return InvoiceNO.ToString();
        //return "testing";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        txtSellDate.Text = System.DateTime.Now.ToString("yyyy-MM-dd");

       

        if (!IsPostBack)
        {
            LoadMedicineInfo();
            //ControlClear();
            //txtInvoiceNO.Text = getInvoiceNO_2("M");

            if (Request.QueryString.AllKeys.Contains("v"))
            {

                txtInvoiceNO.Text = Request.QueryString[0].ToString();
                String InvoiceNO = Request.QueryString[0].ToString();
                if (InvoiceNO != null)
                {
                    //GetSellInfo(InvoiceNO);

                    GetSellInfo_2(InvoiceNO);
                }
            }
        }
    }

    protected void ControlClear()
    {

        //txtInvoiceNO.Text = "";
        txtCusID.Text = "";
        txtCusName.Text = "";
        ddlDiscountCode.SelectedIndex = 0;


        txtDiscount.Text = "0.00";
        txtInvoiceAmount.Text = "0.00";
        txtTotalDiscount.Text = "0.00";
        txtTAX.Text = "0.00";
        txtVAT.Text = "0.00";
        txtNetTotal.Text = "0.00";
        txtPaidAmount.Text = "0.00";
        txtChange.Text = "0.00";

        txtCashAmount.Text = "0.00";
        txtMFSAmount.Text = "0.00";
        txtCardAmount.Text = "0.00";
    }



    protected void LoadMedicineInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);

        //SqlCommand cmd = new SqlCommand("select MedicineName+'-'+Category+'-'+Strength+'-'+Manufacturer MedicineName,ID from       t_Medicine ", connection);

        SqlCommand cmd = new SqlCommand("select StockID+' ~ Available : '+CONVERT(varchar(500),TotalCount) Product,CONVERT(varchar(500),ID)+'~'+CONVERT(varchar(500),ProductCode) StockID from t_StockCount", connection);

         

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        ddlMedicine.Items.Clear();
        ddlMedicine.DataSource = ds.Tables[0];
        ddlMedicine.DataTextField = "Product";
        ddlMedicine.DataValueField = "StockID";
        ddlMedicine.DataBind();
        ddlMedicine.Items.Insert(0, new ListItem("<--Select-->", ""));








    }



    protected void btnEdit_Click(object sender, EventArgs e)
    {
        /*
        try
        {
            ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;
            hidCustomerID.Value = (grow.FindControl("lblCustomerID") as Label).Text;
            txtCustomerName.Text = (grow.FindControl("lblCustomerName") as Label).Text;
            txtPhoneNumber.Text = (grow.FindControl("lblPhoneNumber") as Label).Text;
            txtAddress.Text = (grow.FindControl("lblAddress") as Label).Text;
            btnSave.Visible = false;
            btnUpdate.Visible = true;
        }
        catch
        {

        }
        */
    }


    /*
   void ClearControls()
   {
       try
       {
           txtCustomerName.Text = "";
           txtPhoneNumber.Text = "";
           txtAddress.Text = "";
           hidCustomerID.Value = "";
           btnSave.Visible = true;
           btnUpdate.Visible = false;
       }
       catch
       {
           throw;
       }
   }

   protected void btnUpdate_Click(object sender, EventArgs e)
   {
       try
       {
           SqlCommand cmd = new SqlCommand();
           cmd.CommandText = "update tblCustomers set CustomerName=@CustomerName,PhoneNumber=@PhoneNumber,Address=@Address where CustomerID=@CustomerID";
           cmd.Parameters.AddWithValue("@CustomerName", txtCustomerName.Text);
           cmd.Parameters.AddWithValue("@PhoneNumber", txtPhoneNumber.Text);
           cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
           cmd.Parameters.AddWithValue("@CustomerID", hidCustomerID.Value);
           cmd.Connection = con;
           con.Open();
           cmd.ExecuteNonQuery();
           con.Close();
           FillGrid();
           ClearControls();
           lblMessage.Text = "Updated Successfully.";
       }
       catch
       {

       }
       finally
       {
           if (con.State == ConnectionState.Open)
               con.Close();
       }
   }
   */




    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow grow = btn.NamingContainer as GridViewRow;


        Double NewQuantity = Convert.ToDouble((grow.FindControl("txtQuantity") as TextBox).Text);

        Double PresentQuantity = Convert.ToDouble((grow.FindControl("HiddenField1") as HiddenField).Value);
        String InvoiceNO = (grow.FindControl("InvoiceNO") as Label).Text;
        Int32 ProductCode =Convert.ToInt32( (grow.FindControl("ProductCode") as Label).Text);
        Int32 StockID = Convert.ToInt32((grow.FindControl("StockID") as Label).Text);

        if (Convert.ToDouble(PresentQuantity) == Convert.ToDouble(NewQuantity))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Sorry !!! Same Quantity.');", true);
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Quantity" + NewQuantity + " - Hidden Quantity" + PresentQuantity + "');", true);
            UpdateQuantity(InvoiceNO, ProductCode, StockID, NewQuantity, PresentQuantity);
        }

    }

    protected void UpdateQuantity(String InvoiceNO, Int32 ProductCode, Int32 StockID, Double NewQuantity, Double PresentQuantity)
    {
        SqlConnection connection = new SqlConnection
          (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "usp_SellUpdateQuantity";
        command.Connection = connection;


        command.Parameters.Add("@InvoiceNO", SqlDbType.VarChar).Value = InvoiceNO;
        command.Parameters.Add("@ProductCode", SqlDbType.Int).Value = ProductCode;
        command.Parameters.Add("@StockID", SqlDbType.Int).Value = StockID;

        command.Parameters.Add("@PresentQuantity", SqlDbType.Decimal).Value = PresentQuantity;
        command.Parameters.Add("@NewQuantity", SqlDbType.Decimal).Value = NewQuantity;


        try
        {

            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Invoice Created Successfully');", true);

            String InvNO = txtInvoiceNO.Text;

            //txtInvoiceNO.Text = "";
            GetSellInfo_2(InvNO);

            //ControlClear();


            //GetSellInfo("999999");

            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            //Response.Redirect("CustomerInvoiceView.aspx?InvNO=" + InvNO);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Item Added to Cart');", true);
        }

        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);
        
        try
        {
            //ClearControls();
            Button btn = sender as Button;
            GridViewRow grow = btn.NamingContainer as GridViewRow;
            SqlCommand cmd = new SqlCommand();

            String InvoiceNO = (grow.FindControl("InvoiceNO") as Label).Text;
            String ProductCode = (grow.FindControl("ProductCode") as Label).Text;
            String StockID = (grow.FindControl("StockID") as Label).Text;


            //String ID = (grow.FindControl("ID") as Label).Text;
            //cmd.CommandText = "update tblCustomers set IsActive=0 where CustomerID=@CustomerID";
            //cmd.Parameters.AddWithValue("@CustomerID", (grow.FindControl("lblCustomerID") as Label).Text);
            //cmd.Connection = con;
            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();
            //FillGrid();
            //lblStatus.Text = "Deleted Successfully.";
            lblStatus.Text = ID;


            try
            {
                SqlConnection connection = new SqlConnection
                  (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

                SqlCommand command = new SqlCommand();
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "usp_DeleteCartItem";
                command.Connection = connection;


                command.Parameters.Add("@InvoiceNO", SqlDbType.VarChar).Value = InvoiceNO;
                command.Parameters.Add("@ProductCode", SqlDbType.Int).Value = ProductCode;
                command.Parameters.Add("@StockID", SqlDbType.Int).Value = StockID;



                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Item Deleted Successfully');", true);


                LoadMedicineInfo();

                GetSellInfo_2(InvoiceNO);


                //Response.Redirect("Sell.aspx?InvNO=" + INV_NO);

            }

            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            }
        }
        catch
        {

        }
        finally
        {
            //if (con.State == ConnectionState.Open)
                //con.Close();
        }
        
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {


        String ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
            ipaddress = Request.ServerVariables["REMOTE_ADDR"];


        //ipaddress = String.Empty;
        //string counter = "Counter " + ipaddress.Split('.')[3].ToString();


        string counter = string.Empty;


        if (ipaddress == "192.168.1.152")
            counter = "Counter 2";

        if (ipaddress == "192.168.1.153")
            counter = "Counter 1";


        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_SellAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@InvoiceNO",txtInvoiceNO.Text.Trim()), 
                        new SqlParameter("@CustomerID",txtCusID.Text.Trim()), 
                        new SqlParameter("@CustomerName",txtCusName.Text.Trim()),
                        new SqlParameter("@StockID",ddlMedicine.SelectedValue.ToString().Split('~')[0].ToString().Trim()), 
                        new SqlParameter("@ProductCode",ddlMedicine.SelectedValue.ToString().Split('~')[1].ToString().Trim()), 
                        new SqlParameter("@Quantity",txtQuantity.Text.Trim()), 
                        new SqlParameter("@SellPrice",txtUnitPrice.Text.Trim()), 
                        new SqlParameter("@TotalSellPrice",txtTotalPrice.Text.Trim()), 
                        new SqlParameter("@Discount",txtDiscount.Text.Trim()),
                        new SqlParameter("@NetReceivable", txtNetAmount.Text.Trim() ), 
                        new SqlParameter("@Salesman",  Session["UserID"].ToString()),

                        new SqlParameter("@IP", ipaddress),
                        new SqlParameter("@Counter", counter)
                         
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            Int32 i = command.ExecuteNonQuery();
            connection.Close();
            if (i > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Item Added to Cart Successfully');", true);
                lblStatus.Text = ""; 
                txtQuantity.Text = "";
                txtTotalPrice.Text = "";
                txtDiscount.Text = "0.00";
                txtNetAmount.Text = "";
                txtUnitPrice.Text = "";
                ddlDiscountCode.SelectedIndex = 0;

                LoadMedicineInfo();

                GetSellInfo_2(txtInvoiceNO.Text);
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Sorry ! Item Adding to Cart failed');", true);
            }



        }
        catch (Exception ex)
        {
            lblStatus.Text = ex.Message;
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }

    private void GetSellInfo_2(String InvNO)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        String sql = @"Select Case
				        When m.MedicineName like '%-%' then SUBSTRING(m.MedicineName, CHARINDEX('-',m.MedicineName)+1,15)
				        else m.MedicineName	
			            End  MedName, m.MedicineName,s.* from [MPharma].[dbo].[t_Sell] s join  t_Medicine m on s.ProductCode=m.ID    where InvoiceNO='" + InvNO + "' ; select * from t_Invoice  where InvoiceNO='" + InvNO + "'";

        SqlCommand cmd = new SqlCommand(sql, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //TableData = ds.Tables[0];
        GridView1.DataSource = ds;
        GridView1.DataBind();


        tot_inv_amount = ds.Tables[0].Compute("Sum(NetReceivable)", "").ToString();
        txtInvoiceAmount.Text = tot_inv_amount;
        txtNetTotal.Text = tot_inv_amount;
        txtPaidAmount.Text = tot_inv_amount;
        txtChange.Text = "0.00";
        txtTotalDiscount.Text = "0.00";

        
         
        txtVAT.Text = "0.00";
        txtTAX.Text = "0.00";


        txtPaidAmount.Text = ds.Tables[1].Rows[0]["PaidAmount"].ToString(); //"0.00";
        txtCashAmount.Text = ds.Tables[1].Rows[0]["CashAmount"].ToString(); //"0.00";
        txtMFSAmount.Text = ds.Tables[1].Rows[0]["MFSAmount"].ToString(); //"0.00";
        txtCardAmount.Text = ds.Tables[1].Rows[0]["CardAmount"].ToString(); //"0.00";
        txtChange.Text = ds.Tables[1].Rows[0]["Change"].ToString(); //"0.00";

        /*
        txtInvoiceAmount.Text = ds.Tables[1].Rows[0]["InvoiceAmount"].ToString();
        txtTotalDiscount.Text = ds.Tables[1].Rows[0]["TotalDiscount"].ToString();
        txtVAT.Text = ds.Tables[1].Rows[0]["VAT"].ToString();
        txtTAX.Text = ds.Tables[1].Rows[0]["TAX"].ToString();
        txtNetTotal.Text = ds.Tables[1].Rows[0]["NetAmount"].ToString();
        txtPaidAmount.Text = ds.Tables[1].Rows[0]["PaidAmount"].ToString();
        txtChange.Text = ds.Tables[1].Rows[0]["Change"].ToString();
        */

    }



    private void GetSellInfo(String InvNO)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("Select (Select MedicineName from t_Medicine  where ID=s.ProductCode) ProductName,s.* from [MPharma].[dbo].[t_Sell] s where InvoiceNO='" + InvNO + "'", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        TableData = ds.Tables[0];
        //GridView1.DataSource = ds;
        //GridView1.DataBind();


        //tot_inv_amount = TableData.Compute("Sum(NetReceivable)", "").ToString();
        //txtInvoiceAmount.Text = tot_inv_amount;
        //txtNetTotal.Text = tot_inv_amount;

        
    }


    protected void btnCreateInvoice_Click(object sender, EventArgs e)
    {

        SqlConnection connection = new SqlConnection
          (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "usp_InvoiceUpdate";
        command.Connection = connection;


        /*
        SqlParameter[] parameters = 
                {
                    new SqlParameter("@InvoiceNO",       txtInvoiceNO.Text.Trim()), 
                    new SqlParameter("@InvoiceAmount", txtInvoiceAmount.Text.Trim()), 
                    new SqlParameter("@TotalDiscount",  txtTotalDiscount.Text.Trim()), 
                    new SqlParameter("@VAT", txtVAT.Text.Trim()), 
                    new SqlParameter("@TAX",  txtTAX.Text.Trim()), 
                    new SqlParameter("@NetAmount",  txtNetTotal.Text.Trim()), 
                    new SqlParameter("@PaidAmount",  txtPaidAmount.Text.Trim()),
                    new SqlParameter("@Change", txtChange.Text.Trim()), 
                    new SqlParameter("@Inputter","Tuhin")
                };
        command.Parameters.AddRange(parameters);
        */

        command.Parameters.Add("@InvoiceNO", SqlDbType.VarChar).Value = txtInvoiceNO.Text.Trim();
        command.Parameters.Add("@InvoiceAmount", SqlDbType.Decimal).Value = txtInvoiceAmount.Text.Trim();
        command.Parameters.Add("@TotalDiscount", SqlDbType.Decimal).Value = txtTotalDiscount.Text.Trim();
        command.Parameters.Add("@VAT", SqlDbType.Decimal).Value = txtVAT.Text.Trim();
        command.Parameters.Add("@TAX", SqlDbType.Decimal).Value = txtTAX.Text.Trim();
        command.Parameters.Add("@NetAmount", SqlDbType.Decimal).Value = txtNetTotal.Text.Trim();
        command.Parameters.Add("@PaidAmount", SqlDbType.Decimal).Value = txtPaidAmount.Text.Trim();
        command.Parameters.Add("@Change", SqlDbType.Decimal).Value = txtChange.Text.Trim();
        //command.Parameters.Add("@Inputter", SqlDbType.VarChar).Value = Session["UserID"].ToString();
        command.Parameters.Add("@PaymentMode", SqlDbType.VarChar).Value = ddlPaymentMode.SelectedValue.ToString();


        command.Parameters.Add("@CashAmount", SqlDbType.Decimal).Value = txtCashAmount.Text.Trim().ToString();
        command.Parameters.Add("@MFSAmount", SqlDbType.Decimal).Value = txtMFSAmount.Text.Trim().ToString();
        command.Parameters.Add("@MFSNO", SqlDbType.VarChar).Value = txtMFSNO.Text.ToString();
        command.Parameters.Add("@CardAmount", SqlDbType.Decimal).Value = txtCardAmount.Text.Trim().ToString();
        command.Parameters.Add("@CardNO", SqlDbType.VarChar).Value = txtCardNO.Text.Trim().ToString();
        command.Parameters.Add("@Delivery", SqlDbType.VarChar).Value = ddlDeliveryOption.SelectedValue.ToString();

        try
        {

            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Invoice Created Successfully');", true);

            String InvNO = txtInvoiceNO.Text;

            txtInvoiceNO.Text = "";
            GetSellInfo_2("MP-999999");

            ControlClear();


            //GetSellInfo("999999");

            //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

            //Response.Redirect("CustomerInvoiceView.aspx?InvNO=" + InvNO);

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Invoice Updated Successfully');OpenWin('" + InvNO + "') ;", true);
        }

        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
}