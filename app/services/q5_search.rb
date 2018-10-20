class Q5Search
  def initialize(params)
    @params = params
    @imgs = ["https://www.quintoandar.com.br/img/xxl/892852756-814.8412197111393IMG1518.jpg",
            "https://www.quintoandar.com.br/img/xxl/892853345-554.89946599700355a057.jpg",
            "https://www.quintoandar.com.br/img/lrg/892853345-616.73489420858455a059.jpg",
            "https://www.quintoandar.com.br/img/lrg/892853345-758.22939318946715a062.jpg"]
  end

  def perform
    response = {
      search: @params,
      list: []
    }

    10.times do
      ap = {
        title: Faker::Book.title,
        description: Faker::Lorem.paragraph,
        address: {
          street: Faker::Address.street_name,
          city: Faker::Address.city,
          full_address: Faker::Address.full_address
        },
        pictures:[
          {url: @imgs.sample},
          {url: @imgs.sample},
          {url: @imgs.sample}
        ],
        partner: 'Q5',
      }
      response[:list] << ap
    end
    response
  end
end