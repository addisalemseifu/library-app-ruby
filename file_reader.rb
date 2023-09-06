require 'pry'
require 'json'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
class FileReader
  def self.read_file
    puts 'now reading...'
    # Load books from a JSON file
    if File.exist?('books.json')
      Book.book_list = JSON.parse(File.read('books.json'))

    else
      puts 'No books found'
    end

    # Load people from a JSON file
    if File.exist?('people.json')
      Person.person_list = JSON.parse(File.read('people.json'))
    else
      puts 'No people found'
    end

    # Load rentals from a JSON file
    if File.exist?('rentals.json')
      Rental.all_rentals = JSON.parse(File.read('rentals.json'))
    else
      puts 'No rentals found'
    end
  end
end
