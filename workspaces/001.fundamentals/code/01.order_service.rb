class OrderService

  # BAD: The method signature is huge and hard to read.
  # The procedure is "obsessed" with Strings and ints.
  def place_order(customer_name, customer_email,
                  street, city, zip_code,
                  pizza_size, toppings_count)

    # Step 1: Validate Data (Clutters the procedure)
    unless customer_email.include?("@") && customer_email.include?(".")
      raise ArgumentError, "Invalid email format"
    end
    unless zip_code.length == 5
      raise ArgumentError, "Invalid zip code"
    end

    # Step 2: Calculate Price (Business logic mixed with control flow)
    price = case pizza_size
            when "Small" then 10.00
            when "Medium" then 12.00
            when "Large" then 14.00
            else 0.0
            end

    price += toppings_count * 1.50

    # Step 3: Print Receipt
    puts "Order for: #{customer_name} (#{customer_email})"
    puts "Ship to: #{street}, #{city} #{zip_code}"
    puts "Total: $#{price}"
  end
end
