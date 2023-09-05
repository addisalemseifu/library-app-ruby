require_relative 'person'
class Teacher < Person
  attr_accessor :specialize

  # @teacher_list = []
  def initialize(specialize, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @specialize = specialize
    self.class.superclass.person_list << self
  end

  def can_use_services?
    true
  end

  # class << self
  #   attr_accessor :teacher_list
  # end
end
