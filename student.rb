require_relative 'person'
class Student < Person
  # @student_list = []
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    @classroom = classroom
    self.class.superclass.person_list << self
    super(age, name, parent_permission: parent_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  # class << self
  #   attr_accessor :student_list
  # end
end
