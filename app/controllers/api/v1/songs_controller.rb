class Api::V1::SongsController < ApplicationController

    def index
        songs = Song.all
        render json: SongSerializer.new(songs)
    end 

    def create
        song = Song.new(song_params)
        if song.save
            render json: SongSerializer.new(song), status: :accepted
        else 
            render json: {errors: song.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    def update
        song = Song.find_by(id:params[:id])
        if song
            song.update(song_params)
            render json: SongSerializer.new(song), status: :accepted
        else
            render json: {errors: song.errors.full_messages}, status: :unprocessible_entity
        end 
    end 
private

    def song_params
        params.require(:song).permit(:title, :genre, :album_url, :artist_id, :id)
    end 

end
