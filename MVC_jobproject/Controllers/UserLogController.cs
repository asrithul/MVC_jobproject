using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_jobproject.Models;

namespace MVC_jobproject.Controllers
{
    public class UserLogController : Controller
    {
        mvc_prodbEntities dbobj = new mvc_prodbEntities();
        // GET: UserLog
        public ActionResult Login_Pageload()
        {
            return View();
        }
        public ActionResult UserHome()
        {
            return View();
        }
        public ActionResult CompanyHome()
        {
            return View();
        }
        public ActionResult Login_click(Logincls clsobj)
        {
            if (ModelState.IsValid)
            {
                var val = dbobj.sp_loginCount(clsobj.uname, clsobj.pwd).Single();
                if (val == 1)
                {
                    var uid = dbobj.sp_loginId(clsobj.uname, clsobj.pwd).FirstOrDefault();
                    Session["uid"] = uid;

                    var lt = dbobj.sp_loginType(clsobj.uname, clsobj.pwd).FirstOrDefault();
                    if (lt == "user")
                    {
                        return RedirectToAction("UserHome");
                    }
                    else if (lt == "company")
                    {
                        return RedirectToAction("CompanyHome");
                    }
                }
                else
                {
                    ModelState.Clear();
                    clsobj.msg = "Invalid Login";
                    return View("Login_Pageload",clsobj);
                }
            }
            return View("Login_Pageload", clsobj);
        }
    }
}