json.array!(@event_sponsors) do |event_sponsor|
  json.extract! event_sponsor, :id
  json.url event_sponsor_url(event_sponsor, format: :json)
end
