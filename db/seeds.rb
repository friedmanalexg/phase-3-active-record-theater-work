r1 = Role.create(character_name: "Larry" )
r2 = Role.create(character_name: "Gonzo")
r3 = Role.create(character_name: "Fiona")
r4 = Role.create(character_name: "Lobsterboy")

Audition.create( actor: "Harry", location: "SF", phone: 555-555-5555, hired: false, role_id: r2.id)
Audition.create( actor: "Marvin", location: "LA", phone: 555-555-5555, hired: false, role_id: r1.id)
Audition.create( actor: "Hattie", location: "NYC", phone: 555-555-5555, hired: true , role_id: r1.id )
Audition.create( actor: "Klark", location: "France", phone:555-555-5555 , hired: true , role_id:r3.id )
Audition.create( actor: "Pietro", location: "PA", phone: 555-555-5555 , hired: false , role_id:r4.id )
Audition.create( actor: "Dog", location: "OH", phone: 555-555-5555, hired: false , role_id:r1.id )

