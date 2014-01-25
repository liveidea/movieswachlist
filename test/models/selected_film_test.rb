require 'test_helper'

class SelectedFilmTest < ActiveSupport::TestCase
  test "the truth" do
  	s = SelectedFilm.new(wathed: false, user_id: User.first, film_id: Film.first)
  	s.save
  	f = Film.new(title: "Jango", year: 2013, genre_id: Genre.first, ratings: 10, discription: "asldfhjaasd;akjsdfj")
  	f.save
  	u = User.new(name: "John", email: "user@name.com", password: 'password', password_confirmation: 'password')
	u.save
    assert SelectedFilm.count == 1
  end
end
