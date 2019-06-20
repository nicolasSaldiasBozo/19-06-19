using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Condominio.Startup))]
namespace Condominio
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
