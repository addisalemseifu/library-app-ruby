require 'json'
require_relative 'file_writer'
require_relative 'file_reader'
require_relative 'teacher'
require_relative 'student'
require_relative 'book'
require_relative 'person'
require_relative 'rental'
def list_all_book
  # FileReader.read_file
  puts 'You have no book in the cart!' if Book.book_list.empty?
  Book.book_list.each do |book|
    puts "Title: #{book.title}, Author: #{book.author}"
  end
  Main.prompter
  Director.director
end

def list_all_people
  Person.person_list.each do |person|
    puts "Name: #{person.name}, Age: #{person.age}"
  end
  Main.prompter
  Director.director
end

def per_met
  puts 'student'
  print 'Age:'
  age = gets.chomp
  print 'Name:'
  name = gets.chomp
  print 'classroom:'
  classroom = gets.chomp
  Student.new(classroom, age, name)
end

def create_a_person
  puts 'Do uou want to create a student (1) or a teacher (2)? [Input the number]'
  person_type = gets.chomp
  if person_type == '1'
    per_met
  elsif person_type == '2'
    puts 'teacher'
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'specialization:'
    specialization = gets.chomp
    Teacher.new(specialization, age, name)
  end
  puts 'Person created successfully!'
  Main.prompter
  Director.director
end

def create_a_book
  print 'Title:'
  title = gets.chomp
  print 'Author:'
  author = gets.chomp
  book = Book.new(title, author)
  puts "Title: #{book.class}"
  puts 'Book created successfully!'
  Main.prompter
  Director.director
end

def create_a_rental
  book_choice = my_choice
  person_choice = myperson_choice
  date = my_date
  rental = Rental.new(date, book_choice, person_choice)
  puts 'Rental created successfully'
  Main.prompter
  Director.director
end

def my_choice
  puts 'Select a book from the following list by number'
  Book.book_list.each_with_index do |book, index|
    puts "#{index}) Title: #{book.title}, Author: #{book.author}"
  end
  choice_of_book = gets.chomp.to_i
  Book.book_list[choice_of_book]
end

def myperson_choice
  puts 'Select a person from the following list by number (not id)'
  Person.person_list.each_with_index do |person, index|
    puts "#{index}) [#{person.class}]
     Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  end

  choice_of_person = gets.chomp.to_i
  Person.person_list[choice_of_person]
end

def my_date
  print 'Date: '
  gets.chomp
end

def list_all_rentals
  # persons = Student.student_list + Teacher.teacher_list
  print 'ID of person: '
  id = gets.chomp
  renter = Person.person_list.select do |rental|
    rental.id == id.to_i
  end
  puts 'Rentals:'
  puts 'Date: '
  renter[0].rental.each do |rental|
    puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
  end
  Main.prompter
  Director.director
end

def exit_app
  FileWriter.write_file
end





