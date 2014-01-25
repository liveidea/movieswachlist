require 'test_helper'

class FilmTest < ActiveSupport::TestCase
  test "the truth" do
  	f = Film.new(title: "Jango", year: 2013, genre_id: Genre.first, ratings: 10, discription: "asldfhjaasd;akjsdfj")
  	f.save
  	f = Film.new(title: "Second", year: 2012, genre_id: Genre.find(2), ratings: 1, discription: "disriptions")
  	f.save
  	f = Film.new(title: "Third", year: 2003, genre_id: Genre.find(3), ratings: 3, discription: "T disriptions")
  	f.save
  	f = Film.new(title: "4th", year: 2014, genre_id: Genre.find(4), ratings: 4, discription: "4th - disriptions")
  	f.save
  	g = Genre.new(name: "History")
  	g.save
  	g = Genre.new(name: "Drama")
  	g.save
  	g = Genre.new(name: "Action")
  	g.save
  	g = Genre.new(name: "Fantasy")
  	g.save
     assert Film.all.count == 4
   end
end
