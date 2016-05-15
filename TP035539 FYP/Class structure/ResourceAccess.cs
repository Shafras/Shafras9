using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Odbc;
namespace TP035539_FYP.Class_structure
{
    public class ResourceAccess
    {
        string id, resource_id, reader_id, wihdrawal_location, withdrawal_date, return_date, status, return_location;
        decimal fine = 0m;
        public ResourceAccess(string id,string rid,string re_id,string wlocation,string wdate,string rdate,string s,string rlocation)
        {
            this.id=id;
            resource_id = rid;
            wlocation = WithdrawalLocation;
            withdrawal_date = wdate;
            return_date = rdate;
            status = s;
            rlocation = return_location;
        }
        
        public ResourceAccess()
        {

        }
        public void SaveFine()
        {

        }
        public string ID
        {
            get { return id; }
            set { value = id; }
        }
        public string ResourceID
        {
            get { return resource_id; }
            set { value = resource_id; }
        }
        public string ReaderID{
            get{ return reader_id; }
            set{ value=reader_id; }
        }
        public string WithdrawalLocation
        {
            get { return WithdrawalLocation; }
            set { value = WithdrawalLocation; }
        }
        public string WithdrwawlDate
        {
            get { return withdrawal_date; }
            set { value = withdrawal_date; }
        }
        public string ReturnDate
        {
            get { return return_date; }
            set { return_date = value; }
        }
        public string Status
        {
            get { return status; }
            set { status = value; }
        }
        public string ReturnLocation
        {
            get { return return_location; }
            set { return_location = value; }
        }
    }
}