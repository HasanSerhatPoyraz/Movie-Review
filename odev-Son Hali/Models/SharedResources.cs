using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace webProje.Models
{
    public class SharedResources : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
