using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{


    class PagoGastos
    {

        public int Pago_Gastos_id { get; set; }
        public int Gastos_id { get; set; }
        public int Departamento_id { get; set; }
        public string Descripcion { get; set; }



        public PagoGastos()

        {
            this.Init();
        }


        private void Init()
        {
            this.Pago_Gastos_id = 0;
            this.Gastos_id = 0;
            this.Departamento_id = 0;
            this.Descripcion = string.Empty;


        }
    }
}
