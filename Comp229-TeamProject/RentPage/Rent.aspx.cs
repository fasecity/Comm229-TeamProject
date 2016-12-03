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
    public partial class Rent : System.Web.UI.Page
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

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {

        }
    }
}