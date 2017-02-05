using MovieReview_WebForm_Proj.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieReview_WebForm_Proj
{
    public partial class _default : System.Web.UI.Page
    {
       

        public List<Review> Reviews;
        public Review reviewInstance;
        public List<Movie> Movies;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new MRContext())
            {
                Reviews = db.Reviews.Include("Movie").ToList();
                Movies = db.Movies.ToList();
                


            } 

        }
    }
}