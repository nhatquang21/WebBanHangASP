using WebApp.Data;

namespace WebApp.Models
{
    public class CartItem
    {
        public int quantity { set; get; }
        public Product product { set; get; }
    }
}
