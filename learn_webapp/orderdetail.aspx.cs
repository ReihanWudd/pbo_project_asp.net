using System;
using System.Data;
using Npgsql;

public partial class orderdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        //{
        //    connection.Open();
        //    NpgsqlCommand cmd = new NpgsqlCommand();
        //    cmd.Connection = connection;
        //    cmd.CommandText = "Select * from buku where id_buku =@id";
        //    cmd.CommandType = CommandType.Text;
        //    string judul = Request.QueryString["judul"];
        //    cmd.Parameters.Add(new NpgsqlParameter("@id", judul));
        //    NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
        //    NpgsqlDataReader rd = cmd.ExecuteReader();
        //    DataTable dt = new DataTable();

        //    bool success = rd.Read();
        //    if (success)
        //    {
        //        Label3.Text = rd.GetString(1);
        //    }
        //    //da.Fill(dt);
        //    //cmd.Dispose();
        //    connection.Close();
        //}

        string durasi = Request.QueryString["durasi"];
        Label5.Text = durasi;
        string title = Request.QueryString["judul"];
        Label3.Text = title;
    }
}