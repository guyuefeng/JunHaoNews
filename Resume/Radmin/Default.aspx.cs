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
using Resume.BLL;
using System.Collections.Generic;
using Resume.Model;

public partial class Radmin_Default : System.Web.UI.Page
{
    public string UserName = null;
    private T_rUserHostBLL hostBLL = null;
    private T_rUserFitBLL fitBLL = null;
    private List<T_rUserHostInfo> _listUserHostInfo = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request["UserName1"] != null)
            {
                if (hostBLL == null)
                {
                    hostBLL = new T_rUserHostBLL();
                }
                if (fitBLL == null)
                {
                    fitBLL = new T_rUserFitBLL();
                }
                if (hostBLL.Delete(Request["UserName1"].ToString().Trim()) && fitBLL.Delete(Request["UserName1"].ToString().Trim()))
                {
                    lblMsg.Text = "您好," + Session["UserName"].ToString().Trim() + "用户您的简历自己删除,是否<a  href=ResumeEdit.aspx>添加简历??</a>";
                }
                gridReaume.DataSource = null;
                gridReaume.DataBind();
                return;
            }
            if (Session["UserName"] != null)
            {
               
                lblUserName.Text = Session["UserName"].ToString().Trim();
                UserName = lblUserName.Text;
                string username = Session["UserName"].ToString().Trim();
                if (_listUserHostInfo == null)
                {
                    _listUserHostInfo = new List<T_rUserHostInfo>();
                }
                if (hostBLL == null)
                {
                    hostBLL = new T_rUserHostBLL();
                }
                string strWhere = "1=1 and UserName='" + username + "'";
                _listUserHostInfo = hostBLL.GetListArray(strWhere);
                if (_listUserHostInfo.Count == 0)
                {
                    lblMsg.Text = "您好," + Session["UserName"].ToString().Trim() + "用户您还没有简历,是否<a href=ResumeEdit.aspx>添加简历??</a>";
                    gridReaume.DataSource = null;
                    gridReaume.DataBind();
                    return;
                }
                if (int.Parse(_listUserHostInfo[0].Sex) == 0)
                {
                    _listUserHostInfo[0].Sex = "男";
                }
                _listUserHostInfo[0].Sex = "女";
                gridReaume.DataSource = _listUserHostInfo;
                gridReaume.DataBind();
                return;
               
                return;
            }
           
            Response.Redirect("../Error.aspx");
        }
    }
}
