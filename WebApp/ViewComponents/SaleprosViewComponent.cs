using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Data;
using WebApp.Models;

namespace WebApp.ViewComponents
{
    public class SaleProsViewComponent : ViewComponent
    {
        private readonly ApplicationDbContext _context;

        public SaleProsViewComponent(ApplicationDbContext context)
        {

            _context = context;
        }
        public async Task<IViewComponentResult> InvokeAsync(int pg = 1)
        {
            List<Product> ds = await this._context.Products.Where(p => p.Discount != null).ToListAsync();
            Console.WriteLine(ds);
            return View(ds);
           
          
        }

    }
   
}
