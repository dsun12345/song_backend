class RemoveArtistIdFromSongsTable < ActiveRecord::Migration[6.0]
  def change
      remove_column :songs, :artist_id, :string
  end
end
