class SearchService
  def initialize(params)
    @params = params
  end

  def perform
    return Ad.limit(30) if @params.nil?
    Ad.by_items(@params)
  end
end