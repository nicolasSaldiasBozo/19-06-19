using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SistCondominiosWEB.Startup))]
namespace SistCondominiosWEB
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
