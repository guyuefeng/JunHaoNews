using System;
using System.Collections.Generic;
using System.Text;

namespace Resume.Model
{
    [Serializable]
    public class T_rUserHostInfo
    {
        public T_rUserHostInfo()
        {
        }
        #region Model
        private int _userid;
        private string _tel;
        private string _mailbox;
        private string _jobspecification;
        private string _willspot;
        private string _adsumdatetime;
        private string _promisingindustry;
        private string _userimg;
        private string _username;
        private string _nickname;
        private string _sex;
        private string _birthagemonth;
        private string _nativeplace;
        private string _highestqualification;
        private string _specialty;
        private string _serviceyear;
        /// <summary>
        /// 主键
        /// </summary>
        public int UserID
        {
            set { _userid = value; }
            get { return _userid; }
        }
        /// <summary>
        /// 联系电话
        /// </summary>
        public string Tel
        {
            set { _tel = value; }
            get { return _tel; }
        }
        /// <summary>
        /// 电子邮箱
        /// </summary>
        public string MailBox
        {
            set { _mailbox = value; }
            get { return _mailbox; }
        }
        /// <summary>
        /// 工作性质
        /// </summary>
        public string JobSpecification
        {
            set { _jobspecification = value; }
            get { return _jobspecification; }
        }
        /// <summary>
        /// 意向地点
        /// </summary>
        public string WillSpot
        {
            set { _willspot = value; }
            get { return _willspot; }
        }
        /// <summary>
        /// 到岗时间
        /// </summary>
        public string AdsumDateTime
        {
            set { _adsumdatetime = value; }
            get { return _adsumdatetime; }
        }
        /// <summary>
        /// 希望行业
        /// </summary>
        public string PromisingIndustry
        {
            set { _promisingindustry = value; }
            get { return _promisingindustry; }
        }
        /// <summary>
        /// 头像
        /// </summary>
        public string userImg
        {
            set { _userimg = value; }
            get { return _userimg; }
        }
        /// <summary>
        /// 用户名称
        /// </summary>
        public string UserName
        {
            set { _username = value; }
            get { return _username; }
        }
        /// <summary>
        /// 用户实名
        /// </summary>
        public string NickName
        {
            set { _nickname = value; }
            get { return _nickname; }
        }
        /// <summary>
        /// 性别
        /// </summary>
        public string Sex
        {
            set { _sex = value; }
            get { return _sex; }
        }
        /// <summary>
        /// 出生年月
        /// </summary>
        public string BirthAgeMonth
        {
            set { _birthagemonth = value; }
            get { return _birthagemonth; }
        }
        /// <summary>
        /// 籍贯
        /// </summary>
        public string NativePlace
        {
            set { _nativeplace = value; }
            get { return _nativeplace; }
        }
        /// <summary>
        /// 最高学历
        /// </summary>
        public string HighestQualification
        {
            set { _highestqualification = value; }
            get { return _highestqualification; }
        }
        /// <summary>
        /// 专业
        /// </summary>
        public string specialty
        {
            set { _specialty = value; }
            get { return _specialty; }
        }
        /// <summary>
        /// 工作年限
        /// </summary>
        public string ServiceYear
        {
            set { _serviceyear = value; }
            get { return _serviceyear; }
        }
        #endregion Model
    }
}
