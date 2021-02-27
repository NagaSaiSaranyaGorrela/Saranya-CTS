using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Dao;

namespace MovieCruiser
{
    public partial class MovieListCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieDaoCollection movieDaoCollections = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            GridView1.DataSource = MovieDaoCollection.movielist;
            GridView1.DataBind();
            if (Request.QueryString["id"] != null)
            {
                FavoritesDaoCollection favoritesDao = new FavoritesDaoCollection();
                FavoritesDaoCollection.FavoritesListInitialization();
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                Movie obj = (from x in MovieDaoCollection.movielist
                                                              where x.Id == id
                                                              select x).FirstOrDefault();
                if (obj != null)
                {
                    if (!FavoritesDaoCollection.favoritesMovieList.Contains(obj))
                    {
                        FavoritesDaoCollection.favoritesMovieList.Add(obj);
                    }
                    Boolean ShowPane1 = Convert.ToBoolean(Request.QueryString["ShowPanel"].ToString());
                    if (ShowPane1)
                    {
                        notification.Visible = true;
                    }
                }
            }

        }

    }

       
}
