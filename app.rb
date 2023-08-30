require_relative 'teacher'
require_relative 'student'
require_relative 'book'
require_relative 'classroom'
require_relative 'person'
require_relative 'rental'
def list_all_book
  Book.book_list.each { |book|
    puts "Title: #{book.title}, Author: #{book.author}"
  }
  main()
end

def list_all_people
  puts 'optionsdfsdf'
  Person.list_of_people.each { |person|
    puts "Name: #{person.name}, Age: #{person.age}"
  }
  main
end

def create_a_person
  puts 'Do uou want to create a student (1) or a teacher (2)? [Input the number]'
  person_type = gets.chomp
  if person_type == '1'
    puts 'student'
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'classroom:'
    classroom = gets.chomp
    student = Student.new(classroom, age, name)
  elsif person_type == '2'
    puts 'teacher'
    print 'Age:'
    age = gets.chomp
    print 'Name:'
    name = gets.chomp
    print 'specialization:'
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
  end
  puts 'Person created successfully!'
  main()
end

def create_a_book
  print 'Title:'
  title = gets.chomp
  print 'Author:'
  author = gets.chomp
  book = Book.new(title, author)
  puts 'Book created successfully!'
  puts book.rental.length
  puts Book.book_list[0].title
  main()
end

def create_a_rental
  puts 'Select a book from the following list by number'
  Book.book_list.each { |book|
    puts "#{Book.book_list.find_index(book)}) Title: #{book.title}, Author: #{book.author}"
  }

  choice_of_book = gets.chomp
  book_choice = Book.book_list.select { |book|
    Book.book_list.find_index(book) === choice_of_book.to_i
  }
  puts book_choice[0].title

  puts 'Select a person from the following list by number (not id)'
  Person.list_of_people.each { |person|
    puts "#{Person.list_of_people.find_index(person)}) [#{person.class}]
     Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
  }

  choice_of_person = gets.chomp

  person_choice = Person.list_of_people.select { |people|
    Person.list_of_people.find_index(people) === choice_of_person.to_i
  }
  puts person_choice[0].name
  print 'Date: '
  date = gets.chomp

  rental = Rental.new(date, book_choice[0], person_choice[0])
  puts 'Rental created successfully'
  main
end

def list_all_rentals
  print 'ID of person: '
  id = gets.chomp
  renter = Person.list_of_people.select { |rental|
    rental.id == id.to_i
  }
  puts 'Rentals:'
  puts 'Date: '
  renter[0].rental.each { |rental|
    puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
  }
  main
end

def exit
  exit
end
