class Egg < ApplicationRecord
  belongs_to :movie

  validates :egg_movie, :egg_description, :image, presence: true
end
