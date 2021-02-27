using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCruiser.Dao;

namespace MovieCruiser
{
    public partial class MovieListAdmin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieDaoCollection movieDaoCollections = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            GridView1.DataSource = MovieDaoCollection.movielist;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}