using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class Condominio
    {

        public int condominio_id { get; set; } 
        public String nombre { get; set; }
        public String descripcion { get; set; } 
        public Condominio()
        {
            this.Init();
        }



        private void Init()
        {
            this.condominio_id = 0;
            this.nombre = string.Empty;
            this.descripcion = string.Empty;

        }
    }
}
