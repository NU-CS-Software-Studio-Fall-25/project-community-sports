class AddContactInfoToGames < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :contact_info, :string
  end
end
