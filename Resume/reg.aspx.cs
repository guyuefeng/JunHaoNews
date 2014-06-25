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

public partial class reg : System.Web.UI.Page
{
    /// <summary>
    /// 简历用户业务层
    /// </summary>
    private T_rUserBLL bll = null;
    /// <summary>
    /// 简历用户实体
    /// </summary>
    private T_rUserInfo userInfo = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblreg.Text = "注册";
            msgPanel.Visible = false;
        }
    }
    /// <summary>
    /// 简历用户注册
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnRegInsert_Click(object sender, EventArgs e)
    {
        try
        {
            if ( txtUserName.Text != null && txtUserName.Text.ToString().Trim() != "" )
            {
                if (Request["password"].ToString() != Request["chkpwd"].ToString())
                {
                    regPanel.Visible = false;
                    msgPanel.Visible = true;
                    lblMsg.Text = "您要注册的密码两次验证不正确";
                    lblMsg.ForeColor = Color.Red;
                    return;
                }
                if (userInfo == null)
                {
                    userInfo = new T_rUserInfo();
                }
                userInfo = getUIUserInfoValues();
                if (bll == null)
                {
                    bll = new T_rUserBLL();
                }
                if (bll.Add(userInfo) > 0)
                {
                    regPanel.Visible = false;
                    msgPanel.Visible = true;
                    lblMsg.Text = "恭喜您,注册成功!!";
                    lblMsg.ForeColor = Color.Red;
                    return;
                }
            }
            regPanel.Visible = false;
            msgPanel.Visible = true;
            lblMsg.Text = "您的用户名称不能为空!";
            lblMsg.ForeColor = Color.Red;
            return;
        }
        catch (Exception ex)
        {
            regPanel.Visible = false;
            msgPanel.Visible = true;
            lblMsg.Text = "异常:"+ex.Message+"请联系管理员!";
            lblMsg.ForeColor = Color.Red;
            return;
        }
    }
    /// <summary>
    /// 获取注册界面的值赋值给用户实体
    /// </summary>
    /// <returns>返回用户实体</returns>
    private T_rUserInfo getUIUserInfoValues()
    {
        T_rUserInfo model = new T_rUserInfo();
        model.UserName = txtUserName.Text.ToString();
        model.UserPwd = Request["password"].ToString().Trim();
        model.NickName = Request["name"].ToString().Trim();
        return model;
    }
}
