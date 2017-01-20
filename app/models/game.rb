class Game < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites
  has_many :reviews

  validates :name, presence: true
end
