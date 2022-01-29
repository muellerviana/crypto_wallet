# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cadastrando moedas..."

Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://logosmarcas.net/wp-content/uploads/2020/08/Bitcoin-Emblema.png"
    
)

Coin.create!(
    description: "Etherium",
    acronym: "ETH",
    url_image: "https://marcas-logos.net/wp-content/uploads/2020/03/ETHEREUM-LOGO.png"
    
)

Coin.create!(
    description: "Dash",
    acronym: "DSH",
    url_image: "https://cryptologos.cc/logos/dash-dash-logo.png"
    
)
puts "Moedas cadastradas com sucesso!"