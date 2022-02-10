class UsersController < ApplicationController

include ApplicationHelper

	def index
	end

	def show
		author_id = params['id']

    	@author = fetch_author(author_id) 
    	@albums = fetch_album(author_id)
    	
	end

end
