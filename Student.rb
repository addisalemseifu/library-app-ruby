class Student < Person
  def initialize(name, age = 'Unknown', parent_permission = true, classroom:) # rubocop:disable Style/OptionalBooleanParameter
    @parent_permission = parent_permission
    @name = name
    @age = age
    @classroom = classroom
    @id = 0
    super
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
