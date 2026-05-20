using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Cus_InvoiceDetail : System.Web.UI.Page
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


    protected void GetReceiveInvoiceInfo(String InvoiceNO)
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        //String SqlStr = @" Select Distinct InvoiceNO,Count(Distinct Manufacturer) Manufacturer_Count,Count( Distinct ProductCode) Product_Type_Count, Sum(TotalCount) Quantity, Sum(TotalBuyPrice) Total_Price from t_Stock where InvoiceNO ='" + InvoiceNO + "' Group By InvoiceNO";

        //String SqlStr = @" select * from dbo.t_Stock Where  InvoiceNO ='" + InvoiceNO + "' order by ID ";

        String SqlStr = @"
                            select s.*,m.MedicineName from t_sell s join t_Medicine  m on s.ProductCode=m.ID
	Where
		s.InvoiceNO='" + InvoiceNO + "' Order By 1 Asc";

        SqlCommand cmd = new SqlCommand(SqlStr, connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        lblInvoiceNO.Text = ds.Tables[0].Rows[0]["InvoiceNO"].ToString();
        lblCusID.Text = ds.Tables[0].Rows[0]["CustomerID"].ToString();
        lblCusName.Text = ds.Tables[0].Rows[0]["CustomerName"].ToString();

        //TableData = ds.Tables[0];
        GridView1.DataSource = ds;
        GridView1.DataBind();


        GridView1.UseAccessibleHeader = true;
        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;


        GridView1.FooterRow.TableSection = TableRowSection.TableFooter;
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

                GetReceiveInvoiceInfo(StockInInvoiceNO);


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
}