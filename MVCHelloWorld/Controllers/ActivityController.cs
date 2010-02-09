using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MVCHelloWorld.Models;

namespace MVCHelloWorld.Controllers
{
    public class ActivityController : Controller
    {
        ActivityRepository repo = new ActivityRepository();
        //
        // GET: /Activity/

        public ActionResult Index()
        {
            var activities = repo.GetActivities().ToList();
            return View("Index", activities);
        }

        //
        // GET: /Activity/Details/5

        public ActionResult Details(int id)
        {
            var activity = repo.GetActivity(id);
            if (activity == null)
                return View("NotFound");
            List<string> people = new List<string>{"Dave"};
            return View("Details", activity );
        }

        //
        // GET: /Activity/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Activity/Create

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Activity/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Activity/Edit/5

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}