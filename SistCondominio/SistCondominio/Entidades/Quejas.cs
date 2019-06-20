using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class Quejas
    {


        public int queja_id { get; set; }
        public int residente_id { get; set; }
        public int administrador_id { get; set; }
        public String descripcion { get; set; }


        public Quejas()
        {
            this.Init();
        }



        private void Init()
        {
            this.queja_id = 0;
            this.residente_id = 0;
            this.administrador_id = 0;
            this.descripcion = string.Empty;

        }


    }
}
