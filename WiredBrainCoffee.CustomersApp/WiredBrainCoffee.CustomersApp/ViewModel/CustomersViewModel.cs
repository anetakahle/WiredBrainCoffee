using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using WiredBrainCoffee.CustomersApp.Data;
using WiredBrainCoffee.CustomersApp.Model;

namespace WiredBrainCoffee.CustomersApp.ViewModel
{
    public class CustomersViewModel : ViewModelBase

    {
        private readonly ICustomerDataProvider _customerDataProvider;
        private CustomerItemViewModel? _selectedCustomer;
        private readonly ObservableCollection<CustomerItemViewModel> _customers = new();
        private int _navigationColumn;

        public CustomersViewModel(ICustomerDataProvider customerDataProvider)
        {
            _customerDataProvider = customerDataProvider;
        }

        public ObservableCollection<CustomerItemViewModel> Customers => _customers;

        public CustomerItemViewModel? SelectedCustomer
        {
            get => _selectedCustomer;
            set
            {
                if (Equals(value, _selectedCustomer)) return;
                _selectedCustomer = value;
                RaisePropertyChanged();
            }
        }

        public int NavigationColumn
        {
            get => _navigationColumn;
            private set
            {
                _navigationColumn = value;
                RaisePropertyChanged();
            }
        }

        public async Task LoadAsync()
        {
            if (Customers.Any())
            {
                return;
            }

            var customers = await _customerDataProvider.GetAllAsync();
            if (customers is not null)
            {
                foreach (var customer in customers)
                {
                    Customers.Add(new CustomerItemViewModel(customer));
                }
            }
        }

        public void Add()
        {
            var customer = new Customer() { FirstName = "New" };
            var viewModel = new CustomerItemViewModel(customer);
            Customers.Add(viewModel);
            SelectedCustomer = viewModel;
        }

        internal void MoveNavigation()
        {
            NavigationColumn = NavigationColumn == 0 ? 2 : 0;
        }
    }
}
