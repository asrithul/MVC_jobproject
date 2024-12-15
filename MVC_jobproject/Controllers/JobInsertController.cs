using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_jobproject.Models;

namespace MVC_jobproject.Models
{
    public class JobInsertController : Controller
    {
        // GET: JobInsert
        mvc_prodbEntities dbobj = new mvc_prodbEntities();
        public ActionResult Insertjob_Pageload()
        {
            return View();
        }

        public ActionResult Insertjob_click(JobInsert clsobj)
        {
            var compid = Session["uid"];
            var uid = Convert.ToInt32(compid);

            DateTime closingdate = clsobj.closing_date;

            dbobj.sp_jobinsert(clsobj.jtitle, clsobj.jdesc, clsobj.jskill, uid, closingdate, "Open",clsobj.jexp);
            clsobj.jmsg = "Posted Successfully!";
            return View("Insertjob_Pageload", clsobj);
        }
    }
}