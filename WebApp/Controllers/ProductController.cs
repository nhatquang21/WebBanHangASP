using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApp.Data;
using WebApp.Models;

namespace WebApp.Controllers
{
    public class ProductController : Controller

    {

        private readonly ILogger<ProductController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly UserManager<AppUser> _usermanager;
        private readonly SignInManager<AppUser> _signInManager;

        public ProductController(ILogger<ProductController> logger, ApplicationDbContext context, SignInManager<AppUser> signInManager, UserManager<AppUser> userManager)
        {
            _signInManager = signInManager;
            _usermanager = userManager;
            _logger = logger;
            _context = context;

        }
        public IActionResult Index(int pg = 1)
        {
            List<Product> products = this._context.Products.ToList();
            IEnumerable<Product> ds = products.AsEnumerable().Reverse();

            const int pageSize = 9;
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
        }
        public IActionResult FeatureProduct(int pg = 1)

        {

            List<Product> products = this._context.Products.ToList();
            IEnumerable<Product> ds = products.AsEnumerable().Reverse();
            const int pageSize = 9;
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
        
        public IActionResult Detail(int id)
        {
          
            Product p = this._context.Products.Where(p => p.Id == id).FirstOrDefault();
            return View(p);

          
        }
        public IActionResult ProductCategory(int id)
        {

            List<Product> ds = this._context.Products.Where(p => p.Category.Id == id).ToList();
           
                                    
            return View(ds);


        }
        public const string CARTKEY = "cart";

        List<CartItem> GetCartItems()
        {

            var session = HttpContext.Session;
            string jsoncart = session.GetString(CARTKEY);
            if (jsoncart != null)
            {
                return JsonConvert.DeserializeObject<List<CartItem>>(jsoncart);
            }
            return new List<CartItem>();
        }

       
        void ClearCart()
        {
            var session = HttpContext.Session;
            session.Remove(CARTKEY);
        }

       
        void SaveCartSession(List<CartItem> ls)
        {
            var session = HttpContext.Session;
            string jsoncart = JsonConvert.SerializeObject(ls);
            session.SetString(CARTKEY, jsoncart);
        }

       
        public IActionResult AddToCart(int id)
        {

            var product = this._context.Products
                .Where(p => p.Id == id)
                .FirstOrDefault();
            if (product == null)
                return NotFound("Không có sản phẩm");

          
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.Id == id);
            if (cartitem != null)
            {
             
                cartitem.quantity++;
            }
            else
            {
              
                cart.Add(new CartItem() { quantity = 1, product = product });
            }

          
            SaveCartSession(cart);
          
            return RedirectToAction("Index","Home");
        }
        [Route("/cart", Name = "cart")]
        public IActionResult Cart()
        {
            return View(GetCartItems());
        }
        [Route("/updatecart", Name = "updatecart")]
        [HttpPost]
        public IActionResult UpdateCart([FromForm] int productid, [FromForm] int quantity)
        {
           
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.Id == productid);
            if (cartitem != null)
            {
                
                cartitem.quantity = quantity;
            }
            SaveCartSession(cart);
           
            return Ok();
        }
        [Route("/removecart/{productid:int}", Name = "removecart")]
        public IActionResult RemoveCart( int productid)
        {
            var cart = GetCartItems();
            var cartitem = cart.Find(p => p.product.Id == productid);
            if (cartitem != null)
            {
                
                cart.Remove(cartitem);
            }

            SaveCartSession(cart);
            return RedirectToAction(nameof(Cart));
        }

        
        [HttpPost]
        public  async Task<IActionResult> Checkout(int priceTotal, int quantity)
        {
            if(_signInManager.IsSignedIn(User) == false)
            {
                return ViewComponent(MessagePage.COMPONENTNAME, new MessagePage.Message()
                {
                    title = "Bạn chưa đăng nhập",
                    htmlcontent = "Vui lòng đăng nhập để checkout",
                    urlredirect = "/User/Login"
                });
            } else
            {
                var user = await _usermanager.GetUserAsync(User);
                var cart = GetCartItems();
                Order order = new Order();
                _context.Add(order);
                await this._context.SaveChangesAsync();

                int? intIdt = _context.Orders.Max(u => (int?)u.Id);

                foreach (var item in cart)
                {
                    Order orderO = _context.Orders.Single(o => o.Id == intIdt);
                    OrderProduct orderproduct = new OrderProduct();
                    orderproduct.ProductId = item.product.Id;
                    orderproduct.OrderId = orderO.Id;

                    orderproduct.Quantity = item.quantity;
                    if (item.product.Discount != null)
                    {
                        orderproduct.Price = (int)item.product.Price - ((int)item.product.Price * (int)item.product.Discount / 100);
                    }
                    else
                    {
                        orderproduct.Price = (int)item.product.Price;
                    }

                    quantity += item.quantity;
                    _context.Add(orderproduct);
                    await this._context.SaveChangesAsync();
                }


                Order orderCOmplete = _context.Orders.Single(o => o.Id == intIdt);
                order.UserID = user.UserName;
                orderCOmplete.Total = priceTotal;
                orderCOmplete.QuantityTotal = quantity;

                await this._context.SaveChangesAsync();
                ClearCart();

                //return RedirectToAction("Index", "Home");
                return ViewComponent(MessagePage.COMPONENTNAME, new MessagePage.Message()
                {
                    title = "Thanh toán",
                    htmlcontent = "Đã checkout thành công",
                    urlredirect = "/Home/Index"
                });
            }
        
               
                
                
            
          
           
            

          

        }

    }

}
