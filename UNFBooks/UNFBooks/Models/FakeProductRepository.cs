using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace UNFBooks.Models
{
    public class FakeProductRepository : IProductRepository
    {
        public IEnumerable<Product> Products => new List<Product>
        {
            new Product { BookTitle = "Holy Bible", PurchasePrice = 800 },
            new Product { BookTitle = "smurfs", PurchasePrice = 2 },
            new Product { BookTitle = "Esperanza Rising", PurchasePrice = 95 }
        };
    }
}
