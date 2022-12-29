using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class task3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["user"] != null)
            {
                string userName = Request.Cookies["user"]["username"];
                string pass = Request.Cookies["user"]["password"];

                username.Text = userName;
                password.Text = pass;
            }
                

            

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked) {
                string uName = username.Text;
                string uPassword = password.Text;

                HttpCookie c = new HttpCookie("user");
                c["username"] = uName;
                c["password"] = uPassword;

                Response.Cookies.Add(c);

            }
        }
    }
}