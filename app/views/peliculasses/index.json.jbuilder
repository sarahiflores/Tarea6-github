json.array!(@peliculasses) do |peliculass|
  json.extract! peliculass, :id, :NombredePeliculas, :rate
  json.url peliculass_url(peliculass, format: :json)
end
