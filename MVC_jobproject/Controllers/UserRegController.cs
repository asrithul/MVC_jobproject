using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_jobproject.Models;

namespace MVC_jobproject.Controllers
{
    public class UserRegController : Controller
    {
        mvc_prodbEntities dbobj = new mvc_prodbEntities();
        // GET: UserReg
        public ActionResult Insertuser_Pageload()
        {
            UserInsert user = new UserInsert();
            user.Myqual=getqual();
            return View(user);
        }

        public List<checkbox> getqual()
        {
            List<checkbox> sts = new List<checkbox>()
            {
                new checkbox{value="SSLC",text="SSLC",IsChecked=true},
                new checkbox{value="PLUS TWO",text="PLUS TWO",IsChecked=false},
                new checkbox{value="BCA",text="BCA",IsChecked=false},
                new checkbox{value="MCA",text="MCA",IsChecked=false},
                new checkbox{value="BTECH",text="BTECH",IsChecked=false}
            };
            return sts;
        }

        public ActionResult Insert_click(UserInsert clsobj,HttpPostedFileBase file,FormCollection form)
        {
            if (ModelState.IsValid)
            {
                if (file.ContentLength > 0)
                {
                    string fname = Path.GetFileName(file.FileName);
                    var s = Server.MapPath("~/uimg");
                    string pa = Path.Combine(s, fname);
                    file.SaveAs(pa);

                    var fullpath = Path.Combine("//uimg", fname);
                    clsobj.photo = fullpath;
                }

                var qid = string.Join(",", clsobj.selectedqual);
                clsobj.qual = qid;
                clsobj.Myqual = getqual();

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

                dbobj.sp_userreg(regid, clsobj.uname, clsobj.uage, clsobj.uaddr, clsobj.uemail, clsobj.photo, clsobj.phone, clsobj.skills, clsobj.exp, clsobj.qual);
                dbobj.sp_loginsert(regid, clsobj.username, clsobj.pwd, "user");
                clsobj.msg = "Registered Successfully!";
                return View("Insertuser_Pageload", clsobj);
            }
            clsobj.Myqual = getqual();
            return View("Insertuser_Pageload", clsobj);
        }

    }
}