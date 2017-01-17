class Game < ActiveRecord::Base
  has_many :favorites
  has_many :users, through: :favorites

  validates :name, presence: true
end
