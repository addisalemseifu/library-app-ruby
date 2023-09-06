require 'pry'
require 'json'

class FileWriter
  def self.write_file
    # Save books to a JSON file
    File.write('books.json', Book.book_list.to_json)

    # Save people to a JSON file
    File.write('people.json', Person.person_list.to_json)

    # Save rentals to a JSON file
    File.write('rentals.json', Rental.all_rentals.to_json)
  end
end
