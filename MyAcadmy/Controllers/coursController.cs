using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure.Interception;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using System.Web.Services.Description;
using System.Web.UI.WebControls;
using Microsoft.Ajax.Utilities;
using Microsoft.AspNet.Identity;
using MyAcadmy.Models;

namespace courses.Controllers
{
    public class coursController : Controller
    {
        private courseEntities db = new courseEntities();

        // GET: cours
        [Authorize(Roles ="HR")]
        public ActionResult Index()
        {
            var cours = db.cours.Include(c => c.Department).Include(c => c.trainer);
            return View(cours.ToList());
        }

        public ActionResult sh(string shr)
        {
            var kariem = db.cours.Where(s => s.name.Contains(shr)).ToList();
            return View( kariem);
        }

        public ActionResult Searching( string search)
        {
            var courses = db.cours.Where(s => s.name.Contains(search)).ToList();
            ViewBag.ss = "ss";
            return View("Index",courses);
        }
        // GET: cours/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            cour cour = db.cours.Find(id);
            Session["id"] = id;
            if (cour == null)
            {
                return HttpNotFound();
            }
            return View(cour);
        }

        // GET: cours/Create
        public ActionResult Create()
        {
            ViewBag.dep = new SelectList(db.Departments, "id", "name");
            ViewBag.teacher = new SelectList(db.trainers, "id", "name");
            return View();
        }

        // POST: cours/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,name,teacher,datestart,imag,dep")] cour cour, HttpPostedFileBase file , DateTime date)
        {
            string filename = Path.GetFileName(file.FileName);
            string _filename = DateTime.Now.ToString("yymmssfff") + filename;
            string exe = Path.GetExtension(file.FileName);
            string path = Path.Combine(Server.MapPath("~/Content/images/"), _filename);
            cour.imag = "~/Content/images/" + _filename;
            try
            {
                if (exe.ToLower() == ".png" || exe.ToLower() == ".jpg" || exe.ToLower() == ".jpeg" || exe.ToLower() == "jfif" || exe.ToLower() == "gif")
                {
                    if (file.ContentLength < 1000000)
                    {
                        cour.datestart = date;
                        db.cours.Add(cour);
                        if (db.SaveChanges() > 0)
                            file.SaveAs(path);
                        return RedirectToAction("Index");

                    }

                }
                else
                {
                    ViewBag.ss = "kkkkkkk";
                    return PartialView("Error", ViewBag.ss);
                }
            }

            catch (Exception ex)
            {
                return View("Error", new HandleErrorInfo(ex, "EmployeeInfo", "Create"));
            }

            
            ViewBag.dep = new SelectList(db.Departments, "id", "name", cour.dep);
            ViewBag.teacher = new SelectList(db.trainers, "id", "name", cour.teacher);
            return View(cour);
        }

        // GET: cours/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            cour cour = db.cours.Find(id);
            if (cour == null)
            {
                return HttpNotFound();
            }
            ViewBag.dep = new SelectList(db.Departments, "id", "name", cour.dep);
            ViewBag.teacher = new SelectList(db.trainers, "id", "name", cour.teacher);
            return View(cour);
        }

        // POST: cours/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,name,teacher,datestart,imag,dep")] cour cour , HttpPostedFileBase file ,DateTime date)
        {
                string name = Path.GetFileName(file.FileName);
                string _name = DateTime.Now.ToString("yymmssfff") + name;
                string exe = Path.GetExtension(file.FileName);
                string path = Path.Combine(Server.MapPath("~/Content/images/"), _name);
                cour.imag = "~/Content/images/" + _name;
                if (exe.ToLower() == ".png" || exe.ToLower() == ".jpg" || exe.ToLower() == ".jpeg" || exe.ToLower() == ".jfif" || exe.ToLower() == ".gif")
                {
                    if (file.ContentLength < 1000000)
                    {
                        cour.datestart = date;
                        db.Entry(cour).State = EntityState.Modified;
                        if (db.SaveChanges() > 0)
                        {
                            file.SaveAs(path);
                            return RedirectToAction("Index");
                        }
                    }   
                }
                ViewBag.ss = "الصورة لم ليس لها سياق خارجي";
                ViewBag.dep = new SelectList(db.Departments, "id", "name", cour.dep);
                ViewBag.teacher = new SelectList(db.trainers, "id", "name", cour.teacher);
                return View(cour);
             
        }

        // GET: cours/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            cour cour = db.cours.Find(id);
            if (cour == null)
            {
                return HttpNotFound();
            }
            return View(cour);
        }

        // POST: cours/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            cour cour = db.cours.Find(id);
            if (db.data_of_student.Where(s => s.id_courese == id).Count() > 0)
            {
                List<data_of_student> data = db.data_of_student.Where(s => s.id_courese == id).ToList();
                foreach (var item in data)
                {
                    db.data_of_student.Remove(item);
                    db.SaveChanges();
                }
            }
            db.cours.Remove(cour);
            db.SaveChanges();
            return RedirectToAction("Index","Home");
        }

        /* 
          data-of-student
         */
        [HttpGet]
        [Authorize()]
        public ActionResult Apply(int?id)
        {
            if (User.Identity.IsAuthenticated)
            {
                var userid = User.Identity.GetUserId();
                if (db.data_of_student.Where(s => s.id_student == userid && s.id_courese == id).ToList().Count() > 0)
                {
                    ViewBag.oo = "Error";
                    return PartialView("_modal");
                }
                else
                {
                    return View();
                }
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
            
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Apply(data_of_student data ,string cars, string mil)
        {
            var userid = User.Identity.GetUserId();           
            
                if (ModelState.IsValid)
                {
                    data.id_student = userid;
                    data.id_courese = (int)Session["id"];
                    if (cars == "Select")
                    {
                        ViewBag.ss = "Please select your gender";
                        return View();
                    }
                    else
                    {
                        data.gender = cars;
                    }
                    courseEntities db = new courseEntities();
                var mail = new MailMessage();
                var user_id = User.Identity.GetUserId();
                var currentuser = db.AspNetUsers.Where(s => s.Id == user_id).FirstOrDefault();
                var logininfo = new NetworkCredential("jkhaled497@gmail.com", "KHALEDJAMAL");
                mail.From = new MailAddress("jkhaled497@gmail.com");
                mail.To.Add(new MailAddress(mil));
                mail.Subject = "مرحبا";
                mail.Body = "صديقي";
                SmtpClient stmp = new SmtpClient("smtp.gmail.com", 587);
                stmp.EnableSsl = true;
                stmp.Credentials = logininfo;
                stmp.Send(mail);
                data.gamil = mil;
                db.data_of_student.Add(data);
                    if (db.SaveChanges() > 0)
                    {
                        ViewBag.ss = "Applying for this courses is done";
                        return RedirectToAction("Index", "Home");

                    }
                    else
                    {
                        ViewBag.ss = "Sorry Please write right email";

                    }
                }
            ModelState.Clear();
            return View();
        }
        public ActionResult mycourses() {
            var userid = User.Identity.GetUserId();
            var currentuser = db.data_of_student.Where(s => s.id_student == userid).ToList();
            return View(currentuser);
        }
        public ActionResult unfollow(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var res = db.data_of_student.Find(id);
            if (res == null)
            {
                return HttpNotFound();
            }
            return View(res);
        }
        [HttpPost,ActionName("unfollow")]
        [ValidateAntiForgeryToken]
        public ActionResult unfollow( int id)
        {
                data_of_student table = db.data_of_student.Find(id);
                db.data_of_student.Remove(table);
                db.SaveChanges();
            return RedirectToAction("mycourses", "cours");
         
        } 
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
