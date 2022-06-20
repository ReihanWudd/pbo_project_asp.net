using System;
using System.Data;
using Npgsql;

public partial class addbooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "insert into buku (id_buku,judul,rating,ringkasan,id_genre,id_penulis,id_penerbit,img) values(@id,@judul,@rating,@ringkasan,@id_genre,@id_penulis,@id_penerbit,@linkimg)";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new NpgsqlParameter("@id", txtid.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@judul", txtjudul.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@rating", txtrating.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@ringkasan", txtdesk.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@id_genre", txtgenre.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@id_penulis", txtpenulis.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@id_penerbit", txtpenerbit.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@linkimg", txtimage.Text));

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            txtjudul.Text = "";
            txtrating.Text = "";
            txtdesk.Text = "";
            txtid.Text = "";
            txtgenre.Text = "";
            txtpenulis.Text = "";
            txtpenerbit.Text = "";
            txtimage.Text = "";

            lblmsg.Text = "Your Book Has been Saved";
        }
    }
}