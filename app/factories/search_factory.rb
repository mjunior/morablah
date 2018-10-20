class SearchFactory
  def self.perform(partner=nil, params)
    partner ||= ['Q5', 'VivaReal']
    response = []
    partner.each do |partner|
      list = "#{partner}Search".constantize.new(@params).perform
      response << list
    end
    response
  end
end