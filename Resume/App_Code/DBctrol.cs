using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;
using System.Data.OleDb;

/// <summary>
/// DBctrol 的摘要说明
/// </summary>
public class DBctrol
{
	public DBctrol()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
   public static Page pg = new Page();
   public static string connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + pg.Server.MapPath(" ~/DataBase/Resume.mdb");
 


    /// <summary>
  /// 返回数据表格
  /// </summary>
  /// <param name="sql"></param>
  /// <returns></returns>
    public static DataTable DatableSql(string sql)
    {

        OleDbConnection conn = new OleDbConnection(connectionString);
        conn.Open();
        try
        {
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(sql, conn);
        da.Fill(dt);
       // conn.Close();
        return dt;
    }
    catch (Exception ex)
    {
        throw ex;
    }
    finally
    {
        conn.Close();
    }
    }
   
    /// <summary>
    /// 执行SQL语句返回一个整形
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public static int ExcuteSql(string sql)
    {
        OleDbConnection conn = new OleDbConnection(connectionString);
        conn.Open();
        try
        {
            OleDbCommand comm = new OleDbCommand(sql, conn);
            int i;
            i = comm.ExecuteNonQuery();
            
            return i;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
        }

    }
    /// <summary>
    /// 弹消息框
    /// </summary>
    /// <param name="Mess"></param>
    /// <returns></returns>
    public static string Message(string Mess)
    {
        string str;
        str = "<script language='javascript'>alert('" + Mess + "');</script>";
        return str;

    }
    /// <summary>
    /// 过滤SQL非法字符串
    /// </summary>
    /// <param name="value"></param>
    /// <returns></returns>
    public static string Filter(string value)
    {
        if (string.IsNullOrEmpty(value))
            return string.Empty;
        value = Regex.Replace(value, @";", string.Empty);
        value = Regex.Replace(value, @"'", string.Empty);
        value = Regex.Replace(value, @"&", string.Empty);
        value = Regex.Replace(value, @"%20", string.Empty);
        value = Regex.Replace(value, @"--", string.Empty);//5_1_a_s_p_x
        value = Regex.Replace(value, @"==", string.Empty);
        value = Regex.Replace(value, @"<", string.Empty);
        value = Regex.Replace(value, @">", string.Empty);
        value = Regex.Replace(value, @"%", string.Empty);

        return value;
    }
    /// <summary>
    /// 根据新闻类型返回导航条
    /// </summary>
    /// <param name="i"></param>
    /// <returns></returns>
    public static string returnKind(int i)
    {
        switch(i)
        {
            case 1: return @"<a href='news.aspx?NTy=1' class='n_link'>长沙家教帮助中心</a> &gt; 文章列表";
                break;
            case 2: return @"<a href='news.aspx?NTy=2'  class='n_link'>心理辅导</a> &gt; 文章列表";
                break;
            case 3: return @"<a href='news.aspx?NTy=3' class='n_link'>语文家教知识</a> &gt; 文章列表";
                break;
            case 4: return @"<a href='news.aspx?NTy=4' class='n_link'>数学家教知识</a> &gt; 文章列表";
                break;
            case 5: return @"<a href='news.aspx?NTy=5' class='n_link'>英语家教知识</a> &gt; 文章列表";
                break;
            case 6: return @"<a href='news.aspx?NTy=6' class='n_link'>聚焦中考</a> &gt; 文章列表";
                break;
            case 7: return @"<a href='news.aspx?NTy=7' class='n_link'>冲刺高考</a> &gt; 文章列表";
                break;
            case 8: return @"<a href='news.aspx?NTy=8' class='n_link'>教育咨询</a> &gt; 文章列表";//5|1|a|s|p|x
                break;
            default: return @"<a href='news.aspx?NTy=9' class='n_link'>焦点新闻</a> &gt; 文章列表";
                break;
        }
  
    }
}
