using MovieReview_WebForm_Proj.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReview_WebForm_Proj
{
    public partial class EditMovie : System.Web.UI.Page
    {
        public Movie movieInstance;
        public List<Movie> Movies;

        protected void Page_Load(object sender, EventArgs e)
        {

                var movieId = int.Parse(Request.QueryString["id"]);
                using (var db = new MRContext())
                {
                    movieInstance = db.Movies.First(n => n.Id == movieId);
                    if (IsPostBack)
                    {
                       
                        movieInstance.Genre = Request.Form["movieGenre"];
                        movieInstance.Link = Request.Form["movieLink"];
                        movieInstance.Release = Request.Form["movieRelease"];

                        db.Entry(movieInstance).State = EntityState.Modified;
                        db.SaveChanges();
                        Response.Redirect("MoviePage.aspx");
                    }

                Movies = db.Movies.ToList();
            }

            
        }
    }
}