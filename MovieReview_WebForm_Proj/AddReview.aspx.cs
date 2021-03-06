﻿using MovieReview_WebForm_Proj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReview_WebForm_Proj
{
    public partial class AddReview : System.Web.UI.Page
    {
        public Movie movieInstance;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Form.AllKeys.Contains("reviewMovieName"))
            {
            var movieId = int.Parse(Request.Form["movieId"]);
            using (var db = new MRContext())
                {
                movieInstance = db.Movies.Where(i => i.Id == movieId).First();
                var review = new Review
                    {
                        MovieId = movieInstance.Id,
                        Name = Request.Form["reviewerName"],
                        Rating = int.Parse(Request.Form["rating"]),
                        Movie = movieInstance,


                    };
                    db.Reviews.Add(review);
                    db.SaveChanges();

                }
            }
            Response.Redirect("Default.aspx");

        }
    }
}