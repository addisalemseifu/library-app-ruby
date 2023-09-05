class Rental
  attr_accessor :date, :book, :person, :all_rentals

  @all_rentals = []
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.rental << self
    person.rental << self
    self.class.all_rentals << self
  end

  class << self
    attr_accessor :all_rentals
  end

  def as_json(options= {})
    {
      date: @date,
      book: @book,
      person: @person
    }
  end

  def to_json(*options, max_nesting: 400 )
    as_json(*options).to_json(max_nesting: max_nesting)
  end
end
