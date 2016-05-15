using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace TP035539_FYP.Class_structure
{
    public class GUIDisplay
    {
        private string query;
        public string generate(string x)
        {
            switch (x)
            {
                case "Member Report":
                    break;
                case "Monthly Report":
                    break;
                default:
                    break;
            }
            return "Invalid report";
        }
       /* public string[] getMonthlyReportValues()
        {
            query = "";
            DatabaseOperator db = new DatabaseOperator ();
            SqlCommand cmd = new SqlCommand(query, db.getConnection());
            SqlDataReader queryReader = cmd.ExecuteReader();
            while (queryReader.Read())
            {

            }
        }
        */
    }
}