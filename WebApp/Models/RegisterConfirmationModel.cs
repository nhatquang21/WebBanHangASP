using System.ComponentModel.DataAnnotations;
namespace WebApp.Models
{
    public class RegisterConfirmation
    {
        public string Email { get; set; }

        public bool DisplayConfirmAccountLink { get; set; }

        public string EmailConfirmationUrl { get; set; }
    }
}
