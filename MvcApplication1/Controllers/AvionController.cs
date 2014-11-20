using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class AvionController : Controller
    {
        private MvcApplication1.Models.dbEntities db = new dbEntities(); 

        public ActionResult Index()
        {
            var avion = db.aviones.ToList();
            return View(avion);
        }

        //
        // GET: /Avion/Details/5

        public ActionResult Details(int id)
        {
            aviones tip = db.aviones.FirstOrDefault(u => u.id_aviones == id);
            return View(tip);
        }

        //
        // GET: /Avion/Create

        public ActionResult Create()
        {
            ViewData["tipos"] = new SelectList(db.tipo.ToList(), "id_tipo", "nombre");
            return View();
        } 

        //
        // POST: /Avion/Create

        [HttpPost]
        
        public ActionResult Create(aviones collection)
        {
            try
            {
                // TODO: Add insert logic here
                db.AddToaviones(collection);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Avion/Edit/5
 
        public ActionResult Edit(int id)
        {
            ViewData["tipos"] = new SelectList(db.tipo.ToList(), "id_tipo", "nombre");
            aviones tip = db.aviones.FirstOrDefault(u => u.id_aviones == id);
            return View(tip);
        }

        //
        // POST: /Avion/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                aviones tip = db.aviones.FirstOrDefault(u => u.id_aviones == id);
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
        // GET: /Avion/Delete/5
 
        public ActionResult Delete(int id)
        {
            aviones tip = db.aviones.FirstOrDefault(u => u.id_aviones == id);
            return View(tip);
        }

        //
        // POST: /Avion/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                aviones tip = db.aviones.FirstOrDefault(u => u.id_aviones == id);
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
