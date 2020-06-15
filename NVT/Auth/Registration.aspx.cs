using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Auth_Reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        //string pass1 = pass.Text;
        //string pass2 = rpass.Text;
        SqlConnection con = new SqlConnection(strcon);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into CompanyMaster values(@cname,@num,@email,@passwd,1)", con);
        cmd.Parameters.AddWithValue("cname",cname.Text);
        cmd.Parameters.AddWithValue("num", num.Text);
        cmd.Parameters.AddWithValue("email", email.Text);
        cmd.Parameters.AddWithValue("passwd", pass.Text);
        int x=cmd.ExecuteNonQuery();
        con.Close();
        //if(pass1==pass2)
        //{
            if (x != 0)
            {
                Response.Redirect("Login.aspx");
            }
        // }*/
        ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:validatecontrol(); ", true);
    }

    protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
    {
        e.IsValid = ChckBox.Checked;
    }
}