using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class ClassProperty
    {

        private int ClassId;
        private string cname;
        public int ClassID
        {
            get
            {
                return ClassId;
            }
            set
            {
                ClassId = value;
            }
        }

        public string ClassName
        {
            get
            {
                return cname;
            }
            set
            {
                cname = value;
            }
        }
    }
}