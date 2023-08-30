require_relative 'person'
class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
    @@list_of_people << self
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end

def play_hooky
  '¯\(ツ)/¯'
end

student = Student.new('sdf', 'addis', 45)
puts student.classroom
