json.array!(@premia) do |premium|
  json.extract! premium, :id, :n_contrato, :img
  json.url premium_url(premium, format: :json)
end
