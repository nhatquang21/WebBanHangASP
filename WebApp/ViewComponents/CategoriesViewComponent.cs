using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Threading.Tasks;
using WebApp.Data;

namespace WebApp.ViewComponents
{
    public class CategoriesViewComponent:ViewComponent
    {
        private readonly ApplicationDbContext _context;

        public CategoriesViewComponent(ApplicationDbContext context)
        {
          
            _context = context;
        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
            List<ProductCategory> catList = await this._context.Categories.ToListAsync();
            return View(catList);
        }

    }
}
