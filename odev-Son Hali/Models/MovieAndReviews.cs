using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace webProje.Models
{

    public class MovieAndReviews
    {
        public Movie Movie { get; set; }
        public Review Review { get; set; }
        public IEnumerable<Movie> Movies { get; set; }
        public IEnumerable<Review> Reviews { get; set; }
    }
}
