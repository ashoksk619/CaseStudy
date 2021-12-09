using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy
{
    public partial class Changepass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (Session["rollno"] != null)
            {
                LoginOpStud lp = new LoginOpStud();
                LoginAll cs = new LoginAll();
                lp.RollNo = Session["rollno"].ToString();
                lp.OldPassword = TextOp.Text;
                lp.NewPassword = TextAdd.Text;
                bool x = cs.SpChk(lp);
                if (x)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password Changed Succesfully')", true);
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Password/Fid is incorrect')", true);


                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Login to Continue')", true);
            }
        }
    }
}