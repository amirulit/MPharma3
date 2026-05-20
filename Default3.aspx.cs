using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "alert('Item Deleted Successfully');", true);

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Msg", "test('tttt');", true);



        string ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
            ipaddress =  Request.ServerVariables["REMOTE_ADDR"];


        //Response.Write(ipaddress.Split('.')[3].ToString());

        Response.Write(ipaddress);
    }
}