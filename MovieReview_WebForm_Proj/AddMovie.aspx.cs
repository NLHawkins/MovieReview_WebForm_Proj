using MovieReview_WebForm_Proj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReview_WebForm_Proj
{
    public partial class AddMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form.AllKeys.Contains("movieTitle"))
            {
                using (var db = new MRContext())
                {
                    var movie = new Movie
                    {
                        Title = Request.Form["movieTitle"],
                        Genre = Request.Form["movieGenre"],
                        Link = Request.Form["movieLink"],
                        Release = Request.Form["movieRelease"]
                    };
                    db.Movies.Add(movie);
                    db.SaveChanges();
                    Response.Redirect("MoviePage.aspx");
                }
            }


        }
    }
}