class Genre < ActiveRecord::Base
	has_many :films
	validates :name, presence: true 
end
