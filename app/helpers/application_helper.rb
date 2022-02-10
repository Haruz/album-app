module ApplicationHelper

 include Pagy::Frontend
 
	def find_author(id)
		album_api_url = "https://jsonplaceholder.typicode.com/albums/#{id}"
  		album_response = HTTParty.get(album_api_url)
    	return JSON.parse(album_response.body)['userId']
	end

	def fetch_all_albums
		album_api_url = 'https://jsonplaceholder.typicode.com/albums'
  		album_response = HTTParty.get(album_api_url)
    	return JSON.parse(album_response.body)
	end

	def fetch_album(id)
		albums_api_url = "https://jsonplaceholder.typicode.com/albums?userId=#{id}"
    	albums_response = HTTParty.get(albums_api_url)
    	return JSON.parse(albums_response.body)
	end

	def fetch_all_authors
		user_api_url = 'https://jsonplaceholder.typicode.com/users'
  		user_response = HTTParty.get(user_api_url)
    	return JSON.parse(user_response.body)
	end

	def fetch_author(id) 
		author_api_url = "https://jsonplaceholder.typicode.com/users/#{id}"
  		author_response = HTTParty.get(author_api_url)
    	return JSON.parse(author_response.body)
	end

	def fetch_photos(id)
		photo_api_url = "https://jsonplaceholder.typicode.com/photos?albumId=#{id}"
  	  	photo_response = HTTParty.get(photo_api_url)
    	return JSON.parse(photo_response.body)
	end
end
