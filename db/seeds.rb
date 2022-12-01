# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Email.destroy_all

rob = {user_id: 1, first_name: "Rob", last_name: "Kablau", email_adress: "Rob.Kablau@klm.com", to: false, from: true}
hensens = {user_id: 1, first_name: "Patrick", last_name: "Hensens", email_adress: "Patrick.Hensens@klm.com", to: false, from: true}
koers = {user_id: 1, first_name: "Patrick", last_name: "Koers", email_adress: "Patrick.Koers@klm.com", from: true, to: false }
rudi = {user_id: 1, first_name: "Ruud", last_name: "Vlieland", email_adress: "Rudi.Vlieland@klm.com", to: false, from: true }

[rob, hensens, koers, rudi].each do |att|
  email = Email.create!(att)
end
