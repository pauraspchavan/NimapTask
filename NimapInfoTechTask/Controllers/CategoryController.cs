using NimapInfotechTaskModel;
using NimapInfotechTaskBAL;
using NimapInfotechTaskDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services.Description;
using System.Configuration;
using System.Web.UI;

namespace NimapInfoTechTask.Controllers
{
    public class CategoryController : Controller
    {
        private readonly CategoryService _service;

        public CategoryController()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["c1"].ConnectionString;
            _service = new CategoryService(new CategoryRepository(connectionString));
        }

        public ActionResult Index(int pageNumber = 1, int pageSize = 10)
        {
            var categories = _service.GetPaginatedCategories(pageNumber, pageSize);
            int totalRecords = _service.GetTotalCategoryCount();
            ViewBag.TotalPages = (int)Math.Ceiling((double)totalRecords / pageSize);
            ViewBag.PageSize = pageSize;
            ViewBag.CurrentPage = pageNumber;
            return View(categories);
        }


        public ActionResult AddCategory(Category category)
        {
            if (ModelState.IsValid)
            {
                _service.AddCategory(category);
                return RedirectToAction("Index");
            }
            return View(category);
        }

        public ActionResult EditCategory(int id)
        {
            var category = _service.GetCategoryById(id);
            return View(category);
        }

        [HttpPost]
        public ActionResult EditCategory(Category category)
        {
            if (ModelState.IsValid)
            {
                _service.UpdateCategory(category);
                return RedirectToAction("Index");
            }
            return View(category);
        }

        public ActionResult DeleteCategory(int id)
        {
            _service.DeleteCategory(id);
            return RedirectToAction("Index");
        }
    }
}
