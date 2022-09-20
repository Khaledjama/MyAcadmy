using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin;
using MyAcadmy.Models;
using Owin;

[assembly: OwinStartupAttribute(typeof(MyAcadmy.Startup))]
namespace MyAcadmy
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            //createroles();
        }
        //ApplicationDbContext db = new ApplicationDbContext();
        //public void createroles()
        //{
        //    var rolemanager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(db));
        //    IdentityRole rol;
        //    if (!rolemanager.RoleExists("Eslam"))
        //    {
        //        rol = new IdentityRole();
        //        rol.Name = "Eslam";
        //        rolemanager.Create(rol);
        //    }
        //}
        //public void CreateUser()
        //{
        //    var userManager = new UserManager<ApplicationUser>(new  UserStore<ApplicationUser>(db));
        //    ApplicationUser user = new ApplicationUser();
        //    user.Email = "jhksdhfg@gmail.com";
        //    user.UserName = "poeirofjeorp";
        //    var check = userManager.Create(user, "LLll  12");
        //    if (!check.Succeeded)
        //    {
        //        userManager.AddToRole(user.Id, "Eslam");
        //    }
        //}
    }
}
