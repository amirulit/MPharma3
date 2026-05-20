using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for DB
/// </summary>
public class DB
{
    /*
    public SqlConnection connection = new SqlConnection
               (ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString);
    */

    //String connetionString = null;
    //SqlConnection connection;
    //SqlDataAdapter adapter ;
    //SqlCommand command = new SqlCommand();
    //SqlParameter param ;
    //DataSet ds = new DataSet();


    //public String cs = ConfigurationManager.ConnectionStrings["MPharma"].ConnectionString;
    public String cs = "Data Source=servername;Initial Catalog=PUBS;User ID=sa;Password=yourpassword";
    public SqlConnection sqlc = new SqlConnection();
    public SqlCommand command = new SqlCommand();
    public SqlDataAdapter adapter;
    public DataSet ds;

    public String SqlError;
    public Int32 SqlErrorStatus;
    public Int32 RowsAffected;




    public DB()
    {
        //command.Connection = connection;
        sqlc.ConnectionString = cs;
    }
    public void Insert(SqlCommand cmd)
    {
        cmd.Connection = sqlc;
    }
}