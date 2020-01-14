using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
namespace HosePital.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/
       
        public ActionResult Customer()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Customers(HttpPostedFileBase file) 
        {
            string fileName = file.FileName;
            string filePath = Server.MapPath(string.Format("~/{0}", "FileUpload"));
            file.SaveAs(Path.Combine(filePath, fileName));
            
            //string files = "/";
            //if (files != null)
           
                //string filePath = Path.Combine(HttpContext.Server.MapPath("../FileUpload"), Path.GetFileName(files.FileName));
                //files.SaveAs(filePath);request.MapPath("`/FileUpload/") + files.FileName

            return Json(new { code = 0 });
                //files = @"/FileUpload/" + files.FileName; 
          
                //if (Directory.Exists(Server.MapPath("`/FileUpload/") + files.FileName))
                //{
                //    return Json(new { code = 0 });
                //}
                //return Json(new { code = 1 });

           
           
        }
    }
}
