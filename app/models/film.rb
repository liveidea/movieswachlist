class Film < ActiveRecord::Base
	belongs_to :genre
	has_many :selected_films, dependent: :destroy
	has_many :comments

	validates :title, :discription, presence: true
	validates :year, numericality: { only_integer: true, greater_than: 1900, less_than: 2030}
	validates :ratings, :genre_id, numericality: { only_integer: true }

	def comment_for (user)
		self.comments.each do |sc|
			if (sc.user == user)
				@comment = sc
			end
		end
		return @comment
	end

	def self.search (search)
		find(:all, :conditions => ['title LIKE ?', "%#{search}%"])
	end

	def count_popularity
		self.selected_films.count
	end

	def self.update_popularity
		self.all.each do |f|
			f.popularity = f.count_popularity
			f.save
		end
	end

	def next
		unless (self == Film.last)
			if (Film.find_by_id(self.id+1))
				film = Film.find_by_id (self.id+1)
			else
				i=1
				while Film.find_by_id(self.id+i) == nil
					i+=1
				end
				film = Film.find_by_id (self.id+i)
			end
		else
			film = Film.first
		end
	end

	def prev
		unless (self == Film.first)
			if (Film.find_by_id(self.id-1))
				film = Film.find_by_id (self.id-1)
			else
				i=1
				while Film.find_by_id(self.id-i) == nil
					i+=1
				end
				film = Film.find_by_id (self.id-i)
			end
		else
			film = Film.last
		end
	end

end
