require_relative 'app'
require_relative 'director'
require_relative 'file_reader'

class Main
  def self.prompter
    puts 'Welcome to School library App'
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end
end
# FileReader.new.read
Main.prompter
Director.director

