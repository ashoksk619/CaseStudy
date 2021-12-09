using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class LoginOperations
    {

        private string FEmail;
        private string Fpwd, Fid, opwd, npwd;
        public string FacultyEmail
        {
            get
            {
                return FEmail;
            }
            set
            {
                FEmail = value;
            }
        }

        public string FacultyPassword
        {
            get
            {
                return Fpwd;
            }
            set
            {
                Fpwd = value;
            }
        }
        public string FacultyId
        {
            get
            {
                return Fid;
            }
            set
            {
                Fid = value;
            }
        }
        public string FacultyOldPassword
        {
            get
            {
                return opwd;
            }
            set
            {
                opwd = value;
            }
        }
        public string FacultyNewPassword
        {
            get
            {
                return npwd;
            }
            set
            {
                npwd = value;
            }
        }
    }
}
