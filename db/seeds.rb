# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new("[:spinner]Cadastrando moedas...")

coins = [{description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://logosmarcas.net/wp-content/uploads/2020/08/Bitcoin-Emblema.png"},

        {description: "Etherium",
            acronym: "ETH",
            url_image: "https://marcas-logos.net/wp-content/uploads/2020/03/ETHEREUM-LOGO.png"},

        {description: "Dash",
            acronym: "DSH",
            url_image: "https://cryptologos.cc/logos/dash-dash-logo.png"},]

coins.each do |coin|
    Coin.find_or_create_by!(coin)
end

spinner.success("(Concluído)")

  