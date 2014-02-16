class HomeController < ApplicationController
  def index
    @users = User.all
    @films = Film.all.page(params[:page]).per(3)
  end

  def most_popular
    Film.update_popularity
    @sorted_films = Film.all.order("popularity DESC")
  end

end
