using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task2
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addComment_Click(object sender, EventArgs e)
        {
            string comment = txtComment.Text;

            string q = $"insert into Comments (comment ) values ('{comment}')";
            SqlConnection con = new SqlConnection("data source= DESKTOP-68EIP1R\\SQLEXPRESS ; database=task2 ; integrated security= sspi");
            SqlCommand comand = new SqlCommand(q, con);
            con.Open();
            comand.ExecuteNonQuery();
            con.Close();

            if (comment == "") {
                return;
            }
             ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
                "swal('Good job!', 'Message added seccessfully ')", true);
        }
    }
}