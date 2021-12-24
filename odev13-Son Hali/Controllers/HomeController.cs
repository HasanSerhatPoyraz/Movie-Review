using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using webProje.Data;
using webProje.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using System.Net;
using Microsoft.Extensions.Localization;
using Microsoft.AspNetCore.Mvc.Localization;
using Microsoft.AspNetCore.Localization;

namespace webProje.Controllers
{
    public class HomeController : Controller
    {
        


        ApplicationDbContext context = new ApplicationDbContext();

        private readonly IHtmlLocalizer<HomeController> _localizer;
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger, IHtmlLocalizer<HomeController> localizer)
        {
            _localizer = localizer;
            _logger = logger;
        }
        

        [HttpPost]
        public IActionResult CultureManagement(string culture,string returnUrl)
        {
            Response.Cookies.Append(CookieRequestCultureProvider.DefaultCookieName, CookieRequestCultureProvider.MakeCookieValue(new RequestCulture(culture)),
                new CookieOptions { Expires = DateTimeOffset.Now.AddDays(30) });
            return LocalRedirect(returnUrl);

        }
        public IActionResult Index(int? id)
        {
            //var test = _localizer["deneme"];
            //ViewData["deneme"] = test;
            //cshtml dosyasında @localizer yerine vievdata yazarak da kullanılıyor

            var movies = context.Movies.ToList();
            if (id != null)
            {
                movies = movies.Where(i => i.CategoryId == id).ToList();
            }
            return View(movies);
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult authenticationPanel()
        {
            return View();
        }
        public IActionResult Details(int id)
        {      
            MovieAndReviews model = new MovieAndReviews();
            var movies = context.Movies.ToList();
            var movie = movies.First(i => i.Id == id);

            model.Movie = movie;
            model.Reviews = context.Reviews.Where(i => i.MovieId == movie.Id).ToList();
            

            return View(model);
        }
        [HttpPost]
        public IActionResult Details(int id, Review review)
        {
            review.MovieId = id;
            review.UserName = User.Identity.Name;

            context.Reviews.Add(review);
            context.SaveChanges();


            MovieAndReviews model = new MovieAndReviews();
            var movies = context.Movies.ToList();
            var movie = movies.First(i => i.Id == id);

            model.Movie = movie;
            model.Reviews = context.Reviews.Where(i => i.MovieId == movie.Id).ToList();
           

            
            return View(model);
        }

        public IActionResult adminPanel(int? id)
        {
            var movies = context.Movies.ToList();
            if (id != null)
            {
                movies = movies.Where(i => i.CategoryId == id).ToList();
            }
            return View(movies);
            
        }
        
        public IActionResult Addmovie()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Addmovie(Movie newMovie)
        {
            context.Movies.Add(newMovie);
            context.SaveChanges();
            return RedirectToAction("adminPanel");
        }
        
        public IActionResult Addcategory()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Addcategory(Category newCat)
        {
            context.Categories.Add(newCat);
            context.SaveChanges();
            return RedirectToAction("adminPanel");
        }

        [HttpGet]
        public IActionResult UpdateMovie(int id)
        {
            var model = context.Movies.First(i => i.Id == id);
            return View(model);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult UpdateMovie(int id,Movie UpMovie)
        {

            var model = context.Movies.First(k=>k.Id==id);
            model.Name = UpMovie.Name;
            model.shortDescription = UpMovie.shortDescription;
            model.Description = UpMovie.Description;
            model.ImageUrl = UpMovie.ImageUrl;
            model.CategoryId = UpMovie.CategoryId;
            context.SaveChanges();

            return RedirectToAction("adminPanel");
        }


        // GET: /Movies/Delete/5
        public ActionResult DeleteMovie(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            //Movie movie = context.Movies.Find(id);
            var model = context.Movies.First(i => i.Id == id);
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }
  
        // POST: /Movies/Delete/5
        [HttpPost/*, ActionName("Delete")*/]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteMovie(IFormCollection fcNotUsed, int id)
        {
        //    Movie movie = context.Movies.Find(id);
        var model = context.Movies.First(k => k.Id == id);
        context.Movies.Remove(model);
            context.SaveChanges();
            return RedirectToAction("adminPanel");
        }

        private ActionResult HttpNotFound()
        {
            throw new NotImplementedException();
        }

        public ActionResult DeleteReview(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            
            var model = context.Reviews.First(i => i.Id == id);
            if (model == null)
            {
                return HttpNotFound();
            }
            return View(model);
        }

        // POST: /Reviews/Delete/5
        [HttpPost/*, ActionName("Delete")*/]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteReview(IFormCollection fcNotUsed, int id)
        {
           
            var model = context.Reviews.First(k => k.Id == id);
            context.Reviews.Remove(model);
            context.SaveChanges();
            return RedirectToAction("adminPanel");
        }

        


        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
