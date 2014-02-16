class SelectedFilmsController < ApplicationController

	def index
		@selected_films = SelectedFilm.all
	end

	def watched_status
		film = Film.find params[:film_id]
		selected_film = SelectedFilm.find params[:id]
		if selected_film.watched
			selected_film.update_attributes(watched: false)
		else
			selected_film.update_attributes(watched: true)
		end
		@selected_films = SelectedFilm.all
		render action: :index, layout: false
	end

	def create
		@selected_films = SelectedFilm.all
		@film = Film.find params[:film_id]
		selected_film = SelectedFilm.new
		selected_film.film = @film
		selected_film.user = current_user
		selected_film.watched = params[:selected_film_watched]
		if current_user.has_selected_film(@film)
			selected_film = current_user.has_selected_film(@film)
			selected_film.update_attributes(watched: true)
			redirect_to film_path(@film)
		else
			selected_film.save
			redirect_to film_path(@film)
		end
	end

	def update
		selected_film = SelectedFilm.find params[:id]
		selected_film.toggle!(:watched)
		redirect_to film_path(selected_film.film)
	end

	def destroy
		selected_film = SelectedFilm.find params[:id]
		selected_film.destroy
		redirect_to film_path(Film.find params[:film_id]), notice: "Film deleted from watchlist"
	end

	def destroy_ajax
		selected_film = SelectedFilm.find params[:id]
		selected_film.destroy
		render action: :index, layout: false
	end
end
