require_relative 'nameable'
require_relative 'rental'
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rental, :list_of_people

  @person_list = []
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

  class << self
    attr_accessor :person_list
  end

  def as_json(*)
    {
      parent_permission: @parent_permission,
      name: @name,
      age: @age,
      id: @id,
      rental: @rental
    }
  end

  def to_json(*options, max_nesting: 400)
    as_json(*options).to_json(max_nesting: max_nesting)
  end
end
