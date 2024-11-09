using NimapInfotechTaskModel;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NimapInfotechTaskDAL
{
    public class CategoryRepository
    {
        private readonly string _connectionString;

        public CategoryRepository(string connectionString)
        {
            _connectionString = connectionString;
        }

        public void AddCategory(Category category)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "INSERT INTO Category (CategoryName) VALUES (@CategoryName)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@CategoryName", category.CategoryName);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public void UpdateCategory(Category category)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "UPDATE Category SET CategoryName = @CategoryName WHERE CategoryID = @CategoryID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@CategoryName", category.CategoryName);
                    command.Parameters.AddWithValue("@CategoryID", category.CategoryID);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public void DeleteCategory(int categoryId)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "DELETE FROM Category WHERE CategoryID = @CategoryID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@CategoryID", categoryId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public Category GetCategoryById(int categoryId)
        {
            Category category = null;
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "SELECT CategoryID, CategoryName FROM Category WHERE CategoryID = @CategoryID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@CategoryID", categoryId);
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            category = new Category
                            {
                                CategoryID = (int)reader["CategoryID"],
                                CategoryName = reader["CategoryName"].ToString()
                            };
                        }
                    }
                }
            }
            return category;
        }
    }
}
