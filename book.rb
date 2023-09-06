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

  def as_json(options= {})
    {
      title: @title,
      author: @author,
      rental: @rental
    }
  end

  def to_json(*options, max_nesting: 400 )
    as_json(*options).to_json(max_nesting: max_nesting)
  end
end
