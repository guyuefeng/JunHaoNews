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

public partial class Radmin_ResumeList : System.Web.UI.Page
{
    public string str;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            badingData();
            Label2.Text = Convert.ToString(Convert.ToInt32(Label2.Text) + 1);

        }

    }
    public void badingData()
    {
        string comstr = "select *,year(date())-year(GraduationDay) as ExpericeYear from T_Resume where 1=1 ";
        if (Convert.ToString(DropDownList2.SelectedValue) == "True")
        {
            comstr += "and Gender ='男' ";
        }
        if (Convert.ToString(DropDownList2.SelectedValue) == "False")
        {
            comstr += "and Gender='女' ";
        }
        if (this.txt_Edu.Text.Trim() != "")
        {
            comstr += " and [Education] like '%" + DBctrol.Filter(txt_Edu.Text) + "%'";
        }

        if (TextBox3.Text.Trim() != "")
        {
            comstr += " and [Industry] like '%" + DBctrol.Filter(TextBox3.Text) + "%'";
        }

        if (Convert.ToString(this.ddl_workyear.SelectedValue) == "1")
        {
            comstr += "and year(date())-year(GraduationDay)>=1 ";
        }
        else if (Convert.ToString(this.ddl_workyear.SelectedValue) == "3")
        {
            comstr += "and year(date())-year(GraduationDay)>=3 ";
        }
        else if (Convert.ToString(this.ddl_workyear.SelectedValue) == "5")
        {
            comstr += "and year(date())-year(GraduationDay)>=5 ";
        }
        else if (Convert.ToString(this.ddl_workyear.SelectedValue) == "7")
        {
            comstr += "and year(date())-year(GraduationDay)>=7 ";
        }
        else if (Convert.ToString(this.ddl_workyear.SelectedValue) == "10")
        {
            comstr += "and year(date())-year(GraduationDay)>=10 ";
        }


        if (txt_Fuzzy.Text.Trim() != "")
        {
            comstr += string.Format("AND ((EducationExperice LIKE '%{0}%') OR (WorkExperice LIKE '%{0}%') OR (ProfessionalSkills LIKE '%{0}%') OR (Name LIKE '%{0}%') OR(Position LIKE '%{0}%'))", DBctrol.Filter(txt_Fuzzy.Text));
        }

        comstr += " order by Resume_Id DESC,CreateDate DESC";

       
        DataSet ds = new DataSet();
        ds.Tables.Add(DBctrol.DatableSql(comstr));
        if (ds.Tables[0].Rows.Count > 0)
        {
            Label3.Visible = false;
            Label3.Text = "";

            PagedDataSource pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 10;



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
        else
        {
            DataList1.DataSource = "";
            DataList1.DataBind();
            Label3.Visible = true;
            Label3.Text = "<center><br/><br/><br/>对不起,数据库中暂时没有符合您条件的简历!</center>";
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
           if (((LinkButton)e.CommandSource).CommandName == "delete")
            {
                string resume_id = ((Label)e.Item.FindControl("Label1")).Text;
                Resume.BLL.T_ResumeBLL bll=new Resume.BLL.T_ResumeBLL();
                bll.Delete(resume_id);
                
                Response.Redirect("ResumeList.aspx");
            }
            else if (((LinkButton)e.CommandSource).CommandName == "edit")
            {
                string resume_id = ((Label)e.Item.FindControl("Label1")).Text;             
                Response.Redirect(String.Format("ResumeEdit.aspx?Resume_Id={0}",resume_id));
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Seach();
    }

    protected void Seach()
    {

        badingData();

    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.HiddenField1.Value = Convert.ToString(Convert.ToInt32(DropDownList3.SelectedValue) - 1);
        badingData();
    }
}
