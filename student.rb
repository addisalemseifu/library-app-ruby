class Student < Person
  def initialize(name, classroom:, parent_permission: true, age: 'Unknown')
    @parent_permission = parent_permission
    @name = name
    @age = age
    @classroom = classroom
    @id = 0
    super
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
