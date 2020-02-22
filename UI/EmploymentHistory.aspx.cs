using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BLL;
using WebApplication1.Model;

namespace WebApplication1.UI
{
    public partial class EmploymentHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SearchEmployment();
            }

        }

        protected void saveEducationButton_Click(object sender, EventArgs e)
        {
            EmploymentBLL employmentBLL = new EmploymentBLL();
            Employment_History emp = new Employment_History();
            emp.CompanyName = companyname.Value;
            emp.CompanyBusiness = companybusiness.Value;
            emp.Designation = designation.Value;
            emp.Department = department.Value;
            emp.AreaOfExperience = areaofexperiment.Value;
            emp.Responsibilities = responsibilities.Value;
            emp.CompanyLocation = companylocation.Value;
            emp.EmploymentPeriod = employmentperiod.Value;
            int id = 1;
            employmentBLL.UpdateEmployment(emp, id);

        }

        protected void editEmploymentButton_Click(object sender, EventArgs e)
        {
            SearchEmployment();
        }

        public void SearchEmployment()
        {
            EmploymentBLL employmentBLL = new EmploymentBLL();
            Employment_History emp = new Employment_History();
            int id = 1;
            emp = employmentBLL.SearchEmployment(id);
            companyname.Value = emp.CompanyName;
            companybusiness.Value = emp.CompanyBusiness;
            designation.Value = emp.Designation;
            department.Value = emp.Department;
            areaofexperiment.Value = emp.AreaOfExperience;
            responsibilities.Value = emp.Responsibilities;
            companylocation.Value = emp.CompanyLocation;
            employmentperiod.Value = emp.EmploymentPeriod;
        }

        protected void deleteEmploymentButton_Click(object sender, EventArgs e)
        {
            int id = 1;
            EmploymentBLL employmentBLL = new EmploymentBLL();
            employmentBLL.DeleteEmployment(id);
            SearchEmployment();
        }
    }
}