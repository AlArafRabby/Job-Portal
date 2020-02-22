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
    public partial class Education_Training : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                searchEducation();
                SearchTraining();
            }
           
        }

        protected void saveEducationButton_Click(object sender, EventArgs e)
        {
            Education_training education = new Education_training();
            Education_trainingBLL edu = new Education_trainingBLL();
            education.LevelOfEducation = levelofeducation.Value;
            education.DegreeTitle = degreetitle.Value;
            education.Group = major_group.Value;
            education.InstituteName = institutename.Value;
            education.Achievement = achivement.Value;
            education.Result = result.Value;
            education.YearOfoPassing = yearofpassing.Value;
            education.Duration = duration.Value;
            edu.SaveEducation(education);
        }



        protected void updateEducationButton_Click(object sender, EventArgs e)
        {
            Education_training education = new Education_training();
            Education_trainingBLL edu = new Education_trainingBLL();
            education.LevelOfEducation = levelofeducation.Value;
            education.DegreeTitle = degreetitle.Value;
            education.Group = major_group.Value;
            education.InstituteName = institutename.Value;
            education.Achievement = achivement.Value;
            education.Result = result.Value;
            education.YearOfoPassing = yearofpassing.Value;
            education.Duration = duration.Value;
            int id = 2;
            edu.UpdateEducation(education, id);
        }
        public void searchEducation()
        {
            Education_training education = new Education_training();
            Education_trainingBLL edu = new Education_trainingBLL();

            int id = 2;
            education = edu.SearchEducation(id);
            levelofeducation.Value = education.LevelOfEducation;
            degreetitle.Value = education.DegreeTitle;
            major_group.Value = education.Group;
            institutename.Value = education.InstituteName;
            achivement.Value = education.Achievement;
            result.Value = education.Result;
            yearofpassing.Value = education.YearOfoPassing;
            duration.Value = education.Duration;
        }

        protected void editEducationButton_Click(object sender, EventArgs e)
        {
            searchEducation();
        }

        protected void deleteEducationButton_Click(object sender, EventArgs e)
        {
            int id = 2;
            Education_trainingBLL edu = new Education_trainingBLL();
            edu.DeleteEducation(id);
            searchEducation();

        }

        protected void trainingSaveButton_Click(object sender, EventArgs e)
        {
            Training training = new Training();
            training.TrainingTitle = trainingtitle.Value;
            training.TopicCovered = topicovered.Value;
            training.Traininginstitute = traininginstitute.Value;
            training.TrainingLocation = traininglocation.Value;
            training.TrainingCountry = trainingcountry.Value;

            training.TrainingYear = trainingyear.Value;
            training.TrainingDuration = traingingduration.Value;
        }
        protected void updateTrainingButton_Click(object sender, EventArgs e)
        {
            Training tr = new Training();
            Education_trainingBLL edu = new Education_trainingBLL();
            tr.TrainingTitle = trainingtitle.Value;
            tr.TopicCovered = topicovered.Value;
            tr.Traininginstitute = traininginstitute.Value;
            tr.TrainingLocation = traininglocation.Value;
            tr.TrainingCountry = trainingcountry.Value;
            tr.TrainingYear = trainingyear.Value;
            tr.TrainingDuration = traingingduration.Value;
            int id = 2;
            string message = edu.UpdateTraining(tr, id);

        }

        public void SearchTraining()
        {
            Training tr = new Training();
            Education_trainingBLL tra = new Education_trainingBLL();

            int id = 2;
            tr = tra.SearchTraining(id);
            trainingtitle.Value = tr.TrainingTitle;
            topicovered.Value = tr.TopicCovered;
            traininginstitute.Value = tr.Traininginstitute;
            traininglocation.Value = tr.TrainingLocation;
            trainingcountry.Value = tr.TrainingCountry;
            trainingyear.Value = tr.TrainingYear;
            traingingduration.Value = tr.TrainingDuration;
        }

        protected void trainingEditButton_Click(object sender, EventArgs e)
        {
            SearchTraining();

        }

        protected void deleteTrainingButton_Click(object sender, EventArgs e)
        {
            int id = 2;
            Education_trainingBLL edu = new Education_trainingBLL();
            edu.DeleteTraining(id);
            SearchTraining();
        }
    }
}