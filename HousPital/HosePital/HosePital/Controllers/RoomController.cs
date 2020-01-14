using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HosePital.Models.DB;
namespace HosePital.Controllers
{
    public class RoomController : Controller
    {
        //
        // GET: /Room/

        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddCustomer(db_INPUT u)
        {
           
            HoseDBEntities db = new HoseDBEntities();
          
            db_INPUT list = new db_INPUT { CustomerName = u.CustomerName, CustomerIDNumber = u.CustomerIDNumber, CustomerInDate = u.CustomerInDate, CustomerOutDate = u.CustomerOutDate, CustomerPeoper = u.CustomerPeoper, CustomerSex = u.CustomerSex, CustomerPrice = u.CustomerPrice, CustomerAddress = u.CustomerAddress,WorkerID=u.WorkerID ,RoomNID=u.RoomNID,CTypeID=u.CTypeID};
            db.db_INPUT.Add(list);
            db.Configuration.ValidateOnSaveEnabled = false;
            if (db.SaveChanges()>0)
            {  
                //var lists = db.db_ROOM.Find(u.RoomNID);
                
                //db.Configuration.ValidateOnSaveEnabled - true;
                return Json(new {code=0,msg="可爱的顾客来了" });
            }
            else
                return Json(new { code=1,msg="不好意思，脑子出差了"});
        }
    }
}
