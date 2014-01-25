require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test "the truth" do
  	g = Genre.new(name: "History")
  	g.save
  	g = Genre.new(name: "Drama")
  	g.save
  	g = Genre.new(name: "Action")
  	g.save
  	g = Genre.new(name: "Fantasy")
  	g.save
  	assert Genre.count == 4
  end
end
