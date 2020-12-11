using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateCourse : System.Web.UI.Page
{

    SqlConnection con;
    
    string sqlconn;
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Creating object of datatable  
        DataTable tblcsv = new DataTable();
        //creating columns  
        tblcsv.Columns.Add("Sr. No.");
        tblcsv.Columns.Add("Name");
        tblcsv.Columns.Add("UID");
        string SaveLocation=" ";
        if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
        {
            string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            SaveLocation = Server.MapPath("Data") + "\\" + fn;
            try
            {
                FileUpload1.PostedFile.SaveAs(SaveLocation);
               
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
                //Note: Exception.Message returns a detailed message that describes the current exception. 
                //For security reasons, we do not recommend that you return Exception.Message to end users in 
                //production environments. It would be better to put a generic error message. 
            }
        }
        else
        {
            Response.Write("Please select a file to upload.");
        }

        //getting full file path of Uploaded file  
        string CSVFilePath = Path.GetFullPath(SaveLocation);
        //Reading All text  
        string ReadCSV = File.ReadAllText(CSVFilePath);
        //spliting row after new line  
       foreach (string csvRow in ReadCSV.Split('\n'))
        {
            if (!string.IsNullOrEmpty(csvRow))
            {
                //Adding each row into datatable  
                tblcsv.Rows.Add();
                int count = 0;
                foreach (string FileRec in csvRow.Split(','))
                {
                    tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;
                    count++;
                }
            }


        }
        //Calling insert Functions  
        InsertCSVRecords(tblcsv);
    }
    //Function to Insert Records  
    private void InsertCSVRecords(DataTable csvdt)
    {
        try
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
            //creating object of SqlBulkCopy    
            SqlBulkCopy objbulk = new SqlBulkCopy(con);
            //assigning Destination table name    
            objbulk.DestinationTableName = "Course";
            //Mapping Table column    
            objbulk.ColumnMappings.Add("Sr. No.", "Sr. No.");
            objbulk.ColumnMappings.Add("Name", "Name");
            objbulk.ColumnMappings.Add("UID", "UID");

            //inserting Datatable Records to DataBase    
            con.Open();
            objbulk.WriteToServer(csvdt);
            String query = "update course SET Coursename=@a WHERE Coursename is NULL";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("a", Text1.Text);
            cmd.ExecuteNonQuery();
            String query2 = "Insert into CourseCreate (Coursename,Department,CourseCode,Section) values (@a,@b,@c,@d)";
            SqlCommand cmd1 = new SqlCommand(query2, con);
            cmd1.Parameters.AddWithValue("a", Text1.Text);
            cmd1.Parameters.AddWithValue("b", Text3.Text);
            cmd1.Parameters.AddWithValue("c", Text5.Text);
            cmd1.Parameters.AddWithValue("d", Text4.Text);

            cmd1.ExecuteNonQuery();
            con.Close();
        }
        catch(Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }


    }
}