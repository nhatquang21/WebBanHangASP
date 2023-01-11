using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace WebApp.Data
{
    public class ProductCategory
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Phải có tên danh mục")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "{0} dài {1} đến {2}")]
        [Display(Name = "Tên danh mục")]
        public string Name { get; set; }

      
        [DataType(DataType.Text)]
        [Display(Name = "Nội dung danh mục")]
        public string Description { get; set; }
        public IList<Product> Products { get; set; }
    }
}
