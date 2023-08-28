puts 'working'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name