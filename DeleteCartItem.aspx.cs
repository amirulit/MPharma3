using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class DeleteCartItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String INV_NO = Request.QueryString[0].ToString();
        String ID = Request.QueryString[1].ToString();
        Int32 ProductCode = Convert.ToInt32(Request.QueryString[2].ToString());


        /*
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("Delete t_sell where InvoiceNO='" + INV_NO + "' and ID='" + ID + "'", connection);
        //SqlDataAdapter sda = new SqlDataAdapter(cmd);
        //DataSet ds = new DataSet();
        //sda.Fill(ds);

        connection.Open();
        cmd.ExecuteNonQuery();
        connection.Close();

        Response.Redirect("Sell.aspx?InvNO=" + INV_NO);
        */

        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_DeleteCartItem";
            command.Connection = connection;
             

            command.Parameters.Add("@InvoiceNO", SqlDbType.VarChar).Value = INV_NO;
            command.Parameters.Add("@ProductCode", SqlDbType.Int).Value = ProductCode;
            command.Parameters.Add("@StockID", SqlDbType.Int).Value = ProductCode;



            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Item Deleted Successfully');", true);


            

            Response.Redirect("Sell.aspx?InvNO=" + INV_NO);

        }

        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }



    }
}