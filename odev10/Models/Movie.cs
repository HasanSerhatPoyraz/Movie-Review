using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace webProje.Models
{
    public class Movie 
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }

        public string shortDescription { get; set; }
        public string Description { get; set; }
        public string ImageUrl { get; set; }
        public int CategoryId { get; set; }

    }
}
