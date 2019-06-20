using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Portafolio.Condominio
{
    class Reserva
    {

        public int reserva_id { get; set; }
        public int residente_id { get; set; }
        public int administrador_id { get; set; }
        public String descripcion { get; set; }
        public DateTime fecha_inicio { get; set; }
        public DateTime fecha_termino { get; set; }
        public int valor_monto { get; set; }
        public String tipo_reserva { get; set; }

        public Reserva()
        {
            this.Init();
        }



        private void Init()
        {
            this.reserva_id = 0;
            this.residente_id = 0;
            this.administrador_id = 0;
            this.descripcion = string.Empty;
            this.fecha_inicio = DateTime.Now;
            this.fecha_termino = DateTime.Now;
            this.valor_monto = 0;
            this.tipo_reserva = string.Empty;

        }
    }
}
