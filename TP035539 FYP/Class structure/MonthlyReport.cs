using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP035539_FYP.Class_structure
{
    public class MonthlyReport : Report
    {
        protected string message = "Monthly Report";
        public MonthlyReport(Output x)
        {
            window = x;
        }
        public void DisplayGeneratedReport()
        {
            window.generate(message);
        }
    }
}