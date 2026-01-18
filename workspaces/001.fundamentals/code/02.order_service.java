public class OrderServiceRefactored {

    // GOOD: The signature reads like a sentence.
    // Logic is delegated to the objects.
    public void placeOrder(Customer customer, Address address, Pizza pizza) {
        
        // Step 1: Logic is calculated by the expert (the Pizza object)
        double price = pizza.calculatePrice();

        // Step 2: Printing is simplified using methods on the objects
        System.out.println("Order for: " + customer.getContactInfo());
        System.out.println("Ship to: " + address); // Uses address.toString()
        System.out.println("Total: $" + price);
    }
}

// Encapsulates customer validation
class Customer {
    private String name;
    private String email;

    public Customer(String name, String email) {
        if (!email.contains("@")) throw new IllegalArgumentException("Invalid email");
        this.name = name;
        this.email = email;
    }
    
    public String getContactInfo() { return name + " (" + email + ")"; }
}

// Encapsulates address formatting
class Address {
    private String street;
    private String city;
    private String zipCode;

    public Address(String street, String city, String zipCode) {
        if (zipCode.length() != 5) throw new IllegalArgumentException("Invalid zip");
        this.street = street;
        this.city = city;
        this.zipCode = zipCode;
    }

    public String toString() { return street + ", " + city + " " + zipCode; }
}

// Encapsulates pricing logic
class Pizza {
    private String size;
    private int toppingsCount;

    public Pizza(String size, int toppingsCount) {
        this.size = size;
        this.toppingsCount = toppingsCount;
    }

    public double calculatePrice() {
        double basePrice = switch (size) {
            case "Small" -> 10.00;
            case "Medium" -> 12.00;
            case "Large" -> 14.00;
            default -> 0.0;
        };
        return basePrice + (toppingsCount * 1.50);
    }
}