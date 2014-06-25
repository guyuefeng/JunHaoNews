using System;
using System.Collections.Generic;
using System.Text;
using Resume.Model;
using System.Data;


namespace Resume.BLL
{
    public class T_rUserBLL
    {
        public T_rUserBLL()
        {
        }
        #region 全局变量

        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(string uaerName, string userPass)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from T_rUser");
            strSql.Append(" where UserName='" + uaerName + "'" + "and UserPwd ='" + userPass + "'");

            DataTable dt= DBctrol.DatableSql(strSql.ToString());

            if (dt.Rows.Count > 0 && int.Parse(dt.Rows[0][0].ToString()) > 0)
                return true;
            else
                return false;

        }
          /// <summary>
        ///  增加一条数据
        /// </summary>
        public int Add(T_rUserInfo model)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(string.Format("INSERT INTO T_rUser([UserName],[UserPwd],[NickName],[UserLevel])VALUES('{0}','{1}','{2}',{3})"
                            ,model.UserName
                            ,model.UserPwd 
                            ,model.NickName 
                            ,model.UserLevel));

             DBctrol.ExcuteSql(strSql.ToString());

            return 1;
        }
        /// <summary>
        /// 获得数据列表（比DataSet效率高，推荐使用）
        /// </summary>
        public List<T_rUserInfo> GetListArray(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select UserID,UserName,UserPwd,NickName,UserLevel ");
            strSql.Append(" FROM T_rUser ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            List<T_rUserInfo> list = new List<T_rUserInfo>();

            DataTable dt = DBctrol.DatableSql(strSql.ToString());

            for (int i = 0; i<dt.Rows.Count; i++)
            {
                list.Add(ReaderBind(dt.Rows[i]));
            }

            return list;
        }


        /// <summary>
        /// 对象实体绑定数据
        /// </summary>
        public T_rUserInfo ReaderBind(DataRow dataReader)
        {
            T_rUserInfo model = new T_rUserInfo();
            object ojb;
            ojb = dataReader["UserID"];
            if (ojb != null && ojb != DBNull.Value)
            {
                model.UserID = (int)ojb;
            }
            model.UserName = dataReader["UserName"].ToString();
            model.UserPwd = dataReader["UserPwd"].ToString();
            model.NickName = dataReader["NickName"].ToString();
            ojb = dataReader["UserLevel"];
            if (ojb != null && ojb != DBNull.Value)
            {
                model.UserLevel = (int)ojb;
            }
            return model;
        }

        #endregion  成员方法
    }
}
