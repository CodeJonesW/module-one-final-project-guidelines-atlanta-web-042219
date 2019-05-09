class User < ActiveRecord::Base
  has_many :favorites
  has_many :quotes, through: :favorites

  def random_quote
    Quote.all.sample
  end

  def favorite_a_quote(id)
    Favorite.create(user_id: self.id, quote_id: id)
    $user = User.find($user.id)
  end

  def see_my_favorites
    # $user = User.find($user.id)
    system "clear"
    $user.quotes.each { |q| puts q.quote_text }
    print "\n Press ENTER to continue..."
    gets
  end

  def delete_a_favorite(id)
    Favorite.find_by(user_id: self.id, quote_id: id).destroy
    $user = User.find($user.id)
  end


end
