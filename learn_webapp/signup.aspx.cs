using System;
using System.Data;
using Npgsql;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signup_click(object sender, EventArgs e) {
        
    }

    protected void signupbtn_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "insert into newakun (username,password,status) values(@user,@judul,@status)";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new NpgsqlParameter("@user", usertxt.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@judul", passtxt.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@status", status.Text));
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close(); 
            usertxt.Text = "";
            passtxt.Text = "";
            status.Text = "";

            lblmsg.Text = "your account has been registered";
        }
    }
}