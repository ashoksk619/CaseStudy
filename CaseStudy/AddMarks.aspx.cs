using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CaseStudy
{
    public partial class AddMarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["fid"] != null)
                {

                    MarkOperation obj = new MarkOperation();
                    TextName.DataSource = obj.GetData(Session["fid"].ToString());
                    TextName.DataBind();
                    TextName.Items.Insert(0, new ListItem("Select", string.Empty));
                    TextCid.DataSource = obj.GetData1(Session["fid"].ToString());
                    TextCid.DataBind();
                    TextCid.Items.Insert(0, new ListItem("Select", string.Empty));
                    DropMark.Items.Insert(0, new ListItem("Select", string.Empty));

                }
            }

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            if (Session["fid"] != null)
            {
                MarkOperation mo = new MarkOperation();
                Mark s = new Mark();
                if (mo.Check(TextName.SelectedValue, DropMark.Text) == false)
                {
                    s.ExamType = DropMark.Text;
                    s.Science = int.Parse(TextSc.Text);
                    s.Maths = int.Parse(TextMa.Text);
                    s.Computer = int.Parse(TextCo.Text);
                    float y = (float.Parse(TextSc.Text) + float.Parse(TextMa.Text) + float.Parse(TextCo.Text)) / 3;
                    s.Total = s.Computer + s.Maths + s.Science;
                    s.Average = y;
                    if (s.Computer > 100 || s.Maths > 100 || s.Science > 100)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please Check The Details')", true);
                        if ((s.Total / 3) >= 90)
                        {
                            s.Grade = 'A';
                        }
                        else if ((s.Total / 3) >= 80)
                        {
                            s.Grade = 'B';
                        }
                        else if ((s.Total / 3) >= 70)
                        {
                            s.Grade = 'C';
                        }
                        else if ((s.Total / 3) >= 60)
                        {
                            s.Grade = 'D';
                        }
                        else
                        {
                            s.Grade = 'F';
                        }
                        s.RollNo = TextName.SelectedValue;
                        s.ClassId = int.Parse(TextCid.SelectedValue);
                        s.FacultyId = Session["fid"].ToString();

                        bool x = mo.AddMark(s);
                        if (x)
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('MARK UPDATED')", true);
                        }
                        else
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Oops !!MARK DETAILS NOT UPDATED')", true);

                        }
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('This Details Already Existed')", true);
                    }
                }
            }
        }
    }
}