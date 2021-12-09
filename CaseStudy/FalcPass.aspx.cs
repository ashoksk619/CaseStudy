using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy
{
    public partial class FalcPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["fid"] != null)
            {
                LoginOperations lp = new LoginOperations();
                LoginAll cs = new LoginAll();
                lp.FacultyId = Session["fid"].ToString();
                lp.FacultyOldPassword = Txtop.Text;
                lp.FacultyNewPassword = Txtnp.Text;
                bool x = cs.Chk(lp);
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