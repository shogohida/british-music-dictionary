class SongsController < ApplicationController
  def new
    @album = Album.find(params[:album_id])
    @song = Song.new
  end

  def create
    @album = Album.find(params[:album_id])
    @song = Song.new(song_params)
    @song.album = @album
    if @song.save
      redirect_to album_path(@album)
    else
      render :new
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to album_path(@song.album)
  end

  private

  def song_params
    params.require(:song).permit(:name, :minutes, :album_id)
  end
end
