class Api::V1::SongsController < ApplicationController

    def index
        songs = Song.all
        render json: SongSerializer.new(songs)
    end 

    def create
        song = Song.new(song_params)
        byebug
        if song.save
            render json: song, status: :accepted
        else 
            render json: {errors: song.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

private

    def song_params
        require(:song).permit(:title, :genre, :album_url, :artist_id)
    end 

end
