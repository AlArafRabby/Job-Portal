using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication1.DAL.JobPortalDALTableAdapters;
using WebApplication1.Model;

namespace WebApplication1.BLL
{
    public class Education_trainingBLL
    {
        
        
        public string SaveEducation(Education_training ed)
        {
            Education_Table1TableAdapter obj = new Education_Table1TableAdapter();
            int row=obj.InsertQuery(ed.LevelOfEducation, ed.DegreeTitle, ed.Group, ed.InstituteName, ed.Achievement, ed.Result, ed.YearOfoPassing, ed.Duration);
            if(row>0)
            {
                return "success";
            }
            return "failed";
        }
        public Education_training SearchEducation(int id)
        {
            Education_TableSearchTableAdapter obj = new Education_TableSearchTableAdapter();
            int row = Convert.ToInt32(obj.ScalarQuery());
            if (row>0)
            {
                
                DataTable dt = obj.SearchQuery(id);
                
                Education_training edu = new Education_training();
                edu.LevelOfEducation = dt.Rows[0]["LevelOfEducation"].ToString();
                edu.DegreeTitle = dt.Rows[0]["DegreeTitle"].ToString();
                edu.Group = dt.Rows[0]["Group"].ToString();
                edu.InstituteName = dt.Rows[0]["InstituteName"].ToString();
                edu.Achievement = dt.Rows[0]["Achievement"].ToString();
                edu.Result = dt.Rows[0]["Result"].ToString();
                edu.YearOfoPassing = dt.Rows[0]["YearOfoPassing"].ToString();
                edu.Duration = dt.Rows[0]["Duration"].ToString();

                return edu;
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
                return edu;
            }
           

        }
        public string UpdateEducation(Education_training ed,int id)
        {
            Education_Table1TableAdapter obj = new Education_Table1TableAdapter();
            int row = obj.UpdateQuery(ed.LevelOfEducation, ed.DegreeTitle, ed.Group, ed.InstituteName, ed.Achievement, ed.Result, ed.YearOfoPassing, ed.Duration,id);
            if (row > 0)
            {
                return "success";
            }
            return "failed";
        }

        public string DeleteEducation(int id)
        {
            Education_Table1TableAdapter obj = new Education_Table1TableAdapter();
            int row = obj.DeleteQuery(id);
            return "success";
        }

        public string saveTraining(Training training)
        {
            Training tr = new Training();
            TrainingTableAdapter obj = new TrainingTableAdapter();
            obj.InsertQuery(tr.TrainingTitle, tr.TrainingCountry, tr.TopicCovered, tr.TrainingYear, tr.Traininginstitute, tr.TrainingDuration, tr.TrainingLocation);
            return "success";
        }

        public string UpdateTraining(Training training,int id)
        {
            Training tr = new Training();
            TrainingTableAdapter obj = new TrainingTableAdapter();
            obj.UpdateQuery(tr.TrainingTitle, tr.TrainingCountry, tr.TopicCovered, tr.TrainingYear, tr.Traininginstitute, tr.TrainingDuration, tr.TrainingLocation, id);
            return "success";
        }
        public string DeleteTraining(int id)
        {
            TrainingTableAdapter obj = new TrainingTableAdapter();
            int row = obj.DeleteQuery(id);
            return "success";
        }
        public Training SearchTraining(int id)
        {
            TrainingSearchTableAdapter obj = new TrainingSearchTableAdapter();
            int row = Convert.ToInt32(obj.ScalarQuery());
            Training training = new Training();
            if (row > 0)
            {

                
                DataTable dt = obj.SearchQuery(id);
                training.TrainingTitle = dt.Rows[0]["TrainingTitle"].ToString();
                training.TrainingCountry = dt.Rows[0]["Country"].ToString();
                training.TopicCovered = dt.Rows[0]["TopicsCovered"].ToString();
                training.TrainingYear = dt.Rows[0]["TrainingYear"].ToString();
                training.Traininginstitute = dt.Rows[0]["Institute"].ToString();
                training.TrainingDuration = dt.Rows[0]["Duration"].ToString();
                training.TrainingLocation = dt.Rows[0]["Location"].ToString();


                return training;
            }
            else
            {
                training.TrainingTitle = null;
                training.TrainingCountry = null;
                training.TopicCovered = null;
                training.TrainingYear = null;
                training.Traininginstitute = null;
                training.TrainingDuration = null;
                training.TrainingLocation = null;


                return training;
            }
        }
    }
}