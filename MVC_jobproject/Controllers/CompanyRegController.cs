using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_jobproject.Models;

namespace MVC_jobproject.Controllers
{
    public class CompanyRegController : Controller
    {
        mvc_prodbEntities dbobj = new mvc_prodbEntities();
        // GET: CompanyReg
        public ActionResult Insertcomp_Pageload()
        {
            return View();
        }
        public ActionResult Insertcomp_click(CompInsert clsobj)
        {
            if (ModelState.IsValid)
            {
                var getmaxid = dbobj.sp_maxid().FirstOrDefault();
                int mid = Convert.ToInt32(getmaxid);
                int regid = 0;
                if (mid == 0)
                {
                    regid = 1;
                }
                else
                {
                    regid = mid + 1;
                }
                dbobj.sp_compreg(regid, clsobj.cname,clsobj.cemail,clsobj.cphone,clsobj.caddr,clsobj.cweb);
                dbobj.sp_loginsert(regid, clsobj.uname, clsobj.pass, "company");
                clsobj.cadminmsg = "Company Registered Successfully!";
                return View("Insertcomp_Pageload");
            }
            return View("Insertcomp_Pageload");
        }
    }
}