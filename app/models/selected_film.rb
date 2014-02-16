class SelectedFilm < ActiveRecord::Base
	belongs_to :film
	belongs_to :user
  scope :watched, -> { where(watched: true) }
  scope :to_watch, -> { where(watched: false) }
end