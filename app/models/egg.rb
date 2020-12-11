class Egg < ApplicationRecord
  belongs_to :movie

  validates :egg_movie, :egg, :image, presence: true
end
