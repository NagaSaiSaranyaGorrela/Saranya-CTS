using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCruiser.Dao;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Utility;

namespace MovieCruiser
{
    public partial class EditMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    //MovieDaoCollection movieDao = new MovieDaoCollection();
                    MovieDaoCollection.MovieListInitialization();
                    int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    Movie obj = (from x in MovieDaoCollection.movielist
                                 where x.Id == id
                                 select x).FirstOrDefault();
                    if (obj != null)
                    {
                        TextBox1.Text = obj.Title;
                        TextBox2.Text = obj.BoxOffice.ToString();
                        if (obj.Active)
                        {
                            RadioButton1.Checked = true;
                        }
                        else
                        {
                            RadioButton2.Checked = true;
                        }
                        TextBox3.Text = obj.DateOfLaunch.ToString();
                        DropDownList1.SelectedValue = obj.Genre;
                        if (obj.HasTeaser)
                        {
                            CheckBox1.Checked = true;
                        }
                        else
                        {
                            CheckBox1.Checked = false;
                        }

                        //movieDao.movieList.Where(w => w.Id == id).ToList().ForEach(i =>
                        //{
                        //    i.Title = txtTitle.Text;
                        //    i.BoxOffice = Convert.ToInt64(txtGross.Text);
                        //    i.Active = Convert.ToBoolean(RadioBtnYes.Text);
                        //    i.DateOfLaunch = DateUtility.ConvertToDate(txtDateOfLaunch.Text);
                        //    i.Genre = Genre.SelectedValue;
                        //    i.HasTeaser = Convert.ToBoolean(HasTeaser.Text);
                        //});

                    }
                }
            }
                    
        }

                protected void Button1_Click(object sender, EventArgs e)
                {
            //MovieDaoCollection movieDao = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            //Movie obj = (from x in movieDao.movieList
            //             where x.Id == id
            //             select x).FirstOrDefault();
            Boolean active;
            Boolean hasTeaser;
            if (RadioButton1.Text == "Yes")
            {
                active = true;
            }
            else
            {
                active = false;
            }

            if (CheckBox1.Checked)
            {
                hasTeaser = true;
            }
            else
            {
                hasTeaser = false;
            }
            MovieDaoCollection.movielist.Where(w => w.Id == id).ToList().ForEach(i =>
            {
                i.Title = TextBox1.Text;
                i.BoxOffice = TextBox2.Text;
                i.Active = active;
                i.DateOfLaunch = DateUtility.ConvertToDate(TextBox3.Text);
                i.Genre = DropDownList1.SelectedValue;
                i.HasTeaser = hasTeaser;
            });


            Response.Redirect("EditMovieStatus.aspx");
        }
    }
}