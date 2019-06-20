using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class Visita
    {

        public int visita_id { get; set; }
        public int departamento_id { get; set; }
        public String nombre { get; set; }
        public String apeliido { get; set; }
        public String correo { get; set; }
        public String clave { get; set; }
        public DateTime fecha { get; set; } 

        public Visita()
        {
            this.Init();
        }



        private void Init()
        {
            this.visita_id = 0;
            this.departamento_id = 0;
            this.nombre = string.Empty;
            this.apeliido = string.Empty;
            this.correo = string.Empty;
            this.clave = string.Empty;
            this.fecha = DateTime.Now; 

        }
    }
}
