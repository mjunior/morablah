class SearchController < ApplicationController
  def index
    search = SearchFactory.perform({ ap:1,ap:2 })
    render json: search
  end
end
