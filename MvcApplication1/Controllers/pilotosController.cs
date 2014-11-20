using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class pilotosController : Controller
    {
        //
        private MvcApplication1.Models.dbEntities db = new dbEntities(); 

        public ActionResult Index()
        {
            var piloto = db.pilotos.ToList();
            return View(piloto);
        }

        //
        // GET: /pilotos/Details/5

        public ActionResult Details(int id)
        {
            pilotos tip = db.pilotos.FirstOrDefault(u => u.id_piloto == id);
            return View(tip);
        }

        //
        // GET: /pilotos/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /pilotos/Create

        [HttpPost]
        public ActionResult Create(pilotos collection)
        {
            try
            {
                // TODO: Add insert logic here
                db.AddTopilotos(collection);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                return View();
            }
        }
        
        //
        // GET: /pilotos/Edit/5
 
        public ActionResult Edit(int id)
        {
            pilotos tip = db.pilotos.FirstOrDefault(u => u.id_piloto == id);
            return View(tip);
        }

        //
        // POST: /pilotos/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                pilotos tip = db.pilotos.FirstOrDefault(u => u.id_piloto == id);
                UpdateModel(tip);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /pilotos/Delete/5
 
        public ActionResult Delete(int id)
        {
            pilotos tip = db.pilotos.FirstOrDefault(u => u.id_piloto == id);
            return View(tip);
        }

        //
        // POST: /pilotos/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                pilotos tip = db.pilotos.FirstOrDefault(u => u.id_piloto == id);
                db.DeleteObject(tip);
                db.SaveChanges();
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
