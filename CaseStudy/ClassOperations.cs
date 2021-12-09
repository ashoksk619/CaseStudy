using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace CaseStudy
{
    public class ClassOperations
    {
        private MySqlConnection sqlcon = null;

        public ClassOperations()
        {
            sqlcon = new MySqlConnection("server=localhost;database=student_information;userid=root;pwd=root");
        }

        public void AddClass(ClassProperty s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Insert into classinfo(classname) values(@cname)", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@cname", s.ClassName);
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
        public bool Check(string classname)
        {
            bool chk = true;
            try
            {
                MySqlDataAdapter Check = new MySqlDataAdapter("Select * from classinfo", sqlcon);
                DataSet dsCk = new DataSet();
                Check.Fill(dsCk, "check");

                foreach (DataRow dr in dsCk.Tables["check"].Rows)
                {
                    if (dr["className"].ToString().Equals(classname) == true)
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

        public DataSet GetData()
        {
            MySqlDataAdapter data = new MySqlDataAdapter("Select * from classinfo", sqlcon);
            DataSet dsCls = new DataSet();
            data.Fill(dsCls, "cls");
            return dsCls;
        }


        public void UpdateClass(ClassProperty s)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Update classinfo set classname=@cname where classid=@cid", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@cname", s.ClassName);
                cmdAddCls.Parameters.AddWithValue("@cid", s.ClassID);
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

        public void DeleteClass(int Id)
        {
            try
            {
                sqlcon.Open();
                MySqlCommand cmdAddCls = new MySqlCommand("Delete from classinfo where classid=@id", sqlcon);
                cmdAddCls.Parameters.AddWithValue("@id", Id);
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
    }
}