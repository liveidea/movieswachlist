class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :selected_films, dependent: :destroy
  has_many :comments
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true

	def has_selected_film (film)
		selected_films.where(film_id: film.id).first
  end

  def has_selected_no_watched (film)
    selected_films.where(film_id: film.id, watched: false).first
  end

  def has_selected_watched (film)
    selected_films.where(film_id: film.id, watched: true).first
  end
end
