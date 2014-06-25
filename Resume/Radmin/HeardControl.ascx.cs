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

public partial class HeardControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            newsbading();
        }
    }
    public void newsbading()
    {

        DataTable dt = DBctrol.DatableSql("select * from news where NType=10 order by AddTime desc");//class='n_link'
        string time = "";
        if (dt.Rows.Count != 0)
        {
            if (dt.Rows[0] != null)
            {
                if (dt.Rows[0]["AddTime"].ToString().Length > 10)
                {
                    time = dt.Rows[0]["AddTime"].ToString().Substring(0, 10);
                }
                else
                {
                    time = dt.Rows[0]["AddTime"].ToString();
                }
            }

            string str = "";
            str = @"<a href='newshow.aspx?Nid=" + dt.Rows[0]["NewID"].ToString() + @"'  >" + dt.Rows[0]["Title"] + "！~" + time + "</a>";
            gundong.InnerHtml = str;

        }

    }
}
