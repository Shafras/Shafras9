using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TP035539_FYP.Startup))]
namespace TP035539_FYP
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
