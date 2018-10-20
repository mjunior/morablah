class SearchController < ApplicationController
  def index
    search = SearchFactory.perform params
    render json: search
  end
end
