using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Dashboard.aspx");

        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_Login";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@UserID",txtUserID.Text) ,
                         new SqlParameter("@Password",txtPassword.Text) 
                    };

            command.Parameters.AddRange(parameters);
            SqlDataAdapter sda = new SqlDataAdapter(command);
            DataSet ds = new DataSet();
            connection.Open();


  
            sda.Fill(ds);
            //command.ExecuteNonQuery();
            //connection.Close();
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Category Added Successfully');", true);

            //txtInvoiceNO.Text = "";
            //txtCategoryName.Text = "";


            if (ds.Tables[0].Rows.Count > 0)
            {

                Session["UserID"] = ds.Tables[0].Rows[0]["UserID"].ToString();
                Session["Role"] = ds.Tables[0].Rows[0]["UserRole"].ToString();

                if (Session["Role"].ToString() == "Salesman")
                {
                    Response.Redirect("DashboardUser.aspx");
                }
            }


            else
            {
                //GetSaleInfo(Convert.ToInt32(txtInvoiceNO.Text));

                //LoadCategoryInfo();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "Invalid UserID/Password", true);
                lblStatus.Text = "Invalid UserID/Password";
                lblStatus.ControlStyle.ForeColor = System.Drawing.Color.Red;

            }
        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
            lblStatus.Text = ex.Message;
            lblStatus.ControlStyle.ForeColor = System.Drawing.Color.Red;
        }
    }
}