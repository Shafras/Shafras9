using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using TP035539_FYP.Account;
namespace TP035539_FYP.Class_structure
{
    public class LibrarianAdministrationStaff: Person
    {

        ChiefLibrarian cLibrarian;
        public LibrarianAdministrationStaff()
        {

        }
        public LibrarianAdministrationStaff(string uID, string pWord, string firstName, string lastName, string address, string loginName, string pNumber, string libID,string t)
        {
            type = t;
            personID = uID;
            password = pWord;
            fName = firstName;
            lName = lastName;
            this.address = address;
            this.loginName = loginName;
            phoneNumber = pNumber;
            libraryID = libID;
            
        }
        public void SetChiefLibrarian(ChiefLibrarian c)
        {
            cLibrarian = c;
        }
        public void AddChiefLibrarian()
        {
            DatabaseOperator db = new DatabaseOperator();
            string query = "insert into User values ('" + cLibrarian.PersonID + "','" + GetCurrentLibrarianAdministrationStaffLibraryID() + "','" + cLibrarian.LoginName + "','" + cLibrarian.PhoneNumber + "','" + cLibrarian.Type + "','" + cLibrarian.FirstName + "', '" + cLibrarian.LastName + "','" + cLibrarian.Password + "')";
            db.executeUpdateOperation(query);
        }
        public string GetCurrentLibrarianAdministrationStaffLibraryID()
        {
            string query = "select library_id from User where user_id='"+CurrentUser+"'";
            DatabaseOperator db = new DatabaseOperator();
            while(db.executeResultsOperation(query).Read())
            {
                return db.executeResultsOperation(query).GetString(1);
            }
            return "Not found";
        }
        public void addLibraryResource(Resource r)
        {
            try
            {
                string query = "insert into Resource(type,library_id,description,location,access_type) values ('" + r.Type + "','" + r.LibraryID + "','" + r.Description + "','" + r.Location + "','" + r.AccessType + "')";
                Class_structure.DatabaseOperator db = new Class_structure.DatabaseOperator();
                db.executeUpdateOperation(query);
            }
            catch (SqlException e)
            {
                Console.WriteLine(e.Message);
            }
        }

    }
}