class Movie < ApplicationRecord
    has_many :eggs
    accepts_nested_attributes_for :eggs
end
