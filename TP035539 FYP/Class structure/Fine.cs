using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace TP035539_FYP.Class_structure
{
    public class Fine
    {
        string description, reader_id, resource_id;
        decimal fine = 0.0m;
        int resource_access_id;
        public Fine(int raid, string desc, string redrid)
        {
            resource_access_id = raid;
            description = desc;
            redrid = reader_id;
        }
        public decimal Fines
        {
            get { return fine; }
            set { fine = value; }
        }
        public int ResourceAccessID
        {
            get { return resource_access_id; }
            set { resource_access_id = value; }
        }
        public string Description
        {
            get { return description; }
            set { description = value; }
        }
        public string ReaderID
        {
            get { return reader_id; }
            set { reader_id = value; }
        }
        public string ResourceID
        {
            get { return resource_id; }
            set { resource_id = value; }
        }
        public Fine()
        {

        }
        public decimal CalculateFine(string readerid, string resourceid)
        {
            string query = "select withdrawal_date,fine from ResourceAccess AS R INNER JOIN Fine AS F ON R.user_id= F.user_id and R.user_id='" + reader_id + "' and R.resource_id='" + resource_id + "' ";
            DatabaseOperator db = new DatabaseOperator();
            SqlCommand cmd = new SqlCommand(query, db.getConnection());
            SqlDataReader results = cmd.ExecuteReader();
            try
            {
                while (results.Read())
                {

                    DateTime dt = new DateTime();
                    String.Format("{0:d/M/yyyy HH:mm:ss}", dt);
                    dt = Convert.ToDateTime(results.GetString(0));
                    if (DateTime.Now.CompareTo(dt) > 0)
                    {
                        TimeSpan ts = DateTime.Today - dt;
                        return fine = results.GetDecimal(1)+(ts.Days * 0.3m);
                    }

                }
            }
            catch (SqlException e)
            {

            }
            
            return 0.0m;
        }
        public string SaveResourceAccessData(Fine f)
        {
            string query = "select r_access_id,renewals from ResourceAccess where resource_id = '" + f.ResourceID + "' and user_id='" + f.ReaderID + "'";
            DatabaseOperator db = new DatabaseOperator();
            SqlCommand cmd = new SqlCommand(query,db.getConnection());
            SqlDataReader dr = cmd.ExecuteReader();
            
            
                while (dr.Read())
                {
                    f.ResourceAccessID = dr.GetInt32(0);
                    if (f.ResourceAccessID.ToString() != null)
                    {
                        string d = Convert.ToString(String.Format("{0:d/M/yyyy HH:mm:ss}", DateTime.Now));
                        /*
                         *Continue implement coding after doing the login with session 
                         * 
                         */
                        
                        int renewals = dr.GetInt32(1);
                        if (renewals < 2)
                        {
                            query = "update ResourceAccess set return_date='" + d + "',status='renewed',return_location='" + HttpContext.Current.Session["LibraryID"] + "',renewals=" + renewals + 1 + " where r_access_id=" + f.ResourceAccessID + "";
                            cmd = new SqlCommand(query, db.getConnection());
                            cmd.ExecuteNonQuery();
                            return "RENEWAL SUCCESSFUL!";
                        }
                        return "CANNOT RENEW MORE THAN TWO TIMES !";

                    }
                    else
                    {
                        return "NO RESOURCES WERE WITHDRAWN BY THE USER";
                    }

                }

            return "DATABASE ERROR!";
        }
        public void SaveExistingFines(Fine f)
        {
            DatabaseOperator db = new DatabaseOperator();
            f.Fines=f.CalculateFine(f.ReaderID,f.ResourceID);
            string query = "update Fine set fine="+f.Fines+",description='"+f.Description+"' where user_id='" + f.ReaderID + "'";
            SqlCommand cmd = new SqlCommand(query, db.getConnection());
            cmd.ExecuteNonQuery();
        }
        public void SaveNewFines(Fine f)
        {
            DatabaseOperator db = new DatabaseOperator();
            string query = "insert into Fine (r_access_id,fine,description,emp_id) values ('"+f.ResourceAccessID+"',"+f.Fines+",'"+f.Description+"','"+f.ReaderID+"')";
            if (CheckForAvailableFines(f.ReaderID))
            {
                SaveExistingFines(f);
            }
            else
            {
                SqlCommand cmd = new SqlCommand(query, db.getConnection());
                cmd.ExecuteNonQuery();
            }
        }
        public bool CheckForAvailableFines(string id)
        {
            string query= "select * from Fine where user_id='"+id+"'";
            DatabaseOperator db = new DatabaseOperator();
            SqlCommand cmd = new SqlCommand(query,db.getConnection());
            SqlDataReader results = cmd.ExecuteReader();
            while(results.Read()){
                if (results.GetString(4) == id)
                {
                    fine = results.GetDecimal(2);
                    return true;
                }
            }
            return false;
        }
    }
}