public class OrderService {

    // BAD: The method signature is huge and hard to read.
    // The procedure is "obsessed" with Strings and ints.
    public void placeOrder(String customerName, String customerEmail, 
                           String street, String city, String zipCode, 
                           String pizzaSize, int toppingsCount) {

        // Step 1: Validate Data (Clutters the procedure)
        if (!customerEmail.contains("@") || !customerEmail.contains(".")) {
            throw new IllegalArgumentException("Invalid email format");
        }
        if (zipCode.length() != 5) {
            throw new IllegalArgumentException("Invalid zip code");
        }

        // Step 2: Calculate Price (Business logic mixed with control flow)
        double price = 0.0;
        if (pizzaSize.equals("Small")) price = 10.00;
        else if (pizzaSize.equals("Medium")) price = 12.00;
        else if (pizzaSize.equals("Large")) price = 14.00;
        
        price += (toppingsCount * 1.50);

        // Step 3: Print Receipt
        System.out.println("Order for: " + customerName + " (" + customerEmail + ")");
        System.out.println("Ship to: " + street + ", " + city + " " + zipCode);
        System.out.println("Total: $" + price);
    }
}