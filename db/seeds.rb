# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!([
                      { name: "admin Example",
                        password: "password",
                        email: "admin@example.com"
                      }
                   ])



trip = Trip.create!([
                      { name: "admin Example",
                        date: "10/10/2016",
                        place: "Calombia",
                        user: User.first.id
                    }
                    ])
