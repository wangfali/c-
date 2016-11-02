using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(one.Startup))]
namespace one
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
