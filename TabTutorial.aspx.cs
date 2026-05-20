using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TabTutorial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //write your code here
    }

    protected void btnSelectTab2_Click(object sender, EventArgs e)
    {
        hfTab.Value = "tab2";
    }

    protected void btnSelectTab3_Click(object sender, EventArgs e)
    {
        hfTab.Value = "tab3";
    }
}