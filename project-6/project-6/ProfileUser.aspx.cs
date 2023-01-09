using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project_6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static dynamic image1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                userEdit.Visible = false;
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-PND235Q\\SQLEXPRESS01; database = eldaryDB  ; integrated security=SSPI");
                connection.Open();
                SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{2}' ", connection);
                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Image1.ImageUrl = $"{sdr[15].ToString()}";
                    //img width = '30px height='30px src = '{sdr[15]}' 
                    name.Text = sdr[17].ToString();
                    email.Text = sdr[1].ToString();
                    name1.Text = sdr[17].ToString();
                    address.Text = sdr[14].ToString();
                    city.Text = sdr[12].ToString();
                    gender.Text = sdr[13].ToString();
                    mobile.Text = sdr[5].ToString();
                    emargency.Text = sdr[16].ToString();



                }
                connection.Close();

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
               
                SqlConnection connection = new SqlConnection("data source =  DESKTOP-PND235Q\\SQLEXPRESS01; database = eldaryDB  ; integrated security=SSPI");


                SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{2}' ", connection);
                connection.Open();
                SqlDataReader sdr = command.ExecuteReader();
                while (sdr.Read())
                {
                    Image1.ImageUrl = $"{sdr[15].ToString()}";
           
                    //name2.Text = sdr[17].ToString();
                    //email.Text = sdr[1].ToString();
                    //name1.Text = sdr[17].ToString();
                    //address1.Text = sdr[14].ToString();
                    //city2.Text = sdr[12].ToString();
                    //gender2.Text = sdr[13].ToString();
                    //mobile2.Text = sdr[5].ToString();
                    //emargency2.Text = sdr[16].ToString();



                }
                connection.Close();
                if (FileUpload1.HasFile)
                {


                    string folderpath = Server.MapPath("~/img/");
                    if (!Directory.Exists(folderpath))
                    {
                        Directory.CreateDirectory(folderpath);
                    }
                    FileUpload1.SaveAs(folderpath + FileUpload1.FileName);
                    Image1.ImageUrl = "img/" + FileUpload1.FileName;
                    image1 = FileUpload1.FileName;

                }
                else
                {
                    image1 = Session["Imagealt"];
                }





                SqlCommand command1= new SqlCommand($"update AspNetUsers set PhoneNumber=@mobile,Name=@name,city=@city,address=@address,gender=@gender,emergance_contact=@emerg,imgSrc='img/{image1}' where Id='{2}'", connection);
                connection.Open();
                command1.Parameters.AddWithValue("@mobile", mobile2.Text);
                command1.Parameters.AddWithValue("@name", name2.Text);
                command1.Parameters.AddWithValue("@city", city2.Text);
                command1.Parameters.AddWithValue("@address", address1.Text);
                command1.Parameters.AddWithValue("@gender", gender2.Text);
                command1.Parameters.AddWithValue("@emerg", emargency2.Text);
                command1.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload1.HasFile)
                {


                    string folderpath = Server.MapPath("~/img/");
                    if (!Directory.Exists(folderpath))
                    {
                        Directory.CreateDirectory(folderpath);
                    }
                    FileUpload1.SaveAs(folderpath + FileUpload1.FileName);
                    Image1.ImageUrl = "img/" + FileUpload1.FileName;
                    image1 = FileUpload1.FileName;

                }
                else
                {
                    image1 = Session["Imagealt"];
                }

            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            userEdit.Visible = true;
            userInfo.Visible = false;

            SqlConnection connection = new SqlConnection("data source =  DESKTOP-PND235Q\\SQLEXPRESS01; database = eldaryDB  ; integrated security=SSPI");
            connection.Open();

            SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{2}' ", connection);
            SqlDataReader sdr = command.ExecuteReader();
            while (sdr.Read())
            {
                //Image1.ImageUrl = $"{sdr[15].ToString()}";
                ////img width = '30px height='30px src = '{sdr[15]}' 
                name2.Text = sdr[17].ToString();
                //email.Text = sdr[1].ToString();
                name1.Text = sdr[17].ToString();
                address1.Text = sdr[14].ToString();
                city2.Text = sdr[12].ToString();
                gender2.Text = sdr[13].ToString();
                mobile2.Text = sdr[5].ToString();
                emargency2.Text = sdr[16].ToString();



            }
            connection.Close();












        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (IsPostBack) {
            userEdit.Visible = true;
                Response.Redirect("http://localhost:51359/ProfileUser.aspx");

                //SqlConnection connection = new SqlConnection("data source =  DESKTOP-PND235Q\\SQLEXPRESS01; database = eldaryDB  ; integrated security=SSPI");
                //connection.Open();
                //SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{2}' ", connection);
                //SqlDataReader sdr = command.ExecuteReader();
                //while (sdr.Read())
                //{
                //    Image1.ImageUrl = $"{sdr[15].ToString()}";
                //    //img width = '30px height='30px src = '{sdr[15]}' 
                //    name.Text = sdr[17].ToString();
                //    email.Text = sdr[1].ToString();
                //    name1.Text = sdr[17].ToString();
                //    address.Text = sdr[14].ToString();
                //    city.Text = sdr[12].ToString();
                //    gender.Text = sdr[13].ToString();
                //    mobile.Text = sdr[5].ToString();
                //    emargency.Text = sdr[16].ToString();



                //}
                //connection.Close();
            }
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                userEdit.Visible = true;
                Response.Redirect("http://localhost:51359/ProfileUser.aspx");

                //SqlConnection connection = new SqlConnection("data source =  DESKTOP-PND235Q\\SQLEXPRESS01; database = eldaryDB  ; integrated security=SSPI");
                //connection.Open();
                //SqlCommand command = new SqlCommand($"select * from AspNetUsers WHERE Id='{2}' ", connection);
                //SqlDataReader sdr = command.ExecuteReader();
                //while (sdr.Read())
                //{
                //    Image1.ImageUrl = $"{sdr[15].ToString()}";
                //    //img width = '30px height='30px src = '{sdr[15]}' 
                //    name.Text = sdr[17].ToString();
                //    email.Text = sdr[1].ToString();
                //    name1.Text = sdr[17].ToString();
                //    address.Text = sdr[14].ToString();
                //    city.Text = sdr[12].ToString();
                //    gender.Text = sdr[13].ToString();
                //    mobile.Text = sdr[5].ToString();
                //    emargency.Text = sdr[16].ToString();



                //}
                //connection.Close();
            }
        }
    }
}