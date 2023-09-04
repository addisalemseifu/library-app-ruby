require 'json'
class FileWriter
    def self.write
    
# Save books to a JSON file
File.open('books.json', 'w') do |f|
  f.write(Book.book_list.to_json)
end

# Save people to a JSON file
people = Student.student_list + Teacher.teacher_list
File.open('people.json', 'w') do |f|
  f.write(people.to_json)
end

# Save rentals to a JSON file
File.open('rentals.json', 'w') do |f|
  f.write(Rental.all_rentals.to_json)
end
end

end