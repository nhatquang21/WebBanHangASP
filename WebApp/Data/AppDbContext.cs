using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using WebApp.Data;

namespace WebApp.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext (DbContextOptions<AppDbContext> options)
            : base(options)
        {
        }

        public DbSet<WebApp.Data.ProductCategory> Category { get; set; }

        public DbSet<WebApp.Data.Product> Product { get; set; }
    }
}
