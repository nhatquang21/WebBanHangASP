using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Models;
using WebApp.Data;
using X.PagedList;

namespace WebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ApplicationDbContext _context;
       public HomeController(ILogger<HomeController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        //public IActionResult Index(int? page)

        //{
        //    int pageSize = 6;
        //    int pageNumber = (page ?? 1);

        //    List<Product> ds = this._context.Products.ToList();
        //    return View(ds.ToPagedList(pageNumber, pageSize));
        //    //return View(ds);
        //}
        public IActionResult Index(int pg = 1)

        {
           

            List<Product> products = this._context.Products.ToList();
            IEnumerable<Product> ds = products.AsEnumerable().Reverse();

            const int pageSize = 3;
            if (pg < 1) {
                pg = 1;
            }
              
            int recsCount = ds.Count();
            var pager = new Pager(recsCount, pg, pageSize);
            int recSkip = (pg - 1) * pageSize;
            var data = ds.Skip(recSkip).Take(pager.PageSize).ToList();
            this.ViewBag.Pager = pager;
 
            return View(data);

        }

        public IActionResult FeatureProduct(int pg = 1)

        {


            List<Product> products = this._context.Products.ToList();
            IEnumerable<Product> ds = products.AsEnumerable().Reverse();
            const int pageSize = 3;
            if (pg < 1)
            {
                pg = 1;
            }
            int recsCount = ds.Count();
            var pager = new Pager(recsCount, pg, pageSize);
            int recSkip = (pg - 1) * pageSize;
            var data = ds.Skip(recSkip).Take(pager.PageSize).ToList();
            this.ViewBag.Pager = pager;

            return View(data);
            //return View(ds);
        }
        public IActionResult SaleProduct(int pg = 1)

        {



            List<Product> ds =  this._context.Products.Where(p => p.Discount != null).ToList();
            const int pageSize = 3;
            if (pg < 1)
            {
                pg = 1;
            }
            int recsCount = ds.Count();
            var pager = new Pager(recsCount, pg, pageSize);
            int recSkip = (pg - 1) * pageSize;
            var data = ds.Skip(recSkip).Take(pager.PageSize).ToList();
            this.ViewBag.Pager = pager;

            return View(data);
            //return View(ds);
        }

        public IActionResult Privacy()
        {
            return View();
        }
        public IActionResult Message()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
