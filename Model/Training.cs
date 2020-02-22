using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Model
{
    public class Training
    {
        public int TrainingId { get; set; }
        public string TrainingTitle { get; set; }
        public string TopicCovered { get; set; }
        public string Traininginstitute { get; set; }
        public string TrainingLocation { get; set; }
        public string TrainingCountry { get; set; }
        public string TrainingYear { get; set; }
        public string TrainingDuration { get; set; }
    }
}