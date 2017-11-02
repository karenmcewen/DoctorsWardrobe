using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoctorsWardrobe.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Welcome to the TARDIS!";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact the Human Developer";

            return View();
        }
    }
}