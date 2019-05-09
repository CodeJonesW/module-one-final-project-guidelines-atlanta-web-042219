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
    system "clear"
    $user.quotes.each { |q| puts q.quote_text }
    print "\n Press ENTER to continue..."
    gets
  end

  # def see_my_favorites_ids
  #   $user.favorites.each { |f| puts f.favorite_id }

  def delete_a_favorite(id)
    Favorite.find_by(user_id: self.id, quote_id: id).destroy
    $user = User.find($user.id)
  end


end
