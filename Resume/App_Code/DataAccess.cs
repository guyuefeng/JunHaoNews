using System;
using System.Data;
using System.Data.SqlClient;

    /// <summary> 
    /// DataAccess 的摘要说明。 
    /// </summary> 
    public class DataAccess
    {
        private readonly string SQLCONNECTSTR = "server=(local);uid=sa;pwd=123456;database=insurer";
        private SqlConnection dbConnection;
        private readonly string RETUENVALUE = "RETURNVALUE";


        //判断要不要启动事务 
        private bool startrans = false;

        //为解决多笔数据导入的问题,特添加的事务处理属性 
        private SqlTransaction trans = null;


        //定义是否启动事务属性 
        public bool StartTrans
        {
            get
            {
                return startrans;
            }
            set
            {
                startrans = value;
            }
        }


        //定义事务 
        public SqlTransaction Trans
        {
            get
            {
                return trans;
            }
            set
            {
                if (value != null)
                {
                    trans = value;
                }
            }
        }

        //创建打开dbConnection对象 
        public void OpenConnection()
        {
            if (dbConnection == null)
            {
                dbConnection = new SqlConnection(SQLCONNECTSTR);
            }

            if (dbConnection.State == ConnectionState.Closed)
            {
                try
                {
                    dbConnection.Open();
                }
                catch (Exception ex)
                {
                    //SystemError.SystemLog(ex.Message);
                }
                finally
                {
                }
            }
        }

        //释放dbConnection对象 
        public void CloseConnection()
        {
            if (dbConnection != null)
            {
                if (dbConnection.State == ConnectionState.Open)
                {
                    dbConnection.Dispose();
                    dbConnection = null;
                }
            }
        }


        // 

        //创建cmd,注意dbconnection在该函数中创建，但没有在这函数中释放。 
        //在正确的面向对象设计方法中，对象应该是谁创建，谁就应该负责释放。按这个观点，这个过程有些不安全!!!! 
        private SqlCommand CreateCommand(string ProName, SqlParameter[] prams)
        {
            OpenConnection();
            SqlCommand cmd = new SqlCommand(ProName, dbConnection);
            cmd.CommandType = CommandType.StoredProcedure;


            //如果进行事务处理,那么对cmd的Transaction的事务赋值 
            if (StartTrans)
            {
                cmd.Transaction = Trans;
            }


            if (prams != null)
            {
                foreach (SqlParameter parameter in prams)
                {
                    cmd.Parameters.Add(parameter);
                }
            }

            //cmd.Parameters.Add( 

            return cmd;

        }


        /// <summary> 
        /// 创建cmd,并执行相应的操作。 然后释放cmd! 
        ///    
        /// 该函数是执行cmd没有返回值，且没有参数的方法。 
        /// </summary> 
        /// <param name="ProName"></param> 
        public bool RunProc(string ProName)
        {
            SqlCommand cmd = CreateCommand(ProName, null);

            bool k = false;
            try
            {
                k = (bool)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //SystemError.SystemLog(ex.Message);
            }
            finally
            {
                cmd.Dispose();
            }
            return k;

        }

        /// <summary> 
        /// 创建cmd,并执行相应的操作。 然后释放cmd! 
        ///    
        /// 该函数是执行cmd没有返回值,但有参数的方法。 
        /// </summary> 
        /// <param name="ProName"></param> 
        /// <param name="prams"></param> 
        public bool RunProc(string ProName, SqlParameter[] prams)
        {
            SqlCommand cmd = CreateCommand(ProName, prams);

            bool k = false;
            try
            {
                k = (bool)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                //SystemError.SystemLog(ex.Message);
            }
            finally
            {
                cmd.Dispose();
                //Close(); 
            }
            return k;
        }

        /// <summary> 
        /// 创建cmd,并执行相应的操作。 然后释放cmd! 
        ///    
        /// 该函数是执行cmd带有返回值,但没有参数的方法。    
        /// </summary> 
        /// <param name="ProName"></param> 
        /// <param name="dataReader"></param> 
        public void RunProc(string ProName, out SqlDataReader dataReader)
        {
            SqlCommand cmd = CreateCommand(ProName, null);
            dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            try
            {

            }
            catch (Exception ex)
            {
                //SystemError.SystemLog(ex.Message);
            }
            finally
            {
                cmd.Dispose();
            }
        }

        /// <summary> 
        /// 创建cmd,并执行相应的操作。 然后释放cmd! 
        ///    
        /// 该函数是执行cmd带有返回值,且有参数的方法。 
        /// </summary> 
        /// <param name="ProName"></param> 
        /// <param name="prams"></param> 
        /// <param name="dataReader"></param> 
        public void RunProc(string ProName, SqlParameter[] prams, out SqlDataReader dataReader)
        {
            SqlCommand cmd = CreateCommand(ProName, prams);
            dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            try
            {

            }
            catch (Exception ex)
            {
                //SystemError.SystemLog(ex.Message);
            }
            finally
            {
                cmd.Dispose();
            }
        }


        /// <summary> 
        /// 创建cmd的参数 
        /// 该方法的思路就是按条件生成一个SqlParameter对象。 
        /// 生成对象后，再给对象赋相应的返回值类型 
        /// </summary> 
        /// <param name="ParamName"></param> 
        /// <param name="DbType"></param> 
        /// <param name="size"></param> 
        /// <param name="direction"></param> 
        /// <param name="Value"></param> 
        /// <returns></returns> 
        public SqlParameter CreateParam(string ParamName, SqlDbType DbType, int size, ParameterDirection direction, object Value)
        {
            SqlParameter param;

            if (size > 0)
            {
                param = new SqlParameter(ParamName, DbType, size);
            }
            else
            {
                param = new SqlParameter(ParamName, DbType);
            }

            param.Direction = direction;

            param.Value = Value;

            return param;
        }

        /// <summary> 
        /// 创建cmd的输入参数 
        /// </summary> 
        /// <param name="ParamName"></param> 
        /// <param name="DbType"></param> 
        /// <param name="size"></param> 
        /// <param name="Value"></param> 
        /// <returns></returns> 
        public SqlParameter CreateInParam(string ParamName, SqlDbType DbType, int size, object Value)
        {
            return CreateParam(ParamName, DbType, size, ParameterDirection.Input, Value);
        }

        /// <summary> 
        /// 创建cmd的输出参数 
        /// </summary> 
        /// <param name="ParamName"></param> 
        /// <param name="DbType"></param> 
        /// <param name="size"></param> 
        /// <returns></returns> 
        public SqlParameter CreateOutParam(string ParamName, SqlDbType DbType, int size)
        {
            return CreateParam(ParamName, DbType, size, ParameterDirection.Output, null);
        }

        /// <summary> 
        /// 创建cmd带有返回值的参数 
        /// </summary> 
        /// <param name="ParamName"></param> 
        /// <param name="DbType"></param> 
        /// <param name="size"></param> 
        /// <returns></returns> 
        public SqlParameter CreateReturnParam(string ParamName, SqlDbType DbType, int size)
        {
            return CreateParam(ParamName, DbType, size, ParameterDirection.ReturnValue, null);
        }


        //开始一个事务 
        public void BeginTrans()
        {
            OpenConnection();

            Trans = dbConnection.BeginTransaction(IsolationLevel.Serializable);
        }


        public void Commit()
        {
            if (Trans != null)
            {
                Trans.Commit();
            }
        }

        public void Rollback()
        {
            if (Trans != null)
            {
                Trans.Rollback();
            }
        }
    }