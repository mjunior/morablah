class SearchFactory
  def self.perform(params)
    partner ||= 'Q5' #db config
    "#{partner}Search".constantize.new(params).perform
  end
end