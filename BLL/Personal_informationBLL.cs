using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication1.DAL;
using WebApplication1.DAL.JobPortalDALTableAdapters;
using WebApplication1.Model;


namespace WebApplication1.BLL
{
    public class Personal_informationBLL
    {
        Personal_infoTableAdapter personal_Info = new Personal_infoTableAdapter();
        Personal_infoInsertTableAdapter obj = new Personal_infoInsertTableAdapter();
        
        //DataSet data = new DataSet();
        
        //private JobPortalDAL.Personal_info3DataTable Data;

        public string savePersonal_information(Personal_information pi)
        {
            
            var row = obj.Insert1(pi.FirstName, pi.LastName, pi.FatherName, pi.MotherName, pi.DateofBirth, 
                pi.Gender, pi.Religion, pi.MaritalStatus, pi.Nationality, pi.NationalIdNo, 
                pi.PassportNumber, pi.PassportIssueDate
                , pi.MobileNo1, pi.MobileNo2, pi.MobileNo3, pi.Email, pi.AlternateEmail,pi.PresentAddress,pi.ParmanentAddress);
            return "success";
        }

        public string updatepersonal_information(Personal_information pi,int id)
        {
            Personal_infoupdateTableAdapter update = new Personal_infoupdateTableAdapter();
            DataTable da = new DataTable();

            var row = update.UpdateData(pi.FirstName, pi.LastName, pi.FatherName, pi.MotherName, pi.DateofBirth,
                 pi.Gender, pi.Religion, pi.MaritalStatus, pi.Nationality, pi.NationalIdNo,
                 pi.PassportNumber, pi.PassportIssueDate
                 , pi.MobileNo1, pi.MobileNo2, pi.MobileNo3, pi.Email, pi.AlternateEmail,pi.PresentAddress,pi.ParmanentAddress,pi.Objective,pi.PresentSalary,pi.ExpectedSalary
                 ,pi.LookingForJob,pi.AbailableFor,pi.PreferedJobCatagory,pi.PreferedJobLocation,pi.Special_skill,pi.Carreer_summery,pi.Special_Qualification,pi.keywords,id);
            if(row.IsInitialized)
            {
                return "updated";
            }
            return "failed";

        }

        public Personal_information searchpersonal_information(int id)
        {
            Personal_infogetdataTableAdapter getdata = new Personal_infogetdataTableAdapter();
            Personal_information info = new Personal_information();
            DataTable data = new DataTable();
            data =getdata.Search(id);
            info.FirstName =data.Rows[0]["FirstName"].ToString();
            info.LastName =data.Rows[0]["LastName"].ToString();
            info.FatherName =data.Rows[0]["FathersName"].ToString();
            info.MotherName =data.Rows[0]["MothersName"].ToString();
            info.DateofBirth =Convert.ToDateTime( data.Rows[0]["DateofBirth"]);
            info.Gender =data.Rows[0]["Gender"].ToString();
            info.Religion =data.Rows[0]["Religion"].ToString();
            info.MaritalStatus =data.Rows[0]["MaritalStatus"].ToString();
            info.Nationality =data.Rows[0]["Nationality"].ToString();
            info.NationalIdNo =data.Rows[0]["NationalIdNo"].ToString();
            info.PassportNumber =data.Rows[0]["PassportNumber"].ToString();
            info.PassportIssueDate =Convert.ToDateTime(data.Rows[0]["PassportIssueDate"]);
            info.MobileNo1 =data.Rows[0]["MobileNo1"].ToString();
            info.MobileNo2 =data.Rows[0]["MobileNo2"].ToString();
            info.MobileNo3 =data.Rows[0]["MobileNo3"].ToString();
            info.Email =data.Rows[0]["Email"].ToString();
            info.AlternateEmail =data.Rows[0]["AlternateEmail"].ToString();
            info.PresentAddress =data.Rows[0]["PresentAddress"].ToString();
            info.ParmanentAddress =data.Rows[0]["PermanentAddress"].ToString();
            info.Objective =data.Rows[0]["Objectives"].ToString();
            info.PresentSalary =Convert.ToDecimal(data.Rows[0]["PresentSalary"]);
            info.ExpectedSalary =Convert.ToDecimal(data.Rows[0]["ExpectedSalary"]);
            info.LookingForJob =data.Rows[0]["LookingForJobLevel"].ToString();
            info.AbailableFor =data.Rows[0]["AvailableFor"].ToString();
            info.PreferedJobCatagory =data.Rows[0]["PreferedJobCatagoryFunctional"].ToString();
            info.PreferedJobLocation =data.Rows[0]["PreferedJobLocation"].ToString();
            info.Special_skill =data.Rows[0]["SpecialSkill"].ToString();
            info.Carreer_summery =data.Rows[0]["CareerSummery"].ToString();
            info.Special_Qualification =data.Rows[0]["SpecialQualification"].ToString();
            info.keywords =data.Rows[0]["Keyword"].ToString();
            return info;
        }

    }
}