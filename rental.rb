class Rental
  attr_accessor :date, :book, :person, :all_rentals

  @all_rentals = []
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    @id = rand(1...1000)
    book['rental'] << @id
    person['rental'] << @id
    self.class.all_rentals << self
  end

  class << self
    attr_accessor :all_rentals
  end

  def as_json(*)
    {
      date: @date,
      book: @book,
      person: @person,
      id: @id
    }
  end

  def to_json(*options, max_nesting: 1000)
    as_json(*options).to_json(max_nesting: max_nesting)
  end
end
