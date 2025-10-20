class AddDoublesToGames < ActiveRecord::Migration[8.0]
  def change
    add_column :games, :doubles, :boolean
  end
end
