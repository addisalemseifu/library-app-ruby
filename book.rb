class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rentals(rental)
    @rental.push(rental)
    rental.belong_to_book = self
  end
end
