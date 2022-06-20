using System;
using Npgsql;
using System.Data;

public partial class bookdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            connection.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "Select * from buku where id_buku =@id";
            cmd.CommandType = CommandType.Text;
            string judul = Request.QueryString["judul"];
          
            cmd.Parameters.Add(new NpgsqlParameter("@id", judul));
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            NpgsqlDataReader rd = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            
            bool success = rd.Read();
            if (success)
            {
                gambar.Src = rd.GetString(7);
                judulsatu.Text = rd.GetString(1);
                deskripsi.Text = rd.GetString(3);
                rating.Text = rd.GetString(2);
            }
            //da.Fill(dt);
            //cmd.Dispose();
            connection.Close();
        }
        
    }

    protected void btnpinjam1_Click(object sender, EventArgs e)
    {
        string durasi = "one week";
        string ambil = judulsatu.Text;
        //string judul = Request.QueryString["judul"];
        Response.Redirect("orderdetail.aspx?durasi=" + durasi +"&judul="+ambil);

    }

    protected void btnpinjam2_Click(object sender, EventArgs e)
    {
        string durasi = "two week";
        string ambil = judulsatu.Text;
        Response.Redirect("orderdetail.aspx?durasi=" + durasi + "&judul=" + ambil);
    }

    protected void btnpinjam3_Click(object sender, EventArgs e)
    {
        string durasi = "three week";
        string ambil = judulsatu.Text;
        Response.Redirect("orderdetail.aspx?durasi=" + durasi + "&judul=" + ambil);
    }

    protected void btnpinjam4_Click(object sender, EventArgs e)
    {
        string durasi = "one month";
        string ambil = judulsatu.Text;
        Response.Redirect("orderdetail.aspx?durasi=" + durasi + "&judul=" + ambil);
    }
}