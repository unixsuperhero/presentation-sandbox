class OrderService
  def place_order(customer_name, customer_email,
                  street, city, zip_code,
                  pizza_size, toppings_count)

    unless customer_email.include?("@") && customer_email.include?(".")
      raise ArgumentError, "Invalid email format"
    end
    unless zip_code.length == 5
      raise ArgumentError, "Invalid zip code"
    end

    price = case pizza_size
            when "Small" then 10.00
            when "Medium" then 12.00
            when "Large" then 14.00
            else 0.0
            end

    price += toppings_count * 1.50

    puts "Order for: #{customer_name} (#{customer_email})"
    puts "Ship to: #{street}, #{city} #{zip_code}"
    puts "Total: $#{price}"
  end
end
