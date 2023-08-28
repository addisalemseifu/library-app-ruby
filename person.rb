require 'nameable'
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super
    @parent_permission = parent_permission
    @name = name
    @age = age
    @id = 0
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
end
