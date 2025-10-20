class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.date :date
      t.time :time
      t.string :skill_level
      t.string :location
      t.string :format
      t.string :contact

      t.timestamps
    end
  end
end
