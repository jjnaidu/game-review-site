class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :user_rating
      t.integer :user_id
      t.integer :game_id
    end
    add_index :reviews, [:user_id, :game_id], unique: true
  end
end
