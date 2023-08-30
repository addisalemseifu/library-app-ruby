require_relative 'person'
class Teacher < Person
  attr_accessor :specialize

  def initialize(specialize, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialize = specialize
    @@list_of_people << self
  end

  def can_use_services?
    true
  end
end

puts 'addis'
teacher = Teacher.new('ddd', 22, 'sdf')
puts teacher.specialize

puts 'addis'
teacher = Teacher.new(22, 'sdf', 'sdfsdf')
