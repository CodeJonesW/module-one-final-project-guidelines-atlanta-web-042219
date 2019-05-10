class GVController

    def self.start
      system "clear"
puts "     ________                  .___ ____   ___._____.
 /  _____/  ____   ____   __| _/ \   \ /   |__\_ |__   ____   ______
/   \  ___ /  _ \ /  _ \ / __ |   \   Y   /|  || __ \_/ __ \ /  ___/
\    \_\  (  <_> (  <_> / /_/ |    \     / |  || \_\ \  ___/ \___ \
 \______  /\____/ \____/\____ |     \___/  |__||___  /\___  /____  >
        \/                   \/                    \/     \/     \/

"

      puts "Hello! Whats your name?! Im going to store it for your own benefit. I won't sell your data..."
      $user = User.create(name: gets.chomp.capitalize)
      main_menu
    end

    def self.main_menu
      system "clear"
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
          puts "I see that ones just not for you.... thats cool."
          sleep(2.5)
          main_menu
        else
          "Thats not an option."
        end
    when 2
      puts $user.see_my_favorites

    when 3
      puts 'Enter favorite quote id. If you do not know your quote id, type "back" and you can find the ID
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
