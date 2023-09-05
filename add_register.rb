class Register
  def initialize(student, classroom)
    @student = student
    @classroom = classroom
  end

  def registerer
    classroom.students.push(student) unless classroom.students.include?(student)
  end
end
