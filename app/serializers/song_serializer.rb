class SongSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :genre, :album_url, :artist_id, :artist
 
end
