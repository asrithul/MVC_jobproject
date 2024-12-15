using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_jobproject.Models;

namespace MVC_jobproject.Controllers
{
    public class ViewJobController : Controller
    {
        mvc_prodbEntities dbobj = new mvc_prodbEntities();
        // GET: ViewJob
        public ActionResult Jobview_Pageload()
        {
            var data = dbobj.sp_viewjobs().ToList();
            ViewBag.openings = data;
            return View();
        }

    }
}