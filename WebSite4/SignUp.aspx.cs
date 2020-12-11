using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-18EL7L1;Initial Catalog=typroject;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void Check_SignUp(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            String query = "select count(*) from SignUp where AdminMail='" + textBox5.Text + "'or Username='" + textBox7.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            String output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Label1.Text += "User is already Registered";
            }

            else

            {
                String query2 = "Insert into SignUp (NameOfInstitute,Password,Repass,AdminName,Username,AdminMail,AdminPass) values (@a,@b,@c,@d,@e,@f,@g)";
                cmd = new SqlCommand(query2, con);
                cmd.Parameters.AddWithValue("a", textBox1.Text);
                cmd.Parameters.AddWithValue("b", textBox2.Text);
                cmd.Parameters.AddWithValue("c", textBox3.Text);
                cmd.Parameters.AddWithValue("d", textBox4.Text);
                cmd.Parameters.AddWithValue("e", textBox7.Text);
                cmd.Parameters.AddWithValue("f", textBox5.Text);
                cmd.Parameters.AddWithValue("g", textBox6.Text);
                cmd.ExecuteNonQuery();

                string filename = Server.MapPath("~/Event.html");
                string mailbody = System.IO.File.ReadAllText(filename);
                mailbody = mailbody.Replace("##NAME##", textBox1.Text);
                mailbody = mailbody.Replace("##Username##", textBox7.Text);
                string to = textBox5.Text;
                string from = "aradhana.mehra26@gmail.com";
                MailMessage message = new MailMessage(from, to);
                message.Subject = "Welcome to Quick Seat";
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                System.Net.NetworkCredential basicCredential = new System.Net.NetworkCredential("aradhana.mehra26@gmail.com", "Diamond!@#");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicCredential;
                client.Send(message);
                Label1.Text += "Check your Email id in order to verify your account";
                Session["Username"] = textBox7.Text;
                con.Close();



            }


        }

        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString(); 

        }
    }
         private string FetchUserId(string emailId)
    {
        SqlCommand cmd = new SqlCommand();
        String s1 = textBox5.Text;
        cmd = new SqlCommand("SELECT Username FROM SignUp WHERE AdminMail='"+s1+"'", con);
        con.Open();
        string UserID = Convert.ToString(cmd.ExecuteScalar());
        con.Close();
        cmd.Dispose();
        return UserID;
    }






}