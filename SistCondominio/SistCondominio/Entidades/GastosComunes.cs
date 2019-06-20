using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class GastosComunes
    {


        public int Gastos_id { get; set; }
        public int Departamento_id { get; set; }
        public string Descripcion { get; set; }
        public int valor_monto { get; set; }
        public int valor_multa { get; set; }


        public GastosComunes()

        {
            this.Init();
        }


        private void Init()
        {
            this.Gastos_id = 0;
            this.Departamento_id = 0;
            this.Descripcion = string.Empty;
            this.valor_monto = 0;
            this.valor_multa = 0;

        }
    }
}
