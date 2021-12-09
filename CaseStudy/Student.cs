using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class Student
    {
        private int classid;
        private string sname,gend,add,loc,ph,mail,pwd, rollno;
        public string RollNumber
        {
            get
            {
                return rollno;
            }
            set
            {
                rollno = value;
            }
        }
        public int ClassId
        {
            get
            {
                return classid;
            }
            set
            {
                classid = value;
            }
        }

        public string StudentName
        {
            get
            {
                return sname;
            }
            set
            {
                sname = value;
            }
        }
        public string Gender
        {
            get
            {
                return gend;
            }
            set
            {
                gend = value;
            }
        }
        public string Address
        {
            get
            {
                return add;
            }
            set
            {
                add = value;
            }
        }
        public string Location
        {
            get
            {
                return loc;
            }
            set
            {
                loc = value;
            }
        }
        public string Phone
        {
            get
            {
                return ph;
            }
            set
            {
                ph = value;
            }
        }
        public string Email
        {
            get
            {
                return mail;
            }
            set
            {
                mail = value;
            }
        }
        public string Password
        {
            get
            {
                return pwd;
            }
            set
            {
                pwd = value;
            }
        }
    }
}