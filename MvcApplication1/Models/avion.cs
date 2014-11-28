using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations; //libreria

namespace MvcApplication1.Models
{

    [MetadataType(typeof(catalogadorAviones))]
    public partial class aviones
    {

        public class catalogadorAviones {

            [Required(ErrorMessage = "El Nombre es obligatorio")]
            [StringLength(20,ErrorMessage="El largo maximo es de 20")]
            public string nombre { get; set; }


            [Required(ErrorMessage = "El Codigo es obligatorio")]
            public string id_aviones { get; set; }

            [Required(ErrorMessage = "El Tipo es obligatorio")]
            public string id_tipo { get; set; }

            [Required(ErrorMessage = "La Marca es obligatoria")]
            public string marca { get; set; }

            [Required(ErrorMessage = "El Combustible es obligatorio")]
            public string comb { get; set; }

        }
        

    }


}