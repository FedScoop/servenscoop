json.array!(@agenda_items) do |agenda_item|
  json.extract! agenda_item, :id, :when, :title
  json.url agenda_item_url(agenda_item, format: :json)
end
