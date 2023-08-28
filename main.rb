class Person
  attr_reader :id
  attr_accessor :name
  attr_accessor :age

  def initialize(name, age = "Unknown", parent_permission = true)
    @parent_permission = parent_permission
    @name = name
    @age = age
    @id = 0;
  end

  private

  def of_age?
    return true if @age >= 18

    false
  end

  public

  def can_use_services?
    return true if of_age? || @parent_permission
  end
end
