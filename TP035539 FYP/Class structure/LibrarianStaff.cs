using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP035539_FYP.Class_structure
{
    public class LibrarianStaff:Person
    {
        public string RenewBorrowedResources(string rdID, string rsID,string description)
        {
            DatabaseOperator db = new DatabaseOperator();
            string query= "select renewals,r_access_id,user_id from ResourceAccess where user_id='"+rdID+"' and resource_id='"+rsID+"'";
            while(db.executeResultsOperation(query).Read())
            {
                if (db.executeResultsOperation(query).GetString(3) == rdID)
                {
                    int renewals = db.executeResultsOperation(query).GetInt32(1);
                    if (renewals <= 2)
                    {
                        Fine f = new Fine();
                        f.Fines = f.CalculateFine(rdID, rsID);
                        f.ResourceAccessID = db.executeResultsOperation(query).GetInt32(2);
                        f.Description = description;
                        f.ReaderID = rdID;
                        f.SaveNewFines(f);
                        return "Successfully renewed !";
                    }
                    return "Maximum 2 renewals only, Renewal denied";
                }
                
            }
            return "Resources not borrowed";
            
        }
        
    }
}