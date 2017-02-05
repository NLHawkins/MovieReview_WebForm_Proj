using MovieReview_WebForm_Proj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReview_WebForm_Proj
{
    public partial class CreateReview : System.Web.UI.Page
    {
        public int idCheck;
        public Movie movieInstance;
        public List<Movie> Movies;
        protected void Page_Load(object sender, EventArgs e)
        {

            var movieId = int.Parse(Request.QueryString["id"]);
            var movieName = Request.Form["reviewMovieName"];
            using (var db = new MRContext())
            {
                if(movieName == null)
                {
                    movieInstance = db.Movies.First(n => n.Id == movieId);
                }
                else
                {
                    movieInstance = db.Movies.First(n => n.Title == movieName);
                }
                
               Movies = db.Movies.ToList();

               if (IsPostBack)
                {

                
                    var review = new Review
                    {
                        MovieId = movieInstance.Id,
                        Name = Request.Form["reviewerName"],
                        Rating = int.Parse(Request.Form["rating"]),
                        Movie = movieInstance,


                    };
                    db.Reviews.Add(review);
                    db.SaveChanges();

                    Response.Redirect("Default.aspx");

                }
                
            }
        }
    }
}