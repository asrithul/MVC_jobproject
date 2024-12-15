using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_jobproject.Models
{
    public class JobInsert
    {
        public string jtitle { set; get; }
        public string jdesc { set; get; }
        public string cid { set; get; }
        public string jskill { set; get; }
        public DateTime closing_date { set; get; }
        public int jexp { set; get; }
        public string jmsg { set; get; }
    }
}