require_relative 'nameable'
require_relative 'rental'
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rental, :list_of_people

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @parent_permission = parent_permission
    @name = name
    @age = age
    @id = rand(1...1000)
    @rental = []
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    true if of_age? || @parent_permission
    false
  end

  def correct_name
    @name
  end

  def add_rentals(date, book)
    @rental.push(rental)
    Rental.new(date, book, self)
  end
end
