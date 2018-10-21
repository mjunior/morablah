class SearchController < ApplicationController
  def index
    search = SearchService.new(item_params).perform
    render json: search, include: [:items, :groups, :images]
  end


  def item_params
    params[:items]
  end
end
