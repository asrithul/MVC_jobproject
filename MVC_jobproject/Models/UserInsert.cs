using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace MVC_jobproject.Models
{
    public class checkbox
    {
        public string value { set; get; }
        public string text { set; get; }
        public bool IsChecked { set; get; }
    }
    public class UserInsert
    {
        public int uid { get; set; }
        [Required(ErrorMessage = "Enter your name")]
        public string uname { get; set; }
        [Range(20, 50, ErrorMessage = "Enter age between 20 and 50")]
        public List<checkbox> Myqual { set; get; }
        public string[] selectedqual { set; get; }
        public int uage { get; set; }

        [Required(ErrorMessage = "Enter valid address")]
        public string uaddr { get; set; }
        [Required(ErrorMessage ="Enter valid email")]
        public string uemail { set; get; }
        public string photo { set; get; }
        [Required(ErrorMessage = "Enter the phone")]
        [RegularExpression(@"^(\d{10})$", ErrorMessage = "Enter valid number")]
        public string phone { set; get; }
        [Required(ErrorMessage = "Enter the skills you have")]
        public string skills { set; get; }
        [Required(ErrorMessage = "Enter the experience(in years)")]
        public string exp { set; get; }
        public string qual { set; get; }
        public string username { set; get; }

        public string pwd { set; get; }

        [Compare("pwd", ErrorMessage = "Password mismatch!")]

        public string cpwd { set; get; }

        public string msg { set; get; }

    }
}