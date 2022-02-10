class UsersController < ApplicationController

	def index
	end

	def show
		author = params['id']
		author_api_url = "https://jsonplaceholder.typicode.com/users/#{author}"
  		author_response = HTTParty.get(author_api_url)
    	@author = JSON.parse(author_response.body)

    	albums_api_url = "https://jsonplaceholder.typicode.com/albums?userId=#{author}"
    	albums_response = HTTParty.get(albums_api_url)
    	@albums = JSON.parse(albums_response.body)
	end

end
