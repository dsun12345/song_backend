# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Song.destroy_all

eminem = Artist.create(name: "Eminem")
usher = Artist.create(name: "Usher")
nelly = Artist.create(name: "Nelly")

Song.create(title: "Lose Yourself", genre: "Hip-Hop", album_url: "https://img.discogs.com/B2-20trfAy5yccWOBFTnTAxuTvo=/fit-in/600x583/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-588170-1510171544-3190.jpeg.jpg", artist_id: eminem.id)
