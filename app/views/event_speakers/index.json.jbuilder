json.array!(@event_speakers) do |event_speaker|
  json.extract! event_speaker, :id, :event, :speaker
  json.url event_speaker_url(event_speaker, format: :json)
end
