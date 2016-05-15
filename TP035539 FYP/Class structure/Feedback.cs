using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace TP035539_FYP.Class_structure
{
    public class Feedback
    {
        private string name, email, feedBack;
        private Feedback fBackObj;
        public Feedback()
        {

        }
        public Feedback(string n, string e, string fBack)
        {
            name = n;
            email = e;
            feedBack = fBack;
        }
        public string Name{
            get { return name; }
            set { name = value; }
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public string FeedBack
        {
            get { return feedBack; }
            set { feedBack = value; }
        }
        public Feedback getfeedBack()
        {
            return fBackObj;
        }
        public void setFeedBack(Feedback f)
        {
            fBackObj = f;
        }
        public void saveFeedback()
        {
            string query = "insert into Feedback(name,email,feedback) values ('"+fBackObj.Name+"','"+fBackObj.Email+"','"+fBackObj.FeedBack+"');";
            DatabaseOperator db = new DatabaseOperator();
            SqlCommand cmd = new SqlCommand(query, db.getConnection());
            cmd.ExecuteNonQuery();
        }
    }
}