class Book
  attr_accessor :title, :author, :rental

  @book_list = []
  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
    self.class.book_list << self
  end

  class << self
    attr_accessor :book_list
  end
end
