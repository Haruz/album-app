class ApplicationController < ActionController::Base
include Pagy::Backend
require 'pagy/extras/array'
end
