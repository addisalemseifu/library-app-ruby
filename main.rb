require_relative 'app'
# rubocop:disable Metrics/CyclomaticComplexity
def main
  app = App.new
  response = nil
  while response != '7'
    response = prompter
    case response
    when '1'
      app.list_all_book
    when '2'
      app.list_all_people
    when '3'
      app.create_a_person
    when '4'
      app.create_a_book
    when '5'
      app.create_a_rental
    when '6'
      app.list_rentals_for_person_id
    when '7' then puts 'Thank you for using this app!'
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def prompter
  puts 'Welcome to School Library App!\n\n'
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  gets.chomp
end

main
