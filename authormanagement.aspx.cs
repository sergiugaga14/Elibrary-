using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibrary
{
    public partial class authormanagement : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkAuthorExists())
            {
                Response.Write("<script>alert('The author id already exists, try another ID');</script>");
            }
            else
            {
                addNewAuthor();
            }
        }
        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkAuthorExists())
            {
                updateAuthor();
                
            }
            else
            {
                Response.Write("<script>alert('There is no author with that ID.');</script>");
            }
        }
        //delete button
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkAuthorExists())
            {
                deleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('There is no author with that ID.');</script>");
            }
        }
        //go button
        protected void Button4_Click(object sender, EventArgs e)
        {
            getAuthorById();
        }
        void addNewAuthor()
        {
            try
            {
               
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into author_master_tbl (author_id,author_name) " +
                    "values (@author_id, @author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox4.Text.Trim());
            
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('The author was successfully added!');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        void updateAuthor()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update author_master_tbl SET author_name=@author_name where author_id=@author_id", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox4.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('The author was successfully updated!');</script>");
                clearForm();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        void deleteAuthor()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete  from author_master_tbl where author_id=@author_id", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox3.Text.Trim());
              
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('The author was successfully deleted!');</script>");
                clearForm();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        void clearForm()
        {
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        bool checkAuthorExists()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id='" + TextBox3.Text.Trim() + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }

        void getAuthorById()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from author_master_tbl where author_id='" + TextBox3.Text.Trim() + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text=dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('There is no author with that ID.');</script>");
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                
            }

        }
    }
}