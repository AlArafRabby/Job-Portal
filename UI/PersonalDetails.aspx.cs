using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BLL;
using WebApplication1.Model;

namespace WebApplication1
{
    public partial class PersonalDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           if(!IsPostBack)
            {
                SearchPersonalDetails();

            }
        }

        protected void personalbtnsave_Click(object sender, EventArgs e)
        {
            Personal_informationBLL personal_InformationBLL = new Personal_informationBLL();
            Personal_information information = new Personal_information();
            information.FirstName = FirstName.Value;
            information.LastName = LastName.Value;
            information.FatherName = FathersName.Value;
            information.MotherName = MothersName.Value;
            information.DateofBirth = DateTime.Parse(DOB.Value);
            information.Gender = Gender.Value;
            information.Religion = Religion.Value;
            information.MaritalStatus = MStatus.Value;
            information.Nationality = Nationality.Value;
            information.NationalIdNo = NationalIdNo.Value;
            information.PassportNumber = PassportId.Value;
            information.PassportIssueDate = DateTime.Parse(PassportIssueDate.Value);
            information.MobileNo1 = MobileNo1.Value;
            information.MobileNo2 = MobileNo2.Value;
            information.MobileNo3 = MobileNo3.Value;
            information.Email = txtEmail1.Value;
            information.AlternateEmail = txtEmail2.Value;
            information.PresentAddress = presentAdd.Value;
            information.ParmanentAddress = permanentAdd.Value;
            information.Objective = Objective.Value;
            information.ParmanentAddress1 = permanentAddress1.Value;
            information.PresentSalary =Convert.ToDecimal(PresentSalary.Value);
            information.ExpectedSalary =Convert.ToDecimal(ExpectedSalary.Value);
            information.LookingForJob = jobLevel.Value;
            information.AbailableFor = jobNature.Value;
            information.PreferedJobCatagory = PreferredJobCatagories.Value;
            information.PreferedJobLocation = PreferredJobLocation.Value;
            information.Special_skill = SpecialSkills.Value;
            information.Carreer_summery = CareerSummary.Value;
            information.Special_Qualification = SpecialQualification.Value;
            information.keywords = keywords.Value;
            int id = 4;
            string message = personal_InformationBLL.updatepersonal_information(information, id);
            //string mess=personal_InformationBLL.savePersonal_information(information);
            //messLabel.Text = mess;
        }

        public void SearchPersonalDetails()
        {
            Personal_informationBLL personal_InformationBLL = new Personal_informationBLL();
            Personal_information info = new Personal_information();
            int id = 4;
            info = personal_InformationBLL.searchpersonal_information(id);
            FirstName.Value = info.FirstName;
            LastName.Value = info.LastName;
            FathersName.Value = info.FatherName;
            MothersName.Value = info.MotherName;
            DOB.Value = Convert.ToString(info.DateofBirth);
            Gender.Value = info.Gender;
            Religion.Value = info.Religion;
            MStatus.Value = info.MaritalStatus;
            Nationality.Value = info.Nationality;
            NationalIdNo.Value = info.NationalIdNo;
            PassportId.Value = info.PassportNumber;
            PassportIssueDate.Value = Convert.ToString(info.PassportIssueDate);
            MobileNo1.Value = info.MobileNo1;
            MobileNo2.Value = info.MobileNo2;
            MobileNo3.Value = info.MobileNo3;
            txtEmail1.Value = info.Email;
            txtEmail2.Value = info.AlternateEmail;
            presentAdd.Value = info.PresentAddress;
            permanentAdd.Value = info.PresentAddress;
            Objective.Value = info.Objective;
            permanentAddress1.Value = info.ParmanentAddress1;
            PresentSalary.Value = Convert.ToString(info.PresentSalary);
            ExpectedSalary.Value = Convert.ToString(info.ExpectedSalary);
            jobLevel.Value = info.LookingForJob;
            jobNature.Value = info.AbailableFor;
            PreferredJobCatagories.Value = info.PreferedJobCatagory;
            PreferredJobLocation.Value = info.PreferedJobLocation;
            SpecialSkills.Value = info.Special_skill;
            CareerSummary.Value = info.Carreer_summery;
            SpecialQualification.Value = info.Special_Qualification;
            keywords.Value = info.keywords;
        }

        protected void personalinformation_editButton_Click(object sender, EventArgs e)
        {
            SearchPersonalDetails();

        }
    }
}