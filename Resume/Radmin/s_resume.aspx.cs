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
            Label4.Text = Convert.ToString(Convert.ToInt32(Label4.Text) + 1);
          
        }

     
    }
    public void pandun()
    {
        foreach (DataListItem di in DataList1.Items)
        {
            //FindControl("bespeak")).Text == "
            if (((Label)di.FindControl("bespeak")).Text == "已预约")
            {
                LinkButton lb = (LinkButton)di.FindControl("LinkButton1");
                lb.Visible = false;
            }
        }
    }
    public void badingData()
    {
        string comstr = "";
    
        if (Session["comstr_Student"] != null)
        {
            comstr = Convert.ToString(Session["comstr_Student"]);
        }
        else
        {
            comstr = "select * from Student where  TutorshipAddress<>' ' and Tutorship<>' ' and [check]=True order by AddTime desc ";
        }
        DataSet ds = new DataSet();
        ds.Tables.Add(DBctrol.DatableSql(comstr));
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
        if (Label4.Text == "1")
        {

            badingDropDownList(pg.PageCount);
        }
        HiddenField2.Value = pg.PageCount.ToString();
        Lb_PageCount.Text = pg.PageCount.ToString();
        Lb_PageIndex.Text=Convert.ToString( pg.CurrentPageIndex+1);
        DataList1.DataSource = pg;
        DataList1.DataBind();

        pandun();

    }
    protected void badingDropDownList(int i)
    {
        for (int j = 1; j <= i; j++)
        {
            DropDownList1.Items.Add(new ListItem("第" + j.ToString() + "页", j.ToString()));
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
        Response.Write(HiddenField1.Value + str);
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
          if (((LinkButton)e.CommandSource).CommandName=="yuyue")
            {
                if (((Label)e.Item.FindControl("bespeak")).Text == "可预约")
                {

                    Session["stu_idhj"] = ((Label)e.Item.FindControl("label1")).Text;
                    Response.Redirect("../s_reserva.aspx");
                    
                }
                else {
                    Response.Write("<script>alert('此学员已经被预约！');location.herf='s_resume.aspx'</script>");
                }
            }
           
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.HiddenField1.Value = Convert.ToString(Convert.ToInt32(DropDownList1.SelectedValue) - 1);
        badingData();
    }
}
