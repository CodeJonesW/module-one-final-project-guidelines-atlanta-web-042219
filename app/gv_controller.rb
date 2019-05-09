class GVController

    def self.start
      puts "Whats your username?"
      $user = User.create(name: gets.chomp.capitalize)
      main_menu
    end

    def self.main_menu
      puts "Good Vibes Menu"
      puts "1. Random Motivational quotes"
      puts "2. Favorite quotes"
      puts "3. Remove a favorite quote : ("
      puts "4. Exit"

  choice = gets.chomp

  case (choice.to_i)
    when 1
      random_quote = $user.random_quote
      puts random_quote.quote_text

      puts "Would you like to favorite this quote? yes or no."
        answer1 = gets.chomp
        if answer1 == 'yes'
          $user.favorite_a_quote(random_quote.id)
        elsif answer1 == 'no'
          main_menu
        else
          "Thats not an option."
        end
    when 2
      puts $user.see_my_favorites

    when 3
      puts 'Enter favorite id. If you do not know your quote id, type "back" and you can find the ID
      in your favorites.'
      id_to_get_deleted = gets.chomp
      if id_to_get_deleted == 'back'
        main_menu
      else
      $user.delete_a_favorite(id_to_get_deleted.to_i)
    end
    when 4
      exit
  else
    puts "invalid entry"
  end
  main_menu
  end
end
