using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MovieReview_WebForm_Proj.Models
{
    public class Movie
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Genre { get; set; }
        public string Link { get; set; }
        public string Release { get; set; }
    }
}