using System;
using System.Collections.Generic;
using System.Text;
using Resume.Model;
using System.Data;

namespace Resume.BLL
{
    public class T_ResumeBLL
    {
        public T_ResumeBLL()
        {
        }
        #region 全局变量
        /// <summary>
        /// 删除一条数据
        /// </summary>
        public bool Delete(string resume_id)
        {
            string comstr = string.Format(@"DELETE from  T_Resume WHERE Resume_Id={0}" , resume_id);
            DBctrol.ExcuteSql(comstr);

            return true;

        }

        /// <summary>
        ///  增加一条数据
        /// </summary>
        public int Add(T_Resume model)
        {
            string sqlStr1=@"INSERT INTO T_Resume(
                            [Resume_code]	
                            ,[Name]
                            ,[Gender]	
                            ,[MPhone]	
                            ,[Age]	
                            ,[Mail]	
                            ,[Education]	
                            ,[Marital]	
                            ,[Experience]	
                            ,[CurrentStatus]	
                            ,[Location]	
                            ,[Industry]	
                            ,[Position]	
                            ,[Salary]	
                            ,[ExpectLocation]	
                            ,[ExpectIndustry]	
                            ,[ExpectPosition]	
                            ,[ExpectSalary]	
                            ,[Birthday]	
                            ,[Hometown]	
                            ,[GraduationDay]	
                            ,[EducationExperice]	
                            ,[WorkExperice]	
                            ,[ProfessionalSkills]	
                            ,[UserImg]
                            ,[CreateDate]
                            )
                            VALUES
                            (
                            '{0}'
                            ,'{1}'
                            ,'{2}'
                            ,'{3}'
                            ,'{4}'
                            ,'{5}'
                            ,'{6}'
                            ,'{7}'
                            ,'{8}'
                            ,'{9}'
                            ,'{10}'
                            ,'{11}'
                            ,'{12}'
                            ,'{13}'
                            ,'{14}'
                            ,'{15}'
                            ,'{16}'
                            ,'{17}'
                            ,'{18}'
                            ,'{19}'
                            ,'{20}'
                            ,'{21}'
                            ,'{22}'
                            ,'{23}'
                            ,'{24}'
                            ,'{25}'
                            )
            ";
            string sqlstr=string.Format(sqlStr1,
                model.Resume_code	
                ,model.Name
                ,model.Gender	
                ,model.MPhone	
                ,model.Age	
                ,model.Mail	
                ,model.Education	
                ,model.Marital	
                ,model.Experience	
                ,model.CurrentStatus	
                ,model.Location	
                ,model.Industry	
                ,model.Position	
                ,model.Salary	
                ,model.ExpectLocation	
                ,model.ExpectIndustry	
                ,model.ExpectPosition	
                ,model.ExpectSalary	
                ,model.Birthday	
                ,model.HomeTown	
                ,model.GraduationDay	
                ,model.EducationExperice	
                ,model.WorkExperice	
                ,model.ProfessionalSkills	
                ,model.UserImg
                ,model.CreateDate);
            DBctrol.ExcuteSql(sqlstr);
            return 1;
        }
        /// <summary>
        ///  更新一条数据
        /// </summary>
        public bool Update(T_Resume model)
        {
            string sqlStr1 = @"UPDATE T_Resume
SET [Resume_code]	= '{0}'
,[Name]='{1}'
,[Gender]	='{2}'
,[MPhone]	='{3}'
,[Age]	='{4}'
,[Mail]	='{5}'
,[Education]='{6}'	
,[Marital]='{7}'	
,[Experience] ='{8}'
,[CurrentStatus]='{9}'
,[Location]='{10}'	
,[Industry]='{11}'	
,[Position]='{12}'	
,[Salary]	='{13}'
,[ExpectLocation]	='{14}'
,[ExpectIndustry]	='{15}'
,[ExpectPosition]	='{16}'
,[ExpectSalary]='{17}'	
,[Birthday]='{18}'	
,[Hometown]='{19}'	
,[GraduationDay]	='{20}'
,[EducationExperice]='{21}'	
,[WorkExperice]	='{22}'
,[ProfessionalSkills]	='{23}'
,[UserImg]='{24}'
,[CreateDate]='{26}'
WHERE [Resume_Id]={25}
";
 string sqlstr=string.Format(sqlStr1,
                model.Resume_code	
                ,model.Name
                ,model.Gender	
                ,model.MPhone	
                ,model.Age	
                ,model.Mail	
                ,model.Education	
                ,model.Marital	
                ,model.Experience	
                ,model.CurrentStatus	
                ,model.Location	
                ,model.Industry	
                ,model.Position	
                ,model.Salary	
                ,model.ExpectLocation	
                ,model.ExpectIndustry	
                ,model.ExpectPosition	
                ,model.ExpectSalary	
                ,model.Birthday	
                ,model.HomeTown	
                ,model.GraduationDay	
                ,model.EducationExperice	
                ,model.WorkExperice	
                ,model.ProfessionalSkills	
                ,model.UserImg
                ,model.Resume_Id
                ,model.CreateDate);

            DBctrol.ExcuteSql(sqlstr);
            return true;
        }
        public T_Resume GetResumeById(string resume_id)
        {
            T_Resume model=new T_Resume ();
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * FROM T_Resume");               
            strSql.Append(" WHERE Resume_Id=" + resume_id);


            DataTable dt = DBctrol.DatableSql(strSql.ToString());

            if(dt.Rows.Count >0)
            {
          
             model.Resume_code=dt.Rows[0]["Resume_code"].ToString();	
            model.Name=dt.Rows[0]["Name"].ToString();
            model.Gender=dt.Rows[0]["Gender"].ToString();
            model.MPhone=dt.Rows[0]["MPhone"].ToString();
            model.Age=dt.Rows[0]["Age"].ToString();
            model.Mail=dt.Rows[0]["Mail"].ToString();	
            model.Education=	dt.Rows[0]["Education"].ToString();
            model.Marital=dt.Rows[0]["Marital"].ToString();
            model.Experience=dt.Rows[0]["Experience"].ToString();
            model.CurrentStatus	=dt.Rows[0]["CurrentStatus"].ToString();
            model.Location=dt.Rows[0]["Location"].ToString();	
            model.Industry	=dt.Rows[0]["Industry"].ToString();
            model.Position	=dt.Rows[0]["Position"].ToString();
            model.Salary	=dt.Rows[0]["Salary"].ToString();
            model.ExpectLocation=	dt.Rows[0]["ExpectLocation"].ToString();
            model.ExpectIndustry	=dt.Rows[0]["ExpectIndustry"].ToString();
            model.ExpectPosition	=dt.Rows[0]["ExpectPosition"].ToString();
            model.ExpectSalary=dt.Rows[0]["ExpectSalary"].ToString();	

            model.Birthday	=Convert.ToDateTime( dt.Rows[0]["Birthday"].ToString());
            model.HomeTown	=dt.Rows[0]["HomeTown"].ToString();

            model.GraduationDay=Convert.ToDateTime(dt.Rows[0]["GraduationDay"].ToString());
            model.EducationExperice	=dt.Rows[0]["EducationExperice"].ToString();
            model.WorkExperice=dt.Rows[0]["WorkExperice"].ToString();
            model.ProfessionalSkills=	dt.Rows[0]["ProfessionalSkills"].ToString();
            model.UserImg=dt.Rows[0]["UserImg"].ToString();
            model.CreateDate =Convert.ToDateTime(dt.Rows[0]["CreateDate"].ToString());
            }
            return model;

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
