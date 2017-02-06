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

        public Movie movieInstance;
        public List<Movie> Movies;
        int movieId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                movieId = int.Parse(Request.QueryString["id"]);
            }
            else
            {
                movieId = int.Parse(Request.Form["movieId"]);
            }
            using (var db = new MRContext())
            {

                Movies = db.Movies.ToList();
                movieInstance = db.Movies.Where(i => i.Id == movieId).First();

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
