class AddQuoteTextToFavorites < ActiveRecord::Migration
 def change
   add_column :favorites, :quote_text, :string
 end
end
