json.array!(@peliculas_ls) do |peliculas_l|
  json.extract! peliculas_l, :id, :Nombredepel
  json.url peliculas_l_url(peliculas_l, format: :json)
end
