class GVController

    def start
      main_menu
    end

    def main_menu
      puts "Good Vibes Menu"
      puts "1. Motivational quotes"
      puts "2. Quote billboards"
      puts "3. Favorite quotes"
      puts "4. Exit"

  choice = gets.chomp

  case (choice.to_i)
    when 1
      random_quote
    when 1
      quote_billboards
    when 2
      favorite_quotes
    when 3
      see_my_favorites
    when 4
      exit
  else
    puts "invalid entry"
  end
  main_menu
  end
end
