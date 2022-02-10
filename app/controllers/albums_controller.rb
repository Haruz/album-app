class AlbumsController < ApplicationController

include HTTParty

  def index

  	album_api_url = 'https://jsonplaceholder.typicode.com/albums'
  	album_response = HTTParty.get(album_api_url)
    @albums = JSON.parse(album_response.body)

    user_api_url = 'https://jsonplaceholder.typicode.com/users'
  	user_response = HTTParty.get(user_api_url)
    @users = JSON.parse(user_response.body)

  	#byebug
  	#json = JSON.parse(response.body)
  end

  def show

  	album = params['id']
  	author = params['author_id']


  	photo_api_url = "https://jsonplaceholder.typicode.com/photos?albumId=#{album}"
  	  	photo_response = HTTParty.get(photo_api_url)
    	@photos = JSON.parse(photo_response.body)
  	
  	author_api_url = "https://jsonplaceholder.typicode.com/users/#{author}"
  		author_response = HTTParty.get(author_api_url)
    	@author = JSON.parse(author_response.body)


  end

end
