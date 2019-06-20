using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class Administrador
    {

        public int Administrador_id { get; set; }
        public int Condominio_id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Correo { get; set; }
        public string Clave { get; set; }
        public int fono { get; set; }
        public string tipo_administrador { get; set; }



        public Administrador()

        {
            this.Init();
        }


        private void Init()
        {
            this.Administrador_id = 0;
            this.Condominio_id = 0;
            this.Nombre = string.Empty;
            this.Apellido = string.Empty;
            this.Correo = string.Empty;
            this.Clave = string.Empty;
            this.fono = 0;
            this.tipo_administrador = string.Empty;
        }
    }
}
