using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_02.HelloAspnet.Startup))]
namespace _02.HelloAspnet
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
