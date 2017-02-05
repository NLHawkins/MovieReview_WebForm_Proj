using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MovieReview_WebForm_Proj.Models
{
    public class Review
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public virtual Movie Movie { get; set; }
        public int MovieId { get; set; }
        public int Rating { get; set; }
        

        
    }
}