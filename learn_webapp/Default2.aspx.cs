using System;
using System.Data;
using Npgsql;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=perpustakaan;Password=beginer1383"))
    //    {

    //        try
    //        {
    //            conn.Open();
    //            NpgsqlCommand cmd = new NpgsqlCommand();
    //            cmd.Connection = conn;
    //            cmd.CommandText = "select * from tbl_user where username like @username and password like @password";
    //            cmd.CommandType = CommandType.Text;
    //            cmd.Parameters.AddWithValue("@username", txtemail);
    //            cmd.Parameters.AddWithValue("@password", txtpass);
    //            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
    //            DataTable dt = new DataTable();
    //            //da.Fill(dt);
    //            //cmd.Dispose();
    //            //int usercount = (int)cmd.ExecuteScalar();
    //            if (dt.Rows[0][0].ToString() == "1")
    //            {
    //                Label1.Text = "login masuk";
    //            }
    //            else
    //            {
    //                Label1.Text = "login gagal";
    //            }
    //            conn.Close(); 
    //        }
    //        catch(Exception) { 
    //            Label1.Text = "login eror";
    //        }


    //        //txtjudul.Text = "";
    //        //txtrating.Text = "";

    //    }
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            NpgsqlCommand cmd = new NpgsqlCommand("select * from newakun where username=@username and password=@password and status = @status", conn);
            cmd.Parameters.AddWithValue("@username", txtuser.Text);
            cmd.Parameters.AddWithValue("@password", txtpass.Text);
            cmd.Parameters.AddWithValue("@status", status.Text);
            NpgsqlDataAdapter sda = new NpgsqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            int i = cmd.ExecuteNonQuery();
            conn.Close();

            if (dt.Rows.Count > 0 & status.Text == "user")
            {
                Response.Redirect("welcomepage.aspx");
            }
            else if (dt.Rows.Count > 0 & status.Text == "admin") 
            {
                Response.Redirect("booklist.aspx");
            }
            else
            {
                Label1.Text = "Your username and word is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }

        }
    }
}