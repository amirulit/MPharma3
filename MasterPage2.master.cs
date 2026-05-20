using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    public DataTable tbe;

    public String[] ParentMenu;

    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; }
    }

    public List<Department> ListDepartments;


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


        tbe = dt();

        ParentMenu = "Admin~Rishi~RETAIL~CREDIT".Split('~');

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
}
