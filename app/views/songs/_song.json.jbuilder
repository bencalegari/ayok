json.extract! song, :id, :title, :artist, :youtube_url, :created_at, :updated_at
json.url song_url(song, format: :json)
