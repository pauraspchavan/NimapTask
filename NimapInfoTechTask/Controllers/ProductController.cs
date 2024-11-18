using NimapInfotechTaskBAL;
using NimapInfotechTaskDAL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NimapInfotechTaskModel;

namespace NimapInfoTechTask.Controllers
{
    public class ProductController : Controller
    {
        private readonly ProductService _service;

        public ProductController()
        {
            // Initialize connection string and repository
            string connectionString = ConfigurationManager.ConnectionStrings["c1"].ConnectionString;
            _service = new ProductService(new ProductRepository(connectionString));
        }

        public ActionResult Index(int page = 1, int pageSize = 10)
        {
            var products = _service.GetPaginatedProducts(page, pageSize);
            int totalRecords = _service.GetTotalProductCount(); // Add method in repository to get total product count
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalRecords / pageSize);
            ViewBag.PageSize = pageSize;
            ViewBag.CurrentPage = page;
            return View(products);
        }

      


        // GET: Add product form
        public ActionResult AddProduct()
        {
            return View(new Product());
        }

        // POST: Save new product
        [HttpPost]
        public ActionResult AddProduct(Product product)
        {
            if (ModelState.IsValid)
            {
                _service.AddProduct(product);
                return RedirectToAction("Index");
            }
            return View(product);
        }

        // GET: Edit product form
        public ActionResult EditProduct(int id)
        {
            var product = _service.GetProductById(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Save edited product
        [HttpPost]
        public ActionResult EditProduct(Product product)
        {
            if (ModelState.IsValid)
            {
                _service.UpdateProduct(product);
                return RedirectToAction("Index");
            }
            return View(product);
        }

        // GET: Delete confirmation
        public ActionResult DeleteProduct(int id)
        {
            var product = _service.GetProductById(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Confirm and delete product
        [HttpPost]
        public ActionResult DeleteProduct(Product product)
        {
            _service.DeleteProduct(product.ProductID);
            return RedirectToAction("Index");


        }



    }
}