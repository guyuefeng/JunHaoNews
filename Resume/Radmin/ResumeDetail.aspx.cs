using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Resume.BLL;
using System.Drawing;

public partial class Radmin_ResumeDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["Resume_Id"] != null)
                {
                    string resume_id = Request.QueryString["Resume_Id"].ToString().Trim();
                    LoadResume(resume_id);
                }
            }
        }
        catch (Exception ex)
        {
            Messagessss(ex.Message.ToString());
        }
    }

    private void LoadResume(string resume_id)
    {
        T_Resume model = new T_Resume();
        T_ResumeBLL bll = new T_ResumeBLL();
        model = bll.GetResumeById(resume_id);

        //this.lbl_ResumeCode.Text = model.Resume_code;
        this.lbl_Name.Text = model.Name;
        this.lbl_Gender.Text = model.Gender;
        this.lbl_MPhone.Text = model.MPhone;

        //txtAge.Text = model.Age;
        this.lbl_Mail.Text  = model.Mail;
        this.lbl_Education.Text = model.Education;
        this.lbl_Marital.Text = model.Marital;
        this.lbl_Experience.Text = model.Experience;
        this.lbl_CurrentStatus.Text = model.CurrentStatus;
        //model.Location="";	
        this.lbl_Industry.Text = model.Industry;
        //model.Position;	="";
        //model.Salary;	="";
        this.lbl_ExpectLocation.Text = model.ExpectLocation;
        this.lbl_ExpectIndustry.Text = model.ExpectIndustry;
        //model.ExpectPosition;	="";
        // model.ExpectSalary;="";	

        // model.Birthday;	=dateValue;
        this.lbl_Hometown.Text = model.HomeTown;

        //model.GraduationDay;=dateValue2;	
        this.lbl_EduExperice.Text = model.EducationExperice;
        this.lbl_WorkExperice.Text = model.WorkExperice;
        this.lbl_ProfessionalSkills.Text = model.ProfessionalSkills;
        //model.UserImg;="";
        //model.CreateDate; =DateTime.Now;
        string tmpRootDir = Server.MapPath(System.Web.HttpContext.Current.Request.ApplicationPath.ToString());//获取程序根目录
        string imagesurl2 = model.UserImg.Replace(tmpRootDir, ""); //转换成相对路径
        imagesurl2 = imagesurl2.Replace(@"\", @"/");

        this.Image1.ImageUrl = imagesurl2;

    }



    #region 消息输出
    /// <summary>
    /// 消息输出主法处理
    /// </summary>
    /// <param name="msg">输出消息的提示字符串</param>
    private void Messagessss(string msg)
    {
        lblMsg.Text = msg;
        lblMsg.Font.Size = 12;
        lblMsg.ForeColor = Color.Red;
    }
    #endregion
}
