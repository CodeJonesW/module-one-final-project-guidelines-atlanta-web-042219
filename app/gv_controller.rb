class GVController

    def self.start
      main_menu
    end

    def self.main_menu
      puts "Good Vibes Menu"
      puts "1. Motivational quotes"
      puts "2. Quote billboards"
      puts "3. Favorite quotes"
      puts "4. Exit"

  choice = gets.chomp

  case (choice.to_i)
    when 1
      $user.random_quote
    when 1
      quote_billboards
    when 2
      $user.favorite_quotes
    when 3
      $user.see_my_favorites
    when 4
      exit
  else
    puts "invalid entry"
  end
  main_menu
  end
end
