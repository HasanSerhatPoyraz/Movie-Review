using Microsoft.AspNetCore.Mvc;
using webProje.Data;
using webProje.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace webProje.ViewComponents
{
    public class CategoryMenuViewComponent : ViewComponent
    {
        ApplicationDbContext c = new ApplicationDbContext();
       public IViewComponentResult Invoke()
        {
            if(RouteData.Values["action"].ToString()=="Index")
            ViewBag.SelectedCategory = RouteData?.Values["id"];
            return View(c.Categories.ToList());
        }
    }
}
