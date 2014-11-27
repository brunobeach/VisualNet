using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class PilotoAvionController : Controller
    {
        //
        private MvcApplication1.Models.dbEntities db = new dbEntities(); 

        public ActionResult Index()
        {
            ViewData["estado"] = "Activo";
            var pilotoavion = db.piloto_avion.ToList();
            return View(pilotoavion);
        }

        //
        // GET: /PilotoAvion/Details/5

        public ActionResult Details(int id)
        {
            piloto_avion tip = db.piloto_avion.FirstOrDefault(u => u.id_avion_piloto == id);
            ViewData["aviones"] = new SelectList(db.aviones.ToList(),"id_aviones", "nombre");
            return View(tip);

        }

        //
        // GET: /PilotoAvion/Create

        public ActionResult Create()
        {
            ViewData["pilotos"] = new SelectList(db.pilotos.ToList(), "id_piloto", "nombre");
            ViewData["aviones"] = new SelectList(db.aviones.ToList(), "id_aviones", "nombre");
            return View();
        } 

        //
        // POST: /PilotoAvion/Create

        [HttpPost]
        public ActionResult Create(piloto_avion collection)
        {
            try
            {
                // TODO: Add insert logic here
                db.AddTopiloto_avion(collection);
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                return View();
            }
        }
        
        //
        // GET: /PilotoAvion/Edit/5
 
        public ActionResult Edit(int id)
        {
            ViewData["pilotos"] = new SelectList(db.pilotos.ToList(), "id_piloto", "nombre");
            ViewData["aviones"] = new SelectList(db.aviones.ToList(), "id_aviones", "nombre");
            piloto_avion tip = db.piloto_avion.FirstOrDefault(u => u.id_avion_piloto == id);
            return View(tip);
        }

        //
        // POST: /PilotoAvion/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                piloto_avion tip = db.piloto_avion.FirstOrDefault(u => u.id_avion_piloto == id);
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
        // GET: /PilotoAvion/Delete/5
 
        public ActionResult Delete(int id)
        {
            piloto_avion tip = db.piloto_avion.FirstOrDefault(u => u.id_avion_piloto == id);
            return View(tip);
        }

        //
        // POST: /PilotoAvion/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                piloto_avion tip = db.piloto_avion.FirstOrDefault(u => u.id_avion_piloto == id);
                UpdateModel(tip);
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
