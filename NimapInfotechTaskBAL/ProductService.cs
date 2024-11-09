using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NimapInfotechTaskDAL;
using NimapInfotechTaskModel;

namespace NimapInfotechTaskBAL
{
    public class ProductService
    {
        private readonly ProductRepository _repository;

        public ProductService(ProductRepository repository)
        {
            _repository = repository;
        }

        public List<Product> GetPaginatedProducts(int page, int pageSize)
        {
            return _repository.GetProducts(page, pageSize);
        }
        public int GetTotalProductCount()
        {
            return _repository.GetTotalProductCount();
        }

        public void AddProduct(Product product) => _repository.AddProduct(product);
        public void UpdateProduct(Product product) => _repository.UpdateProduct(product);
        public void DeleteProduct(int productId) => _repository.DeleteProduct(productId);
        public Product GetProductById(int productId) => _repository.GetProductById(productId);




    }

}
