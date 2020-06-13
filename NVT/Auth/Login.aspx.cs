using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Auth_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sub_btn_Click(object sender, EventArgs e)
    {
        string email = cemail.Text;
        string pass = passwd.Text;
        HttpCookie cinfo = new HttpCookie("cinfo");
        cinfo["CEmail"] = cemail.Text;
        cinfo["CPass"] = passwd.Text;
        cinfo.Expires = DateTime.Now.AddDays(7);
        Response.Cookies.Add(cinfo);
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        string query = "select * from CompanyMaster where CEmail='" + email + "' and CPassword='" + pass + "'";
        SqlCommand cmd = new SqlCommand(query,con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Response.Redirect("../Dashboard.aspx");
        }
        else
        {
            Response.Redirect("Registration.aspx");
        }
        con.Close();
    }
}