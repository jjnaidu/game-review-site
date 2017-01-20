class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  validates :description, presence: true
end
