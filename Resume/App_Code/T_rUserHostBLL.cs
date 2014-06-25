using System;
using System.Collections.Generic;
using System.Text;
using Resume.Model;
using System.Data;

namespace Resume.BLL
{
    public class T_rUserHostBLL
    {
        public T_rUserHostBLL()
        {
        }
        #region 全局变量
        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(string userName)
        {
            string comstr = string.Format("DELETE [T_rUserHost] WHERE UserName='{0}'" , userName);
            DBctrol.ExcuteSql(comstr);

            return true;

        }

        /// <summary>
        ///  增加一条数据
        /// </summary>
        public int Add(string userName, string NickName, string userImg)
        {
            string sqlstr=string.Format("INSERT INTO [T_rUserHost]([userImg],[UserName],[NickName])VALUES('{0}','{1}','{2}')",
                userImg ,userName,NickName);
            DBctrol.ExcuteSql(sqlstr);
            return 1;
        }
        /// <summary>
        ///  更新一条数据
        /// </summary>
        public bool Update(T_rUserHostInfo model)
        {
            string sqlStr = @"UPDATE [T_rUserFit] SET 
	                          [EducationandTrainingExperience] = '{0}'
                             ,[WorkExperience] = '{1}'
                             ,[SpecializedSkill] = '{2}'
	                        WHERE [UserName] = '{3}'";
            DBctrol.ExcuteSql(sqlStr);
            return true;
        }

        /// <summary>
        /// 是否存在该记录
        /// </summary>
        public bool Exists(string userName)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from T_rUserHost");
            strSql.Append(" where UserName='" + userName + "'");

            DataTable dt = DBctrol.DatableSql(strSql.ToString());

            if (dt.Rows.Count > 0 && int.Parse(dt.Rows[0][0].ToString()) > 0)
                return true;
            else
                return false;
        }

        /// <summary>
        /// 获得数据列表（比DataSet效率高，推荐使用）
        /// </summary>
        public List<T_rUserHostInfo> GetListArray(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select UserID,Tel,MailBox,JobSpecification,WillSpot,AdsumDateTime,PromisingIndustry,userImg,UserName,NickName,Sex,BirthAgeMonth,NativePlace,HighestQualification,specialty,ServiceYear ");
            strSql.Append(" FROM T_rUserHost ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }

            DataTable dt = DBctrol.DatableSql(strSql.ToString());
            List<T_rUserHostInfo> list = new List<T_rUserHostInfo>();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                list.Add(ReaderBind(dt.Rows[i]));
            }
        
            return list;
        }


        /// <summary>
        /// 对象实体绑定数据
        /// </summary>
        public T_rUserHostInfo ReaderBind(DataRow dataReader)
        {
            T_rUserHostInfo model = new T_rUserHostInfo();
            object ojb;
            ojb = dataReader["UserID"];
            if (ojb != null && ojb != DBNull.Value)
            {
                model.UserID = (int)ojb;
            }
            model.Tel = dataReader["Tel"].ToString();
            model.MailBox = dataReader["MailBox"].ToString();
            model.JobSpecification = dataReader["JobSpecification"].ToString();
            model.WillSpot = dataReader["WillSpot"].ToString();
            model.AdsumDateTime = dataReader["AdsumDateTime"].ToString();
            model.PromisingIndustry = dataReader["PromisingIndustry"].ToString();
            model.userImg = dataReader["userImg"].ToString();
            model.UserName = dataReader["UserName"].ToString();
            model.NickName = dataReader["NickName"].ToString();
            model.Sex = dataReader["Sex"].ToString();
            model.BirthAgeMonth = dataReader["BirthAgeMonth"].ToString();
            model.NativePlace = dataReader["NativePlace"].ToString();
            model.HighestQualification = dataReader["HighestQualification"].ToString();
            model.specialty = dataReader["specialty"].ToString();
            model.ServiceYear = dataReader["ServiceYear"].ToString();
            return model;
        }
        #endregion
    }
}
