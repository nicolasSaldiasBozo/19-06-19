using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class Departamento
    {

        public int Departamento_id { get; set; }
        public int Condominio_id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }




        public Departamento()

        {
            this.Init();
        }


        private void Init()
        {
            this.Departamento_id = 0;
            this.Condominio_id = 0;
            this.Nombre = string.Empty;
            this.Descripcion = string.Empty;

        }

    }
}
