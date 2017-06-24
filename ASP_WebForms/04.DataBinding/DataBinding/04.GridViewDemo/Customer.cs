using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _04.GridViewDemo
{
    public class Customer
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool IsSenior { get; set; }

        public Customer()
        {
        }
    }
}