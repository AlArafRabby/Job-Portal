using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication1.DAL.PhotographTableAdapters;
using WebApplication1.Model;

namespace WebApplication1.BLL
{
    public class ImageBLL
    {
        public string InsertImage(PhotographModel ph)
        {
            
            Photograph_TableTableAdapter adapter = new Photograph_TableTableAdapter();

            int row=adapter.InsertQuery(ph.ImageName,ph.ImageData,ph.ImageSize);
            if(row>0)
            {
                return "success";
            }
            return "failed";
        }
        public string ChangeImage(Byte[] bytes,int id)
        {
            Photograph_TableTableAdapter ad = new Photograph_TableTableAdapter();
            int row=ad.ChangeImageQuery(bytes, id);
            if(row>0)
            {
                return "success";
            }
            return "failed";

        }
        public byte[] LoadImage()
        {
            Photograph_TableTableAdapter tableadapter = new Photograph_TableTableAdapter();
            var roweffect=tableadapter.ScalarQuery();

            if(roweffect.HasValue)
            {
                Photograph_TableImageTableAdapter adapter = new Photograph_TableImageTableAdapter();
                int id = 1;
                DataTable da;
                da = adapter.GetImage(id);
                byte[] bytes = (byte[])da.Rows[0]["ImageData"];
               
                return bytes;
            }
            else
            { 
                return null;
            }
           
            
        }
    }
}