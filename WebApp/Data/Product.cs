using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApp.Data
   
{
    public class Product
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Phải có tên sản phẩm")]
        [Display(Name = "Tên sản phẩm")]
        [StringLength(160, MinimumLength = 5, ErrorMessage = "{0} dài {1} đến {2}")]
        public string? Name { get; set; }

        [Display(Name = "Mô tả ")]
        public string? Description { get; set; }

        [Required(ErrorMessage = "Phải có giá sản phẩm")]
        [Display(Name = "Giá sản phẩm")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "Chỉ nhập số")]
        public int? Price { get; set; }

        [Display(Name = "Giảm giá")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = "Chỉ nhập số")]
        public int? Discount { get; set; }
        public string ImgUrl { get; set; }
        public int? CategoryID { get; set; }
        public ProductCategory Category { get; set; }
         public ICollection<OrderProduct>? OrderProduct { get; set; }
    }
}
