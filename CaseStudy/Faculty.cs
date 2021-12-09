using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class Faculty
    {
        private string fname, gend, add, loc, ph, mail, pwd, fid;
        public string FacultyID
        {
            get
            {
                return fid;
            }
            set
            {
                fid = value;
            }
        }
        public string FacultyName
        {
            get
            {
                return fname;
            }
            set
            {
                fname = value;
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