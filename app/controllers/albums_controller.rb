class AlbumsController < ApplicationController

include HTTParty
include ApplicationHelper


  def index
  	 albums = fetch_all_albums
  	 @pagy_a, @albums = pagy_array(albums, items: 10)
     @users = fetch_all_authors
  end

  def show

  	album_id = params['id']
  	author_id = find_author(album_id)

  	photos = fetch_photos(album_id)
	@author = fetch_author(author_id)
  	@pagy_a, @photos = pagy_array(photos, items: 10)
  end
end
