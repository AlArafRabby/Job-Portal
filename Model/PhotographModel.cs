using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Model
{
    public class PhotographModel
    {
        public int ImageID { get; set; }
        public string ImageName { get; set; }
        public Byte[] ImageData { get; set; }
        public int ImageSize { get; set; }
    }
}