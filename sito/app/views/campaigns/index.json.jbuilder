json.array!(@campaigns) do |campaign|
  json.extract! campaign, :nome, :descrizione, :durata, :goal, :chiusa
  json.url campaign_url(campaign, format: :json)
end
