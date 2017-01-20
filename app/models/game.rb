class Game < ActiveRecord::Base
  has_many :favorites
  has_many :users
  has_many :reviews

  validates :name, presence: true
end
