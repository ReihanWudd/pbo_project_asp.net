using System;
using System.Data;
using Npgsql;

public partial class booklist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            connection.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "Select * from buku";
            cmd.CommandType = CommandType.Text;
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.Dispose();
            connection.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
     

    }
    //protected void delbtn_click(object sender, GridViewDeleteEventArgs e)
    //{
    //    int rowindex = (int)GridView1.DataKeys[e.RowIndex].Value;
    //    string id_person = GridView1.DataKeys[rowindex]["id_person"].ToString();
    //}

    protected void update_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "update buku set judul=@judul,rating=@rating,ringkasan=@ringkasan,id_genre=@id_genre,id_penulis=@id_penulis,id_penerbit=id_penerbit where id_buku::int=@id";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new NpgsqlParameter("@id", Convert.ToInt32(txtid.Text)));
            cmd.Parameters.Add(new NpgsqlParameter("@judul", txtjudul.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@rating", txtrating.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@ringkasan", txtdesk.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@id_genre", txtgenre.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@id_penulis", txtpenulis.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@id_penerbit", txtpenerbit.Text));

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

            lblmsg.Text = "book update successfuly";
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "Delete from buku where id_buku::int=@id";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new NpgsqlParameter("@id", Convert.ToInt32(txt_del.Text)));
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            txt_del.Text = "";
            dellbl.Text = "Data Has been Deleted";
        }
    }
}