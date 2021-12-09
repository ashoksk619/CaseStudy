using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class LoginOperation
    {


        private string FEmail;
        private string Fpwd;
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
    }
}