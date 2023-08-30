class Rental
  attr_accessor :date, :book, :person

  @@all_rentals = []
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.rental << self
    person.rental << self
    @@all_rentals << self
  end

  def Rental.all_rentals
    @@all_rentals
  end
end
