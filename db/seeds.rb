Audition.destroy_all
Role.destroy_all
puts "DB cleared"

Audition.create( actor: "Jimmy Styles", location: "NYC", phone: "555-555-5555", hired: false, role_id: 1)
Audition.create( actor: "Sticky George", location: "NYC", phone: "555-555-5555", hired: false, role_id: 2)
Audition.create( actor: "Taffy Snuzzman", location: "NYC", phone: "555-555-5555", hired: false, role_id: 1)
Audition.create( actor: "Felix Burnishbutt", location: "NYC", phone: "555-555-5555", hired: false, role_id: 2)

Role.create(character_name: "Big Bird")
Role.create(character_name: "Elmo")

puts "DB seeded"