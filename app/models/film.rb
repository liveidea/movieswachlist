class Film < ActiveRecord::Base
	belongs_to :genre
	has_many :selected_films
end
