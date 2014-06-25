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
using Resume.Model;
using System.Drawing;
using System.Collections.Generic;

public partial class RLogin : System.Web.UI.Page
{
    /// <summary>
    /// 简历用户业务层
    /// </summary>
    private T_rUserBLL bll = null;
    private List<T_rUserInfo> _userInfoList = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

        }
    }
    /// <summary>
    /// 简历用户登陆方法事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            string userName = Request["userName"].ToString().Trim();
            string userPass = Request["userPass"].ToString().Trim();
            Session["UserName"] = userName;
            if (bll == null)
            {
                bll = new T_rUserBLL();
            }
            if (bll.Exists(userName, userPass))
            {
                if (_userInfoList == null)
                {
                    _userInfoList = new List<T_rUserInfo>();
                }
                string strWhere = "1=1 and UserName ='" + userName + "'" + "and UserPwd ='" + userPass + "'";
                _userInfoList = bll.GetListArray(strWhere);
                Session["NickName"] = _userInfoList[0].NickName.ToString().Trim();
                Response.Redirect("Radmin/Default.aspx");
                return;
            }
            lblErr.Text = "对不起，用户不存在" + "<a href=reg.aspx>注册吗?</a>";
            lblErr.ForeColor = Color.Red;
            lblErr.Font.Size = 12;
        }
        catch (Exception ex)
        {
            lblErr.Text = "异常:"+ex.Message+"请联系管理员";
            lblErr.ForeColor = Color.Red;
            lblErr.Font.Size = 12;
            return;
        }
        
    }
}
