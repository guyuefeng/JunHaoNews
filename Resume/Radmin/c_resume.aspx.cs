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

public partial class search_s_resume : System.Web.UI.Page
{
    public string str;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            badingData();
            Label2.Text=Convert.ToString(Convert.ToInt32(Label2.Text)+1);
            
        }

    }
    public void badingData()
    {
        string comstr = "";

        if (Session["comstr_teacher"] != null)
        {
            comstr = Convert.ToString(Session["comstr_teacher"]);
        }
        else
        {
            comstr = "select * from Teacher where SchoolMode<>'' and RealName<>'' and School<>'' and [check]=True order by LastTime  desc";
        }
        DataSet ds = new DataSet();
        ds.Tables.Add(DBctrol.DatableSql(comstr));
        if (ds.Tables[0].Rows.Count > 0)
        {
            PagedDataSource pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 20;



            pg.DataSource = ds.Tables[0].DefaultView;
            pg.CurrentPageIndex = Convert.ToInt32(HiddenField1.Value);
            HiddenField2.Value = pg.PageCount.ToString();
            LinkButton6.Enabled = true;
            LinkButton5.Enabled = true;
            LinkButton4.Enabled = true;
            LinkButton3.Enabled = true;
            if (pg.PageCount == 0)
            {
                LinkButton3.Enabled = false;
                LinkButton4.Enabled = false;
                LinkButton5.Enabled = false;
                LinkButton6.Enabled = false;
            }
            if (Convert.ToInt32(HiddenField1.Value) < 1)
            {
                LinkButton3.Enabled = false;
                LinkButton4.Enabled = false;
            }
            if (Convert.ToInt32(HiddenField2.Value) < (Convert.ToInt32(HiddenField1.Value) + 2))
            {
                LinkButton5.Enabled = false;
                LinkButton6.Enabled = false;
            }

            if (Label2.Text == "1")
            {

                badingDropDownList(pg.PageCount);
            }
            DropDownList3.SelectedValue = Convert.ToString(Convert.ToInt32(HiddenField1.Value) + 1);
            HiddenField2.Value = pg.PageCount.ToString();
            DataList1.DataSource = pg;
            DataList1.DataBind();
            L_pageIndex.Text = Convert.ToString(pg.CurrentPageIndex + 1);
            L_Pagecount.Text = pg.PageCount.ToString();
        }
        else {
            Label3.Visible = true;
            Label3.Text = "<center><br/><br/><br/>对不起,教员库中暂时没有符合您条件的教员!<br/>您可以拨打13875925582告之您的要求,我们可以在二天之内为你安排合适的教员.</center>";
        }
    }
    protected void badingDropDownList(int i)
    {
        for (int j = 1; j <= i; j++)
        {
            DropDownList3.Items.Add(new ListItem("第" + j.ToString() + "页", j.ToString()));
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = "0";
        badingData();
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = Convert.ToString(Convert.ToInt32(HiddenField1.Value) - 1);
        badingData();
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
      
        HiddenField1.Value = Convert.ToString(Convert.ToInt32(HiddenField1.Value) + 1);
        badingData();

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        HiddenField1.Value = Convert.ToString(Convert.ToInt32(HiddenField2.Value));
        badingData();

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandSource.GetType() == typeof(LinkButton))
        {
            if (((LinkButton)e.CommandSource).CommandName == "yuyue")
            {  
                Session["Techidabc"] = ((Label)e.Item.FindControl("Label1")).Text;
                Response.Redirect("../t_reserva.aspx");
             }
             if (((LinkButton)e.CommandSource).CommandName == "xiangxi")
             {
                 Session["Sta_iddg"] = ((Label)e.Item.FindControl("Label1")).Text;
                 Response.Redirect("../c_resumeshow.aspx");


             }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Seach();
    }

    protected void Seach()
    {
        string comstr = "select * from Teacher where [check]=True ";
        if (Convert.ToString(DropDownList2.SelectedValue) == "True")
        {
            comstr += "and Sex =True ";
        }
        if (Convert.ToString(DropDownList2.SelectedValue) == "False")
        {
            comstr += "and Sex=False ";
        }

        if (Convert.ToString(DropDownList1.SelectedValue) == "教师")
        {
            comstr += " and Station= '教师'";
        }
        if (Convert.ToString(DropDownList1.SelectedValue) == "大学生")
        {
            comstr += " and Station= '大学生'";
        }
        if (TextBox2.Text.Trim() != "")
        {
            comstr += " and HomeObject like '%" + DBctrol.Filter(TextBox2.Text) + "%' ";
        }

        if (TextBox3.Text.Trim() != "")
        {
            comstr += " and Speciality= '" + DBctrol.Filter(TextBox3.Text) + "'";
        }

        if (TextBox4.Text.Trim() != "")
        {
            comstr += " and School ='" + DBctrol.Filter(TextBox4.Text) + "'";
        }
        comstr += "order by St_id desc";

        Session["comstr_teacher"] = comstr;
        Response.Redirect("c_resume.aspx");

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.HiddenField1.Value = Convert.ToString(Convert.ToInt32(DropDownList3.SelectedValue) - 1);
        badingData();
    }
}
