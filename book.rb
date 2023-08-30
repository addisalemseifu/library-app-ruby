class Book
  attr_accessor :title, :author, :rental

  @@book_list = []
  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
    @@book_list << self
  end

  def add_rentals(date, person)
    Rental.new(date, self, person)
  end

  def Book.book_list
    @@book_list
  end
end
