using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CaseStudy
{
    public class Mark
    {

        private int sc, ma, co, tot, cid;
        private string fid, rollno, Et;
        private char gr;
        private float avg;
        public string ExamType
        {
            get
            {
                return Et;
            }
            set
            {
                Et = value;
            }
        }
        public int ClassId
        {
            get
            {
                return cid;
            }
            set
            {
                cid = value;
            }
        }

        public string RollNo
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
        public int Science
        {
            get
            {
                return sc;
            }
            set
            {
                sc = value;
            }
        }
        public int Maths
        {
            get
            {
                return ma;
            }
            set
            {
                ma = value;
            }
        }
        public int Computer
        {
            get
            {
                return co;
            }
            set
            {
                co = value;
            }
        }
        public string FacultyId
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
        public int Total
        {
            get
            {
                return tot;
            }
            set
            {
                tot = value;
            }
        }
        public float Average
        {
            get
            {
                return avg;
            }
            set
            {
                avg = value;
            }
        }
        public char Grade
        {
            get
            {
                return gr;
            }
            set
            {
                gr = value;
            }
        }
    }
}