# Ruby Basics Part 3

class BookInStock
    attr_accessor :isbn, :price

  def initialize isbn, price
    if isbn.empty? || price <= 0
        raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
    def price_as_string
    format("$%.2f", @price)
    end
end