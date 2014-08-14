json.array!(@speakers) do |speaker|
  json.extract! speaker, :id, :title, :first_name, :last_name, :suffix, :photo_url, :job_title, :employer
  json.url speaker_url(speaker, format: :json)
end
