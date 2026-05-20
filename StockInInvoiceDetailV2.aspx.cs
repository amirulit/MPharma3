using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class StockInInvoiceDetailV2 : System.Web.UI.Page
{

    public DataSet ds = new DataSet();
    String StockInInvoiceNO = String.Empty;


    public static DataTable TableData = new DataTable();


    protected void Page_Load(object sender, EventArgs e)
    {
        StockInInvoiceNO = Request.QueryString[0].ToString();//"INV-1";
        if (!IsPostBack)
        {
            //String StockInInvoiceNO = Request.QueryString[0].ToString();

            StockInInvoiceNO = Request.QueryString[0].ToString();//"INV-1";

            GetReceiveInvoiceInfo(StockInInvoiceNO);

            //Label1.Text = "Stock in Invoice NO # " + StockInInvoiceNO.ToString();


            //throw new NotImplementedException();
            //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");


            /*
            SqlConnection connection = new SqlConnection
                 (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


            String SqlStr = @" Select (select MedicineName  from t_Medicine  where ID=ProductCode) ItemName,t.*,convert(varchar(10),ManufacDate,103) ManufacDate2,convert(varchar(10),ExpiryDate,103) ExpiryDate2  from t_Stock t where InvoiceNO ='" + StockInInvoiceNO + "'";
            SqlCommand cmd = new SqlCommand(SqlStr, connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            
            sda.Fill(ds);

            TableData = ds.Tables[0];
            


            String InvoiceHeader = @"<table width='100%' cellspacing='2' cellpadding='2' style='border: none;'>
            <tr>
                <td style='text-align: left;'>
                    <table style='border: none;'>
                        <tr>
                            <td colspan='2'>
<span style='font-size:24px;'><b>Mohammadi Pharma</b></span>
                             
                                    <br/>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Medicine & Department Store
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Address :
                            </td>
                            <td>Mohammadi Homes
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mobile : 
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>Email :
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>Web : 
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style='border-left: 1px Solid Grey; text-align: left;'>
                    <table>
                        <tr>
                            <td>Invoice NO # 
                            </td>
                            <td>" + ds.Tables[0].Rows[0]["InvoiceNO"].ToString() + @"
                            </td>
                        </tr>
                        <tr>
                            <td>Billing Date :
                            </td>
                            <td>" + System.DateTime.Now.ToString("dd/MM/yyyy") + @"
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Billing To :
                            </td>
                            <td>" + ds.Tables[0].Rows[0][3].ToString() + @"
                            </td>
                        </tr>
                        <tr>
                            <td>Address : 
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td> 
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table> ";

            //lblHeader.Text = InvoiceHeader;
             */


        }
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {



        if (e.Row.RowType == DataControlRowType.Header)
        {
            /*
            GridViewRow HeaderRow5 = new GridViewRow(3, 0, DataControlRowType.Header, DataControlRowState.Insert);

            TableCell HeaderCell5 = new TableCell();
            //HeaderCell5.Text = "<table width='100%' Cellspacing='0' Cellpadding='0'><tr><td style='border-right:1px Solid Grey;'><table><tr><td>Billing From</td></tr><tr><td>Address</td></tr><tr><td>Mobile</td></tr></table></td><td><b>Billing To</b></td></tr></table>";

            HeaderCell5.Text = InvoiceHeader;

            //HeaderCell5.Attributes.Add("style", "padding:0;text-align:center");
            HeaderCell5.ColumnSpan = 5;

            HeaderRow5.Cells.Add(HeaderCell5);
            GridView1.Controls[0].Controls.AddAt(0, HeaderRow5);
            */
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {


    }


    private void GetReceiveInvoiceInfo(String InvoiceNO)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) Total_Price from t_Stock where InvoiceNO ='" + InvoiceNO + "' Group By InvoiceNO";

        //String SqlStr = @" select * from dbo.t_Stock Where  InvoiceNO ='" + InvoiceNO + "' order by ID ";

        String SqlStr = @"
                            Select
		
		t.ID
        ,t.ProductCode
		,m.MedicineName
		,left(m.Strength,25) Strength
		,left(m.GenericName,25) GenericName
		--,t.Supplier
		,t.TotalCount
		,t.UnitPrice
		,t.TotalBuyPrice
		,t.TotalSellPrice
		,Convert(varchar(10),t.ManufacDate,112) ManufacDate
		,Convert(varchar(10),t.ExpiryDate,112) ExpiryDate
	from 
		t_Stock t
	Join
		t_Medicine m
	on
		t.ProductCode=m.ID
	Where
		t.InvoiceNO='" + InvoiceNO + "' Order By 1 Asc";

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //TableData = ds.Tables[0];
        GridView1.DataSource = ds;
        GridView1.DataBind();


        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.UseAccessibleHeader = true;
            GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;


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
            String ID = (grow.FindControl("ID") as Label).Text;
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
                command.CommandText = "usp_StokDelete";
                command.Connection = connection;

                SqlParameter[] parameters = 
                    {
                        new SqlParameter("@ID",ID)


                        //new SqlParameter("@Inputter","Tuhin"),
                        

                    };

                command.Parameters.AddRange(parameters);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Stock Deleted Successfully');", true);
                lblStatus.Text = "";

                //ClearControl();


                GetReceiveInvoiceInfo(StockInInvoiceNO);


            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.Message;
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
}