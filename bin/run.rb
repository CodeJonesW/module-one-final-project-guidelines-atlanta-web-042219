require_relative '../config/environment'


will = User.all.first
quote = Quote.all.last

GVController.start


binding.pry
puts "HELLO WORLD"
