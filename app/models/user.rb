class User < ActiveRecord::Base
  has_many :favorites
  has_many :quotes, through: :favorites

  def random_quote
    Quote.all.sample
  end

  def favorite_a_quote(quote)
    Favorite.create(user: self, quote: quote)
  end

  def see_my_favorites
    Favorite.find_by(user: self)
  end

  def delete_a_favorite(id)
    binding.pry
    Favorite.find_by(user_id: self.id, quote_id: id).destroy
  end





end
