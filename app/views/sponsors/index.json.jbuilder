json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :name, :logo_url, :web_address
  json.url sponsor_url(sponsor, format: :json)
end
