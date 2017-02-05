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
    public partial class MoviePage : System.Web.UI.Page
    {
        public static List<Movie> Movies;
        public Movie movieInstance;

        protected void Page_Load(object sender, EventArgs e)
        {
            //var movieName = Request.QueryString["id"]; 
            using (var db = new MRContext())
            {
                //movieInstance = db.Movies.First(n => n.Title == movieName);
                //if (IsPostBack)
                {
                    Movies = db.Movies.ToList();
                    /*
                    movieInstance.Title = Request.Form["title"];
                   movieInstance.Genre = Request.Form["genre"];
                    movieInstance.Link = Request.Form["link"];
                    movieInstance.Release = Request.Form["release"];

                    db.Entry(movieInstance).State = EntityState.Modified;
                    db.SaveChanges();
                    Response.Redirect("Default.aspx");
                    */
                }
            } 

        }
    }
}