require 'json'
class FileLoader
    def self.read
        

# Load books from a JSON file
if File.exist?('books.json')
  Book.book_list = JSON.parse(File.read('books.json'))
else
  puts 'No books found'
end

# Load people from a JSON file
if File.exist?('people.json')
  people = JSON.parse(File.read('people.json'))
  Student.student_list = people.select { |person| person.is_a?(Student) }
  Teacher.teacher_list = people.select { |person| person.is_a?(Teacher) }
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