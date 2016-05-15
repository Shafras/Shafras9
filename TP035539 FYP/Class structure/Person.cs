using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace TP035539_FYP.Class_structure
{
    public abstract class Person
    {
        protected string name, gender, personID, password, fName, lName, address, loginName, phoneNumber, libraryID, type;
        private static string currentUser;
        
        public Person()
        {

        }
        public Person(string uID, string pWord)
        {
            personID = uID;
            password = pWord;
        }
        public Person(string uID, string pWord, string firstName, string lastName, string address, string t,string loginName, string pNumber, string libID)
        {
            personID = uID;
            password = pWord;
            fName = firstName;
            lName = lastName;
            this.address = address;
            this.loginName = loginName;
            phoneNumber = pNumber;
            libraryID = libID;
            type = t;
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        public string PersonID
        {
            get { return personID; }
            set { personID = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string FirstName
        {
            get { return fName; }
            set { fName = value; }
        }
        public string LastName
        {
            get { return lName; }
            set { lName = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }
        public string LoginName
        {
            get { return loginName; }
            set { loginName = value; }
        }
        public string PhoneNumber
        {
            get { return phoneNumber; }
            set { phoneNumber = value; }
        }
        public string LibraryID
        {
            get { return libraryID; }
            set { libraryID = value; }
        }
        public string CurrentUser
        {
            get { return currentUser; }
            set { currentUser = value; }
        }
        public string Login(Member u)
        {
            Class_structure.DatabaseOperator db = new Class_structure.DatabaseOperator();
            string query = "select * from LIbUser where loginName = '"+u.LoginName+"' and password = '"+u.Password+"';";
            
            SqlCommand cmd = new SqlCommand(query, db.getConnection());
            SqlDataReader queryResults = cmd.ExecuteReader();
           
            while (queryResults.Read())
            {
                return u.Type = queryResults.GetString(9) + ";" + queryResults.GetString(1);
            }
            return "Invalid user";
        }
    }
}
