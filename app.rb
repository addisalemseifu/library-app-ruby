require_relative 'teacher'
require_relative 'student'
require_relative 'book'
require_relative 'person'
require_relative 'rental'
require_relative 'file_writer'
require_relative 'file_reader'
class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_all_book
    puts 'You have no book in the cart!' if Book.book_list.empty?
    FileReader.read_file
    Book.book_list.each do |book|
      puts "Title: #{book['title']}, Author: #{book['author']}"
    end
  end

  def list_all_people
    puts 'You have no people created!' if Person.person_list.empty?
    FileReader.read_file
    persons = Person.person_list
    persons.each do |person|
      puts "Name: #{person['name']}, Age: #{person['age']}"
    end
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
    FileWriter.write_file
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
      FileWriter.write_file
    end
    puts 'Person created successfully!'
  end

  def create_a_book
    print 'Title:'
    title = gets.chomp
    print 'Author:'
    author = gets.chomp
    Book.new(title, author)
    FileWriter.write_file
    puts 'Book created successfully!'
  end

  def create_a_rental
    book_choice = my_choice
    person_choice = myperson_choice
    date = my_date
    Rental.new(date, book_choice, person_choice)
    FileWriter.write_file
    puts 'Rental created successfully'
  end

  def my_choice
    puts 'Select a book from the following list by number'
    puts 'You have no book in the cart' if Book.book_list.empty?
    Book.book_list.each_with_index do |book, index|
      puts "#{index}) Title: #{book['title']}, Author: #{book['author']}"
    end

    choice_of_book = gets.chomp.to_i
    Book.book_list[choice_of_book]
  end

  def myperson_choice
    persons = Person.person_list
    puts 'Select a person from the following list by number (not id)'
    persons.each_with_index do |person, index|
      puts "#{index}) [#{person.class}]
     Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']}"
    end

    choice_of_person = gets.chomp.to_i
    persons[choice_of_person]
  end

  def my_date
    print 'Date: '
    gets.chomp
  end

  def list_rentals_for_person_id
    FileReader.read_file
    persons = Person.person_list
    rental_list = Rental.all_rentals
    print 'ID of person: '
    id = gets.chomp
    renter = persons.select do |rental|
      rental['id'] == id.to_i
    end

    puts renter
    rented_list_id = renter[0]['rental']
    puts rented_list_id
    rental_info = rental_list.select do |info|
      info['person']['id'] == id.to_i
    end
    puts 'Rentals:'
    puts 'Date: '
    rental_info.each do |rental|
      puts "Date: #{rental['date']}, Book \"#{rental['book']['title']}\" by #{rental['book']['author']}"
    end
  end

  def exit_app
    FileWriter.write_file
    puts 'Goodbye'
    exit
  end
end
