using System;
using System.Data;
using Npgsql;

public partial class category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
    //    {
    //        connection.Open();
    //        NpgsqlCommand cmd = new NpgsqlCommand();
    //        cmd.Connection = connection;
    //        cmd.CommandText = "Select * from buku";
    //        cmd.CommandType = CommandType.Text;
    //        NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
    //        DataTable dt = new DataTable();
    //        da.Fill(dt);
    //        cmd.Dispose();
    //        connection.Close();

    //        GridView1.DataSource = dt;
    //        GridView1.DataBind();
    //    }
    //}

    protected void Button8_Click(object sender, EventArgs e)
    {
        string judul = "Genere acak";
        Response.Redirect("userbooklist.aspx?judul="+judul);
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        string judul ="Genre non-fiksi";
        Response.Redirect("userbooklist.aspx?judul=" + judul);
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        string judul ="Genre Fisi-sejarah";
        Response.Redirect("userbooklist.aspx?judul=" + judul);
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        string judul ="Genre Fiksi-Ilmiah";
        Response.Redirect("userbooklist.aspx?judul=" + judul);
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        string judul ="Genre Klasik";
        Response.Redirect("userbooklist.aspx?judul=" + judul);
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        string judul ="Genre Fantasi";
        Response.Redirect("userbooklist.aspx?judul=" + judul);
    }

}