using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MVCDemo1.Startup))]
namespace MVCDemo1
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
