using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Encodings.Web;
using System.Threading.Tasks;
using WebApp.Data;
using WebApp.Models;
using WebApp.ViewComponents;
using WebMatrix.Data;
namespace WebApp.Controllers
{
    public class UserController : Controller
    {
        private readonly SignInManager<AppUser> _signInManager;
        private readonly UserManager<AppUser> _userManager;
        private readonly ILogger<UserController> _logger;
        private readonly ApplicationDbContext _context;
        private readonly IEmailSender _emailSender;
        public UserController(ILogger<UserController> logger, ApplicationDbContext context, SignInManager<AppUser> signInManager, UserManager<AppUser> userManager, IEmailSender emailSender)
        {
            _emailSender = emailSender;
            _signInManager = signInManager;
            _userManager = userManager;
            _logger = logger;
            _context = context;
            _emailSender = emailSender; 
        }
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Register()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }
        public IActionResult RegisterConfirmation()
        {
            return View();
        }


        [HttpPost]
        public async Task<IActionResult> Register(RegisterModel model)
        {
            string returnUrl = Url.Content("~/");

            if (ModelState.IsValid)
            {
                AppUser user = new AppUser();
                user.Email = model.Email;
                user.FirstName = model.FirstName;
                user.LastName = model.LastName;
                user.PasswordHash = model.Password;
                user.UserName = model.Email;

               
                var result = await _userManager.CreateAsync(user, model.Password);
                if (result.Succeeded)
                {
                    TempData["confirmEmail"] = model.Email ;
                    return RedirectToAction("RegisterConfirmation", "User", new { email = model.Email  });
                 
                }
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }

            return View();
        }

       

        [HttpPost]
        public async Task<IActionResult> Login(LoginModel model)
        {

            string returnUrl = Url.Content("~/");
            // Đã đăng nhập nên chuyển hướng về Index
            if (_signInManager.IsSignedIn (User)) return Redirect ("Index");

            if (ModelState.IsValid) {
               
                AppUser signedUser = await _userManager.FindByEmailAsync(model.Email);
          
                var result = await _signInManager.PasswordSignInAsync(signedUser.UserName, model.Password, model.RememberMe, true);


                if (!result.Succeeded)
                {
                    ModelState.AddModelError(string.Empty, "Invalid login attempt.");
                    return View();
                  
                }

                if (result.Succeeded) {
                    _logger.LogInformation ("User đã đăng nhập");
                    return LocalRedirect(returnUrl);
                    return ViewComponent(MessagePage.COMPONENTNAME, new MessagePage.Message()
                    {
                        title = "Đã đăng nhập",
                        htmlcontent = "Đăng nhập thành công",
                        urlredirect = returnUrl
                    });
                }
              
            }

            // If we got this far, something failed, redisplay form
            return View();

         
        }


        public IActionResult ConfirmEmail(string email)
        {
            AppUser user = this._context.Users.Where(u => u.Email == email).FirstOrDefault();
            user.EmailConfirmed = true;
            this._context.SaveChanges();
            string returnUrl = Url.Content("~/");
            return ViewComponent(MessagePage.COMPONENTNAME, new MessagePage.Message()
                    {
                        title = "Đã xác thực",
                        htmlcontent = "Xác thực thành công",
                        urlredirect = returnUrl
                    });
        }
       

        public async Task<IActionResult> LogOut(string returnUrl = null)
        {
            if (!_signInManager.IsSignedIn(User)) return RedirectToAction("Index", "Home", new { Area = "" });

            await _signInManager.SignOutAsync();
            _logger.LogInformation("Người dùng đăng xuất");
            return ViewComponent(MessagePage.COMPONENTNAME,
               new MessagePage.Message()
               {
                   title = "Đã đăng xuất",
                   htmlcontent = "Đăng xuất thành công",
                   urlredirect = (returnUrl != null) ? returnUrl : @Url.Action("Index", "Home", new { Area = "" })
               }
           );
        }
    }
}
