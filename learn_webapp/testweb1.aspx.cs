using System;
using System.Data;
using Npgsql;

public partial class testweb1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInsertion_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection conn = new NpgsqlConnection("Host=localhost;Username=postgres;Database=tokobuku;Password=beginer1383")) 
        {
            conn.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "insert into books (book_name,book_page) values(@boname,@bopage)";
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.Add(new NpgsqlParameter("@boname", txttitle.Text));
            cmd.Parameters.Add(new NpgsqlParameter("@bopage", txtpage.Text));
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            txttitle.Text = "";
            txtpage.Text = "";
            lblmsg.Text = "Your Book Has been Saved";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (NpgsqlConnection connection = new NpgsqlConnection("Host=localhost;Username=postgres;Database=tokobuku;Password=beginer1383"))
        {
            connection.Open();
            NpgsqlCommand cmd = new NpgsqlCommand();
            cmd.Connection = connection;
            cmd.CommandText = "Select * from books";
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //if (e.CommandName == "hapus")
        //{
        //    objUsers.hapusUser(id_person);
        //    isiData();
        //}
        //else if (e.CommandName == "ubah")
        //{
        //    tbNama.Text = GridView1.DataKeys[rowIndex]["nama"].ToString();
        //    tbEmail.Text = GridView1.DataKeys[rowIndex]["email"].ToString();
        //    tbNoHp.Text = GridView1.DataKeys[rowIndex]["no_hp"].ToString();
        //    tbAlamat.Text = GridView1.DataKeys[rowIndex]["alamat"].ToString();

        //    //ViewState => Variabel browser client tdk hilang jika tdk pindah form / url

        //    ViewState["id_person"] = id_person;
        //    btSimpan.Visible = false;
        //    btUpdate.Visible = true;
        //    panelUser.Visible = false;
        //    panelForm.Visible = true;
        //}
    }
}