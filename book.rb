class Book
  attr_accessor :title, :author, :rental

  @book_list = []
  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
    self.class.book_list << self
  end

  def add_rentals(date, person)
    Rental.new(date, self, person)
  end

  class << self
    attr_accessor :book_list
  end
end
