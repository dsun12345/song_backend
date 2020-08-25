class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :genre
      t.string :album_url
      t.integer :artist_id

      t.timestamps
    end
  end
end
