using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BLL;
using WebApplication1.DAL;
using WebApplication1.DAL.PhotographTableAdapters;
using WebApplication1.Model;

namespace WebApplication1.UI
{
    public partial class Photograph : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Visible = false;
               
                ImageLoad();
            }
        }


        public void ImageLoad()
        {
            ImageBLL imageBLL = new ImageBLL();
            //int id = 1;
            //DataTable da;
            //da = adapter.GetImage(id);
            //byte[] bytes = (byte[])da.Rows[0]["ImageData"];
            //string strBase64 = Convert.ToBase64String(bytes);
            byte[] image =imageBLL.LoadImage();
            string strBase64 = Convert.ToBase64String(image);
            //return strBase64;
            Image1.ImageUrl = "data:Image/png;base64," + strBase64;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            ImageBLL imageBLL = new ImageBLL();
            PhotographModel ph = new PhotographModel();
            
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                ph.ImageName = filename;
                ph.ImageSize = fileSize;
                ph.ImageData = bytes;
                imageBLL.InsertImage(ph);
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Upload Successful";
               
            }
        }

        protected void ChangeImagebtn_Click(object sender, EventArgs e)
        {
            ImageBLL imageBLL = new ImageBLL();
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;
            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
               || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                int id = 1;
                imageBLL.ChangeImage(bytes, id);
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Upload Successful";
                ImageLoad();
            }
        }
    }
}