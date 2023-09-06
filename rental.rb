class Rental
  attr_accessor :date, :book, :person, :all_rentals

  @all_rentals = []
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    @id = rand(1...1000)
    book["rental"] << @id
    person["rental"] << @id
    self.class.all_rentals << self
  end

end
