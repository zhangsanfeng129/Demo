using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HosePital.Models.DB;
namespace HosePital.Controllers
{
    public class DefalutController : Controller
    {
        //
        // GET: /Defalut/

        public ActionResult Exmpress()
        {
            return View();
        }

        //查
        [HttpPost]
        public ActionResult Exmpre()
        {

            string seach_name = Request["UserName"];//获取input框中的条件
            int pages = int.Parse(Request["page"]);//獲取前台頁數
            int row = int.Parse(Request["limit"]);//获取前台行数
            int ss = (pages * row) - row;//分页计算公式
            HoseDBEntities db = new HoseDBEntities(); 
            db.Configuration.ProxyCreationEnabled = false;//input数据库不循环遍历
            var list = (from p in db.db_WORKER orderby p.WorkerID select p).ToList();
            var listp = (from p in db.db_WORKER orderby p.WorkerID select p).Skip(ss).Take(row).ToList();
            if (seach_name != null)
                listp = (db.db_WORKER.Where(p => p.WorkerName.Contains(seach_name))).ToList();
            return Json(new { data = listp, total = list.Count},JsonRequestBehavior.AllowGet);

           
        }
        //删除
        [HttpPost]
        public ActionResult Detail(List<int> detail) 
        {
            using (HoseDBEntities db=new HoseDBEntities())
            {
                foreach (var item in detail)
                {
                    var list = db.db_WORKER.Find(item);
                     db.db_WORKER.Remove(list);
                }
                if (db.SaveChanges() > 0)
                {
                    return Json(new { code = 0, msg = "哇，好痛苦，您的员工走了" });
                }
                else

                    return Json(new { code = 1, msg = "不好意思，脑子出差了" });
                
               
            }
        
        
        }
      
        //修改
        [HttpPost]
        public ActionResult Edities(string EName, string ENameNumber, decimal ENamePage, string password, string ENamePositon, string sex, int EditID)
        {
          

            using (HoseDBEntities db = new HoseDBEntities())
            {
                var list = db.db_WORKER.Find(EditID);
                list.WorkerName = EName;
                list.WorkerIDNumber = ENameNumber;
                list.WorkerWage = ENamePage;
                list.WorkerPassword = password;
                list.WorkerPosition = ENamePositon;
                list.WorkerSex = sex;
                if (db.SaveChanges() > 0)
                {
                    return Json(new { code = 0, msg = "您已经修改成功" });
                }
                else
                {
                    return Json(new { code = 0, msg = "您修改失败喽" });
                }

            }

       
        }
    }
}
