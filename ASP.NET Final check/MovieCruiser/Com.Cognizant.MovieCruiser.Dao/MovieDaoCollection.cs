using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Utility;

namespace Com.Cognizant.MovieCruiser.Dao
{
    public class MovieDaoCollection : IMovieDao
    {
        public static List<Movie> movielist = null;
        static public void MovieListInitialization()
        {
            if (movielist == null)
            {
                movielist = new List<Movie>()
        {

             new Movie() { Id=1, Title="Avatar",BoxOffice="$2,787,965,087",
             Active=true,DateOfLaunch=DateUtility.ConvertToDate("15/03/2017"),
                 Genre="Science Fiction", HasTeaser=true},
              new Movie() { Id=2, Title="The Avengers",BoxOffice="$1,518,812,988",
             Active=true, DateOfLaunch = DateUtility.ConvertToDate("23/12/2017"),
                 Genre="Superhero", HasTeaser=false},
               new Movie() { Id=3, Title="Titanic",BoxOffice="$2,187,463,944",
             Active=true, DateOfLaunch = DateUtility.ConvertToDate("21/08/2017"),
                 Genre="Romance", HasTeaser=false},
                new Movie() { Id=4, Title="Jurassic World" , BoxOffice="$1,617,713,208",
             Active=false, DateOfLaunch = DateUtility.ConvertToDate("02/07/2017"),
                 Genre="Science Fiction", HasTeaser=true},
              new Movie() { Id=5, Title="Avengers" , BoxOffice="$2,750,760,348",
             Active=false, DateOfLaunch = DateUtility.ConvertToDate("02/11/2022"),
                 Genre="Superhero", HasTeaser=true},

        };
            }
        }
        public Movie GetMovie(int MovieId)
        {
            Movie m = new Movie();
            foreach (Movie movie in movielist)
            {
                if (MovieId == movie.Id)
                    m = movie;

            }
            return m;
        }

        public List<Movie> GetMovieListAdmin()
        {
            return movielist;
        }

        public List<Movie> GetMovieListCustomer()
        {
            return movielist;
        }

        public void ModifyMovie(Movie movie)
        {
            foreach (Movie m in movielist)
            {
                if (m == movie)
                {
                    Console.WriteLine("Enter The Title you want to edit");
                    m.Title = Console.ReadLine();
                    Console.WriteLine("Enter Boxoffice");
                    m.BoxOffice = Console.ReadLine();
                    Console.WriteLine("Enter Active");
                    m.Active = Convert.ToBoolean(Console.ReadLine());
                    Console.WriteLine("Enter Dateoflaunch");
                    m.DateOfLaunch = DateUtility.ConvertToDate(Console.ReadLine());
                    Console.WriteLine("Enter genre");
                    m.Genre = Console.ReadLine();
                    Console.WriteLine("Enter Hasteaser");
                    m.HasTeaser = Convert.ToBoolean(Console.ReadLine());
                    Console.WriteLine("Selected Record Updated Succesfully");
                }
            }
        }
    }

}
