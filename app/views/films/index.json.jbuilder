json.array!(@films) do |film|
  json.extract! film, :id, :title, :year, :genre_id, :ratings, :discription
  json.url film_url(film, format: :json)
end
