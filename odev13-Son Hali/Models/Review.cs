using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace webProje.Models
{
    public class Review 
    {
        [Key]
        public int Id { get; set; }
        public string UserName { get; set; }
        public int MovieId { get; set; }
        public string HeadLine { get; set; }
        public string Comment { get; set; }
        public string Rating { get; set; }

    }
}
