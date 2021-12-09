using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class LoginOpStud
    {

        private string roll;
        private string opwd, npwd;
        public string RollNo
        {
            get
            {
                return roll;
            }
            set
            {
                roll = value;
            }
        }
        public string OldPassword
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
        public string NewPassword
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