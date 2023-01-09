using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(proj._6.Startup))]
namespace proj._6
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
