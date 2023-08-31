require_relative 'app'

def main
  puts 'Welcome to School library App'
  puts 'Please choose an option by entering a number'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  choice = gets.chomp
  case choice
  when '1' then list_all_book
  when '2' then list_all_people
  when '3' then create_a_person
  when '4' then create_a_book
  when '5' then create_a_rental
  when '6' then list_all_rentals
  end
end

main
