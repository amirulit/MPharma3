using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class RequistionRep : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RequisitionRep();
    }

    protected void RequisitionRep()
    {
        //String Sel = DropDownList1.SelectedValue.ToString();

        String Sel = Request.QueryString[0].ToString() ;

        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);
        //String Str = @"  EXEC usp_AutoRequisition '" + Sel + "'";
        String Str = @"
select
	r.*
	,m.*
from
	t_Requisition r
join
	t_Medicine m
on
	r.Product_ID=m.ID
where
	m.Manufacturer like '%" + Sel + "%' ";


        Str = @"  EXEC usp_AutoRequisition '" + Sel + "'";


        //SqlCommand cmd = new SqlCommand("select * from [MPharma].[dbo].[t_Medicine] ", connection);
        SqlCommand cmd = new SqlCommand(Str, connection);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        //if (ds.Tables[0].Rows.Count > 0)
        //{
        GridView2.DataSource = ds;
        GridView2.DataBind();
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView2.UseAccessibleHeader = true;
            GridView2.HeaderRow.TableSection = TableRowSection.TableHeader;

            //lblStatus.Text = "";
        }
        //}
        //else
        //{
        //lblStatus.Text = "No Product Found.";

        //}

    }
}