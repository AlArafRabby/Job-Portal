using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication1.DAL.EmploymentTableAdapters;
using WebApplication1.Model;
using WebApplication1.UI;

namespace WebApplication1.BLL
{
    public class EmploymentBLL
    {
        public string UpdateEmployment(Employment_History eh,int id)
        {
            EmploymentHistoryTableAdapter em = new EmploymentHistoryTableAdapter();
            Employment_History employment = new Employment_History();
            int row=em.UpdateQuery(employment.CompanyName, employment.CompanyBusiness, employment.Designation, employment.Department, employment.AreaOfExperience, employment.Responsibilities, employment.CompanyLocation, employment.EmploymentPeriod, id);
            if (row > 0)
            {
                return "success";
            }
            return "failed";
        }
        public Employment_History SearchEmployment(int id)
        {
            EmploymentHistoryTableAdapter em = new EmploymentHistoryTableAdapter();
            EmploymentHistorySearchTableAdapter adapter = new EmploymentHistorySearchTableAdapter();
            Employment_History employment = new Employment_History();
            
            int row = Convert.ToInt32(em.ScalarQuery());
            if (row > 0)
            {

                DataTable dt = adapter.SearchQuery(id);

                
                employment.CompanyName = dt.Rows[0]["CompanyName"].ToString();
                employment.CompanyBusiness = dt.Rows[0]["CompanyBusiness"].ToString();
                employment.Designation = dt.Rows[0]["Designation"].ToString();
                employment.Department= dt.Rows[0]["Department"].ToString();
                employment.AreaOfExperience = dt.Rows[0]["AreaofExperiences"].ToString();
                employment.Responsibilities = dt.Rows[0]["Responsibilities"].ToString();
                employment.CompanyLocation = dt.Rows[0]["CompanyLocation"].ToString();
                employment.EmploymentPeriod = dt.Rows[0]["EmploymentPeriod"].ToString();

                return employment;
            }
            else
            {
                Education_training edu = new Education_training();
                edu.LevelOfEducation = null;
                edu.DegreeTitle = null;
                edu.Group = null;
                edu.InstituteName = null;
                edu.Achievement = null;
                edu.Result = null;
                edu.YearOfoPassing = null;
                edu.Duration = null;
                return employment;
            }
        }
        public string DeleteEmployment(int id)
        {
            EmploymentHistoryTableAdapter em = new EmploymentHistoryTableAdapter();
            Employment_History employment = new Employment_History();
            int row = em.DeleteQuery(id);
            if (row > 0)
            {
                return "success";
            }
            return "failed";
        }
    }
}