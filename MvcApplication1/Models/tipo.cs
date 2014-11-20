using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations; //libreria

namespace MvcApplication1.Models
{

    [MetadataType(typeof(catalogadorTipo))]
    public partial class tipo
    {

        public class catalogadorTipo {

            [Required(ErrorMessage = "El Nombre es obligatorio")]
            [StringLength(20,ErrorMessage="El largo maximo es de 20")]
            public string nombre { get; set; }


            [Required(ErrorMessage = "El Codigo es obligatorio")]
            public string id_tipo { get; set; }

        }
        

    }
}