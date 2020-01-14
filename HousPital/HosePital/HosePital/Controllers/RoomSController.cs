using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HosePital.Models.DB;
namespace HosePital.Controllers
{
    public class RoomSController : Controller
    {
        //
        // GET: /RoomS/

        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Indexxiu()
        {
            HoseDBEntities db = new HoseDBEntities();
            

            return View();        
        }
    }
}
