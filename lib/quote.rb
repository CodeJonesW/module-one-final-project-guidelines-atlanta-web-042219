class Quote < ActiveRecord::Base

  has_many :favorites
  has_many :users, through: :favorites
  end
