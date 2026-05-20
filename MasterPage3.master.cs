using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    public DataTable tbe;

    public String[] ParentMenu;

    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public List<Department> ListDepartments;


    public DataTable dt2()
    {
        var table = new DataTable();
        table.Columns.Add("ParentMenuCaption", typeof(string));
        table.Columns.Add("ChildMenuCaption", typeof(string));
        table.Columns.Add("ChildMenuLInk", typeof(string));

        table.Rows.Add("Dashboard", "Dashboard", "Dashboard.aspx");
        //table.Rows.Add("Dashboard", "Dashboard 1", "Dashboard.aspx"); 
        //table.Rows.Add("Dashboard", "Dashboard 2", "Dashboard.aspx");

        table.Rows.Add("Sell", "New Sell", "Sell.aspx");
        table.Rows.Add("Sell", "Manage", "SellManage.aspx");
        table.Rows.Add("Sell", "Refund", "SellRefund.aspx");

        table.Rows.Add("Report", "Report1", "Report1.aspx");
        table.Rows.Add("Report", "Report2", "Report2.aspx");
        table.Rows.Add("Logout", "Logout", "Logout.aspx");
        table.Rows.Add("Sell", "New Sell", "Sell.aspx");
        table.Rows.Add("Sell", "Manage", "SellManage.aspx");
        table.Rows.Add("Sell", "Refund", "SellRefund.aspx");


        table.Rows.Add("Logout", "Logout 1", "Logout.aspx");

        return table;

    }
    public DataTable dt()
    {
        DataTable tbe = new DataTable();

        tbe.Columns.Add("Column1", typeof(string));
        tbe.Columns.Add("Column2", typeof(string));
        tbe.Columns.Add("Column3", typeof(string));

        DataRow row = tbe.NewRow();
        row["Column1"] = "Admin";
        row["Column2"] = "xyz";
        row["Column3"] = "cleaning";
        tbe.Rows.Add(row);

        row = tbe.NewRow();
        row["Column1"] = "Admin";
        row["Column2"] = "hjkj";
        row["Column3"] = "washing";
        tbe.Rows.Add(row);

        row = tbe.NewRow();
        row["Column1"] = "Rishi";
        row["Column2"] = "iuyiu";
        row["Column3"] = "locking";
        tbe.Rows.Add(row);

        row = tbe.NewRow();
        row["Column1"] = "Rishi";
        row["Column2"] = "uyur";
        row["Column3"] = "contracting";
        tbe.Rows.Add(row);

        row = tbe.NewRow();
        row["Column1"] = "Rishi";
        row["Column2"] = "qewq";
        row["Column3"] = "launching";
        tbe.Rows.Add(row);

        row = tbe.NewRow();
        row["Column1"] = "CREDIT";
        row["Column2"] = "qewq";
        row["Column3"] = "launching";
        tbe.Rows.Add(row);

        return tbe;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        ListDepartments = new List<Department>()
                {
                    new Department() {Id = 1, Name="IT" },
                    new Department() {Id = 1, Name="XX" },
                    new Department() {Id = 1, Name="YY" },
                    new Department() {Id = 2, Name="HR" },
                    new Department() {Id = 3, Name="Manager" },
                    new Department() {Id = 3, Name="MD" }
                };


        tbe = dt3();

        //ParentMenu = "Admin~Rishi~RETAIL~CREDIT".Split('~');

        ParentMenu = "Dashboard~Sell~Report~Logout".Split('~');

        ParentMenu = "Dashboard~Sell~Stock".Split('~');
    }


    public DataTable dt3()
    {
        //throw new NotImplementedException();
        //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

        SqlConnection connection = new SqlConnection
             (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);


        SqlCommand command = new SqlCommand();
        command.CommandType = CommandType.StoredProcedure;
        command.CommandText = "usp_UserMenu";
        command.Connection = connection;


        command.Parameters.Add("@UserID", SqlDbType.VarChar).Value = "Suman";



        SqlDataAdapter sda = new SqlDataAdapter(command);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        return ds.Tables[0];

    }

}
