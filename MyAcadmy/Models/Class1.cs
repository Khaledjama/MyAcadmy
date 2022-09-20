using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MyAcadmy.Models
{
    public class Class1
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "Email")]
        [EmailAddress]
        public string email { get; set; }
        [Required]
        [Display(Name = "What's app")]
        public string whats_ap { get; set; }
    }
}