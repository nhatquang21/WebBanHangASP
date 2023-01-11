using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
namespace WebApp.Data
{
    public class Order
    {
        public int Id { get; set; }
        [StringLength(450)]
        public string UserID { get; set; } = null!;
        public string? Status { get; set; }

        public string? ShippingAddress { get; set; }

        public int? Total { get; set; }

        public int? QuantityTotal { get; set; }
        public DateTime? CreatedAt { get; set; }
        public ICollection<OrderProduct>? OrderProducts { get; set; }
    }
}
