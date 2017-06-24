using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_1.Sumator.Startup))]
namespace _1.Sumator
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
