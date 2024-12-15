using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MVC_jobproject.Models
{
    public class Logincls
    {
        [Required(ErrorMessage ="Enter username")]
        public string uname { set; get; }
        [Required(ErrorMessage ="Enter password")]
        public string pwd { set; get; }
        public string msg { set; get; }
        public string ltype { set; get; }
    }
}