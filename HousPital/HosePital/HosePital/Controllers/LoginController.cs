using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HosePital.Models.DB;
namespace HosePital.Controllers
{
    public class LoginController : Controller
    {
        //
        // GET: /Login/

        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Logins(string loginUsername, string loginPassword)
        {
           
            HoseDBEntities db = new HoseDBEntities();
            
            var list = db.db_MANAGER.Where(p => p.ManagerName == loginUsername && p.ManagerPassword == loginPassword).ToList();

                if (list.Count() > 0)
                {
                    return Content("999");
                    
                }
                else

                    return Content ("123");

            
        
        
        
        }
    }
}
