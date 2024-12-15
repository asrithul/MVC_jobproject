using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MVC_jobproject.Models
{
    public class CompInsert
    {
        [Required(ErrorMessage ="Company Name required")]
        public string cname { set; get; }
        [Required(ErrorMessage ="Company email required")]
        [EmailAddress(ErrorMessage ="Enter valid email")]
        public string cemail { set; get; }

        [Required(ErrorMessage = "Contact Number required")]
        [RegularExpression(@"^(\d{10})$", ErrorMessage = "Enter valid number")]
        public string cphone { set; get; }
        [Required(ErrorMessage ="Company Address required")]
        public string caddr { set; get; }
        [Required(ErrorMessage ="Company web required")]
        public string cweb { set; get; }
        [Required(ErrorMessage ="Enter a username")]
        public string uname { set; get; }
        public string pass { set; get; }
        [Compare("pass", ErrorMessage = "Password mismatch")]
        public string cpassword { set; get; }
        public string cadminmsg { set; get; }

    }
}