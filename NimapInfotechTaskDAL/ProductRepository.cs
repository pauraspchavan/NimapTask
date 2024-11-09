using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NimapInfotechTaskModel;

namespace NimapInfotechTaskDAL
{
    public class ProductRepository
    {
        private readonly string _connectionString;

        public ProductRepository(string connectionString)
        {
            _connectionString = connectionString;
        }
        public int GetTotalProductCount()
        {
            int totalCount = 0;

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "SELECT COUNT(*) FROM Product";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    totalCount = (int)command.ExecuteScalar();
                }
            }

            return totalCount;
        }

        public List<Product> GetProducts(int page, int pageSize)
        {
            List<Product> products = new List<Product>();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = @"
                SELECT p.ProductID, p.ProductName, p.CategoryID, c.CategoryName
                FROM Product p
                JOIN Category c ON p.CategoryID = c.CategoryID
                ORDER BY p.ProductID
                OFFSET @Offset ROWS
                FETCH NEXT @PageSize ROWS ONLY";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Offset", (page - 1) * pageSize);
                    command.Parameters.AddWithValue("@PageSize", pageSize);
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            products.Add(new Product
                            {
                                ProductID = (int)reader["ProductID"],
                                ProductName = reader["ProductName"].ToString(),
                                CategoryID = (int)reader["CategoryID"],
                                CategoryName = reader["CategoryName"].ToString()
                            });
                        }
                    }
                }
            }
            return products;
        }

        public void AddProduct(Product product)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "INSERT INTO Product (ProductName, CategoryID) VALUES (@ProductName, @CategoryID)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductName", product.ProductName);
                    command.Parameters.AddWithValue("@CategoryID", product.CategoryID);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public void UpdateProduct(Product product)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "UPDATE Product SET ProductName = @ProductName, CategoryID = @CategoryID WHERE ProductID = @ProductID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductName", product.ProductName);
                    command.Parameters.AddWithValue("@CategoryID", product.CategoryID);
                    command.Parameters.AddWithValue("@ProductID", product.ProductID);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public void DeleteProduct(int productId)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "DELETE FROM Product WHERE ProductID = @ProductID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductID", productId);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        public Product GetProductById(int productId)
        {
            Product product = null;
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = @"
            SELECT p.ProductID, p.ProductName, p.CategoryID, c.CategoryName
            FROM Product p
            JOIN Category c ON p.CategoryID = c.CategoryID
            WHERE p.ProductID = @ProductID";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductID", productId);
                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            product = new Product
                            {
                                ProductID = (int)reader["ProductID"],
                                ProductName = reader["ProductName"].ToString(),
                                CategoryID = (int)reader["CategoryID"],
                                CategoryName = reader["CategoryName"].ToString()
                            };
                        }
                    }
                }
            }
            return product;
        }

    }

}
