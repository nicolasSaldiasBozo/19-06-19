using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    public class Residente
    {
        public int residente_id { get; set; }
        public int departamento_id { get; set; }
        public String nombre { get; set; }
        public String apeliido { get; set; }
        public String correo { get; set; }
        public String clave { get; set; }
        public int fono { get; set; }
        public int tipo_residente { get; set; }

        public Residente()
        {
            this.Init();
        }



        private void Init()
        {
            this.residente_id = 0;
            this.departamento_id = 0;
            this.nombre = string.Empty;
            this.apeliido = string.Empty;
            this.correo = string.Empty;
            this.clave = string.Empty;
            this.fono = 0;
            this.tipo_residente = 0;

        }















    }
}
