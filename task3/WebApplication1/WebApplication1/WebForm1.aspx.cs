using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
            if (Request.Cookies["Color"] != null) {
                string color = Request.Cookies["Color"]["color"];
                Label1.Attributes.Add("style", $"color:{color}");
            }
        }

        protected void saveICookie(object sender, EventArgs e)
        {
            string color = DropDownList1.SelectedValue.ToString();
            Label1.Attributes.Add("style", $"color:{color}");

            HttpCookie c = new HttpCookie("Color");
            c["color"] = color;
            Response.Cookies.Add(c);


        }
    }
}