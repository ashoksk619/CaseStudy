using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
namespace CaseStudy
{
    public class LoginAll
    {
        private MySqlConnection sqlcon = null;

        public LoginAll()
        {
            sqlcon = new MySqlConnection("server=localhost;database=student_information;userid=root;pwd=Syami@02");
        }

        public bool Check(string FacultyEmail, string FacultyPassword)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from facultyinfo", sqlcon);

                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["email"].ToString().Equals(FacultyEmail) == true && dr["pwd"].ToString().Equals(FacultyPassword) == true)
                    {
                        chk = false;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return chk;
        }






        public bool Chek(string FacultyEmail)
        {
            bool che = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("select facultyinfo.email, facultyinfo.pwd from facultyinfo inner join classfaculty on facultyinfo.fid = classfaculty.fid;", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["email"].ToString().Equals(FacultyEmail) == true)
                    {
                        che = false;
                        break;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return che;
        }
        /*public bool Chk(LoginOperation l)
        {
            bool che = false;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select pwd,fid from facultyinfo", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["pwd"].ToString().Equals(l.FacultyOldPassword) == true && dr["fid"].ToString().Equals(l.FacultyId) == true)
                    {

                        sqlcon.Open();
                        MySqlCommand cmdAddCls = new MySqlCommand("Update facultyinfo set pwd=@npwd where fid=@fid", sqlcon);
                        cmdAddCls.Parameters.AddWithValue("@fid", l.FacultyId);
                        cmdAddCls.Parameters.AddWithValue("@npwd", l.FacultyNewPassword);
                        cmdAddCls.ExecuteNonQuery();
                        sqlcon.Close();
                        che = true;
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return che;


        }*/
        public DataSet LoginCheck(string username, string pwd)
        {
            DataSet dsLog = new DataSet();
            try
            {
                MySqlDataAdapter LgCheck = new MySqlDataAdapter("Select * from facultyinfo where email='" + username + "' and pwd='" + pwd + "'", sqlcon);
                LgCheck.Fill(dsLog, "log");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dsLog;
        }

        public DataSet LoginCheckstudent(string username, string pwd)
        {
            DataSet dsLog = new DataSet();
            try
            {
                MySqlDataAdapter LgCheck = new MySqlDataAdapter("Select * from studentreg  where email='" + username + "' and pwd='" + pwd + "'", sqlcon);
                LgCheck.Fill(dsLog, "log");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return dsLog;
        }


        public DataSet GetData(string username, string pwd)
        {
            MySqlDataAdapter ada = new MySqlDataAdapter("Select * from studentreg  where email = '" + username + "' and pwd = '" + pwd + "'", sqlcon);
            DataSet dsStd = new DataSet();
            ada.Fill(dsStd, "std");
            return dsStd;
        }


        public bool Chk(LoginOperations l)
        {
            bool che = false;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select pwd,fid from facultyinfo", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["pwd"].ToString().Equals(l.FacultyOldPassword) == true && dr["fid"].ToString().Equals(l.FacultyId) == true)
                    {

                        sqlcon.Open();
                        MySqlCommand cmdAddCls = new MySqlCommand("Update facultyinfo set pwd=@npwd where fid=@fid", sqlcon);
                        cmdAddCls.Parameters.AddWithValue("@fid", l.FacultyId);
                        cmdAddCls.Parameters.AddWithValue("@npwd", l.FacultyNewPassword);
                        cmdAddCls.ExecuteNonQuery();
                        sqlcon.Close();
                        che = true;
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return che;


        }


        public bool SpChk(LoginOpStud l)
        {
            bool che = false;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select pwd,rollno from studentreg", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "chek");

                foreach (DataRow dr in dsCk.Tables["chek"].Rows)
                {
                    if (dr["pwd"].ToString().Equals(l.OldPassword) == true && dr["rollno"].ToString().Equals(l.RollNo) == true)
                    {

                        sqlcon.Open();
                        MySqlCommand cmdAddCls = new MySqlCommand("Update studentreg set pwd=@npwd where rollno=@rno", sqlcon);
                        cmdAddCls.Parameters.AddWithValue("@rno", l.RollNo);
                        cmdAddCls.Parameters.AddWithValue("@npwd", l.NewPassword);
                        cmdAddCls.ExecuteNonQuery();
                        sqlcon.Close();
                        che = true;
                        break;
                    }
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return che;


        }
    }

}
