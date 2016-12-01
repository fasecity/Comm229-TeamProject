using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_TeamProject
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection
              (ConfigurationManager.ConnectionStrings["Team_ProjectConnectionString"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                GridView1.DataSource = LoadGridView();
                GridView1.DataBind();
            }
        }
        private DataSet LoadGridView()
        {
            SqlDataAdapter adap = new SqlDataAdapter("SELECT * FROM [Games]", connection);
            DataSet ds = new DataSet();
            adap.Fill(ds);


            return ds;
        }


        protected void AddButton_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("INSERT INTO Games (Title, Genre, Price, Description,Review_score,Completed_status) VALUES(@Title, @Genre, @Price, @Description,@Review_score,@Completed_status)", connection);

            comm.Parameters.Add("@Title", System.Data.SqlDbType.VarChar);
            comm.Parameters["@Title"].Value = TextTitle.Text;

            comm.Parameters.Add("@Genre", System.Data.SqlDbType.VarChar);
            comm.Parameters["@Genre"].Value = TextGenre.Text;

            comm.Parameters.Add("@Price", System.Data.SqlDbType.Money);
            comm.Parameters["@Price"].Value = TextPrice.Text;

            comm.Parameters.Add("@Description", System.Data.SqlDbType.VarChar);
            comm.Parameters["@Description"].Value = TextDescription.Text;

            comm.Parameters.Add("@Review_score", System.Data.SqlDbType.Int);
            comm.Parameters["@Review_score"].Value = TextReview.Text;

            comm.Parameters.Add("@Completed_status", System.Data.SqlDbType.VarChar);
            comm.Parameters["@Completed_status"].Value = TextCompleted.Text;

            try
            {
                connection.Open();
                comm.ExecuteNonQuery();
                Response.Redirect("About.aspx");
            }
            //catch (Exception)
            //{

            //    Response.Write("<script> alert('error';
            //}

            finally {
                connection.Close();
            }

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    } 
}