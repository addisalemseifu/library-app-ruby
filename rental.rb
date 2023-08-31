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
end
