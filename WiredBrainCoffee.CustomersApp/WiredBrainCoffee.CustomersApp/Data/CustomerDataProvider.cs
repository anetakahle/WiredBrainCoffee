using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WiredBrainCoffee.CustomersApp.Model;

namespace WiredBrainCoffee.CustomersApp.Data
{
    public interface ICustomerDataProvider
    {
        Task<IEnumerable<Customer>?> GetAllAsync();
    }

    public class CustomerDataProvider : ICustomerDataProvider
    {
        public async Task<IEnumerable<Customer>?> GetAllAsync()
        {
            await Task.Delay(100); // fake server delay

            return new List<Customer>
            {
                new Customer { Id = 1, FirstName = "Aneta", LastName = "Kahleova", IsDeveloper = true },
                new Customer { Id = 2, FirstName = "Tomas", LastName = "Hradec", IsDeveloper = true },
                new Customer { Id = 3, FirstName = "Dan", LastName = "Markanovic", IsDeveloper = true },
                new Customer { Id = 4, FirstName = "Dan", LastName = "Holec", IsDeveloper = true },
                new Customer { Id = 5, FirstName = "Linh", LastName = "Phamova", IsDeveloper = true },
                new Customer { Id = 6, FirstName = "Martin", LastName = "Goffa", IsDeveloper = true },
                new Customer { Id = 7, FirstName = "Kristyna", LastName = "Skyvova" }

            };
        }
    }
}
