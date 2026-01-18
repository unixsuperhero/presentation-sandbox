class OrderServiceRefactored

  # GOOD: The signature reads like a sentence.
  # Logic is delegated to the objects.
  def place_order(customer, address, pizza)

    # Step 1: Logic is calculated by the expert (the Pizza object)
    price = pizza.calculate_price

    # Step 2: Printing is simplified using methods on the objects
    puts "Order for: #{customer.contact_info}"
    puts "Ship to: #{address}" # Uses address.to_s
    puts "Total: $#{price}"
  end
end

# Encapsulates customer validation
class Customer
  attr_reader :name, :email

  def initialize(name, email)
    raise ArgumentError, "Invalid email" unless email.include?("@")
    @name = name
    @email = email
  end

  def contact_info
    "#{name} (#{email})"
  end
end

# Encapsulates address formatting
class Address
  attr_reader :street, :city, :zip_code

  def initialize(street, city, zip_code)
    raise ArgumentError, "Invalid zip" unless zip_code.length == 5
    @street = street
    @city = city
    @zip_code = zip_code
  end

  def to_s
    "#{street}, #{city} #{zip_code}"
  end
end

# Encapsulates pricing logic
class Pizza
  attr_reader :size, :toppings_count

  def initialize(size, toppings_count)
    @size = size
    @toppings_count = toppings_count
  end

  def calculate_price
    base_price = case size
                 when "Small" then 10.00
                 when "Medium" then 12.00
                 when "Large" then 14.00
                 else 0.0
                 end
    base_price + (toppings_count * 1.50)
  end
end
