using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class search : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        Seach();
 
    }


       protected void Seach()
    {
        string comstr = "select * from Teacher where";
        if (Convert.ToString(DropDownList2.SelectedValue) == "True")
        {
            comstr += " Sex =True ";
        }
        if (Convert.ToString(DropDownList2.SelectedValue) == "False")
        {
            comstr += " Sex=False "; 
        }
        comstr += " and Station= '" + Convert.ToString(DropDownList1.SelectedValue) + "'";

        if (TextBox2.Text != "")
        {
            comstr += " and HomeObject like '%" + DBctrol.Filter(TextBox2.Text) + "%' ";
        }
       
        if (TextBox3.Text != "")
        {
            comstr += " and Speciality= '" + DBctrol.Filter(TextBox3.Text) + "'";
        }
       
      if (TextBox4.Text != "")
        {
            comstr += " and School ='" + DBctrol.Filter(TextBox4.Text) + "'";
        }


      Session["comstr_teacher"] = comstr;
       Response.Redirect("../c_resume.aspx");

    }

}
