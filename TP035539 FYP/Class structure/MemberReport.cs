using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP035539_FYP.Class_structure
{
    public class MemberReport : Class_structure.Report
    {
        protected string message = "Member Report";
        public MemberReport(Output x)
        {
            window = x;
        }
        public void DisplayGeneratedReport()
        {
            window.generate(message);
        }
    }
}