using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace TP035539_FYP.Class_structure
{
    class DatabaseOperator
    {
        string connectionString = "Data Source=SHS\\SQLEXPRESS;Initial Catalog=LibDB;Integrated Security=True";
      SqlConnection connection;
      DatabaseOperator db;
      public void executeUpdateOperation(string q)
      {
          try
          {
              db = new DatabaseOperator();
              SqlCommand cmd = new SqlCommand(q, db.getConnection());
              cmd.ExecuteNonQuery();
          }
          catch (SqlException e)
          {
              Console.WriteLine(e.Message);
          }
          
      }
      public  SqlDataReader executeResultsOperation(String q){
          try
          {
              db = new DatabaseOperator();
              SqlCommand cmd = new SqlCommand(q, db.getConnection());
              return cmd.ExecuteReader();
          }
          catch (SqlException e)
          {
              Console.WriteLine(e.Message);
          }
          return null;
      }
        public SqlConnection getConnection(){
            
            if(db==null){
                connection = new SqlConnection(connectionString);
                connection.Open();
                return connection;
            }
            return connection;
        }
      public static void Main(string[] args)
      {
          DatabaseOperator db = new DatabaseOperator();
          db.getConnection();
          //db.executeResultsOperation("select * from User");
          Console.WriteLine(db.executeResultsOperation("select * from User").GetString(1));
          Console.ReadLine();
      }
    }
}
