using System;
using System.Collections.Generic;
using System.Text;
using Resume.Model;
using System.Data;

namespace Resume.BLL
{
    public class T_rUserFitBLL
    {
        public T_rUserFitBLL()
        {
        }
        #region 全局变量
        /// <summary>
        ///  增加一条数据
        /// </summary>
        public int Add(string userName)
        {
            	

               StringBuilder strSql = new StringBuilder();
               strSql.Append(string.Format("INSERT INTO [T_rUserFit]([UserName]	)VALUES('{0}')",userName));
               DBctrol.ExcuteSql(strSql.ToString());
               return 1;
        }
        /// <summary>
        ///  更新一条数据
        /// </summary>
        public bool Update(T_rUserFitInfo model)
        {
            
               StringBuilder strSql = new StringBuilder();
               strSql.Append(string.Format(	@"UPDATE [T_rUserFit] SET 
	               [EducationandTrainingExperience] = '{0}'
                  ,[WorkExperience] = '{1}'
                  ,[SpecializedSkill] = '{2}'
	              WHERE [UserName] = '{3}'",model.EducationandTrainingExperience,model.WorkExperience,model.SpecializedSkill,model.UserName));


               DBctrol.ExcuteSql(strSql.ToString());
               return true;
        }
        /// <summary>
        /// 获得数据列表（比DataSet效率高，推荐使用）
        /// </summary>
        public List<T_rUserFitInfo> GetListArray(string strWhere)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select UserID,UserName,EducationandTrainingExperience,WorkExperience,SpecializedSkill ");
            strSql.Append(" FROM T_rUserFit ");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            List<T_rUserFitInfo> list = new List<T_rUserFitInfo>();

            DataTable dt = DBctrol.DatableSql(strSql.ToString());

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                list.Add(ReaderBind(dt.Rows[i]));
            }

            return list;
        }


        /// <summary>
        /// 对象实体绑定数据
        /// </summary>
        public T_rUserFitInfo ReaderBind(DataRow dataReader)
        {
            T_rUserFitInfo model = new T_rUserFitInfo();
            object ojb;
            ojb = dataReader["UserID"];
            if (ojb != null && ojb != DBNull.Value)
            {
                model.UserID = (int)ojb;
            }
            model.UserName = dataReader["UserName"].ToString();
            model.EducationandTrainingExperience = dataReader["EducationandTrainingExperience"].ToString();
            model.WorkExperience = dataReader["WorkExperience"].ToString();
            model.SpecializedSkill = dataReader["SpecializedSkill"].ToString();
            return model;
        }
        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(string userName)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append(string.Format("DELETE [T_rUserFit] WHERE UserName='{0}' ",userName));

            DBctrol.ExcuteSql(strSql.ToString());

            return true;
        }

   #endregion
    }
}
