class Rental
  attr_accessor :date

  def initialize(date)
    @date = date
    @book = nil
    @person = nil
  end

  def belong_to_book
    @book
  end

  def belong_to_person
    @person
  end
end
