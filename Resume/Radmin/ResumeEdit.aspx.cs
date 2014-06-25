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
using System.Drawing;
using Resume.Model;
using System.IO;
using Resume.BLL;
using System.Collections.Generic;

public partial class Radmin_ResumeEdit : System.Web.UI.Page
{
    #region 全局变量
  
    
    public string usersex = null;
    public string province = null;
    public string city = null;
    #endregion

    #region 页面加载
    /// <summary>
    /// 新增简历页面加载方法事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!Page.IsPostBack)
            {
               if (Request.QueryString["Resume_Id"] != null)
                {
                    string resume_id=Request.QueryString["Resume_Id"].ToString().Trim();
                    LoadResume(resume_id);

                    this.fileModelFile.Enabled = false;
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
        T_Resume model=new T_Resume();
        T_ResumeBLL bll =new T_ResumeBLL();
        model =bll.GetResumeById(resume_id);

          txtResumeCode.Text=	model.Resume_code;
            txtUserName.Text=model.Name;
            ddlGender.SelectedValue=model.Gender;
            txtTel.Text=model.MPhone;	
            txtAge.Text=model.Age;
            txtMailBox.Text=model.Mail;	
            txtHighestQualification.Text=model.Education;
            ddlMarital.SelectedValue=model.Marital;	
           txtServiceYear.Text= model.Experience;
            txtCurrentStatus.Text=model.CurrentStatus	;	
            //model.Location="";	
           txtspecialty.Text= model.Industry;
           txt_Position.Text =model.Position;
            //model.Salary;	="";
            txtJobAddress.Text=model.ExpectLocation;
            txtJobSpecification.Text=model.ExpectIndustry;    // 目前行业
            //model.ExpectPosition;	="";
           // model.ExpectSalary;="";	


           this.txtBirthAgeMonth.Text = model.Birthday.ToShortDateString();
           txtNativePlace.Text=model.HomeTown;

           this.txtGraduationDay.Text = model.GraduationDay.ToShortDateString();	
            txtEducationandTrainingExperience.Text=model.EducationExperice;
            txtWorkExperience.Text=model.WorkExperice;
            txtSpecializedSkill.Text=model.ProfessionalSkills;
            this.hf_img.Value = model.UserImg;
            this.hf_create.Value = model.CreateDate.ToString();
            

    }
   
    #endregion

    #region 新增用户简历
    /// <summary>
    /// 新增用户简历方法事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnAddInsertResume_Click(object sender, EventArgs e)
    {
        try
        {
            T_ResumeBLL bll=new T_ResumeBLL();
            T_Resume model=new T_Resume();
            model.Resume_code=txtResumeCode.Text.ToString().Trim();	
            model.Name=txtUserName.Text.ToString().Trim();
            model.Gender=ddlGender.SelectedValue;
            model.MPhone=txtTel.Text.ToString().Trim();	
            model.Age=txtAge.Text.ToString().Trim();
            model.Mail=txtMailBox.Text.ToString().Trim();	
            model.Education	=txtHighestQualification.Text.ToString().Trim();
            model.Marital=ddlMarital.SelectedValue;	
            model.Experience=txtServiceYear.Text.ToString().Trim();	
            model.CurrentStatus	=txtCurrentStatus.Text.ToString().Trim();	
            model.Location="";	
            model.Industry	=txtspecialty.Text.ToString().Trim();
            model.Position = this.txt_Position.Text.ToString().Trim();
            model.Salary	="";
            model.ExpectLocation=	txtJobAddress.Text.ToString().Trim();
            model.ExpectIndustry = txtJobSpecification.Text.ToString().Trim();   // 目前行业
            model.ExpectPosition	="";
            model.ExpectSalary="";	
            DateTime dateValue=Convert.ToDateTime("1900-01-01");
            DateTime.TryParse(txtBirthAgeMonth.Text.ToString().Trim(), out dateValue);
            model.Birthday	=dateValue;
            model.HomeTown	=txtNativePlace.Text.ToString().Trim();

            DateTime dateValue2=Convert.ToDateTime("1900-01-01");
            DateTime.TryParse(txtGraduationDay.Text.ToString().Trim(), out dateValue2);

            model.GraduationDay=dateValue2;	
            model.EducationExperice	=txtEducationandTrainingExperience.Text.ToString().Trim();
            model.WorkExperice=	txtWorkExperience.Text.ToString().Trim();
            model.ProfessionalSkills=	txtSpecializedSkill.Text.ToString().Trim();


              if (Request.QueryString["Resume_Id"] != null)
                {

                    string resume_id=Request.QueryString["Resume_Id"].ToString().Trim();
                    model.Resume_Id =int.Parse(resume_id) ;
                    model.UserImg = this.hf_img.Value;
                    model.CreateDate = Convert.ToDateTime(this.hf_create.Value);

                    bll.Update(model);

                    Response.Redirect("ResumeList.aspx");
                }
             else
                {
                    string fileName = fileModelFile.FileName.ToString().Trim();
                    HttpFile = "../images/face/" + SetFile(fileName);
                    model.UserImg = HttpFile;
                    model.CreateDate = DateTime.Now;
                    bll.Add(model);
                    Messagessss("新增简历成功!");  
                }
              ClearControl();
         
        }
        catch (Exception ex)
        {
            Messagessss(ex.Message.ToString());
        }
    }

    private void ClearControl()
    {
        this.txtResumeCode.Text = "";
        //this.fileModelFile.PostedFile.FileName  = "";
        this.txtUserName.Text = "";
        this.ddlGender.SelectedIndex = 0;
        this.txtBirthAgeMonth.Text = "1985-01-01";
        this.txtAge.Text = "";
        this.txtNativePlace.Text = "";
        this.ddlMarital.SelectedIndex = 0;
        this.txtHighestQualification.Text = "";
        this.txtspecialty.Text = "";
        this.txtGraduationDay.Text = "2007-07-01";
        this.txtServiceYear.Text = "";
        this.txtTel.Text = "";
        this.txtMailBox.Text = "";
        this.txtCurrentStatus.Text = "";
        this.txtJobSpecification.Text = "";   // 目前行业
        this.txtJobAddress.Text = "";
        this.txtAdsumDateTime.Text = "";
        this.txtPromisingIndustry.Text = "";
        this.txtEducationandTrainingExperience.Text = "";
        this.txtWorkExperience.Text = "";
        this.txtSpecializedSkill.Text = "";

    }
   

    #region 用户头像上传
    /// <summary>
    /// 用户头像上传
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnInsertUserImg_Click(object sender, EventArgs e)
    {
        try
        {
            string fileName = fileModelFile.FileName.ToString().Trim();
            HttpFile = "../images/face/" + SetFile(fileName);
            string userName = txtUserName.Text;;
            string userImg = HttpFile;
            
        }
        catch (Exception ex)
        {
            Messagessss(ex.Message.ToString());
        }
    }

    #region 上传文件
    /// <summary>
    /// 上传文件方法
    /// </summary>
    private string SetFile(string fileName)
    {
        string Savepath = Server.MapPath("~/images/face/");//上传文件存到的系统物理地址
        string FileUpload = fileName;//获取文件名
        bool fileok = false;//如果上传奇的文件类型正确就为true,否则为false
        string newfilename = string.Empty;
        string t = fileModelFile.HasFile.ToString();
        if (fileName != null && fileName != "")
        {
            string fileException = System.IO.Path.GetExtension(fileName).ToLower();//取得.后面的类型

            string[] allowedException ={ ".jpg", ".gif" };//类型数组
            for (int i = 0; i < allowedException.Length; i++)
            {
                if (fileException == allowedException[i])//如果类型相等,fileok就为true
                    fileok = true;
            }
        }
        if (fileok)//如果fileok为true就直接上传到指定的目录
        {
            newfilename = GetNewFileName(fileName);
            //if (File.Exists(Savepath + newfilename) != false)
            if (File.Exists(Server.MapPath(Request.ApplicationPath) + "file://UploadFile/" + fileName) == false)
            {
                fileModelFile.PostedFile.SaveAs(Savepath + newfilename);
            }
            else
            {
                Response.Write("<script>alert(\"此文件已经存在，请重新命名你的文件！\")</script>");
            }

        }
        else
        {
            Response.Write("<script>alert(\"只允许上传dll、txt、png、excel、ext后缀的文件！\")</script>");
        }
        return newfilename;
    }
    /// <summary>
    /// 产生文件名 
    /// </summary>
    /// <param name="FileName">上传文件名称</param>
    /// <returns>返回生成的文件名</returns>
    public string GetNewFileName(string FileName)
    {
        //跟据文件名产生一个由时间+随机数组成的一个新的文件名 
        string newfilename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString()
        + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString()
        + DateTime.Now.Second.ToString() + DateTime.Now.Minute.ToString()
        + DateTime.Now.Millisecond.ToString()
            //+ rand.Next(1000).ToString() 
        + FileName.Substring(FileName.LastIndexOf("."), FileName.Length - FileName.LastIndexOf("."));
        return newfilename;
    }


    #endregion
    #endregion
    #endregion

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

    #region 属性
    /// <summary>
    /// 更新文件存放地址变量
    /// </summary>
    private string _httpFile;
    private string HttpFile
    {
        get
        {
            return _httpFile;
        }
        set
        {
            _httpFile = value;
        }
    }
    #endregion
}