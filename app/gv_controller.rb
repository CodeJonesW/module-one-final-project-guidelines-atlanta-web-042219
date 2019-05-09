class GVController

    def self.start
      puts "Whats your username?"
      $user = User.create(name: gets.chomp)
      main_menu
    end

    def self.main_menu
      puts "Good Vibes Menu"
      puts "1. Random Motivational quotes"
      puts "2. Favorite quotes"
      puts "4. Exit"

  choice = gets.chomp

  case (choice.to_i)
    when 1
      $user.random_quote
    when 2
      $user.see_my_favorites
    when 4
      exit
  else
    puts "invalid entry"
  end
  main_menu
  end
end
