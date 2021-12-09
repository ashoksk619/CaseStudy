using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
namespace CaseStudy
{
    public class FcOperation
    {
        private MySqlConnection sqlcon = null;

        public FcOperation()
        {
            sqlcon = new MySqlConnection("server=localhost;database=student_information;userid=root;pwd=Syami@02");
        }


        public DataTable GetData()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from facultyinfo", sqlcon);
            DataTable dt = new DataTable();
            data.Fill(dt);
            return dt;
        }
        public DataTable GetDatac()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from classinfo", sqlcon);
            DataTable d = new DataTable();
            data.Fill(d);
            return d;
        }
        public void AddFacultyClass(classfaculty s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Insert into classfaculty(classid,fid) values(@cid,@fid)", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@cid", s.ClassID);
                cmdAddCls.Parameters.AddWithValue("@fid", s.FacultyId);
                cmdAddCls.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                sqlcon.Close();
            }
        }
        public bool CheckFaclc(string classid, string facultyid)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from classfaculty", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["classid"].ToString().Equals(classid) == true || dr["fid"].ToString().Equals(facultyid) == true)
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
        public DataSet GetDataf()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select classname,factname from classinfo,facultyinfo,classfaculty where classinfo.classid=classfaculty.classid and facultyinfo.fid=classfaculty.fid", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "fact");
            return dsFact;
        }

        
    }
}


    