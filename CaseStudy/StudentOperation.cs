using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;
namespace CaseStudy
{
    public class StudentOperation
    {
        private MySqlConnection sqlcon = null;

        public StudentOperation()
        {
            sqlcon = new MySqlConnection("server=localhost;database=student_information;userid=root;pwd=Syami@02");
        }

        public void AddStudent(Student s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddStd = new MySqlCommand("Insert into studentreg(rollno,stdname,gender,address,location,phone,email,pwd,classid) values(@rno,@sname,@gen,@add,@loc,@ph,@mail,@pwd,@classd)", sqlcon);
                cmdAddStd.Parameters.AddWithValue("@rno", s.RollNumber);
                cmdAddStd.Parameters.AddWithValue("@sname", s.StudentName);
                cmdAddStd.Parameters.AddWithValue("@gen", s.Gender);
                cmdAddStd.Parameters.AddWithValue("@add", s.Address);
                cmdAddStd.Parameters.AddWithValue("@loc", s.Location);
                cmdAddStd.Parameters.AddWithValue("@ph", s.Phone);
                cmdAddStd.Parameters.AddWithValue("@mail", s.Email);
                cmdAddStd.Parameters.AddWithValue("@pwd", s.Password);
                cmdAddStd.Parameters.AddWithValue("@Classd", s.ClassId);
                cmdAddStd.ExecuteNonQuery();

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
            MySqlDataAdapter data = new MySqlDataAdapter("Select  rollno,stdname,gender,address,location,phone,email,pwd,classname  from Studentreg,classinfo where studentreg.classid=classinfo.classid", sqlcon);
          //  MySqlDataAdapter data = new MySqlDataAdapter("Select * from Studentreg", sqlcon);
            DataSet dsStd = new DataSet();
            data.Fill(dsStd, "std");
            return dsStd;
        }
        public DataSet GetDataFac(string fid)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select  rollno,stdname,studentreg.gender,studentreg.address,studentreg.location,studentreg.phone,studentreg.email,studentreg.pwd,classinfo.classname from classinfo,studentreg,classfaculty,facultyinfo  where facultyinfo.fid=classfaculty.fid and studentreg.classid=classfaculty.classid and studentreg.classid=classinfo.classid and facultyinfo.fid='" + fid + "'", sqlcon);
            DataSet dsStd = new DataSet();
            data.Fill(dsStd, "std");
            return dsStd;
        }


        public DataSet GetDataStudprof(string rollno)
        {
            MySqlDataAdapter data = new MySqlDataAdapter("select  rollno,stdname,studentreg.address,studentreg.location,studentreg.phone,studentreg.email,studentreg.pwd,classinfo.classname,facultyinfo.factname from classinfo,studentreg,classfaculty,facultyinfo  where facultyinfo.fid=classfaculty.fid and studentreg.classid=classfaculty.classid and studentreg.classid=classinfo.classid and studentreg.rollno='" + rollno + "'", sqlcon);
            DataSet dsStd = new DataSet();
            data.Fill(dsStd, "std");
            return dsStd;
        }
    }
}