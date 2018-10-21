# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Person.create(name: 'Maurício',
              avatar: "https://api.adorable.io/avatars/285/#{[1,2,3,4,5,6,7,8,9,9].sample}")

Person.create(name: 'Leo',
              avatar: "https://api.adorable.io/avatars/285/#{[1,2,3,4,5,6,7,8,9,9].sample}")

Person.create(name: 'Vinnys',
              avatar: "https://api.adorable.io/avatars/285/#{[1,2,3,4,5,6,7,8,9,9].sample}")

Person.create(name: 'Addae',
              avatar: "https://api.adorable.io/avatars/285/#{[1,2,3,4,5,6,7,8,9,9].sample}")


images = ['https://s3-sa-east-1.amazonaws.com/images-morablah/01.jpg',
'https://s3-sa-east-1.amazonaws.com/images-morablah/02.jpg',
'https://s3-sa-east-1.amazonaws.com/images-morablah/03.jpg',
'https://s3-sa-east-1.amazonaws.com/images-morablah/04.jpg',
'https://s3-sa-east-1.amazonaws.com/images-morablah/05.jpg',
'https://s3-sa-east-1.amazonaws.com/images-morablah/06.jpg',
'https://s3-sa-east-1.amazonaws.com/images-morablah/07.jpg',]

Item.find_or_create_by(title: 'Aceita Pets')
Item.find_or_create_by(title: 'apartamento cobertura')
Item.find_or_create_by(title: 'armários na cozinha')
Item.find_or_create_by(title: 'armários nos banheiros')
Item.find_or_create_by(title: 'ar condicionado')
Item.find_or_create_by(title: 'banheira de hidromassagem')
Item.find_or_create_by(title: 'apartamento cobertura')
Item.find_or_create_by(title: 'Aceita Fumantes')

10.times do
  ad = Ad.create({
    title: "#{Faker::Artist.name} - Apartamento com 1 dorm, 48m²",
    description: 'Apartamento de 48m2 totalmente reformado. Está completamente decorado com móveis e eletrodomésticos novos. O prédio fica nos jardins , perto de estações de metrô e de tudo que a região dos jardins oferece. O edifício foi projetado pelo arquiteto Israel Gaiman no início dos anos 60.',
    full_address: 'Rua Bela Cintra, Jardim Paulista, São Paulo',
    amount: 4100,
    max_people: 2
  })

  3.times do
    ad.items << Item.all.sample
  end
  
  4.times do
    ad.images.create(url: images.sample)
  end
end

Preference.find_or_create_by(title: 'Aceito fumantes')
Preference.find_or_create_by(title: 'Aceito pets')
Preference.find_or_create_by(title: 'Deseja ficar com suite')
Preference.find_or_create_by(title: 'Deseja utilizar vaga da garagem')
Preference.find_or_create_by(title: 'Autoriza receber visitas no apatamento')

ad = Ad.first
ad.groups.create(person: Person.last, amount: 2100, remaining_amount: 2000)
3.times do
  Group.last.preferences << Preference.all.sample
end

ad = Ad.first
ad.groups.create(person: Person.first, amount: 3100, remaining_amount: 1000)
3.times do
  Group.last.preferences << Preference.all.sample
end

ad = Ad.second
ad.groups.create(person: Person.first, amount: 1000, remaining_amount: 3100)
2.times do
  Group.last.preferences << Preference.all.sample
end

ad = Ad.third
ad.groups.create(person: Person.first, amount: 2000, remaining_amount: 1100)
3.times do
  Group.last.preferences << Preference.all.sample
end












