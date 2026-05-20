using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class AssignMenuToRole : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //LoadParentMenu();
            //LOADCOA();

            ddlRole.Items.Insert(0, new ListItem("<-Select->", ""));
            ddlRole.Items.Insert(1, new ListItem("SuperAdmin", "1"));
            ddlRole.Items.Insert(2, new ListItem("Admin", "2"));
            ddlRole.Items.Insert(3, new ListItem("Salesman", "3"));
            
            

        }
    }

  


    protected void LOADRoleDetails()
    {
        String Sql = @"

select 
	p.* 
	,q.PageCaption ParentMenu
from 
	[MPharma].[dbo].t_PageDetails p 
join
(
	select ID,PageCaption from  	[MPharma].[dbo].t_PageDetails   where ParentMenuID=0
)q
on
	p.ParentMenuID=q.ID Order by 5 Asc
";
        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

        SqlCommand cmd = new SqlCommand(Sql, connection);
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
    
    protected void ddlRole_SelectedIndexChanged(object sender, EventArgs e)
    {
        LOADRoleDetails();
    }
    protected void btnAssignMenuToRole_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);

            SqlCommand command = new SqlCommand();
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usp_SaveMenu";
            command.Connection = connection;

            //SqlParameter[] parameters = 
            //        {
            //            new SqlParameter("@Caption",  txtMenu.Text),
            //            new SqlParameter("@URL",  txtMenuLInk.Text),
            //            new SqlParameter("@ParentID",ddlParetnMenu.SelectedValue.ToString())
                        
            //        };

            //command.Parameters.AddRange(parameters);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('New Menu Added Successfully');", true);


            //txtMenu.Text = "";

            //txtMenuLInk.Text = "";


            //LoadParentMenu();
            //LOADCOA();


        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Error Occured : " + ex.Message + "');", true);
        }
    }
}