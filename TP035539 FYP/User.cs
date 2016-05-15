using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Odbc;
namespace TP035539_FYP
{
    public abstract class User
    {
        protected string userID, password, fName, lName, address, loginName, phoneNumber, libraryID,type;
        private string connection = "Provider=MSDASQL; DRIVER={MySQL ODBC 3.51Driver}; SERVER= localhost; DATABASE=LibDB; OPTION=3";
        OdbcConnection db;
        private static string currentUser;
        public User()
        {

        }
        public User(string uID, string pWord)
        {
            userID = uID;
            password = pWord;
        }
        public User(string uID, string pWord, string firstName, string lastName, string address, string t,string loginName, string pNumber, string libID)
        {
            userID = uID;
            password = pWord;
            fName = firstName;
            lName = lastName;
            this.address = address;
            this.loginName = loginName;
            phoneNumber = pNumber;
            libraryID = libID;
            type = t;
        }
        public string Type
        {
            get { return type; }
            set { type = value; }
        }
        public string UserID
        {
            get { return userID; }
            set { userID = value; }
        }
        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        public string FirstName
        {
            get { return FirstName; }
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
        public bool Login(User u)
        {
            db = new OdbcConnection(connection);
            string query="select user_id,password from User;";
            OdbcCommand cmd = new OdbcCommand(query, db);
            OdbcDataReader queryResults = cmd.ExecuteReader();
            while (queryResults.Read())
            {
                if (u.UserID == queryResults.GetString(1) && u.Password == queryResults.GetString(2))
                {
                    currentUser = u.UserID;
                    return true;
                }
            }
            return false;
        }
    }
}