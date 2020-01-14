using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HosePital.Models.DB;
namespace HosePital.Controllers
{
    public class AddExController : Controller
    {
        //
        // GET: /AddEx/

        public ActionResult Index()
        {
            return View();
        }
        //添加员工
        [HttpPost]
        public ActionResult AddExpress(string EName, string ENameNumber, decimal ENamePage, string password, string ENamePositon, string sex)
        {
            using (HoseDBEntities db = new HoseDBEntities()) {
                db_WORKER list = new db_WORKER { WorkerName = EName, WorkerIDNumber = ENameNumber, WorkerWage = ENamePage, WorkerPassword = password, WorkerPosition = ENamePositon, WorkerSex = sex };
            db.db_WORKER.Add(list);
            if (db.SaveChanges()>0)
            {
                return Json(new{msg="哇，您又多了一位员工",code=0});
            }

                else
            return Json(new { msg = "不要乱添加，哼", code = 1 });
            
            
            }
        

           
        }

    }
}
