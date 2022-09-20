using Microsoft.AspNet.Identity;
using MyAcadmy.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;

namespace MyAcadmy.Controllers
{
    public class HomeController : Controller
    {
        courseEntities db = new courseEntities();
        public ActionResult Index()
        {
            return View(db.cours.ToList());
        }
        [HttpGet]
        public ActionResult sh()
        {
            return View();
        }
        
        public ActionResult sh( string she)
        {
            var kar = db.cours.Where(s=>s.name.Contains(she)).ToList();
            return View(kar);
        }


        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        [HttpGet]
        public ActionResult Contact()
        {
            if (User.Identity.IsAuthenticated)
            {

                return View();
            }
            else
            {
                return RedirectToAction("Login","Account");
            }

            
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Contact(Class1 cl )
        {
            var mail = new MailMessage();
            var logininfo = new NetworkCredential("jkhaled497@gmail.com", "KHALEDJAMAL");
            mail.From = new MailAddress("jkhaled497@gmail.com");
            mail.To.Add(new MailAddress(cl.email));
            mail.Subject = cl.whats_ap;
            mail.Body = "صديقي";
            SmtpClient stmp = new SmtpClient("smtp.gmail.com", 587);
            stmp.EnableSsl = true;
            stmp.Credentials = logininfo;
            stmp.Send(mail);
            ModelState.Clear();
            return View();
        }
    }
}