using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Model
{
    public class Personal_information
    {

        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public DateTime DateofBirth { get; set; }
        public string Gender { get; set; }
        public string Religion { get; set; }
        public string MaritalStatus { get; set; }
        public string Nationality { get; set; }
        public string NationalIdNo { get; set; }
        public string PassportNumber { get; set; }
        public DateTime PassportIssueDate { get; set; }
        public string MobileNo1 { get; set; }
        public string MobileNo2 { get; set; }
        public string MobileNo3 { get; set; }
        public string Email { get; set; }
        public string AlternateEmail { get; set; }
        public string PresentAddress { get; set; }
        public string ParmanentAddress { get; set; }
        public string Objective { get; set; }
        public string ParmanentAddress1 { get; set; }
        public decimal PresentSalary { get; set; }
        public decimal ExpectedSalary { get; set; }
        public string LookingForJob { get; set; }
        public string AbailableFor { get; set; }
        public string PreferedJobCatagory { get; set; }
        public string PreferedJobLocation { get; set; }
        public string Special_skill { get; set; }

        public string Carreer_summery{get;set;}
        
        public string Special_Qualification{get;set;}

        public string keywords { get; set; }
    }
}