using System;
using System.Collections.Generic;
using System.Text;

namespace Resume.Model
{
    [Serializable]
    public class T_rUserInfo
    {
        public T_rUserInfo()
        {
        }
        #region Model
        private int _userid;
        private string _username;
        private string _userpwd;
        private string _nickname;
        private int _userlevel;
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
        /// 用户密码
        /// </summary>
        public string UserPwd
        {
            set { _userpwd = value; }
            get { return _userpwd; }
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
        /// 用户级别
        /// </summary>
        public int UserLevel
        {
            set { _userlevel = value; }
            get { return _userlevel; }
        }
        #endregion Model
    }
}
