using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data.SqlClient;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using TP035539_FYP.Class_structure;
using System.Data;
using Microsoft.Reporting;
using Microsoft.Reporting.WebForms;
using TP035539_FYP.Class_structure;
namespace TP035539_FYP
{
    public partial class ChiefLibrarianStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void MonthlyReportDisplay_Click(object sender, EventArgs e)
        {
            monthlyReport.Reset();
            DataTable dt = GetData();
            ReportDataSource ds = new ReportDataSource("DataSet1", dt);
            monthlyReport.LocalReport.DataSources.Add(ds);
            monthlyReport.LocalReport.ReportPath = "Report1.rdlc";
            monthlyReport.LocalReport.Refresh();
             
           
        }
        private DataTable GetData()
        {
            
            DataTable dt = new DataTable();
            Class_structure.DatabaseOperator db = new Class_structure.DatabaseOperator();
            SqlCommand cmd = new SqlCommand("MonthlyWiseFines", db.getConnection());
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            return dt;
            
        }
        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }
        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            MainView.ActiveViewIndex = 3;
        }
        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void generate_Click(object sender, EventArgs e)
        {
            string query = "select U.user_id,U.name,U.library_id,U.p_number, F.fine, F.description from LIbUser AS U INNER JOIN Fine AS F ON U.user_id = '" + memberID.Text + "'";
            Class_structure.DatabaseOperator db = new Class_structure.DatabaseOperator();
            SqlCommand cmd = new SqlCommand(query, db.getConnection());
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                if (dr.GetInt32(0).ToString() == "")
                {
                    errorLabel.Text = "Error! No member available for the specified ID !";
                }
                else
                {
                    using (StringWriter sw = new StringWriter())
                    {
                        using (HtmlTextWriter ht = new HtmlTextWriter(sw))
                        {
                            StringBuilder sb = new StringBuilder();
                            memID.Visible = true;
                            reportMemberID.Text = dr.GetInt32(0).ToString();
                            reportMemberID.Visible = true;
                            reportPhoneNumber.Text = dr.GetString(3);
                            reportPhoneNumber.Visible = true;
                            reportMemberName.Visible = true;
                            reportMemberName.Text = dr.GetString(1);
                            reportMemberName.Visible = true;
                            reportLibraryID.Text = dr.GetString(2);
                            reportLibraryID.Visible = true;
                            reportMemberFine.Text = dr.GetDecimal(4).ToString();
                            reportMemberFine.Visible = true;
                            reportFineDesc.Text = dr.GetString(5);
                            reportFineDesc.Visible = true;
                            sb.Append("<html><body><h1>" + memID.Text + reportMemberID.Text + "</h1>");
                            sb.Append("<br />");
                            sb.Append("<h2>" + label_name.Text + reportMemberName.Text + "</h2>");
                            sb.Append("<br />");
                            sb.Append("<h2>" + reportPhoneNumber.Text + "</h2>");
                            sb.Append("<br />");
                            sb.Append("<h3>" + reportLibraryID.Text + "</h3>");
                            sb.Append("<br />");
                            sb.Append("<h1>" + reportMemberFine.Text + "</h1>");
                            sb.Append("<p>" + reportFineDesc.Text + "</p></body></html>");

                            StringReader sr = new StringReader(sb.ToString());
                            Document pdfDoc = new Document(PageSize.B5, 10f, 10f, 10f, 0f);
                            HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
                            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                            pdfDoc.Open();
                            htmlParser.Parse(sr);
                            pdfDoc.Close();
                            Response.ContentType = "application/pdf";
                            Response.AddHeader("content-disposition", reportMemberID + ".pdf");
                            Response.Cache.SetCacheability(HttpCacheability.NoCache);
                            Response.Write(pdfDoc);
                            Response.End();

                        }
                    }
                }
            }
        }
    }
}