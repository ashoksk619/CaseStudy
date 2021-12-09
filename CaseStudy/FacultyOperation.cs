using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace CaseStudy
{
    public class FacultyOperation
    {
        private MySqlConnection sqlcon = null;

        public FacultyOperation()
        {
            sqlcon = new MySqlConnection("server=localhost;database=student_information;userid=root;pwd=root");
        }

        public void AddFaculty(Faculty s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddFct = new MySqlCommand("Insert into facultyinfo(fid,factname,gender,address,location,phone,email,pwd) values(@fno,@fname,@gen,@add,@loc,@ph,@mail,@pwd)", sqlcon);
                cmdAddFct.Parameters.AddWithValue("@fno", s.FacultyID);
                cmdAddFct.Parameters.AddWithValue("@fname", s.FacultyName);
                cmdAddFct.Parameters.AddWithValue("@gen", s.Gender);
                cmdAddFct.Parameters.AddWithValue("@add", s.Address);
                cmdAddFct.Parameters.AddWithValue("@loc", s.Location);
                cmdAddFct.Parameters.AddWithValue("@ph", s.Phone);
                cmdAddFct.Parameters.AddWithValue("@mail", s.Email);
                cmdAddFct.Parameters.AddWithValue("@pwd", s.Password);
                cmdAddFct.ExecuteNonQuery();

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

        public DataSet GetData()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from facultyinfo", sqlcon);
            DataSet dsFact = new DataSet();
            data.Fill(dsFact, "fact");
            return dsFact;
        }
        public DataSet GetDataFProf(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select distinct  facultyinfo.fid,factname,facultyinfo.address,facultyinfo.location,facultyinfo.phone,facultyinfo.email,facultyinfo.pwd,classinfo.classname from classinfo,studentreg,classfaculty,facultyinfo  where facultyinfo.fid=classfaculty.fid and classinfo.classid=classfaculty.classid and facultyinfo.fid='" + fid + "'", sqlcon);
            DataSet dsStd = new DataSet();
            data.Fill(dsStd, "std");
            return dsStd;
        }
    }
}