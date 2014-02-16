class Comment < ActiveRecord::Base
	
	validates :user_id, :film_id, numericality: { only_integer: true }
	belongs_to :film
	belongs_to :user
end
