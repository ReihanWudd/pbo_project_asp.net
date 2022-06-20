using System;
using System.Data;
using Npgsql;

public partial class userbooklist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=library;Password=beginer1383"))
        {
            connection.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "Select id_buku,judul,ringkasan from buku";
            cmd.CommandType = CommandType.Text;
            NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cmd.Dispose();
            connection.Close();

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        string judul = Request.QueryString["judul"];
        judulsatu.Text = judul;
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int kurang = Convert.ToInt32(GridView1.SelectedDataKey.Value);
        int index = Convert.ToInt32(GridView1.SelectedDataKey.Value)-1;
        //Label1.Text = kurang.ToString();
        string id_person = GridView1.DataKeys[index]["id_buku"].ToString();
        string judulnya = GridView1.SelectedRow.Cells[2].Text;
        Response.Redirect("bookdetail.aspx?judul=" + id_person);

    }

    protected void lnkView_Click(object sender, EventArgs e)
    {
        string jdl = GridView1.SelectedRow.Cells[1].Text;
        Response.Redirect("bookdetail.aspx?judul="+jdl);
    }

}