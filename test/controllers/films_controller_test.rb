require 'test_helper'
include Devise::TestHelpers

class FilmsControllerTest < ActionController::TestCase

  test "should create film" do
    sign_in User.first
    assert_difference('Film.count') do
      post :create, film: {title: 'Test', genre_id: 1, ratings: 10, discription: "test discription", year: 1988}
    end
    assert_redirected_to film_path(assigns(:film))
    assert_equal 'Film was successfully created.', flash[:notice]
  end

end
