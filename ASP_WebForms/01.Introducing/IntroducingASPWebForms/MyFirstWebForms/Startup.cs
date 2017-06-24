using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyFirstWebForms.Startup))]
namespace MyFirstWebForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
