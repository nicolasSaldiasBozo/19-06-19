using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class PagoReservas
    {
        public int pago_reservas_id { get; set; }
        public int reserva_id { get; set; }
        public int departamento_id { get; set; }
        public String descripcion { get; set; }



        public PagoReservas()
        {
            this.Init();
        }



        private void Init()
        {
            this.pago_reservas_id = 0;
            this.reserva_id = 0;
            this.departamento_id = 0;
            this.descripcion = string.Empty;

        }









    }
}
