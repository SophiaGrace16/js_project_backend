class Egg < ApplicationRecord
  belongs_to :movie

  validates :egg_movie, :egg, :image, :movie_id, :found_count, :approved, presence: true
end
