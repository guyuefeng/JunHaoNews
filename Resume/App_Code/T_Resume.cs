using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for T_Resume
/// </summary>
public class T_Resume
{
	public T_Resume()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    #region Model
    private int _resume_Id;
    private string _resume_code;
    private string _name;
    private string _gender;
    private string _mPhone;
    private string _age;
    private string _mail;
    private string _education;
    private string _marital;
    private string _experience;
    private string _currentStatus;

    private string _location;
    private string _industry;
    private string _position;
    private string _salary;

    private string _expectlocation;
    private string _expectindustry;
    private string _expectposition;
    private string _expectsalary;

    private DateTime _birthday;
    private string _homeTown;
    private DateTime  _graduationDay;
    private string _educationExperice;
    private string _workExperice;
    private string _professionalSkills;
    private string _userImg;
    private DateTime _createDate;
    


    /// <summary>
    /// 主键
    /// </summary>
    public int Resume_Id
    {
        set { _resume_Id = value; }
        get { return _resume_Id; }
    }
    /// <summary>
    /// 简历编码
    /// </summary>
    public string Resume_code
    {
        set { _resume_code = value; }
        get { return _resume_code; }
    }
    /// <summary>
    /// 姓名
    /// </summary>
    public string Name
    {
        set { _name = value; }
        get { return _name; }
    }
    /// <summary>
    /// 性别
    /// </summary>
    public string Gender
    {
        set { _gender = value; }
        get { return _gender; }
    }

    /// <summary>
    /// 电话
    /// </summary>
    public string MPhone
    {
        set { _mPhone = value; }
        get { return _mPhone; }
    }
    /// <summary>
    /// 年零
    /// </summary>
    public string Age
    {
        set { _age = value; }
        get { return _age; }
    }
    /// <summary>
    /// 邮箱
    /// </summary>
    public string Mail
    {
        set { _mail = value; }
        get { return _mail; }
    }
    /// <summary>
    /// 教育程度
    /// </summary>
    public string Education
    {
        set { _education = value; }
        get { return _education; }
    }
    /// <summary>
    /// 婚姻
    /// </summary>
    public string Marital
    {
        set { _marital = value; }
        get { return _marital; }
    }
    /// <summary>
    /// 工作经验
    /// </summary>
    public string Experience
    {
        set { _experience = value; }
        get { return _experience; }
    }
    /// <summary>
    /// 目前状态
    /// </summary>
    public string CurrentStatus
    {
        set { _currentStatus = value; }
        get { return _currentStatus; }
    }
    /// <summary>
    /// 现居地
    /// </summary>
    public string Location
    {
        set { _location = value; }
        get { return _location; }
    }
    /// <summary>
    /// 专业
    /// </summary>
    public string Industry
    {
        set { _industry = value; }
        get { return _industry; }
    }
    /// <summary>
    /// 职位
    /// </summary>
    public string Position
    {
        set { _position = value; }
        get { return _position; }
    }

    public string Salary
    {
        set { _salary = value; }
        get { return _salary; }
    }



    /// <summary>
    /// 期望现居地
    /// </summary>
    public string ExpectLocation
    {
        set { _expectlocation = value; }
        get { return _expectlocation; }
    }
    /// <summary>
    /// 期望专业
    /// </summary>
    public string ExpectIndustry
    {
        set { _expectindustry = value; }
        get { return _expectindustry; }
    }
    /// <summary>
    /// 期望职位
    /// </summary>
    public string ExpectPosition
    {
        set { _expectposition = value; }
        get { return _expectposition; }
    }

    public string ExpectSalary
    {
        set { _expectsalary = value; }
        get { return _expectsalary; }
    }


       /// <summary>
    /// 出生日期
    /// </summary>
    public DateTime  Birthday
    {
        set { _birthday = value; }
        get { return _birthday; }
    }
        /// <summary>
    /// 籍贯
    /// </summary>
    public string HomeTown
    {
        set { _homeTown = value; }
        get { return _homeTown; }
    }
        /// <summary>
    /// 毕业时间
    /// </summary>
    public DateTime  GraduationDay
        {
        set { _graduationDay = value; }
        get { return _graduationDay; }
    }
        /// <summary>
    /// 教育经历
    /// </summary>
    public string EducationExperice
        {
        set { _educationExperice = value; }
        get { return _educationExperice; }
    }
        /// <summary>
    /// 工作经历
    /// </summary>
    public string WorkExperice
        {
        set { _workExperice = value; }
        get { return _workExperice; }
    }
        /// <summary>
    /// 专业技术
    /// </summary>
    public string ProfessionalSkills
        {
        set { _professionalSkills = value; }
        get { return _professionalSkills; }
    }
        /// <summary>
    /// 照片
    /// </summary>
    public string UserImg
        {
        set { _userImg = value; }
        get { return _userImg; }
    }

      public DateTime  CreateDate
    {
        set { _createDate = value; }
        get { return _createDate; }
    }
    #endregion Model
}
