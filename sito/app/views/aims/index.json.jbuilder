json.array!(@aims) do |aim|
  json.extract! aim, :scopo, :importo
  json.url aim_url(aim, format: :json)
end
