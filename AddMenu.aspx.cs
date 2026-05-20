using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class AddMenu : System.Web.UI.Page
{

    private SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadParentMenu();
            //LOADCOA();
        }
    }

    protected void LoadParentMenu()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        //SqlConnection connection = new SqlConnection
             //(ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlConnection connection = Conn; 

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].t_PageDetails; select * from [MPharma].[dbo].t_PageDetails  where ParentMenuID=0 or  ParentMenuID is null ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);


        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();


        ddlParetnMenu.Items.Clear();
        ddlParetnMenu.DataSource = ds.Tables[1];
        ddlParetnMenu.DataTextField = "PageCaption";
        ddlParetnMenu.DataValueField = "ID";
        ddlParetnMenu.DataBind();
        ddlParetnMenu.Items.Insert(0, new ListItem("<--Select-->", ""));


    }


    protected void btnSubCategorySave_Click(object sender, EventArgs e)
    {
       
    }


    protected void LOADCOA()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_COA] Order BY AccountNO Asc ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();








    }
   

    protected void LoadProductTypeInfo()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_ProductType] ", connection);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);









    }
    protected void btnCategorySave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_CategoryAdd";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@CategoryName","") 
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Category Added Successfully');", true);

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
    protected void btnMenuSave_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_SaveMenu";
            command.Connection = connection;

            SqlParameter[] parameters = 
                    {
                        new SqlParameter("@Caption",  txtMenu.Text),
                        new SqlParameter("@URL",  txtMenuLInk.Text),
                        new SqlParameter("@ParentID",ddlParetnMenu.SelectedValue.ToString())
                        
                    };

            command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Menu Added Successfully');", true);


            txtMenu.Text = "";

            txtMenuLInk.Text = "";


            LoadParentMenu();
            //LOADCOA();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView2.Rows[e.RowIndex];
        Label lbldeleteid = (Label)row.FindControl("lblID");
        Conn.Open();
        SqlCommand cmd = new SqlCommand("Delete FROM t_PageDetails where id='" + Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value.ToString()) + "'", Conn);
        cmd.ExecuteNonQuery();
        Conn.Close();
        LoadParentMenu();
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            String item = e.Row.Cells[0].Text;
            foreach (Button button in e.Row.Cells[0].Controls.OfType<Button>())
            {
                if (button.CommandName == "Delete")
                {
                    button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                }
            }
        }
    }
}