# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 29_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here
Role.create(salary: 1000, character_name: "1", movie_id: mean_girls.id, actor_id: lindsay_lohan.id)
Role.create(salary: 234123, character_name: "2", movie_id: mean_girls.id, actor_id: tina_fey.id)
Role.create(salary: 123, character_name: "3", movie_id: mean_girls.id, actor_id: baby_spice.id)
Role.create(salary: 435, character_name: "4", movie_id: mean_girls.id, actor_id: ginger_spice.id)
Role.create(salary: 1234, character_name: "5", movie_id: spice_world.id, actor_id: scary_spice.id)
Role.create(salary: 623, character_name: "6", movie_id: spice_world.id, actor_id: sporty_spice.id)
Role.create(salary: 23, character_name: "7", movie_id: spice_world.id, actor_id: posh_spice.id)
Role.create(salary: 2345, character_name: "8", movie_id: spice_world.id, actor_id: lindsay_lohan.id)

puts "Seeding done!"