using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class avionesController : Controller
    {
        private MvcApplication1.Models.dbEntities db = new dbEntities();
        // GET: /aviones/

        public ActionResult Index()
        {
            var aviones = db.aviones.ToList();
            return View(aviones);
        }

        //
        // GET: /aviones/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /aviones/Create

        public ActionResult Create()
        {
            ViewData["tipo"] = new SelectList(db.tipo.ToList(), "id_tipo", "nombre");
            return View();
        } 

        //
        // POST: /aviones/Create

        [HttpPost]
        public ActionResult Create(aviones collection)
        {
            try
            {
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
        // GET: /aviones/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /aviones/Edit/5

        [HttpPost]
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

        //
        // GET: /aviones/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /aviones/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
