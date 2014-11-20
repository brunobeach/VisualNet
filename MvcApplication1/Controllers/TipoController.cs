using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;// este using es para ingresar al modelo de la aplicacion ( a la base de datos)

namespace MvcApplication1.Controllers
{
    public class TipoController : Controller
    {
        private MvcApplication1.Models.dbEntities db = new dbEntities(); // Este trozo es para conectar al modelo de datos

        public ActionResult Index()
        {
           var tipos = db.tipo.ToList();  // aqui le decimos que haga una lista con lo que encuentre en tipo
            return View(tipos);           // db.tipo.ToList() = base de datos.nombre de la base de datos.listar
                    //retorna en la variable en donde metimos la lista
        }

        //
        // GET: /Tipo/Details/5

        public ActionResult Details(int id)
        {
            tipo tip = db.tipo.FirstOrDefault(u => u.id_tipo == id); //ahora "tipo" es la clase, tip un nuevo
            return View(tip);                                        //objeto en donde meteremos weas
            //y la funcion db.tipo.FirstOrDefault(u => u.id_tipo == id) ... no estoy muy seguro pero enlaza
            //el contenido con el controlador dependiendo de las acciones que hagas en la vista
            //osea, toma el contenido de la base de datos que quereos (en este caso tipo), FirstOrDefault es 
            //la condicion que te retorna el elemento que en este caso seleccionas.
        }

        //
        // GET: /Tipo/Create

        public ActionResult Create()
        {
            // en esta parte no va nada (en este ejemplo) ya que el actionresult sirve para ejecutar (o representar) algo
            // cuando se llama al metodo.
            // en el otro controlador se mostrara el metodo ViewResult, aunque para ordenar una wea.
            return View();
        } 

        //
        // POST: /Tipo/Create

        [HttpPost]
        public ActionResult Create(tipo collection) // el collection de este metodo debe ir enlazado con el objeto, en este caso "tipo"
        {                                           // osea: (tipo collection)
            try
            {
                // TODO: Add insert logic here
                db.AddTotipo(collection);           //aqui se agrega a la base de datos los datos del collection
                db.SaveChanges();                   //este es un commit

                return RedirectToAction("Index");   //y esto es para mandarte al index del mantenedor
            }
            catch(Exception e)                      // esto es en caso de que ocurra un error, puedes poner logica si quieres
            {
                return View();
            }
        }
        
        //
        // GET: /Tipo/Edit/5
 
        public ActionResult Edit(int id)    //lo mismo que en detalles
        {
            tipo tip = db.tipo.FirstOrDefault(u => u.id_tipo == id); // la misma funcion, en este caso llena los campos
            return View(tip);
        }

        //
        // POST: /Tipo/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                tipo tip = db.tipo.FirstOrDefault(u => u.id_tipo == id); //aqui tomamos los datos de la vista (los cuales seran actualizados)
                UpdateModel(tip);               // aqui actualizamos el modelo
                db.SaveChanges();               //le commit.
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Tipo/Delete/5
 
        public ActionResult Delete(int id)
        {
            tipo tip = db.tipo.FirstOrDefault(u => u.id_tipo == id); // la misma mierda, de hecho esto es para darle 
            return View(tip);                                        // logica al click de la vista "Delete" y que en la vista muestre los campos
        }

        //
        // POST: /Tipo/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
                tipo tip = db.tipo.FirstOrDefault(u => u.id_tipo == id); //lo mismo que en el edit
                db.DeleteObject(tip);                                       //se elimina de la base de datos
                db.SaveChanges();                                       // the ultimate commit.
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}/*
 listo. los demas controladores son iguales, para crearlos, solo debes ir a la carpeta controllers y
 crear un controlador fuertemente equipado. para crear las vistas, se debe dar click derecho en
 el metodo del controlador al cual quieras crear una vista, precionas "agregar vista" y le pones
 "lista fuertemente tipieada", luego en el menu desplegable buscas la base de datos que usas para tu
 modelo y luego elijes el tipo de vista que quieres (de creacion, edicion, etc) le das aceptar y te hace el
  html que en .net se llama asp...x (aspx...wtf)
*/