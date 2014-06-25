using System;
using System.Collections.Generic;
using System.Text;

namespace Resume.Model
{
    [Serializable]
    public class T_rUserFitInfo
    {
        public T_rUserFitInfo()
        {
        }
        #region Model
        private int _userid;
        private string _username;
        private string _educationandtrainingexperience;
        private string _workexperience;
        private string _specializedskill;
        /// <summary>
        /// 主键
        /// </summary>
        public int UserID
        {
            set { _userid = value; }
            get { return _userid; }
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
        /// 教育培训经历
        /// </summary>
        public string EducationandTrainingExperience
        {
            set { _educationandtrainingexperience = value; }
            get { return _educationandtrainingexperience; }
        }
        /// <summary>
        /// 工作经历
        /// </summary>
        public string WorkExperience
        {
            set { _workexperience = value; }
            get { return _workexperience; }
        }
        /// <summary>
        /// 专业技能
        /// </summary>
        public string SpecializedSkill
        {
            set { _specializedskill = value; }
            get { return _specializedskill; }
        }
        #endregion Model
    }
}
