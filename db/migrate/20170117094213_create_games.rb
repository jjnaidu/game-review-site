class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, :null => false
      t.string :rating
      t.string :img_url

      t.timestamps
    end
  end
end
