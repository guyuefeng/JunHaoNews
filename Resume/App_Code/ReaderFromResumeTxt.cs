using System;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Collections;   //�������ʽ


namespace insurer
{
	/// <summary>
	/// ReaderFromTxt ��ժҪ˵����
	/// </summary>
	public class ReaderFromResumeTxt
	{
		//�ı��ļ���
		private static string fileName;   

		//����ı��ļ�ÿ�г��ȹ̶������,�ı��ļ��ĳ���
        private static readonly int iLineLength = 609 ;

		//����ı��ļ�ÿ���ֶ�֮����������ŵ����,�������
		private static readonly string strSign;

		//the total length of txtFile
		private static int totalLine;

		private static int realLine;

		//�������ڴ����������ݿ��DataAccess��
		private static DataAccess da ;


        public ReaderFromResumeTxt()
		{			
		}
        
		public static string FileName
		{
			get
			{
				return fileName;
			}
			set
			{
				if (((value != ""))&&(!(value != null)))
				{
					fileName = value;
				}
			}
		}

		public static int TotalLine
		{
			get
			{
				return totalLine;
			}
			set
			{
				totalLine = value;
			}
		}

		public static int RealLine
		{
			get
			{
				return realLine;
			}
			set
			{
				realLine = value;
			}
		}


		/// <summary>
		/// ͨ�ú���,���ı��ļ�
		/// </summary>
		/// <param name="fileName">������ı��ļ�����</param>
		public static void ReadTextFromFileName(string fileName)  
		{
			string strRecord = "";

			//�����ı��ļ�ʱ,һ��Ҫָ���ļ��ı����ʽ.����:defaultΪ�ı��ļ������ı����ʽ
			//����Ǽ������ĵ��ı��ļ�,Ҳ�����������ñ����ʽ: System.Text.Encoding.GetEncode("gb2312")
			//Encoding.GetEncode("gb2312")Ϊ�������ı����ʽ,Encoding.GetEncode("big5")Ϊ�������ı����ʽ.
			StreamReader reader = new StreamReader(fileName,System.Text.Encoding.Default);


            ArrayList al = new ArrayList();

            T_Resume tr = new T_Resume();

            

			int i = 1,j;
			i=0;
			j=0;

            int flag = 0;
			try
			{				
				while (reader.Peek() >= 0)
				{					
					strRecord = reader.ReadLine();
                    if (flag == 1)
                    {
                        
                        if (j == 1)
                            continue;
                        else if (j == 2)
                        {
                            tr.Name = strRecord;
                            j = 3;
                            flag = 0;
                        }
                        else if (j == 3)
                        {
                            tr.Gender = strRecord;
                            j = 4;
                            flag = 0;

                        }
                        else if (j == 4)
                        {
                            tr.MPhone = strRecord;
                            j = 5;
                            flag = 0;

                        }
                        else if (j == 5)
                        {
                            tr.Age = strRecord;
                            j = 6;
                            flag = 0;
                        }
                        else if (j == 6)
                        {
                            tr.Mail = strRecord;
                            j = 7;
                            flag = 0;
                        }
                        else if (j == 7)
                        {
                            tr.Education = strRecord;
                            j = 8;
                            flag = 0;
                        }
                        else if (j == 8)
                        {
                            tr.Marital = strRecord;
                            j = 9;
                            flag = 0;
                        }
                        else if (j == 9)
                        {
                            tr.Location = strRecord;
                            j = 10;
                            flag = 0;
                        }
                        else if (j == 10)
                        {
                            tr.Experience = strRecord;
                            j = 11;
                            flag = 0;
                        }

                        else if (j == 11)
                        {
                            tr.CurrentStatus = strRecord;
                            j = 12;
                            flag = 0;
                        }
                        else if (j == 12)
                        {
                            tr.Industry = strRecord;
                            j = 13;
                            flag = 0;
                        }
                        else if (j == 13)
                        {
                            tr.Position = strRecord;
                            j = 14;
                            flag = 0;
                        }
                        else if (j == 14)
                        {
                            tr.Salary = strRecord;
                            j = 15;
                            flag = 0;
                        }
                        else if (j == 15)
                        {
                            tr.ExpectIndustry = strRecord;
                            j = 16;
                            flag = 0;
                        }
                        else if (j == 16)
                        {
                            tr.ExpectPosition = strRecord;
                            j = 17;
                            flag = 0;
                        }
                        else if (j == 17)
                        {
                            tr.ExpectLocation = strRecord;
                            j = 18;
                            flag = 0;
                        }
                        else if (j == 18)
                        {
                            tr.ExpectSalary = strRecord;

                            SaveResume(tr);

                            j = 0;
                            flag = 0;

                        }
                    }

                    else if(flag ==0)
                    {
                        
                        if (strRecord.Length > 4 && strRecord.Substring(0, 5) == "������ţ�")
                        {
                            i++;
                            tr.Resume_code = strRecord.Substring(5, strRecord.Length - 6);
                            flag = 0;
                            continue;
                        }
                        else if (strRecord.Length > 3 && strRecord.Substring(0, 3) == "������")
                        {
                            j = 2;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 3 && strRecord.Substring(0, 3) == "�Ա�")
                        {
                            j = 3;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "�ֻ����룺")
                        {
                            j = 4;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 3 && strRecord.Substring(0, 3) == "���䣺")
                        {
                            j = 5;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "�����ʼ���")
                        {
                            j = 6;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "�����̶ȣ�")
                        {
                            j = 7;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "����״����")
                        {
                            j = 8;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 4 && strRecord.Substring(0, 4) == "���ڵأ�")
                        {
                            j = 9;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "�������ޣ�")
                        {
                            j = 10;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "Ŀǰ״̬��")
                        {
                            j = 11;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "������ҵ��")
                        {
                            j = 12;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "����ְλ��")
                        {
                            j = 13;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "Ŀǰн��")
                        {
                            j = 14;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "������ҵ��")
                        {
                            j = 15;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "����ְλ��")
                        {
                            j = 16;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "�����ص㣺")
                        {
                            j = 17;
                            flag = 1;
                            continue;
                        }
                        else if (strRecord.Length > 5 && strRecord.Substring(0, 5) == "������н��")
                        {
                            j = 18;
                            flag = 1;
                            continue;
                        }
                    }

                        
				}	


			}
			catch (Exception ex)
			{
               throw new Exception("�ļ�:" + fileName + "����ʧ��,�������ǵ�" + i.ToString() + "��,ԭ����: " + ex.Message);
			}

		    //�����Դ������
			finally
			{							
				reader.Close();	
			}
		}

        public static void SaveResume(T_Resume t_r)
        {
            string sqlstr = @"INSERT INTO [T_Resume]
                              (
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
                              )";

            sqlstr=string.Format(sqlstr ,t_r.Resume_code 
                                  ,t_r.Name 
                                  ,t_r.Gender
                                  ,t_r.MPhone
                                  ,t_r.Age
                                  ,t_r.Mail
                                  ,t_r.Education
                                  ,t_r.Marital
                                  ,t_r.Experience
                                  ,t_r.CurrentStatus
                                  ,t_r.Location
                                  ,t_r.Industry
                                  ,t_r.Position
                                  ,t_r.Salary
                                  ,t_r.ExpectLocation
                                  ,t_r.ExpectIndustry
                                  ,t_r.ExpectPosition
                                  ,t_r.ExpectSalary
                                  );
            DBctrol.ExcuteSql(sqlstr);

                                  
        }

		/// <summary>
		/// ���������ı��ļ��ĺ���,���ַ���ת����byte[]����
		/// </summary>
		/// <param name="aRecord"></param>
		private static bool StringConvertByteArray(string aRecord)
		{
			//����ı��ļ�һ���п��ܴ������ĵ����,��string����ת��Ϊbyte[]���ﵽ
			//��ȷ�����ı��ļ���Ŀ��
			byte[] repRecord = System.Text.Encoding.Default.GetBytes(aRecord);
			
			//�ж�ȡ�õ��ı��ļ������Ƿ���ڶ�����ı��ļ�����
			if (repRecord.Length  != iLineLength)
			{
				throw new Exception("�ļ��ı����Ȳ���,����ʧ��,�����ļ��ļ���ʽ");
			}

			bool isInsert=false;
			isInsert = AddRecord(
				GetString(repRecord,0,8),	
				GetString(repRecord,8,8),
				GetString(repRecord,16,6),
				GetString(repRecord,22,6),
				GetString(repRecord,28,8),
				GetString(repRecord,36,6),
				GetString(repRecord,42,10),
				GetString(repRecord,52,4),
				GetString(repRecord,56,6),
				GetString(repRecord,62,8),
				GetString(repRecord,70,7),
				GetString(repRecord,77,32),
				GetString(repRecord,109,72),
				GetString(repRecord,181,8),
				GetString(repRecord,189,30),
				GetString(repRecord,219,45),
				GetString(repRecord,264,10),
				GetString(repRecord,274,25),
				GetString(repRecord,299,2),
				GetString(repRecord,301,25),
				GetString(repRecord,326,3),
				GetString(repRecord,329,15),
				GetString(repRecord,344,1),
				GetString(repRecord,345,8),
				GetString(repRecord,353,6),
				GetString(repRecord,359,8),
				GetString(repRecord,367,1),
				GetString(repRecord,368,1),
				GetString(repRecord,369,32),
				GetString(repRecord,401,7),
				GetString(repRecord,408,60),
				GetString(repRecord,468,20),
				GetString(repRecord,488,20),				
				GetString(repRecord,508,20),
				GetString(repRecord,528,36),
				GetString(repRecord,564,15),
				GetString(repRecord,579,15),
				GetString(repRecord,594,15)
				);
			return isInsert;
														
		}
		
        
		//private static void 
        /// <summary>
        /// �������ȹ̶����ı���,��ȡ��ÿ���ֶε�ֵ
        /// </summary>
        /// <param name="aStr">�ı��ļ���ÿ���ı�ת����Byte����</param>
        /// <param name="iStart">��ȡ����ʼλ��</param>
        /// <param name="iLength">��ȡ�ĳ���</param>
        /// <returns>���ص��ַ���,��Ӧ�ھ�����ֶ�ֵ</returns>
		private static string GetString(byte[] aStr,int iStart,int iLength)
		{

			byte[] tempStr = new byte[iLength];
			for ( int i = 0; i < iLength; i ++)
			{
				tempStr[i] = (byte)aStr.GetValue(iStart + i);				
			}

			return System.Text.Encoding.Default.GetString(tempStr);
		}
		

		/// <summary>
		/// ͨ�ú���,�����ݲ������ݿ�
		/// </summary>
		/// <param name="TRACE_NO"></param>
		/// <param name="TRAN_DATE"></param>
		/// <param name="TRAN_TIME"></param>
		/// <param name="TRAN_CODE"></param>
		/// <param name="FRONT_MERCH_NO"></param>
		/// <param name="FRONT_MERCH_TRACENO"></param>
		/// <param name="BRANCH_ID"></param>
		/// <param name="TERM_ID"></param>
		/// <param name="TRAN_TLR"></param>
		/// <param name="MERCH_NO"></param>
		/// <param name="MERCH_ITEM_NO"></param>
		/// <param name="CUS_REFERENCE_NO"></param>
		/// <param name="CUS_NAME"></param>
		/// <param name="CHARGE_PERI"></param>
		/// <param name="MERCH_TRACE_NO"></param>
		/// <param name="VOUCH_NO"></param>
		/// <param name="ACT_BRANCH_ID"></param>
		/// <param name="MERCH_ACT_NO"></param>
		/// <param name="CUS_ACT_TYPE"></param>
		/// <param name="CUS_ACT_NO"></param>
		/// <param name="CUR_NO"></param>
		/// <param name="AMT"></param>
		/// <param name="DECRD"></param>
		/// <param name="AP_DATE"></param>
		/// <param name="AP_TIME"></param>
		/// <param name="REVS_TRACE_NO"></param>
		/// <param name="TRAN_STATE"></param>
		/// <param name="REVS_STATE"></param>
		/// <param name="TRAN_STAT_DESC"></param>
		/// <param name="RET_CODE"></param>
		/// <param name="RETURN_MSG"></param>
		/// <param name="RESERVED1"></param>
		/// <param name="RESERVED2"></param>
		/// <param name="RESERVED3"></param>
		/// <param name="AMT1"></param>
		/// <param name="AMT2"></param>
		/// <param name="AMT3"></param>
		private static bool AddRecord(string TRACE_NO,
			string TRAN_DATE,
			string TRAN_TIME,
			string TRAN_CODE,
			string FRONT_MERCH_NO,
			string FRONT_MERCH_TRACENO,
			string BRANCH_ID,
			string TERM_ID,
			string TRAN_TLR,
			string MERCH_NO,
			string MERCH_ITEM_NO,
			string CUS_REFERENCE_NO,
			string CUS_NAME,
			string CHARGE_PERI,
			string MERCH_TRACE_NO,
			string VOUCH_NO,
			string ACT_BRANCH_ID,
			string MERCH_ACT_NO,
			string CUS_ACT_TYPE,
			string CUS_ACT_NO,
			string CUR_NO,
			string AMT,
			string DECRD,
			string AP_DATE,
			string AP_TIME,
			string REVS_TRACE_NO,
			string TRAN_STATE,
			string REVS_STATE,
			string TRAN_STAT_DESC,
			string RET_CODE,
			string RETURN_MSG,
			string RESERVED1,
			string RESERVED2,
			string RESERVED3,
			string RESERVED4,
			string AMT1,
			string AMT2,
			string AMT3)
		{			
		
			bool Insert = false;
			SqlParameter[] paramList = {
										   da.CreateInParam("@TRACE_NO",SqlDbType.VarChar,8,TRACE_NO),
										   da.CreateInParam("@TRAN_DATE",SqlDbType.VarChar,8,TRAN_DATE),
										   da.CreateInParam("@TRAN_TIME",SqlDbType.VarChar,6,TRAN_TIME),
										   da.CreateInParam("@TRAN_CODE",SqlDbType.VarChar,6,TRAN_CODE),
										   da.CreateInParam("@FRONT_MERCH_NO",SqlDbType.VarChar,8,FRONT_MERCH_NO),
										   da.CreateInParam("@FRONT_MERCH_TRACENO",SqlDbType.VarChar,6,FRONT_MERCH_TRACENO),
										   da.CreateInParam("@BRANCH_ID",SqlDbType.VarChar,10,BRANCH_ID),
										   da.CreateInParam("@TERM_ID",SqlDbType.VarChar,4,TERM_ID),
										   da.CreateInParam("@TRAN_TLR",SqlDbType.VarChar,6,TRAN_TLR),
										   da.CreateInParam("@MERCH_NO",SqlDbType.VarChar,8,MERCH_NO),
										   da.CreateInParam("@MERCH_ITEM_NO",SqlDbType.VarChar,7,MERCH_ITEM_NO),
										   da.CreateInParam("@CUS_REFERENCE_NO",SqlDbType.VarChar,32,CUS_REFERENCE_NO),
										   da.CreateInParam("@CUS_NAME",SqlDbType.VarChar,72,CUS_NAME),
										   da.CreateInParam("@ChARGE_PERI",SqlDbType.VarChar,8,CHARGE_PERI),
										   da.CreateInParam("@MERCH_TRACE_NO",SqlDbType.VarChar,30,MERCH_TRACE_NO),
										   da.CreateInParam("@VOUCH_NO",SqlDbType.VarChar,45,VOUCH_NO),
										   da.CreateInParam("@ACT_BRANCH_ID",SqlDbType.VarChar,10,ACT_BRANCH_ID),
										   da.CreateInParam("@MERCH_ACT_NO",SqlDbType.VarChar,25,MERCH_ACT_NO),
										   da.CreateInParam("@CUS_ACT_TYPE",SqlDbType.VarChar,2,CUS_ACT_TYPE),
										   da.CreateInParam("@CUS_ACT_NO",SqlDbType.VarChar,25,CUS_ACT_NO),
										   da.CreateInParam("@CUR_NO",SqlDbType.VarChar,3,CUR_NO),
										   da.CreateInParam("@AMT",SqlDbType.VarChar,15,AMT),
										   da.CreateInParam("@DECRD",SqlDbType.VarChar,1,DECRD),
										   da.CreateInParam("@AP_DATE",SqlDbType.VarChar,8,AP_DATE),
										   da.CreateInParam("@AP_TIME",SqlDbType.VarChar,6,AP_TIME),
										   da.CreateInParam("@REVS_TRACE_NO",SqlDbType.VarChar,8,REVS_TRACE_NO),
										   da.CreateInParam("@TRAN_STATE",SqlDbType.VarChar,1,TRAN_STATE),
										   da.CreateInParam("@REVS_STATE",SqlDbType.VarChar,1,REVS_STATE),
										   da.CreateInParam("@TRAN_STAT_DESC",SqlDbType.VarChar,32,TRAN_STAT_DESC),
										   da.CreateInParam("@RET_CODE",SqlDbType.VarChar,7,RET_CODE),
										   da.CreateInParam("@RETURN_MSG",SqlDbType.VarChar,60,RETURN_MSG),
										   da.CreateInParam("@RESERVED1",SqlDbType.VarChar,20,RESERVED1),
										   da.CreateInParam("@RESERVED2",SqlDbType.VarChar,20,RESERVED2),
										   da.CreateInParam("@RESERVED3",SqlDbType.VarChar,20,RESERVED3),
										   da.CreateInParam("@RESERVED4",SqlDbType.VarChar,36,RESERVED4),
										   da.CreateInParam("@AMT1",SqlDbType.VarChar,15,AMT1),
										   da.CreateInParam("@AMT2",SqlDbType.VarChar,15,AMT2),
										   da.CreateInParam("@AMT3",SqlDbType.VarChar,15,AMT3)
									   };


		
			try
			{
				Insert = da.RunProc("pr_ReadFromTxt",paramList);
				
			}			
			catch(Exception ex)
			{
                throw new Exception("�������ݿ�ʧ��,������ϢΪ: " + ex.Message);
			}
			finally
			{
			}

			return Insert;
		}

	}
}