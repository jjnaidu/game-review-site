class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, :null => false
      t.integer :rating
      t.integer :aggregate_rating
      t.string :img_url

      t.timestamps
    end
  end
end
