using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace TP035539_FYP.Class_structure
{
    public class Member:Person
    {
        string email, name;
        decimal fine_amount = 0m;
        int reader_renewals;
        Resource[] r = new Resource[3];
        public Member()
        {

        }
        public Member(string lName, string pWord)
        {
            this.loginName = lName;
            this.password = pWord;
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        public Member(string id, decimal amount, int renewals)
        {
            personID = id;
            fine_amount = amount;
            reader_renewals = renewals;
        }
        public decimal FineAmount
        {
            get { return fine_amount;}
            set { fine_amount = value; }
        }
        public int Renewals
        {
            get { return reader_renewals; }
            set { reader_renewals = value; }
        }
        public void SignUP(Person p)
        {
            try {
                string query = "insert into LIbUser values('" + p.LibraryID + "','" + p.Name + "','" + p.PhoneNumber + "','" + p.Gender + "','" + p.FirstName + "','" + p.LastName + "','" + p.Password + "','" + p.LoginName + "')";
                Class_structure.DatabaseOperator db = new Class_structure.DatabaseOperator();
                db.executeUpdateOperation(query);
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex);
            }
            
        }
    }
    
}