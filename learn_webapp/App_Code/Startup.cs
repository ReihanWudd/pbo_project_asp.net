using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(learn_webapp.Startup))]
namespace learn_webapp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
