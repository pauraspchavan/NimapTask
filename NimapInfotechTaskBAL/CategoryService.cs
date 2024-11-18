using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NimapInfotechTaskDAL;
using NimapInfotechTaskModel;

namespace NimapInfotechTaskBAL
{
    public class CategoryService
    {
        private readonly CategoryRepository _repository;

        public CategoryService(CategoryRepository repository)
        {
            _repository = repository;
        }

        public List<Category> GetPaginatedCategories(int pageNumber, int pageSize)
        {
            return _repository.GetCategories(pageNumber, pageSize);
        }
        public int GetTotalCategoryCount()
        {
            return _repository.GetTotalCategoryCount();
        }

        public void AddCategory(Category category) => _repository.AddCategory(category);
        public void UpdateCategory(Category category) => _repository.UpdateCategory(category);
        public void DeleteCategory(int categoryId) => _repository.DeleteCategory(categoryId);
        public Category GetCategoryById(int categoryId) => _repository.GetCategoryById(categoryId);
    }
    
}
