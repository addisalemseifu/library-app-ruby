class Director
  def director
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
end
