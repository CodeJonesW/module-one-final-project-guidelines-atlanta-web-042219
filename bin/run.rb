require_relative '../config/environment'

blake = User.find_by(name: "Blake")
my_quote = Quote.find_by(quote_text: "This is a super duper quote a moat!")
Favorite.create(user: blake, quote: my_quote)

binding.pry
puts "HELLO WORLD"
